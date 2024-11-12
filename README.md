**Proyecto de Pruebas de API CRUD para Usuarios**

Este proyecto realiza pruebas de API CRUD (Crear, Leer, Actualizar, Eliminar) para la gestión de usuarios, utilizando Cucumber para la definición de escenarios y RestAssured para hacer solicitudes HTTP a la API. Las pruebas están diseñadas con el patrón FactoryRequest para manejar las solicitudes y el Runner contiene las definiciones de pasos de Cucumber. 

**Requisitos**

- **Java** 8 o superior
- **Maven** o **Gradle** para gestionar las dependencias
- **Cucumber** para definir y ejecutar pruebas BDD
- **RestAssured** para realizar solicitudes HTTP a la API
- **JUnit** para la ejecución de pruebas

**Instalación**

1. **Clona el repositorio**:

   git clone https://github.com/p-amela/ApiCode.git

1. **Instala las dependencias**:
   1. Si usas **Gradle**, ejecuta:

      gradle clean build

**Estructura del Proyecto**

- src/test/resources/features: contiene los archivos. feature con los escenarios de prueba definidos en lenguaje Gherkin.
- src/test/java/factoryRequest: contiene la implementación del patrón FactoryRequest que gestiona las solicitudes HTTP para cada operación (GET, POST, PUT, DELETE).
- src/test/java/runners: contiene el Runner de JUnit, el cual incluye las definiciones de los pasos (Steps) de Cucumber.** 

**Funcionalidad Probada**

**Escenarios de CRUD para Usuarios**

1. **Crear un nuevo usuario**: Envia una solicitud POST con detalles del usuario y valida la creación exitosa.
1. **Leer un usuario por ID**: Envia una solicitud GET para obtener la información de un usuario específico.
1. **Actualizar un usuario existente**: Envia una solicitud PUT con los detalles actualizados para modificar un usuario.
1. **Eliminar un usuario**: Envia una solicitud DELETE para eliminar un usuario existente por ID.

**Configuración de Autenticación**

Este proyecto utiliza autenticación de tipo **Bearer Token**. Asegúrate de configurar el token de acceso en el archivo de configuración antes de ejecutar las pruebas.

String token = "tu\_token\_de\_acceso";

info.setHeaders("Authorization", "Bearer " + token);

**Dependencias**

En tu archivo build.gradle o pom.xml, asegúrate de incluir las dependencias de:

- **RestAssured**
- **Cucumber**
- **JUnit**

