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
smiData.RigidTransform(1).translation = [130.00000000000006 -11.499999999999156 140.00000000000003];  % mm
smiData.RigidTransform(1).angle = 3.1415926535897931;  % rad
smiData.RigidTransform(1).axis = [1 0 1.7347234759768073e-15];
smiData.RigidTransform(1).ID = "B[Khau111-1:-:Khau22-2]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(2).translation = [10.000000000000057 -47.101628106957193 -12.499999999999121];  % mm
smiData.RigidTransform(2).angle = 1.5707963267948966;  % rad
smiData.RigidTransform(2).axis = [-1 2.0568868724706103e-16 7.2796841243257109e-17];
smiData.RigidTransform(2).ID = "F[Khau111-1:-:Khau22-2]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(3).translation = [0 55 2];  % mm
smiData.RigidTransform(3).angle = 1.2468324983583299e-16;  % rad
smiData.RigidTransform(3).axis = [0 1 0];
smiData.RigidTransform(3).ID = "B[De-1:-:Khau111-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(4).translation = [-4.1415505642427549e-14 4.8627768478581856e-14 -1.0113921989577741e-14];  % mm
smiData.RigidTransform(4).angle = 2.0943951023931966;  % rad
smiData.RigidTransform(4).axis = [-0.57735026918962618 -0.57735026918962606 -0.57735026918962506];
smiData.RigidTransform(4).ID = "F[De-1:-:Khau111-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(5).translation = [0 0 -4.9999999999999973];  % mm
smiData.RigidTransform(5).angle = 3.1415926535897931;  % rad
smiData.RigidTransform(5).axis = [1 0 0];
smiData.RigidTransform(5).ID = "B[Khau22-2:-:khau33-2]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(6).translation = [-3.0387442664956129e-13 9.1000653905073098e-14 -5.000000000000103];  % mm
smiData.RigidTransform(6).angle = 3.1415926535897931;  % rad
smiData.RigidTransform(6).axis = [-1 -8.538590024774548e-32 1.0437673238880496e-15];
smiData.RigidTransform(6).ID = "F[Khau22-2:-:khau33-2]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(7).translation = [0 0 0];  % mm
smiData.RigidTransform(7).angle = 0;  % rad
smiData.RigidTransform(7).axis = [0 0 0];
smiData.RigidTransform(7).ID = "RootGround[De-1]";


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
smiData.Solid(1).mass = 0.086767004685520899;  % kg
smiData.Solid(1).CoM = [-1.8694892048086647 21.972657268923555 0.95455151615341638];  % mm
smiData.Solid(1).MoI = [93.899604282705852 150.61274565863002 100.79191606775694];  % kg*mm^2
smiData.Solid(1).PoI = [-3.8604988332323149 0.30820585617015833 3.6599902323111491];  % kg*mm^2
smiData.Solid(1).color = [1 0.93333333333333335 0.13333333333333333];
smiData.Solid(1).opacity = 1;
smiData.Solid(1).ID = "De*:*Default";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(2).mass = 0.030379632782661155;  % kg
smiData.Solid(2).CoM = [50.857908210314541 7.4781223601374817e-05 9.4224768833561416];  % mm
smiData.Solid(2).MoI = [5.1060159352807837 31.785602209473392 33.189538133009869];  % kg*mm^2
smiData.Solid(2).PoI = [1.8756140674390852e-05 -2.2022053130132209 0.00010976062166639873];  % kg*mm^2
smiData.Solid(2).color = [0.69411764705882351 0.090196078431372548 0.090196078431372548];
smiData.Solid(2).opacity = 1;
smiData.Solid(2).ID = "khau33*:*Default";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(3).mass = 0.11880028672702457;  % kg
smiData.Solid(3).CoM = [76.430546233395063 -10.316328375220291 41.14688111123732];  % mm
smiData.Solid(3).MoI = [301.18544658464253 501.39338171232413 210.23815133305692];  % kg*mm^2
smiData.Solid(3).PoI = [5.7861046802409088 -157.88072110742635 7.1625727446457992];  % kg*mm^2
smiData.Solid(3).color = [0.792156862745098 0.81960784313725488 0.92549019607843142];
smiData.Solid(3).opacity = 1;
smiData.Solid(3).ID = "Khau111*:*Default";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(4).mass = 0.023861405249456114;  % kg
smiData.Solid(4).CoM = [0 0 -12.872967182215399];  % mm
smiData.Solid(4).MoI = [3.2154091587236269 5.357307295933329 5.8247961526254421];  % kg*mm^2
smiData.Solid(4).PoI = [0 0 0];  % kg*mm^2
smiData.Solid(4).color = [0.792156862745098 0.81960784313725488 0.92941176470588238];
smiData.Solid(4).opacity = 1;
smiData.Solid(4).ID = "Khau22*:*Default";


%============= Joint =============%
%X Revolute Primitive (Rx) %Y Revolute Primitive (Ry) %Z Revolute Primitive (Rz)
%X Prismatic Primitive (Px) %Y Prismatic Primitive (Py) %Z Prismatic Primitive (Pz) %Spherical Primitive (S)
%Constant Velocity Primitive (CV) %Lead Screw Primitive (LS)
%Position Target (Pos)

%Initialize the PrismaticJoint structure array by filling in null values.
smiData.PrismaticJoint(1).Pz.Pos = 0.0;
smiData.PrismaticJoint(1).ID = "";

smiData.PrismaticJoint(1).Pz.Pos = 0;  % m
smiData.PrismaticJoint(1).ID = "[Khau111-1:-:Khau22-2]";


%Initialize the RevoluteJoint structure array by filling in null values.
smiData.RevoluteJoint(2).Rz.Pos = 0.0;
smiData.RevoluteJoint(2).ID = "";

smiData.RevoluteJoint(1).Rz.Pos = 13.723385209784986;  % deg
smiData.RevoluteJoint(1).ID = "[De-1:-:Khau111-1]";

smiData.RevoluteJoint(2).Rz.Pos = 102.64492278488775;  % deg
smiData.RevoluteJoint(2).ID = "[Khau22-2:-:khau33-2]";

