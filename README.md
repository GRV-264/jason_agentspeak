# Jason AgentSpeak - Ejemplos de Sistemas Multiagente

Una colección de **ejemplos** para aprender a desarrollar sistemas multiagente inteligentes utilizando **Jason**, un framework BDI (Belief-Desire-Intention) basado en AgentSpeak. Todos los ejemplos vienen con las herramientas necesarias integradas.

## 📋 Contenidos

- [¿Qué es Jason?](#qué-es-jason)
- [Requisitos](#requisitos)
- [Instalación](#instalación)
- [Uso Rápido](#uso-rápido)
- [Ejemplos Incluidos](#ejemplos-incluidos)
- [Recursos y Referencias](#recursos-y-referencias)

## 🤖 ¿Qué es Jason?

Jason es un framework Java de código abierto para desarrollar agentes BDI (Belief-Desire-Intention) usando el lenguaje **AgentSpeak**. Permite crear sistemas multiagente complejos donde los agentes tienen:

- **Creencias (Beliefs)**: Información sobre el estado del mundo
- **Deseos (Desires)**: Objetivos que los agentes quieren alcanzar
- **Intenciones (Intentions)**: Planes que los agentes están ejecutando

### Características principales:
- ✅ Ciclo de razonamiento BDI completo
- ✅ Lenguaje declarativo basado en lógica
- ✅ Comunicación entre agentes
- ✅ Ambientes personalizables en Java
- ✅ Inspector de mentes para debugging
- ✅ Simulaciones con visualización gráfica

## 📦 Requisitos

- **Java 8 o superior**

### Verificar instalación de Java:
```bash
java -version
```

**Nota:** Todas las herramientas necesarias (Jason, Ant, librerías) están incluidas en la carpeta `/libs`

## 🚀 Instalación

1. **Clonar o descargar** este repositorio:
```bash
git clone <repositorio>
cd jason_agentspeak
```

2. **¡Listo!** No requiere instalación adicional. La carpeta `/libs` contiene todo lo necesario:
   - Jason y todas sus herramientas
   - Apache Ant para compilación
   - Librerías dependientes

**Estructura del proyecto:**
```
jason_agentspeak/
├── libs/                  # Todas las herramientas necesarias ✓
├── examples/              # Ejemplos Jason
│   └── [proyectos .mas2j]
├── run_example.bat        # Script para ejecutar
└── README.md
```

## ⚡ Uso Rápido

### Windows
```bash
run_example.bat
```
Se abrirá un menú interactivo para seleccionar el proyecto a ejecutar.

### Linux/Mac
Adaptar `run_example.bat` a bash o ejecutar manualmente en cada carpeta de ejemplo.

## 📚 Ejemplos Incluidos

1. **Airport** - Operaciones aeroportuarias (HeathrowRobots)
2. **Auction** - Sistema de subastas multiagente
3. **Blocks World** - Problema clásico del mundo de bloques
4. **Cleaning Robots** - Robots limpiadores coordinados (mars)
5. **Contract Net Protocol** - Protocolo CNP versión básica
6. **Contract Net Protocol ER** - Protocolo CNP con extensión de resultados
7. **Contract Net Protocol Module** - Protocolo CNP modular
8. **Domestic Robot** - Robot autónomo en el hogar
9. **Food Simulation** - Simulación ambiental compleja
10. **Game of Life** - Autómata celular de Conway
11. **Gold Miners** - Minería de oro versión básica (jasonTeam)
12. **Gold Miners II** - Minería de oro versión avanzada
13. **Iterated Prisoner's Dilemma** - Dilema del prisionero iterado
14. **Mining Robots** - Robots de recolección de recursos
15. **Room** - Agentes en un ambiente compartido
16. **Sniffer** - Monitor de comunicaciones entre agentes
17. **Saint Claus** - Sistema de distribución de regalos
18. **Water Jugs** - Problema de búsqueda de estados


### Crear un nuevo proyecto:
1. Copiar una carpeta de ejemplo existente
2. Renombrar archivo `.mas2j`
3. Modificar agentes `.asl` según necesidad
4. Adaptar ambiente Java si es necesario

## 📖 Recursos y Referencias

### Documentación Oficial
- **Repositorio Jason**: https://github.com/jason-lang/jason
- **Releases**: https://github.com/jason-lang/jason/releases
- **Documentación AgentSpeak**: https://spade-bdi.readthedocs.io/latest/agentspeak.html

---

**Última actualización**: Abril 2026  
**Estado**: ✅ Completo con 18 ejemplos

¡Disfruta creando sistemas multiagente! 🚀


![Java](https://img.shields.io/badge/Java-ED8B00?style=for-the-badge&logo=java&logoColor=white)
![Jason](https://img.shields.io/badge/Jason-MAS-blueviolet?style=for-the-badge)