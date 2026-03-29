# Configurar **Northwind** usando el archivo `instnwnd.sql`.

## 🚀 Setup de Base de Datos: Northwind

Para instalar la base de datos de práctica en un entorno local nuevo, sigue estos pasos en **SQL Server Management Studio (SSMS)**:

1. **Crear el contenedor:**
   ```sql
   CREATE DATABASE Northwind;
   GO
   ```

2. **Ejecutar el script de objetos:**
   * Abre el archivo `instnwnd.sql` en SSMS.
   * Asegúrate de seleccionar la base de datos `Northwind` en el selector de la barra de herramientas (o añade `USE Northwind;` al inicio del script).
   * Presiona **F5** para ejecutar.

3. **Verificación rápida:**
   ```sql
   USE Northwind;
   SELECT TOP 5 * FROM Products;
   ```
