# Robot_3DoF_RTR

Design and simulation of a 3-DOF RTR (Rotation – Translation – Rotation) serial robot controller using MATLAB/Simulink. This project encompasses robot kinematics, trajectory planning, dynamic modeling, and closed-loop trajectory tracking control.

---

## Overview

This project presents the complete design and simulation process of a **3-DOF RTR** serial robot. 

Key components include:
- Forward and inverse kinematics
- Differential kinematics using Jacobian matrices
- Trapezoidal velocity trajectory planning
- Geometric obstacle avoidance
- Dynamic modeling using Lagrange equations
- Proportional-Derivative (PD) controller with gravity compensation
- MATLAB/Simulink and Simscape simulations
- Mechanical design in SolidWorks for Simscape simulation purposes

---

## Features

- ✔️ Forward kinematics
- ✔️ Inverse kinematics
- ✔️ Velocity kinematics based on Jacobian matrices
- ✔️ Trapezoidal velocity profile generation
- ✔️ Obstacle avoidance
- ✔️ Lagrange dynamic modeling
- ✔️ PD controller + gravity compensation
- ✔️ MATLAB/Simulink + Simscape co-simulation
- ✔️ SolidWorks CAD modeling for Simscape

---

## Repository Structure

```text
Robot_3DoF_RTR
│
├── README.md
├── Simsc_DLH/      # Dynamics Simulation + Simscape
├── PD+G/           # Controller Implementation
├── PP_Daiso/       # Forward & Inverse Kinematics (Algebraic Method)
├── PP_Hinhhoc/     # Forward & Inverse Kinematics (Geometric Method)
├── ne_vat_can/     # Obstacle Avoidance
├── thietke/        # Mechanical Design Resources (CAD)
├── tinhtoan.m      # MATLAB Calculations
└── ...