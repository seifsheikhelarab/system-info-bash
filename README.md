# System Information Menu Script

A Bash script that provides an interactive, menu-driven interface for retrieving key system information. Designed for ease of use, this script allows users to gather system stats and specifications without requiring extensive command-line knowledge.

---

## Table of Contents

1. [Project Description](#project-description)
    - [Key Features](#key-features)
    - [How It Works](#how-it-works)
    - [Use Cases](#use-cases)
    - [Technologies Used](#technologies-used)
    - [Benefits](#benefits)
2. [Sample Execution](#sample-execution)
3. [Code Explanation](#code-explanation)
    - [Basic Structure](#basic-structure)
    - [Options](#options)
    - [Error Handling](#error-handling)
4. [Team Members](#team-members)

---

## Project Description

The **System Information Menu Script** is a utility written in Bash that simplifies accessing system information through a command-line menu. Users can interactively select various options to retrieve details such as system uptime, memory usage, and disk space.

### Key Features

1. **Basic System Information**:
   - Hostname, kernel version, and operating system details.
2. **CPU Information**:
   - CPU model and the number of cores/threads.
3. **Memory Information**:
   - Total, used, and available memory in a human-readable format.
4. **Disk Space Information**:
   - Total, used, and available disk space across all mounted file systems.
5. **Network Information**:
   - IPv4 addresses excluding the loopback address.
6. **System Uptime**:
   - Displays how long the system has been running.
7. **Exit Option**:
   - Allows users to gracefully exit the script.

### How It Works

1. Upon execution, the script presents a menu with numbered options.
2. Users select an option by entering its corresponding number (1-7).
3. The script executes commands to fetch and display the requested information.
4. The process repeats until the user chooses the exit option.

### Use Cases

- **System Administrators**: Monitor and troubleshoot system stats.
- **Developers**: Review system specifications during development.
- **Learners**: Explore system information tools in a guided environment.

### Technologies Used

- **Bash Scripting**: For menu creation and command execution.
- **Linux Utilities**: Commands like `hostname`, `uname`, `lscpu`, `free`, `df`, `ip`, and `uptime` are used to gather system information.

### Benefits

- **User-Friendly**: Intuitive menu-driven interface.
- **Time-Saving**: Consolidates frequently used commands.
- **Customizable**: Easily extendable to include additional metrics.



## Sample Execution

Below is an example of the script running on Ubuntu:

```plaintext
-----------------------------
      SYSTEM INFO MENU

1) Basic System Info
2) CPU Information
3) Memory Information
4) Disk Space
5) Network Information
6) Uptime
7) Exit
-----------------------------
Choose an option (1-7): 1
-----------------------------

Basic System Information:

Hostname: DESKTOP-6GPG3NP
Kernel Version: 5.15.167.4-microsoft-standard-WSL2
PRETTY_NAME="Ubuntu 24.04.1 LTS"

-----------------------------
```

---

## Code Explanation

### Basic Structure

1. **Header**: `#!/bin/bash` specifies the script's interpreter.
2. **Menu**: Options are displayed using `echo`.
3. **Loop**: The script runs continuously until the user selects the exit option.
4. **Input Handling**: The `read` command captures user input, which is evaluated using a `case` statement.

### Options

1. **Basic System Info**: Retrieves hostname, kernel version, and OS details.
2. **CPU Info**: Displays CPU model and core count.
3. **Memory Info**: Outputs total, used, and available memory.
4. **Disk Space**: Summarizes disk usage with `df` and formats output with `awk`.
5. **Network Info**: Lists IPv4 addresses (excluding loopback).
6. **Uptime**: Shows system uptime in a human-readable format.
7. **Exit**: Ends the script gracefully.

### Error Handling

- Invalid inputs prompt the user to enter a valid choice.



## Team Members

- **Seif Usama Sheikhelarab**
- **Menna Atta Elbardawil**
- **Ahmed Mohammed Sultan**
- **Menna Fathy Amin**
- **Ahmed Samy Mohamed**
- **Ola Saleh Ibrahim**
- **Youssef Wael Farouk**
- **Hager Yasser Abdelwahab**
- **Abdelrahman Wael Elsharkawy**
