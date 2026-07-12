# Robot_3DoF_RTR

Design and simulation of a **3-DOF RTR (Rotation – Translation – Rotation)** serial robot controller using MATLAB/Simulink. This project covers robot kinematics, trajectory planning, dynamic modeling, and closed-loop trajectory tracking control.

---

## Overview

This project presents the complete design and simulation of a **3-DOF RTR serial manipulator**.

The project includes:

- Forward and inverse kinematics
- Differential kinematics using Jacobian matrices
- Trapezoidal velocity trajectory planning
- Geometric obstacle avoidance
- Dynamic modeling based on Euler–Lagrange formulation
- PD controller with gravity compensation
- MATLAB/Simulink and Simscape simulation
- Mechanical design using SolidWorks

---

## Features

- ✔ Forward kinematics
- ✔ Inverse kinematics
- ✔ Jacobian matrix computation
- ✔ Differential kinematics
- ✔ Trapezoidal trajectory planning
- ✔ Cartesian path planning
- ✔ Obstacle avoidance
- ✔ Dynamic modeling using Euler–Lagrange equations
- ✔ PD controller with gravity compensation
- ✔ MATLAB/Simulink simulation
- ✔ Simscape Multibody simulation
- ✔ SolidWorks CAD model

---

## Repository Structure

```text
Robot_3DoF_RTR
│
├── README.md
├── Simsc_DLH/      # Simscape dynamics simulation
├── PD+G/           # PD controller with gravity compensation
├── PP_Daiso/       # Forward & inverse kinematics (Algebraic method)
├── PP_Hinhhoc/     # Forward & inverse kinematics (Geometric method)
├── ne_vat_can/     # Obstacle avoidance
├── thietke/        # SolidWorks CAD files
├── tinhtoan.m      # MATLAB calculations
└── ...
```

---

## Software Requirements

- MATLAB R2023a or later
- Simulink
- Simscape Multibody
- SolidWorks (optional)

---

## Simulation Modules

### Kinematics

- Forward kinematics
- Inverse kinematics
- Jacobian matrix
- Differential kinematics

### Trajectory Planning

- Trapezoidal velocity profile
- Smooth motion planning
- Cartesian trajectory generation

### Dynamics

The robot dynamics are modeled using the Euler–Lagrange formulation:

\[
M(q)\ddot{q}+C(q,\dot{q})\dot{q}+g(q)=u
\]

### Control

A gravity-compensated PD controller is employed:

\[
u=K_p(q_d-q)+K_d(\dot{q}_d-\dot{q})+g(q)
\]

---

## Simulation Results

The simulations demonstrate:

- Accurate forward and inverse kinematics
- Smooth trajectory generation
- Stable trajectory tracking
- Effective gravity compensation
- Closed-loop dynamic response
- Successful obstacle avoidance

---

## Applications

This project can be used for:

- Robotics education
- Robot kinematics and dynamics study
- Motion planning
- MATLAB/Simulink learning
- Simscape Multibody practice
- Controller design
---

## Author

**Nguyen Duc Thu**

Department of Mechatronics Engineering

Vietnam

---