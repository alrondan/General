# get all source files
file(GLOB_RECURSE SOURCES "*.cpp")

set(HEADERS
        # necessary files to generate MOC headers for go here
)

# get all ui files
file(GLOB_RECURSE FORMS "*.ui")

# ensure MOC objects are compiled
qt4_wrap_ui(FORMS_GENERATED ${FORMS})
qt4_wrap_cpp(MOC_GENERATED ${HEADERS})

# search for and remove 'main.cpp' from recursive glob
file(GLOB_RECURSE MAIN "*main.cpp")
list(REMOVE_ITEM SOURCES ${MAIN})

# create library, executable, and link targets to libraries
add_library(pplayv1.0 SHARED ${SOURCES} ${MOC_GENERATED} ${FORMS_GENERATED})
add_executable(main main.cpp)
target_link_libraries(pplayv1.0 ${DEP_LIBS})
target_link_libraries(main pplayv1.0)
