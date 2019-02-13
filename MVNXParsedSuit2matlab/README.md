# MVNXParsedSuit2matlab

The folder `data/parsedFromMVNX` should contain:

- a file `.xml` (generic info, points, identity/tpose/tpose-isb)
- a `.log` file (segment and sensor list)
- two `.csv` files (index, msTime, xSensTime, each link (position, linear velocity, linear acceleration, orientation, angular velocity, angular acceleration), each sensor (orientation, free body acceleration)).

Data in this folder comes from a C++ parsing of the `.mvnx` file of the Xsens (see 
https://github.com/robotology-playground/xsens-mvn/tree/master/mvnxparser).