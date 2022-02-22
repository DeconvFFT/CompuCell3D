
find_path(CPPUNIT_INCLUDE_DIR
    TestSuite.h
    /usr/include/cppunit /opt/homebrew/include/cppunit)

find_library(CPPUNIT_LIBRARY
    NAMES cppunit-1.12 cppunit
    PATH /usr/lib /opt/homebrew/lib)

if (CPPUNIT_INCLUDE_DIR AND CPPUNIT_LIBRARY)
    set(CPPUNIT_FOUND on)
endif (CPPUNIT_INCLUDE_DIR AND CPPUNIT_LIBRARY)
