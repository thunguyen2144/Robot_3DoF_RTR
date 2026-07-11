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
smiData.RigidTransform(1).translation = [0 53.000000000000007 -29.000000000000028];  % mm
smiData.RigidTransform(1).angle = 0;  % rad
smiData.RigidTransform(1).axis = [0 0 0];
smiData.RigidTransform(1).ID = "B[link0-1:-:link1-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(2).translation = [-101.63660560342954 -91.509532149482283 10.000000000000071];  % mm
smiData.RigidTransform(2).angle = 2.0943951023931957;  % rad
smiData.RigidTransform(2).axis = [0.57735026918962584 0.57735026918962573 0.57735026918962573];
smiData.RigidTransform(2).ID = "F[link0-1:-:link1-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(3).translation = [-47.636605603429636 46.490467850517611 -49.999999999999972];  % mm
smiData.RigidTransform(3).angle = 0;  % rad
smiData.RigidTransform(3).axis = [0 0 0];
smiData.RigidTransform(3).ID = "B[link1-1:-:link2-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(4).translation = [19.762763490884844 1.0668444740794751 -4.9999999999999538];  % mm
smiData.RigidTransform(4).angle = 2.6367796834847468e-16;  % rad
smiData.RigidTransform(4).axis = [1 -0 -0];
smiData.RigidTransform(4).ID = "F[link1-1:-:link2-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(5).translation = [-7.4636874304474139 32.566844474079453 -30.000000000000103];  % mm
smiData.RigidTransform(5).angle = 2.0943951023931953;  % rad
smiData.RigidTransform(5).axis = [-0.57735026918962584 -0.57735026918962584 0.57735026918962584];
smiData.RigidTransform(5).ID = "B[link2-1:-:link3-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(6).translation = [2.4613922385709652e-14 -1.4210854715201947e-14 10.000000000000004];  % mm
smiData.RigidTransform(6).angle = 3.1415926535897931;  % rad
smiData.RigidTransform(6).axis = [-1 1.7099387518755566e-33 -1.0992719225801376e-16];
smiData.RigidTransform(6).ID = "F[link2-1:-:link3-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(7).translation = [0 0 0];  % mm
smiData.RigidTransform(7).angle = 0;  % rad
smiData.RigidTransform(7).axis = [0 0 0];
smiData.RigidTransform(7).ID = "RootGround[link0-1]";


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
smiData.Solid(1).mass = 0.036499935920001184;  % kg
smiData.Solid(1).CoM = [3.1302377976232476 1.6956439422714456e-07 0.48541119097059371];  % cm
smiData.Solid(1).MoI = [0.053556390113829545 0.39766550282328988 0.44514265236460127];  % kg*cm^2
smiData.Solid(1).PoI = [-2.8354260511225111e-08 0.0048351929258545054 -1.4584330692025907e-08];  % kg*cm^2
smiData.Solid(1).color = [0.49803921568627452 0.49803921568627452 0.49803921568627452];
smiData.Solid(1).opacity = 1;
smiData.Solid(1).ID = "link3*:*Default";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(2).mass = 0.19919871836942438;  % kg
smiData.Solid(2).CoM = [0.037963058508778548 1.8613368949852902 -0.11271512396390893];  % cm
smiData.Solid(2).MoI = [1.9943906194569732 3.2102841139091511 2.0026281265383452];  % kg*cm^2
smiData.Solid(2).PoI = [-5.8298384923508042e-05 -0.027506341615542069 0.01001364852558516];  % kg*cm^2
smiData.Solid(2).color = [1 1 1];
smiData.Solid(2).opacity = 1;
smiData.Solid(2).ID = "link0*:*Default";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(3).mass = 0.10673779930926652;  % kg
smiData.Solid(3).CoM = [-0.43787678282906639 2.7521215305595113 2.153747121715166];  % cm
smiData.Solid(3).MoI = [1.7891004856754311 1.5366612780191635 0.51501113598906956];  % kg*cm^2
smiData.Solid(3).PoI = [0.20714368013646789 0.061673673144822215 -0.0046105981618310022];  % kg*cm^2
smiData.Solid(3).color = [0.792156862745098 0.81960784313725488 0.93333333333333335];
smiData.Solid(3).opacity = 1;
smiData.Solid(3).ID = "link2*:*Default";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(4).mass = 0.13823596757833476;  % kg
smiData.Solid(4).CoM = [-7.2673285935260452 -0.32412710779848203 0.33322231542739894];  % cm
smiData.Solid(4).MoI = [5.0294190940379488 1.5857612923968214 4.0411269683695723];  % kg*cm^2
smiData.Solid(4).PoI = [0.35030785050755153 0.00033767427323018034 -0.0044743028997610117];  % kg*cm^2
smiData.Solid(4).color = [0.792156862745098 0.81960784313725488 0.93333333333333335];
smiData.Solid(4).opacity = 1;
smiData.Solid(4).ID = "link1*:*Default";


%============= Joint =============%
%X Revolute Primitive (Rx) %Y Revolute Primitive (Ry) %Z Revolute Primitive (Rz)
%X Prismatic Primitive (Px) %Y Prismatic Primitive (Py) %Z Prismatic Primitive (Pz) %Spherical Primitive (S)
%Constant Velocity Primitive (CV) %Lead Screw Primitive (LS)
%Position Target (Pos)

%Initialize the PrismaticJoint structure array by filling in null values.
smiData.PrismaticJoint(1).Pz.Pos = 0.0;
smiData.PrismaticJoint(1).ID = "";

smiData.PrismaticJoint(1).Pz.Pos = 0;  % m
smiData.PrismaticJoint(1).ID = "[link1-1:-:link2-1]";


%Initialize the RevoluteJoint structure array by filling in null values.
smiData.RevoluteJoint(2).Rz.Pos = 0.0;
smiData.RevoluteJoint(2).ID = "";

smiData.RevoluteJoint(1).Rz.Pos = 76.108275799497207;  % deg
smiData.RevoluteJoint(1).ID = "[link0-1:-:link1-1]";

smiData.RevoluteJoint(2).Rz.Pos = 136.10827579949731;  % deg
smiData.RevoluteJoint(2).ID = "[link2-1:-:link3-1]";

