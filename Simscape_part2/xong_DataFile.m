% Simscape(TM) Multibody(TM) version: 24.1

% This is a model data file derived from a Simscape Multibody Import XML file using the smimport function.
% The data in this file sets the block parameter values in an imported Simscape Multibody model.
% For more information on this file, see the smimport function help page in the Simscape Multibody documentation.
% You can modify numerical values, but avoid any other changes to this file.
% Do not add code to this file. Do not edit the physical units shown in comments.

%%%VariableName:smiData


%============= RigidTransform =============%

%Initialize the RigidTransform structure array by filling in null values.
smiData.RigidTransform(7).translation = [0.0 0.0 0.0];
smiData.RigidTransform(7).angle = 0.0;
smiData.RigidTransform(7).axis = [0.0 0.0 0.0];
smiData.RigidTransform(7).ID = "";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(1).translation = [0 0 7.4999999999999929];  % mm
smiData.RigidTransform(1).angle = 3.1415926535897931;  % rad
smiData.RigidTransform(1).axis = [1 0 0];
smiData.RigidTransform(1).ID = "B[final2-1:-:khau3final-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(2).translation = [-126.99999999999997 -3.8191672047105385e-14 -17.500000000000028];  % mm
smiData.RigidTransform(2).angle = 3.1415926535897931;  % rad
smiData.RigidTransform(2).axis = [-1 -6.8016232306834755e-34 1.040707268738288e-16];
smiData.RigidTransform(2).ID = "F[final2-1:-:khau3final-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(3).translation = [0 0 -2.0000000000000018];  % mm
smiData.RigidTransform(3).angle = 3.1415926535897931;  % rad
smiData.RigidTransform(3).axis = [1 0 0];
smiData.RigidTransform(3).ID = "B[Chanfinal-1:-:final1-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(4).translation = [-121.10920266245709 9.5000000000000124 -1.4566126083082054e-13];  % mm
smiData.RigidTransform(4).angle = 2.0943951023931953;  % rad
smiData.RigidTransform(4).axis = [0.57735026918962584 -0.57735026918962584 0.57735026918962584];
smiData.RigidTransform(4).ID = "F[Chanfinal-1:-:final1-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(5).translation = [8.8907973375429155 8.4654505627668186e-13 140];  % mm
smiData.RigidTransform(5).angle = 3.5527136788005001e-15;  % rad
smiData.RigidTransform(5).axis = [-0 -1 0];
smiData.RigidTransform(5).ID = "B[final1-1:-:final2-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(6).translation = [-9.9999999999994493 31.794187558005333 8.1152295548951936e-13];  % mm
smiData.RigidTransform(6).angle = 3.1415926535897931;  % rad
smiData.RigidTransform(6).axis = [1.0408340855860843e-16 0.70710678118654757 0.70710678118654757];
smiData.RigidTransform(6).ID = "F[final1-1:-:final2-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(7).translation = [34.841032550980586 108.78114232239759 117.83398347758016];  % mm
smiData.RigidTransform(7).angle = 0;  % rad
smiData.RigidTransform(7).axis = [0 0 0];
smiData.RigidTransform(7).ID = "RootGround[Chanfinal-1]";


%============= Solid =============%
%Center of Mass (CoM) %Moments of Inertia (MoI) %Product of Inertia (PoI)

%Initialize the Solid structure array by filling in null values.
smiData.Solid(4).mass = 0.0;
smiData.Solid(4).CoM = [0.0 0.0 0.0];
smiData.Solid(4).MoI = [0.0 0.0 0.0];
smiData.Solid(4).PoI = [0.0 0.0 0.0];
smiData.Solid(4).color = [0.0 0.0 0.0];
smiData.Solid(4).opacity = 0.0;
smiData.Solid(4).ID = "";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(1).mass = 0.11879968572384093;  % kg
smiData.Solid(1).CoM = [-44.678221551223182 1.1836441705656786 41.146946915200125];  % mm
smiData.Solid(1).MoI = [301.185400495804 501.38927484389643 210.23405254493883];  % kg*mm^2
smiData.Solid(1).PoI = [5.7860015907794295 -157.87963473494108 7.1622742689802852];  % kg*mm^2
smiData.Solid(1).color = [0.792156862745098 0.81960784313725488 0.92941176470588238];
smiData.Solid(1).opacity = 1;
smiData.Solid(1).ID = "final1*:*Default";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(2).mass = 0.030379932462270567;  % kg
smiData.Solid(2).CoM = [-76.142575514563589 4.1634249647891404e-05 -3.0775874271301826];  % mm
smiData.Solid(2).MoI = [5.1061749258707021 31.786507976830226 33.190598028561475];  % kg*mm^2
smiData.Solid(2).PoI = [1.7048139846791265e-05 -2.2022883778085141 2.4880658653102625e-05];  % kg*mm^2
smiData.Solid(2).color = [0.69411764705882351 0.094117647058823528 0.094117647058823528];
smiData.Solid(2).opacity = 1;
smiData.Solid(2).ID = "khau3final*:*Default";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(3).mass = 0.086767004685520524;  % kg
smiData.Solid(3).CoM = [-1.8694892048075129 -33.027342731076523 -1.0454484838454807];  % mm
smiData.Solid(3).MoI = [93.899604282711749 150.61274565863067 100.79191606775187];  % kg*mm^2
smiData.Solid(3).PoI = [-3.8604988332310528 0.30820585617018048 3.6599902323120235];  % kg*mm^2
smiData.Solid(3).color = [1 0.93333333333333335 0.13333333333333333];
smiData.Solid(3).opacity = 1;
smiData.Solid(3).ID = "Chanfinal*:*Default";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(4).mass = 0.023861405249456111;  % kg
smiData.Solid(4).CoM = [0 0 -0.37296718221539993];  % mm
smiData.Solid(4).MoI = [3.2154091587236264 5.3573072959333299 5.8247961526254421];  % kg*mm^2
smiData.Solid(4).PoI = [0 0 0];  % kg*mm^2
smiData.Solid(4).color = [0.792156862745098 0.81960784313725488 0.92941176470588238];
smiData.Solid(4).opacity = 1;
smiData.Solid(4).ID = "final2*:*Default";


%============= Joint =============%
%X Revolute Primitive (Rx) %Y Revolute Primitive (Ry) %Z Revolute Primitive (Rz)
%X Prismatic Primitive (Px) %Y Prismatic Primitive (Py) %Z Prismatic Primitive (Pz) %Spherical Primitive (S)
%Constant Velocity Primitive (CV) %Lead Screw Primitive (LS)
%Position Target (Pos)

%Initialize the PrismaticJoint structure array by filling in null values.
smiData.PrismaticJoint(1).Pz.Pos = 0.0;
smiData.PrismaticJoint(1).ID = "";

smiData.PrismaticJoint(1).Pz.Pos = 0;  % m
smiData.PrismaticJoint(1).ID = "[final1-1:-:final2-1]";


%Initialize the RevoluteJoint structure array by filling in null values.
smiData.RevoluteJoint(2).Rz.Pos = 0.0;
smiData.RevoluteJoint(2).ID = "";

smiData.RevoluteJoint(1).Rz.Pos = 171.44510714870677;  % deg
smiData.RevoluteJoint(1).ID = "[final2-1:-:khau3final-1]";

smiData.RevoluteJoint(2).Rz.Pos = 99.922944012087655;  % deg
smiData.RevoluteJoint(2).ID = "[Chanfinal-1:-:final1-1]";

