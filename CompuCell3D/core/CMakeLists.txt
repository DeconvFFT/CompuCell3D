
ADD_SUBDIRECTORY(Logger)
ADD_SUBDIRECTORY(Utils)
ADD_SUBDIRECTORY(PublicUtilities)
ADD_SUBDIRECTORY(XMLUtils)
ADD_SUBDIRECTORY(muParser)
# ADD_SUBDIRECTORY(Cleaver)
ADD_SUBDIRECTORY(CompuCell3D)
ADD_SUBDIRECTORY(finite_difference)

IF(BUILD_PYINTERFACE)
    ADD_SUBDIRECTORY(pyinterface)
ENDIF(BUILD_PYINTERFACE)

ADD_SUBDIRECTORY(post_install_tasks)
find_package(CUDAToolkit)
if(CUDAToolkit_FOUND AND TF_WITHCUDA)
enable_language(CUDA)
  target_link_libraries(
    CUDA::cudart 
    CUDA::cuda_driver 
    CUDA::nvrtc
    finite_difference
  )
endif()

