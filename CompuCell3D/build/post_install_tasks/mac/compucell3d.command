#!/bin/bash

# echo " "
# echo " dollar-zero AKA the first argument to this .command script is: "
# echo $0
# echo " "
export PYTHON_MINOR_VERSION=
cd "${0%/*}"

# language settings
export LANG=en_EN
export __CF_USER_TEXT_ENCODING=""

export PREFIX_CC3D=$(pwd)

export PYTHON_EXEC_FILE=/Users/saumyamehta/miniforge3/envs/cc3denv/bin/python

export QT_QPA_PLATFORM_PLUGIN_PATH=/Users/saumyamehta/miniforge3/envs/cc3denv/plugins

export CC3D_PYTHON_APP=/Users/saumyamehta/miniforge3/envs/cc3denv/bin/python

export DYLD_LIBRARY_PATH=${PREFIX_CC3D}/lib/site-packages/cc3d/cpp/lib:${DYLD_LIBRARY_PATH}

if [ -e ${CC3D_PYTHON_APP} ]
then
    echo "Using app"
    export PYTHON_EXEC_FILE=${CC3D_PYTHON_APP}
    export PYTHON_EXEC=${CC3D_PYTHON_APP}
else
    echo "Using script"
    ln -s ${PYTHON_EXEC_FILE} ${PREFIX_CC3D}/include/CompuCell3D
    export PYTHON_EXEC=${PREFIX_CC3D}/include/CompuCell3D
fi


cd $PREFIX_CC3D

export PYTHONPATH=${PREFIX_CC3D}/lib/site-packages


echo ${osx_major}-${osx_minor}


${PYTHON_EXEC} --version


export exit_code=0
${PYTHON_EXEC} ${PREFIX_CC3D}/lib/site-packages/cc3d/player5/compucell3d.pyw $* --currentDir=${PREFIX_CC3D}
exit_code=$?

cd ${PREFIX_CC3D}
exit ${exit_code}
