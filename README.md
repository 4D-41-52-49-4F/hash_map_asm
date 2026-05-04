# 🗺️ Hash Map in x64 Assembly

## 📝 Introduction
This project is a personal exploration into low-level data structures. I wanted to see how a **Hash Map** works under the hood by implementing it from scratch in **x64 Assembly (NASM)** for Windows. 

The goal wasn't to create a production-ready, high-performance library, but rather to have fun solving the challenges of manual memory management and data organization at the CPU level.

## 🚀 Features
*   **DJB2 Hashing:** Uses the DJB2 algorithm to map string keys to indices.
*   **Dynamic Resizing:** Includes a basic rehashing mechanism that scales the map when it gets too full.
*   **Manual Memory Management:** Interacts directly with the heap for allocating and freeing memory blocks.
*   **Windows x64 ABI:** Follows standard calling conventions to stay compatible with the Windows environment.

## 🛠️ Building the Project
To compile and link the project, you need **NASM** and **GCC** (e.g., via MinGW-w64).

### 🤖 Automated Build
I've included a simple batch script to handle the assembly and linking:
1. Open your terminal in the project directory.
2. Run:
   ```cmd
   .\build.bat
   ```

---

## 📂 Project Structure
*   `main.asm`: A simple entry point to test if everything is working.
*   `hash_map.asm`: The core logic for hashing, inserting, and resizing.
*   `strucs.inc`: Memory layout definitions for the map's structures.

---

## 🚀 Future Goals
Since I really enjoyed this little project, I plan to explore more fundamental data structures in Assembly and potentially transform this repository from a "Hash_Map" repository into a comprehensive "Data_Structures" collection. Planned implementations could include:

- **Arrays & Dynamic Arrays:** Building resizable linear containers.
- **Linked Lists:** Implementing both **Singly-Linked** and **Doubly-Linked Lists** to practice pointer-heavy navigation.
- **Trees:** Exploring hierarchical structures like **Binary Search Trees** or **Heaps**.
- **Stacks & Queues:** Implementing specialized LIFO/FIFO structures from scratch.
