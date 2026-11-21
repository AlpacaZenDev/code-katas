# 🌌 Simulador Interactivo de Álgebra y Espacios Vectoriales 3D

¡Bienvenido! Este proyecto es una herramienta pedagógica diseñada especialmente para **docentes de matemáticas y física**. Su propósito es ayudar a estudiantes del nivel secundario a visualizar conceptos abstractos de Álgebra Lineal (como espacios vectoriales, suma de vectores y multiplicación por un escalar) utilizando la física de la gravedad y las órbitas espaciales como analogía visual interactiva.

La aplicación se ejecuta de forma local en tu computadora y se abre directamente en tu navegador web como una página interactiva en 3D.

---

## 🛠️ ¿Qué tecnologías utiliza? (El "Stack")

No necesitas saber programar para usar esta simulación, pero es útil saber de qué partes está compuesta:
1. **Python (Lenguaje Principal):** Es el lenguaje de programación en el que está escrito todo el código del simulador.
2. **Streamlit (La Interfaz Web):** Es la herramienta que crea la página web, organiza los textos y genera los botones y deslizadores (*sliders*) para que puedas interactuar con la simulación sin tocar código.
3. **Plotly (El Dibujante 3D):** Es el motor de gráficos interactivos. Es el responsable de dibujar el espacio, las estrellas, los vectores y permitirte rotar la escena en 3D con el ratón.
4. **NumPy (La Calculadora):** Es una herramienta matemática de alta velocidad. Se encarga de calcular miles de posiciones y aplicar la fórmula de gravedad en fracciones de segundo para que el movimiento del satélite sea fluido.

---

## 📋 Requisitos para hacerlo funcionar

Para poder ejecutar este simulador en tu computadora, solo necesitas:
1. **Tener Python instalado:** Se recomienda la versión 3.9 o superior. Si no lo tienes, puedes descargarlo de forma gratuita desde [python.org](https://www.python.org/). *(Asegúrate de marcar la casilla "Add Python to PATH" durante la instalación).*
2. **Una conexión a internet:** Solo la requerirás la **primera vez** para descargar las tres librerías del proyecto. Después de eso, el simulador funciona completamente sin internet (fuera de línea).

---

## 🚀 Guía paso a paso para iniciar el simulador

Sigue estos sencillos pasos para abrir el simulador en tu computadora:

### Paso 1: Abrir la consola de comandos de tu sistema operativo
*   **En Windows:** Presiona la tecla `Windows`, escribe `CMD` (Símbolo del sistema) o `PowerShell` y presiona `Enter`.

### Paso 2: Ir a la carpeta del proyecto
Escribe el siguiente comando en la consola para ubicarte dentro de la carpeta del simulador y presiona `Enter`:
```bash
D:
cd D:\Repos\code-katas\upecen\vectorial-spaces
```

### Paso 3: Instalar las dependencias (Solo la primera vez)
Escribe el siguiente comando para que Python descargue e instale automáticamente las herramientas matemáticas y de gráficos necesarias:
```bash
pip install -r requirements.txt
```
*(Espera a que termine el proceso. Puede tardar entre 1 y 2 minutos dependiendo de tu conexión a internet).*

### Paso 4: Encender el simulador
Escribe este comando para arrancar la simulación:
```bash
python -m streamlit run app.py
```

### Paso 5: ¡Interactuar!
Una vez encendido, tu consola te mostrará una dirección de red. Abre tu navegador web favorito (Chrome, Edge, Firefox, etc.) e ingresa a:
👉 **[http://localhost:8501](http://localhost:8501)**

---

## 📂 Archivos del Proyecto

El proyecto está compuesto por tres archivos simples:
*   `app.py`: Contiene todas las fórmulas físicas, los cálculos de órbitas y el diseño de la página interactiva.
*   `requirements.txt`: Es la lista de las librerías necesarias (`numpy`, `plotly`, `streamlit`) para que la computadora las descargue automáticamente.
*   `README.md`: Este manual de instrucciones.
