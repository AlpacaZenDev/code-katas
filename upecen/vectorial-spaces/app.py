import streamlit as st
import numpy as np
import plotly.graph_objects as go

# Configuración de la página (Modo Ancho y Oscuro por defecto)
st.set_page_config(
    page_title="Simulador de Espacios Vectoriales: Gravedad y Campos 3D",
    page_icon="🌌",
    layout="wide"
)

# Estilos CSS personalizados para una estética premium y moderna (Glow, Glassmorphism y Dark Theme)
st.markdown("""
    <style>
        /* Importar fuente premium */
        @import url('https://fonts.googleapis.com/css2?family=Outfit:wght@300;400;600;800&display=swap');
        
        * {
            font-family: 'Outfit', sans-serif;
        }
        
        .main {
            background-color: #0d0f12;
            color: #e2e8f0;
        }
        
        /* Contenedores con efecto cristal (glassmorphism) */
        .glass-card {
            background: rgba(26, 32, 44, 0.65);
            border-radius: 16px;
            padding: 24px;
            border: 1px solid rgba(255, 255, 255, 0.08);
            backdrop-filter: blur(10px);
            margin-bottom: 20px;
            box-shadow: 0 8px 32px 0 rgba(0, 0, 0, 0.37);
        }
        
        /* Título principal con degradado */
        .main-title {
            background: linear-gradient(135deg, #6366f1 0%, #a855f7 50%, #ec4899 100%);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            font-size: 3rem;
            font-weight: 800;
            text-align: center;
            margin-bottom: 5px;
            text-shadow: 0 4px 12px rgba(99, 102, 241, 0.25);
        }
        
        .subtitle {
            color: #94a3b8;
            font-size: 1.2rem;
            text-align: center;
            margin-bottom: 30px;
        }
        
        /* Sección de explicaciones matemáticas */
        .math-box {
            background: rgba(99, 102, 241, 0.1);
            border-left: 5px solid #6366f1;
            padding: 15px;
            border-radius: 4px 12px 12px 4px;
            margin: 15px 0;
        }
    </style>
""", unsafe_allow_html=True)

# Título de la Aplicación
st.markdown('<div class="main-title">Espacios Vectoriales & Gravedad 3D</div>', unsafe_allow_html=True)
st.markdown('<div class="subtitle">Una exploración visual e interactiva del Álgebra Vectorial y la Física del Espacio-Tiempo</div>', unsafe_allow_html=True)

# Pestañas Principales de la Aplicación
tab1, tab2, tab3, tab4 = st.tabs([
    "🌌 Gravedad (1 Cuerpo)",
    "🪐 Sistema Binario (2 Cuerpos)",
    "📐 Álgebra Vectorial Pura",
    "📚 Fundamentos Teóricos"
])

# Constante de gravitación arbitraria para propósitos de escala visual en la simulación
G = 1.0
EPSILON = 0.2  # Factor de suavizado para evitar divisiones por cero en singularidades

# -------------------------------------------------------------
# FUNCIONES MATEMÁTICAS Y DE SIMULACIÓN
# -------------------------------------------------------------

def calculate_gravity_field(grid_res, masses, centers, scale_log=True):
    """
    Calcula las componentes de fuerza gravitatoria (u, v, w) en una cuadrícula 3D
    basada en la Ley de Gravitación Universal en forma vectorial: F = -G * M * r / |r|^3
    """
    # Crear la cuadrícula de coordenadas del espacio R^3
    val = np.linspace(-5.0, 5.0, grid_res)
    x, y, z = np.meshgrid(val, val, val, indexing='ij')
    
    x_flat = x.flatten()
    y_flat = y.flatten()
    z_flat = z.flatten()
    
    u = np.zeros_like(x_flat)
    v = np.zeros_like(y_flat)
    w = np.zeros_like(z_flat)
    
    for mass, center in zip(masses, centers):
        dx = x_flat - center[0]
        dy = y_flat - center[1]
        dz = z_flat - center[2]
        
        r2 = dx**2 + dy**2 + dz**2 + EPSILON**2
        r_mag = np.sqrt(r2)
        
        # Dirección hacia el centro de masa (-dx, -dy, -dz)
        # Fuerza F = -G * M * (dx, dy, dz) / r^3
        force_factor = G * mass / (r2 * r_mag)
        
        u -= force_factor * dx
        v -= force_factor * dy
        w -= force_factor * dz

    # Modulación de la magnitud para mejor visualización (logarítmica)
    magnitudes = np.sqrt(u**2 + v**2 + w**2)
    
    if scale_log:
        # Escala logarítmica: mantiene dirección pero comprime las magnitudes gigantescas cerca del centro
        # de modo que los vectores periféricos también sean visibles.
        scaled_magnitudes = np.log1p(magnitudes)
        # Evitar división por cero
        safe_mag = np.where(magnitudes == 0, 1.0, magnitudes)
        ratio = scaled_magnitudes / safe_mag
        u *= ratio
        v *= ratio
        w *= ratio
        
    return x_flat, y_flat, z_flat, u, v, w, magnitudes

def get_acceleration(pos, masses, centers):
    """
    Calcula el vector de aceleración instantánea a en un punto del espacio R^3
    usando la suma de las fuerzas gravitatorias.
    """
    acc = np.zeros(3)
    for mass, center in zip(masses, centers):
        diff = pos - center
        r2 = np.sum(diff**2) + EPSILON**2
        r_mag = np.sqrt(r2)
        acc -= G * mass * diff / (r2 * r_mag)
    return acc

def rk4_simulate_orbit(pos_init, vel_init, masses, centers, max_time=15.0, dt=0.01):
    """
    Simula la trayectoria de una partícula de prueba utilizando el método Runge-Kutta de 4to orden (RK4)
    para resolver el sistema de ecuaciones diferenciales ordinarias en el espacio tridimensional.
    """
    pos = np.array(pos_init, dtype=float)
    vel = np.array(vel_init, dtype=float)
    
    trajectory = [pos.copy()]
    steps = int(max_time / dt)
    
    for _ in range(steps):
        # RK4 Integración
        k1_pos = vel
        k1_vel = get_acceleration(pos, masses, centers)
        
        k2_pos = vel + 0.5 * dt * k1_vel
        k2_vel = get_acceleration(pos + 0.5 * dt * k1_pos, masses, centers)
        
        k3_pos = vel + 0.5 * dt * k2_vel
        k3_vel = get_acceleration(pos + 0.5 * dt * k2_pos, masses, centers)
        
        k4_pos = vel + dt * k3_vel
        k4_vel = get_acceleration(pos + dt * k3_pos, masses, centers)
        
        pos_next = pos + (dt / 6.0) * (k1_pos + 2.0 * k2_pos + 2.0 * k3_pos + k4_pos)
        vel_next = vel + (dt / 6.0) * (k1_vel + 2.0 * k2_vel + 2.0 * k3_vel + k4_vel)
        
        pos = pos_next
        vel = vel_next
        
        trajectory.append(pos.copy())
        
        # Condición de salida si la partícula escapa demasiado lejos del espacio de visualización
        if np.linalg.norm(pos) > 15.0:
            break
            
    return np.array(trajectory)

# -------------------------------------------------------------
# PESTAÑA 1: GRAVEDAD (1 CUERPO)
# -------------------------------------------------------------
with tab1:
    st.markdown('<div class="glass-card">', unsafe_allow_html=True)
    col1, col2 = st.columns([1, 2])
    
    with col1:
        st.subheader("Controles de Simulación")
        st.write("Modifica los parámetros del espacio para observar cómo cambian los vectores en tiempo real.")
        
        # Escalar de Masa (Ejemplo de multiplicación escalar de vectores)
        mass = st.slider("Masa del Agujero Negro (M) - Escala de Fuerza", min_value=0.5, max_value=10.0, value=3.0, step=0.5)
        grid_res = st.slider("Densidad de la Malla de Vectores", min_value=4, max_value=8, value=6, step=1)
        scale_type = st.checkbox("Escala Logarítmica de Vectores (Recomendado)", value=True)
        
        st.markdown('<div class="math-box">', unsafe_allow_html=True)
        st.markdown("**Matemática del Escalar:**")
        st.latex(r"\vec{F}(\vec{r}) = -G \frac{M}{\|\vec{r}\|^3} \vec{r}")
        st.write("Si aumentas la masa $M$ a $k \\cdot M$, todos los vectores de fuerza se multiplican por el escalar $k$:")
        st.latex(r"\vec{F}_{nueva}(\vec{r}) = k \cdot \vec{F}_{base}(\vec{r})")
        st.markdown('</div>', unsafe_allow_html=True)
        
        st.subheader("Lanzador de Órbita")
        st.write("Define los vectores iniciales de posición y velocidad para la partícula de prueba.")
        
        # Posición inicial (Vector de posición r0)
        st.write("**Vector de Posición Inicial** $\\vec{r}_0$:")
        px = st.slider("x0 (Posición x)", -4.0, 4.0, 3.0, 0.5, key="p1_x")
        py = st.slider("y0 (Posición y)", -4.0, 4.0, 0.0, 0.5, key="p1_y")
        pz = st.slider("z0 (Posición z)", -4.0, 4.0, 1.0, 0.5, key="p1_z")
        
        # Velocidad inicial (Vector de velocidad v0)
        st.write("**Vector de Velocidad Inicial** $\\vec{v}_0$:")
        vx = st.slider("vx (Velocidad x)", -2.0, 2.0, 0.0, 0.1, key="p1_vx")
        vy = st.slider("vy (Velocidad y)", -2.0, 2.0, 1.2, 0.1, key="p1_vy")
        vz = st.slider("vz (Velocidad z)", -2.0, 2.0, 0.4, 0.1, key="p1_vz")
        
        sim_time = st.slider("Tiempo de simulación de órbita", 5.0, 30.0, 15.0, 1.0, key="p1_t")
        
    with col2:
        # Calcular el campo vectorial gravitatorio
        x_pts, y_pts, z_pts, u, v, w, magnitudes = calculate_gravity_field(grid_res, [mass], [[0,0,0]], scale_log=scale_type)
        
        # Calcular la trayectoria de la partícula
        orbit_path = rk4_simulate_orbit([px, py, pz], [vx, vy, vz], [mass], [[0,0,0]], max_time=sim_time)
        
        # Crear la figura 3D interactiva de Plotly
        fig = go.Figure()
        
        # 1. Graficar el campo vectorial como conos en 3D
        fig.add_trace(go.Cone(
            x=x_pts, y=y_pts, z=z_pts,
            u=u, v=v, w=w,
            colorscale='Viridis',
            sizemode='scaled',
            sizeref=0.4,
            showscale=True,
            colorbar=dict(title=dict(text="Intensidad de Fuerza", font=dict(color="#ffffff")), tickfont=dict(color="#ffffff")),
            name="Vector de Fuerza"
        ))
        
        # 2. Graficar el Agujero Negro en el centro (0, 0, 0)
        fig.add_trace(go.Scatter3d(
            x=[0], y=[0], z=[0],
            mode='markers',
            marker=dict(size=12 + mass*1.5, color='black', line=dict(width=2, color='purple')),
            name="Agujero Negro (Centro)"
        ))
        
        # 3. Graficar la trayectoria del satélite
        fig.add_trace(go.Scatter3d(
            x=orbit_path[:, 0], y=orbit_path[:, 1], z=orbit_path[:, 2],
            mode='lines',
            line=dict(color='#ec4899', width=4, dash='solid'),
            name="Trayectoria del Satélite"
        ))
        
        # 4. Graficar la partícula en su posición inicial
        fig.add_trace(go.Scatter3d(
            x=[px], y=[py], z=[pz],
            mode='markers+text',
            marker=dict(size=8, color='#f43f5e', symbol='circle'),
            text=["Satélite (r0)"],
            textposition="top center",
            name="Posición Inicial"
        ))
        
        # Configuración estética de la escena 3D
        fig.update_layout(
            title=dict(text="Visualización del Campo de Gravedad y Órbita en R^3", font=dict(color='#ffffff', size=18)),
            paper_bgcolor='#0d0f12',
            plot_bgcolor='#0d0f12',
            legend=dict(
                x=0.02, y=0.98,
                xanchor="left", yanchor="top",
                font=dict(color="#ffffff"),
                bgcolor="rgba(13, 15, 18, 0.75)",
                bordercolor="rgba(255, 255, 255, 0.15)",
                borderwidth=1
            ),
            scene=dict(
                xaxis=dict(title="Eje X", range=[-5.5, 5.5], backgroundcolor="#111827", color="#ffffff", gridcolor="#374151"),
                yaxis=dict(title="Eje Y", range=[-5.5, 5.5], backgroundcolor="#111827", color="#ffffff", gridcolor="#374151"),
                zaxis=dict(title="Eje Z", range=[-5.5, 5.5], backgroundcolor="#111827", color="#ffffff", gridcolor="#374151")
            ),
            margin=dict(l=0, r=0, b=0, t=40),
            height=700
        )
        
        st.plotly_chart(fig, use_container_width=True)
        
    st.markdown('</div>', unsafe_allow_html=True)

# -------------------------------------------------------------
# PESTAÑA 2: SISTEMA BINARIO (2 CUERPOS)
# -------------------------------------------------------------
with tab2:
    st.markdown('<div class="glass-card">', unsafe_allow_html=True)
    col1, col2 = st.columns([1, 2])
    
    with col1:
        st.subheader("Simulación Gravitatoria Binaria")
        st.write("Observa el principio de superposición. El vector de fuerza resultante en cada punto es la suma lineal de las fuerzas individuales.")
        
        # Parámetros del Cuerpo A
        st.markdown("**Cuerpo Celeste A (Izquierda)**")
        mass_a = st.slider("Masa de A (M1)", 0.5, 10.0, 4.0, 0.5)
        pos_a_x = st.slider("Posición X de A", -4.0, -1.0, -2.0, 0.5)
        
        # Parámetros del Cuerpo B
        st.markdown("**Cuerpo Celeste B (Derecha)**")
        mass_b = st.slider("Masa de B (M2)", 0.5, 10.0, 2.0, 0.5)
        pos_b_x = st.slider("Posición X de B", 1.0, 4.0, 2.0, 0.5)
        
        grid_res_bin = st.slider("Densidad de Vectores", min_value=4, max_value=8, value=5, step=1, key="grid_bin")
        
        st.markdown('<div class="math-box">', unsafe_allow_html=True)
        st.markdown("**Matemática de la Suma Vectorial:**")
        st.write("La fuerza neta $\\vec{F}$ sobre cualquier partícula es la suma lineal de las fuerzas generadas por $A$ y $B$:")
        st.latex(r"\vec{F}_{total}(\vec{r}) = \vec{F}_A(\vec{r}) + \vec{F}_B(\vec{r})")
        st.write("Como $\\vec{F}_A, \\vec{F}_B \\in \\mathbb{R}^3$, su suma $\\vec{F}_{total} \\in \\mathbb{R}^3$, demostrando la **cerradura bajo la suma**.")
        st.markdown('</div>', unsafe_allow_html=True)
        
        # Parámetros orbitales para sistema binario
        st.write("**Lanzar Satélite en Campo Binario**:")
        b_px = st.slider("x0", -5.0, 5.0, 0.0, 0.5, key="b_px")
        b_py = st.slider("y0", -5.0, 5.0, 3.0, 0.5, key="b_py")
        b_pz = st.slider("z0", -5.0, 5.0, 0.0, 0.5, key="b_pz")
        
        b_vx = st.slider("vx", -2.0, 2.0, 1.1, 0.1, key="b_vx")
        b_vy = st.slider("vy", -2.0, 2.0, 0.0, 0.1, key="b_vy")
        b_vz = st.slider("vz", -2.0, 2.0, 0.3, 0.1, key="b_vz")
        
    with col2:
        centers = [[pos_a_x, 0.0, 0.0], [pos_b_x, 0.0, 0.0]]
        masses = [mass_a, mass_b]
        
        # Calcular el campo total de la suma de vectores
        x_pts, y_pts, z_pts, u, v, w, magnitudes = calculate_gravity_field(grid_res_bin, masses, centers, scale_log=True)
        
        # Simular órbita caótica en sistema de dos centros gravitatorios
        orbit_path_bin = rk4_simulate_orbit([b_px, b_py, b_pz], [b_vx, b_vy, b_vz], masses, centers, max_time=15.0)
        
        fig_bin = go.Figure()
        
        # 1. Campo de fuerzas
        fig_bin.add_trace(go.Cone(
            x=x_pts, y=y_pts, z=z_pts,
            u=u, v=v, w=w,
            colorscale='Hot',
            sizemode='scaled',
            sizeref=0.4,
            showscale=True,
            colorbar=dict(title=dict(text="Fuerza Resultante", font=dict(color="#ffffff")), tickfont=dict(color="#ffffff")),
            name="Fuerza de Superposición"
        ))
        
        # 2. Cuerpo A
        fig_bin.add_trace(go.Scatter3d(
            x=[pos_a_x], y=[0], z=[0],
            mode='markers',
            marker=dict(size=10 + mass_a*1.5, color='#3b82f6', line=dict(width=2, color='white')),
            name="Cuerpo Celeste A (M1)"
        ))
        
        # 3. Cuerpo B
        fig_bin.add_trace(go.Scatter3d(
            x=[pos_b_x], y=[0], z=[0],
            mode='markers',
            marker=dict(size=10 + mass_b*1.5, color='#f59e0b', line=dict(width=2, color='white')),
            name="Cuerpo Celeste B (M2)"
        ))
        
        # 4. Trayectoria
        fig_bin.add_trace(go.Scatter3d(
            x=orbit_path_bin[:, 0], y=orbit_path_bin[:, 1], z=orbit_path_bin[:, 2],
            mode='lines',
            line=dict(color='#f43f5e', width=4),
            name="Trayectoria Satélite"
        ))
        
        # 5. Punto de partida del satélite
        fig_bin.add_trace(go.Scatter3d(
            x=[b_px], y=[b_py], z=[b_pz],
            mode='markers',
            marker=dict(size=8, color='#ffffff'),
            name="Lanzamiento (r0)"
        ))
        
        fig_bin.update_layout(
            title=dict(text="Superposición de Campos Vectoriales: F_total = F_A + F_B", font=dict(color='#ffffff', size=18)),
            paper_bgcolor='#0d0f12',
            plot_bgcolor='#0d0f12',
            legend=dict(
                x=0.02, y=0.98,
                xanchor="left", yanchor="top",
                font=dict(color="#ffffff"),
                bgcolor="rgba(13, 15, 18, 0.75)",
                bordercolor="rgba(255, 255, 255, 0.15)",
                borderwidth=1
            ),
            scene=dict(
                xaxis=dict(title="Eje X", range=[-5.5, 5.5], backgroundcolor="#111827", color="#ffffff", gridcolor="#374151"),
                yaxis=dict(title="Eje Y", range=[-5.5, 5.5], backgroundcolor="#111827", color="#ffffff", gridcolor="#374151"),
                zaxis=dict(title="Eje Z", range=[-5.5, 5.5], backgroundcolor="#111827", color="#ffffff", gridcolor="#374151")
            ),
            margin=dict(l=0, r=0, b=0, t=40),
            height=700
        )
        
        st.plotly_chart(fig_bin, use_container_width=True)
        
    st.markdown('</div>', unsafe_allow_html=True)

# -------------------------------------------------------------
# PESTAÑA 3: ÁLGEBRA VECTORIAL PURA (PLAYGROUND)
# -------------------------------------------------------------
with tab3:
    st.markdown('<div class="glass-card">', unsafe_allow_html=True)
    st.subheader("Patio de Recreo: Operaciones Básicas en R^3")
    st.write("Aquí puedes construir vectores arbitrarios y observar geométricamente la Suma y la Multiplicación Escalar en 3D.")
    
    col1, col2 = st.columns([1, 2])
    
    with col1:
        st.write("### Componentes de los Vectores")
        
        # Vector U
        st.markdown("<span style='color:#3b82f6; font-weight:bold;'>Vector u (Azul):</span>", unsafe_allow_html=True)
        ux = st.slider("u_x", -4.0, 4.0, 2.0, 0.5)
        uy = st.slider("u_y", -4.0, 4.0, 3.0, 0.5)
        uz = st.slider("u_z", -4.0, 4.0, 1.0, 0.5)
        
        # Vector V
        st.markdown("<span style='color:#10b981; font-weight:bold;'>Vector v (Verde):</span>", unsafe_allow_html=True)
        vx = st.slider("v_x", -4.0, 4.0, -1.0, 0.5)
        vy = st.slider("v_y", -4.0, 4.0, 1.0, 0.5)
        vz = st.slider("v_z", -4.0, 4.0, 3.0, 0.5)
        
        # Escalar k
        st.markdown("<span style='color:#f59e0b; font-weight:bold;'>Multiplicación Escalar k (Naranja):</span>", unsafe_allow_html=True)
        k = st.slider("Escalar k", -2.0, 2.0, 1.5, 0.1)
        
        st.markdown('<div class="math-box">', unsafe_allow_html=True)
        st.write("**Resultados de las operaciones:**")
        # Vector suma u+v
        sx, sy, sz = ux + vx, uy + vy, uz + vz
        # Vector k*u
        kx, ky, kz = k * ux, k * uy, k * uz
        
        st.write(f"$$\\vec{{u}} = ({ux:.1f}, {uy:.1f}, {uz:.1f})$$")
        st.write(f"$$\\vec{{v}} = ({vx:.1f}, {vy:.1f}, {vz:.1f})$$")
        st.markdown("---")
        st.write("**Suma de Vectores:**")
        st.write(f"$$\\vec{{u}} + \\vec{{v}} = ({sx:.1f}, {sy:.1f}, {sz:.1f})$$")
        st.write("**Multiplicación Escalar:**")
        st.write(f"$${k:.1f} \\cdot \\vec{{u}} = ({kx:.1f}, {ky:.1f}, {kz:.1f})$$")
        st.markdown('</div>', unsafe_allow_html=True)
        
    with col2:
        # Visualizar los vectores como líneas de origen a punta
        fig_pure = go.Figure()
        
        # Función auxiliar para dibujar un vector tridimensional con cono en la punta
        def draw_vector(fig, start, end, color, name, show_legend=True):
            # Línea (Cuerpo del vector)
            fig.add_trace(go.Scatter3d(
                x=[start[0], end[0]],
                y=[start[1], end[1]],
                z=[start[2], end[2]],
                mode='lines',
                line=dict(color=color, width=6),
                name=name,
                showlegend=show_legend
            ))
            # Cono en la punta para indicar dirección
            vec_dir = np.array(end) - np.array(start)
            norm = np.linalg.norm(vec_dir)
            if norm > 0:
                vec_dir_norm = vec_dir / norm
                # Ajustamos la posición un poco antes de la punta
                fig.add_trace(go.Cone(
                    x=[end[0]], y=[end[1]], z=[end[2]],
                    u=[vec_dir_norm[0]], v=[vec_dir_norm[1]], w=[vec_dir_norm[2]],
                    colorscale=[[0, color], [1, color]],
                    sizemode='absolute',
                    sizeref=0.4,
                    showscale=False,
                    name=name,
                    showlegend=False
                ))

        # Dibujar Vector U (Azul)
        draw_vector(fig_pure, [0,0,0], [ux, uy, uz], '#3b82f6', 'Vector u')
        
        # Dibujar Vector V (Verde)
        draw_vector(fig_pure, [0,0,0], [vx, vy, vz], '#10b981', 'Vector v')
        
        # Dibujar el camino del método del paralelogramo (v trasladado al final de u, en gris punteado)
        fig_pure.add_trace(go.Scatter3d(
            x=[ux, ux + vx],
            y=[uy, uy + vy],
            z=[uz, uz + vz],
            mode='lines',
            line=dict(color='#6b7280', width=3, dash='dash'),
            name='v trasladado (Suma)',
            showlegend=True
        ))
        
        # Dibujar Vector Suma (Rojo)
        draw_vector(fig_pure, [0,0,0], [ux + vx, uy + vy, uz + vz], '#ef4444', 'Suma: u + v')
        
        # Dibujar Vector Escalado k*u (Amarillo/Naranja)
        draw_vector(fig_pure, [0,0,0], [k * ux, k * uy, k * uz], '#f59e0b', f'Escalado: {k:.1f} • u')

        # Configuración del escenario
        fig_pure.update_layout(
            title=dict(text="Suma Vectorial (Método del Paralelogramo) y Escalamiento en R^3", font=dict(color='#ffffff', size=18)),
            paper_bgcolor='#0d0f12',
            plot_bgcolor='#0d0f12',
            legend=dict(
                x=0.02, y=0.98,
                xanchor="left", yanchor="top",
                font=dict(color="#ffffff"),
                bgcolor="rgba(13, 15, 18, 0.75)",
                bordercolor="rgba(255, 255, 255, 0.15)",
                borderwidth=1
            ),
            scene=dict(
                xaxis=dict(title="Eje X", range=[-8, 8], backgroundcolor="#111827", color="#ffffff", gridcolor="#374151"),
                yaxis=dict(title="Eje Y", range=[-8, 8], backgroundcolor="#111827", color="#ffffff", gridcolor="#374151"),
                zaxis=dict(title="Eje Z", range=[-8, 8], backgroundcolor="#111827", color="#ffffff", gridcolor="#374151")
            ),
            margin=dict(l=0, r=0, b=0, t=40),
            height=700
        )
        
        st.plotly_chart(fig_pure, use_container_width=True)
        
    st.markdown('</div>', unsafe_allow_html=True)

# -------------------------------------------------------------
# PESTAÑA 4: FUNDAMENTOS TEÓRICOS (APOYO EXPOSICIÓN)
# -------------------------------------------------------------
with tab4:
    st.markdown('<div class="glass-card">', unsafe_allow_html=True)
    st.subheader("Guía de Apoyo Teórico para la Exposición")
    st.write("""
    Esta sección contiene la base formal estructurada para que la uses como soporte visual o diapositiva de apoyo durante tu clase con los estudiantes.
    """)
    
    col_text1, col_text2 = st.columns(2)
    
    with col_text1:
        st.markdown("""
        ### 1. ¿Qué es un Espacio Vectorial?
        Formalmente, un **Espacio Vectorial** es un conjunto no vacío $V$ de objetos (llamados vectores), sobre los cuales están definidas dos operaciones:
        
        1. **Suma Vectorial ($+$):** Toma dos vectores $\\vec{u}, \\vec{v} \\in V$ y devuelve otro vector $\\vec{u} + \\vec{v} \\in V$.
        2. **Multiplicación por un Escalar ($\\cdot$):** Toma un número real $k \\in \\mathbb{R}$ y un vector $\\vec{u} \\in V$ y devuelve un vector $k \\cdot \\vec{u} \\in V$.
        
        Para que $V$ sea considerado un Espacio Vectorial, debe cumplir con **10 axiomas fundamentales** (como la conmutatividad, asociatividad, la existencia de un vector cero $\\vec{0}$, y distributividad).
        
        ### 2. El Espacio Euclidiano $\\mathbb{R}^3$
        En esta simulación, nuestro espacio de trabajo es $V = \\mathbb{R}^3$:
        $$\\mathbb{R}^3 = \\{(x,y,z) \\mid x, y, z \\in \\mathbb{R}\\}$$
        Cualquier posición de una estrella o satélite, así como sus velocidades y fuerzas, son vectores en este espacio.
        """)
        
    with col_text2:
        st.markdown("""
        ### 3. ¿Qué es un Campo Vectorial?
        Un campo vectorial es una función matemática que asigna un vector a cada punto en un espacio geométrico. 
        
        * En nuestra simulación, a cada **Vector de Posición** $\\vec{r} \\in \\mathbb{R}^3$ le asignamos un **Vector de Fuerza** $\\vec{F}(\\vec{r}) \\in \\mathbb{R}^3$.
        * El espacio no está vacío; está cubierto por un flujo ordenado de vectores de fuerza que dictan cómo se moverá cualquier cuerpo que pase por allí.
        
        ### 4. Conexión de Conceptos con la Simulación
        
        * **Cerradura bajo la Suma:** Al tener dos cuerpos celestes, sus fuerzas se combinan linealmente. La fuerza total en cualquier punto sigue siendo un vector tridimensional:
          $$\\vec{F}_1 + \\vec{F}_2 = \\vec{F}_{neta} \\in \\mathbb{R}^3$$
          
        * **Multiplicación por Escalar:** La masa del agujero negro actúa como el escalar. Si duplicas la masa ($k=2$), duplicas la intensidad (longitud) de todos los vectores de fuerza en todo el espacio al mismo tiempo:
          $$k \\cdot \\vec{F}(\\vec{r}) = \\vec{F}_{escalada}(\\vec{r})$$
        """)
    st.markdown('</div>', unsafe_allow_html=True)
