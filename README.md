# fuzzy_ik_solver
An Adaptive Neuro Fuzzy Inference System (ANFIS) to solve the inverse kinematics problem of a 3DoF robotic manipulator. Three separate models were trained, one for each joint. For a given end effector coordinate (X,Y), the trained models outputs are the joint values theta_1, theta_2, and theta_3.

## Example workspace training dataset
- 7000 samples for training
- 3000 samples for ANFIS validation

![workspace - Copia](https://user-images.githubusercontent.com/32180331/230531811-9b7f5bd2-f475-49a9-a1d9-ab23485bcfe5.png)


## Trajectory example

![robot_trajectory](https://user-images.githubusercontent.com/32180331/230531923-8fbb9644-6c46-4522-9470-5380f1b086b6.png)

# Dependencies
- Matlab Fuzzy Toolbox
