# Robot_3DoF_RTR

Design and simulation of a 3-DOF RTR serial robot controller using MATLAB/Simulink. This project includes robot kinematics, trajectory planning, dynamic modeling, and closed-loop trajectory tracking control.

---

## Overview

This project presents the complete design and simulation process of a **3-DOF RTR (Rotation – Translation – Rotation)** serial robot controller.

Job content includes:

- Forward and inverse kinematics
- Differential kinematics using Jacobian matrices
- Trapezoidal velocity trajectory planning
- Geometric obstacle avoidance
- Dynamic modeling using Lagrange's formulas
- PD controller with gravity compensation
- MATLAB/Simulink and Simscape simulation
- Mechanical design in SolidWorks for Simscape simulation purposes

---
## Features

- ✔ Forward kinematics

- ✔ Inverse kinematics

- ✔ Velocity kinematics based on Jacobian matrices

- ✔ Trapezoidal velocity profile
- ✔ Obstacle avoidance
- ✔ Lagrange dynamic modeling
- ✔ PD controller + gravity compensation

- ✔ MATLAB/Simulink + Simscape simulation
- ✔ SolidWorks CAD modeling for Simscape

--- ## Structure Repository bamboo

```
Robot_3DoF_RTR
│
├── README.md
├── Simsc_DLH/ # Dynamics Simulation + Simscape
├── PD+G/ # Controller Implementation
├── PP_Daiso/ # Forward Kinematics + Inverse Kinematics using Algebraic Methods
├── PP_Hinhhoc/ # Forward Kinematics + Inverse Kinematics using Geometric Methods
├── ne_vat_can/ # Obstacle Avoidance
├── thietke/ # Mechanical Design Resources
├── tinhtoan.m # MATLAB Calculations
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

- Forward Kinematics

- Inverse Kinematics

- Jacobian Matrix

- Differential Kinematics

### Trajectory Planning

- Trapezoidal Velocity Profile
- Smooth Motion Planning

- Cartesian Path Planning

### Dynamics

The robot's dynamics are constructed using the Lagrange equation:

\[
M(q)\ddot q + C(q,\dot q)\dot q + g(q)=u

\]

### Control

The robot uses a **gravity-compensated PD controller**

\[
u=K_p(q_d-q)+K_d(\dot q_d-\dot q)+g(q)

\]

---
## Results

Simulations demonstrate:

- Forward Kinematics and precise inversion

- Creates smooth trajectories

- Tracks stable trajectories

- Dynamic feedback under closed-loop control

- Successfully avoids geometric obstacles

---

## Applications

- Robotics Education

- Motion Planning

- Robotics Dynamics

- MATLAB/Simulink Learning

---

## Author

**Nguyen Duc Thu**

Mechatronics Engineering Student

---