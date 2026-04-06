# Jason AgentSpeak - Ejemplos de Sistemas Multiagente

Una colección de **ejemplos** para aprender a desarrollar sistemas multiagente inteligentes utilizando **Jason**, un framework BDI (Belief-Desire-Intention) basado en AgentSpeak. Todos los ejemplos vienen con las herramientas necesarias integradas.

## 📋 Contenidos

- [¿Qué es Jason?](#qué-es-jason)
- [Requisitos](#requisitos)
- [Instalación](#instalación)
- [Uso Rápido](#uso-rápido)
- [Ejemplos Incluidos](#ejemplos-incluidos)
- [Estructura del Proyecto](#estructura-del-proyecto)
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
├── examples/              # Ejemplos oficiales de Jason
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

## 📁 Estructura del Proyecto

```
jason_agentspeak/
├── libs/                          # Librerías Jason
│   └── jason-*.jar
├── examples/                      # Ejemplos de proyectos
│   ├── auction/                   # Subastas
│   ├── airport/                   # Sistema aeroportuario
│   ├── blocks-world/              # Mundo de bloques
│   ├── cleaning-robots/           # Robots limpiadores
│   ├── contract-net-protocol*/    # Protocolo CNP (3 versiones)
│   ├── domestic-robot/            # Robot doméstico
│   ├── food-simulation/           # Simulación de alimentos
│   ├── game-of-life/              # Juego de la vida
│   ├── gold-miners*/              # Minería de oro (2 versiones)
│   ├── iterated-prisoners-dilemma/# Dilema del prisionero
│   ├── mining-robots/             # Robots mineros
│   ├── room/                      # Ambiente de sala
│   ├── sniffer/                   # Monitor de comunicaciones
│   ├── st-claus/                  # Santa Claus
│   └── water-jugs/                # Problema de cántaros
├── run_example.bat                # Script para ejecutar ejemplos (Windows)
└── README.md                      # Este archivo
```

## 🔧 Uso Avanzado

### Ejecutar un proyecto específico manualmente:

```bash
cd examples/auction
# Jason compilará el .mas2j y ejecutará con Ant
```

### Usar el Inspector de Mentes:
Varios ejemplos incluyen configuración para el inspector visual de mentes que permite:
- Ver creencias de los agentes
- Inspeccionar planes
- Debuggear ejecución paso a paso

Ejemplo en `contract-net-protocol/`:
```
[mindinspector="gui(cycle,html,history)"]
```

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

### Conceptos BDI
- **FIPA (Foundation for Intelligent Physical Agents)**: Estándares para agentes
- **Protocolo de Red de Contratos**: http://www.fipa.org/specs/fipa00029/

### Tutoriales
- Agent Programming in Jason: Guía oficial
- BDI Fundamentals: Conceptos básicos de agentes
- Multi-Agent Systems: Teoría y práctica

## 🎯 Casos de Uso

Este proyecto es ideal para:
- 📚 **Educación**: Aprender programación de agentes BDI
- 🔬 **Investigación**: Prototipado rápido de sistemas multiagente
- 🏗️ **Desarrollo**: Base para sistemas complejos de agentes
- 🎮 **Simulaciones**: Crear ambientes interactivos multiagente

## 💡 Tips y Mejores Prácticas

1. **Comienza con ejemplos simples** como `room/` o `water-jugs/`
2. **Usa el Inspector de Mentes** para entender el comportamiento de agentes
3. **Estudia la carpeta `doc/` de cada ejemplo** para explicaciones detalladas
4. **Experimenta combinando conceptos** de diferentes ejemplos
5. **Mantén los planes `.asl` simples y legibles** para facilitar mantenimiento

## 🤝 Contribuciones

Si encuentras bugs o tienes mejoras:
1. Verifica la documentación oficial de Jason
2. Prueba con la versión más reciente
3. Reporta issues de manera clara

## 📄 Licencia

Este proyecto utiliza **Jason**, que está bajo licencia LGPL.

---

**Última actualización**: Abril 2026  
**Estado**: ✅ Completo con 18 ejemplos

¡Disfruta creando sistemas multiagente! 🚀
