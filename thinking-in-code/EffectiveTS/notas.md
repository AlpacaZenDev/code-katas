
---

## Configuración de Samba e Ingreso desde Windows 11

### Fase A: Preparación en el Enrutador ZTE F6600P

1. **Acceso a la Consola Web:** Abre tu navegador habitual e introduce la dirección IP `192.168.1.1`. Inicia sesión con tus credenciales de red.
2. **Ubicación del Servicio:** Dirígete al menú superior negro y selecciona la pestaña **Local Network**. Posteriormente, en el panel lateral izquierdo, haz clic en **Samba Service**.
3. **Modificación de Parámetros de Red:** Introduce la siguiente configuración exacta:
* **Samba Service:** `On`
* **Anonymous:** `On` *(Crucial: Esto habilita la exposición del puerto sin colisiones por cuentas de usuario locales obsoletas).*
* **Samba Username:** `samba`


4. **Almacenamiento:** Presiona el botón azul **Apply**. Puedes constatar la correcta lectura del hardware ingresando al submenú **USB** en la parte inferior del menú izquierdo.

### Fase B: Configuración del Cliente en Windows 11

Dado que este tipo de routers domésticos operan bajo una infraestructura antigua de intercambio de archivos, Windows 11 requiere que restaures el cliente correspondiente:

1. Presiona la tecla `Windows`, digita **Activar o desactivar las características de Windows** y presiona `Enter`.
2. En el árbol de opciones, desplázate hacia abajo hasta encontrar **Compatibilidad con el protocolo para compartir archivos SMB 1.0/CIFS**.
3. Despliégala presionando en el símbolo `+` y marca exclusivamente la casilla **Cliente SMB 1.0/CIFS** (*SMB 1.0/CIFS Client*).
4. Presiona **Aceptar**, aguarda a que el asistente aplique los cambios del sistema y **reinicia tu computadora**.

### Fase C: Enlace e Implementación Persistente (Unidad de Red)

1. Presiona las teclas `Windows + E` para inicializar el **Explorador de Archivos**.
2. Dale un clic directo a la barra de navegación superior (donde aparecen las rutas de tus carpetas), borra todo e introduce la dirección UNC:
```text
\\192.168.1.1
```


3. Presiona `Enter`. Verás la raíz de tu memoria de almacenamiento.
4. **Fijar unidad de red:** Dale un clic derecho a la carpeta compartida expuesta en pantalla y selecciona **Conectar a unidad de red...** (Map network drive).
5. Escoge una letra disponible (como la `V:` o la `Z:`), mantén activa la casilla de verificación **Conectar de nuevo al iniciar sesión** y presiona **Finalizar**.

---

### Explicación del Comportamiento Técnico

Por razones de ciberseguridad, Windows 11 bloquea de forma predeterminada los inicios de sesión como **"Invitado Inseguro" (Insecure Guest Logons)** para proteger tu equipo de ataques de suplantación de identidad (Man-in-the-Middle) en entornos de red empresarial.

Cuando el router ZTE está configurado con **`Anonymous: On`**, le indica al cliente SMB de Windows que inicie la transferencia de paquetes sin un protocolo criptográfico de usuario/contraseña tradicionales en el puerto 445. Windows, al notar que la conexión carece de autenticación e integridad firmada, aborta la operación arrojando bucles de credenciales o errores de acceso denegado.

Al inyectar la clave `AllowInsecureGuestAuth` con valor numérico binario `1` en el componente de red `LanmanWorkstation`, se anula de manera selectiva dicha directiva restrictiva, permitiéndole al núcleo de Windows interactuar libremente con el servidor Samba de tu red hogareña.

