# 🌐 NetProbe CLI
> **The Swiss Army Knife for Linux & WSL Network Diagnostics**

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
![Platform](https://img.shields.io/badge/Platform-Linux%20%7C%20WSL-blue)
![Status](https://img.shields.io/badge/Status-Concept-orange)

---

## 📖 Overview
**NetProbe** is a unified command-line interface (CLI) designed to simplify and standardize network troubleshooting on **Linux and WSL** systems.

<img width="898" height="740" alt="image" src="https://github.com/user-attachments/assets/ae6e7237-b132-45d2-bbfc-84b1bb192ae2" />

Instead of manually using multiple legacy tools such as `ping`, `dig`, `traceroute`, and `netstat`, NetProbe runs a **sequential diagnostic suite**, executing tests in a logical order (DNS → Connectivity → Services) to pinpoint exactly where a network connection fails.

NetProbe is designed to work identically on **local machines, remote servers, and WSL environments**.

---

## 🚩 The Problem
<img width="1124" height="716" alt="image" src="https://github.com/user-attachments/assets/1f0fc91f-dd42-4bcd-8120-61fa645e4799" />

Network failures are rarely caused by a single issue. A connection problem may be due to:

- **DNS Failure:** The hostname does not resolve
- **Firewall Block:** The target port is closed or filtered
- **ISP / Routing Issue:** Packet loss or high latency along the route
- **Local Misconfiguration:** Broken interfaces, routing tables, or WSL bridges

NetProbe answers one critical question:

> **“Where exactly is the network chain breaking?”**

---

## 🚀 Key Features
- **Smart Ping**  
  Measures latency, packet loss, and basic jitter

- **DNS Validator**  
  Verifies DNS resolution (A, CNAME, MX records) and lookup speed

- **Port Scanner**  
  Checks whether common service ports (80, 443, 22, etc.) are open and reachable

- **Path Trace**  
  Visualizes the network route to detect routing or ISP-level bottlenecks

- **Environment Awareness**  
  Automatically adapts behavior for **Native Linux vs WSL2 networking**

- **Auto Summary Report**  
  Generates a clear Pass/Fail diagnostic summary at the end of each scan

---

## 🧠 How NetProbe Thinks
NetProbe follows a **layered diagnostic approach**:
1. Can the hostname resolve? (DNS)
2. Can the target be reached? (Network)
3. Is the service responding? (Transport)
4. Where does the path degrade? (Routing)

This mirrors real-world **DevOps and SRE troubleshooting workflows**.

---

## 🛠 Tech Stack & Skills
This project is a hands-on exploration of core **DevOps and Linux networking concepts**, including:

- **Languages:** Bash / Shell Scripting
- **Networking:** OSI Layer 3 (Network) & Layer 4 (Transport)
- **System Internals:** Linux networking stack and WSL virtual bridges
- **Automation:** Turning multi-step diagnostics into a single-command tool
- **CLI Design:** Usability, error handling, and readable output

---

## 👨‍💻 Target Users

| User Role | Typical Use Case |
|---------|------------------|
| **DevOps Engineer** | Debugging service-to-service communication |
| **System Administrator** | Verifying server reachability and firewall rules |
| **Developer** | Checking why a local app or container is unreachable |
| **Students** | Learning how network diagnostics work in practice |

---

## 🎓 Learning Objectives
By building and using NetProbe, users will gain experience with:
- Linux networking commands and behavior
- WSL networking differences and limitations
- Writing production-style Bash scripts
- Diagnosing real-world connectivity issues
- Designing maintainable CLI tools

---

## 📂 Project Roadmap
- [x] Concept & idea validation
- [ ] Alpha: Ping and DNS diagnostics
- [ ] Beta: Port scanning and WSL bridge detection
- [ ] Stable: Traceroute and performance analysis
- [ ] Final: Exportable JSON reports for CI/CD pipelines

---

## 📍 Project Status
🚧 **Concept and early design phase**

Architecture, implementation details, and usage examples will be added as development progresses.

---

## ⚖️ License
This project is licensed under the **MIT License**.  
See the [LICENSE](LICENSE) file for details.
