#add_subdirectory(Units)

SET(SRCS
  NumericalUtils.cpp
  StringUtils.cpp
  Vector3.cpp
  ParallelUtilsOpenMP.cpp
  #Units/Unit.cpp
  )
message("cmake c flags....")
MESSAGE("${CMAKE_C_FLAGS}")
SET(CMAKE_C_FLAGS "${CMAKE_C_FLAGS}")

INCLUDE_DIRECTORIES (     
    ${COMPUCELL3D_SOURCE_DIR}/core
    ${COMPUCELL3D_SOURCE_DIR}/core/PublicUtilities
    )

message(" PUBLIC UTILS OPEN MP FLAG" ${OpenMP_CXX_FLAGS})

if(${CMAKE_SYSTEM_NAME} STREQUAL Windows)
   ADD_STATIC_LIBRARY(PublicUtilities ${SRCS} LINK_LIBRARIES Field3DStatic EXTRA_COMPILER_FLAGS ${OpenMP_CXX_FLAGS} 
   # unit_calculator_lib fl
   )
else(${CMAKE_SYSTEM_NAME} STREQUAL Windows)
   ADD_SHARED_LIBRARY(PublicUtilities ${SRCS} LINK_LIBRARIES Field3DShared BoundaryShared  EXTRA_COMPILER_FLAGS ${OpenMP_CXX_FLAGS})
endif(${CMAKE_SYSTEM_NAME} STREQUAL Windows)

INSTALL_FILES(/include/CompuCell3D/PublicUtilities .h
  NumericalUtils
  StringUtils
  Vector3
  ParallelUtilsOpenMP
  CC3D_PublicUtilities
   #Unit
  #unit_calculator
  )