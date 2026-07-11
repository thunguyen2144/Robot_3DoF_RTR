# Robot_3DoF_RTR

Design and simulation of a 3-DOF RTR serial robotic manipulator using MATLAB/Simulink. This project covers robot kinematics, trajectory planning, dynamics modeling, and closed-loop trajectory tracking control.

---

## Overview

This project presents the complete design and simulation workflow of a **3-DOF RTR (Revolute–Translational–Revolute)** serial manipulator.

The work includes:

- Forward and inverse kinematics
- Differential kinematics using the Jacobian matrix
- Trapezoidal velocity trajectory planning
- Geometric obstacle avoidance
- Dynamic modeling using Lagrange's formulation
- PD controller with gravity compensation
- MATLAB/Simulink and Simscape simulations
- Mechanical design in SolidWorks

---

## Features

- ✔ Forward Kinematics
- ✔ Inverse Kinematics
- ✔ Jacobian-based Velocity Kinematics
- ✔ Trapezoidal Velocity Profile
- ✔ Obstacle Avoidance
- ✔ Lagrange Dynamic Model
- ✔ PD + Gravity Compensation Controller
- ✔ MATLAB/Simulink Simulation
- ✔ Simscape Physical Modeling
- ✔ SolidWorks CAD Model

---

## Repository Structure

```
Robot_3DoF_RTR
│
├── README.md
├── Solid/                 # SolidWorks CAD models
├── Simscape_part2/        # Simscape models
├── Simsc_DLH/             # Dynamic simulations
├── solid_RTR/             # Mechanical design files
├── PD+G/                  # Controller implementation
├── PP_Daiso/              # Trajectory planning
├── PP_Hinhhoc/            # Geometric planning
├── ne_vat_can/            # Obstacle avoidance
├── thietke/               # Mechanical design resources
├── tinhtoan.m             # MATLAB calculations
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

Robot dynamics are formulated using the Lagrange equation:

\[
M(q)\ddot q + C(q,\dot q)\dot q + g(q)=u
\]

### Control

The robot uses a **PD controller with gravity compensation**

\[
u=K_p(q_d-q)+K_d(\dot q_d-\dot q)+g(q)
\]

---

## Results

The simulations demonstrate:

- Accurate forward and inverse kinematics
- Smooth trajectory generation
- Stable trajectory tracking
- Dynamic response under closed-loop control
- Successful obstacle avoidance

---

## Applications

- Robotics Education
- Industrial Manipulators
- Motion Planning
- Robot Dynamics
- MATLAB/Simulink Learning

---

## Author

**Nguyen Duc Thu**

Mechatronics Engineering Student

---

## License

This project is intended for educational and research purposes.
