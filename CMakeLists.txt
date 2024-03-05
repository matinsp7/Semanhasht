cmake_minimum_required(VERSION 3.16)

project(Semanhasht VERSION 0.1 LANGUAGES CXX)

include_directories(include)

set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 6.4 REQUIRED COMPONENTS Quick)

qt_standard_project_setup()

qt_add_executable(appSemanhasht
    main.cpp
)

qt_add_qml_module(appSemanhasht
    URI Semanhasht
    VERSION 1.0

    QML_FILES 
    Main.qml

    SOURCES 
    include/semanhasht.h 
    src/semanhasht.cpp

    include/distance.hpp
    src/distance.cpp

    include/cost.h
    src/cost.cpp

    include/best_time.h
    src/best_time.cpp

    QML_FILES qml/map.qml

    RESOURCES
    img/PublicTransportation.jpeg
    img/loading.gif
    img/openDrawer.png
    img/destination.png
    SOURCES include/resetpath.h include/resetpath.cpp
    RESOURCES redource.qrc
)

# Qt for iOS sets MACOSX_BUNDLE_GUI_IDENTIFIER automatically since Qt 6.1.
# If you are developing for iOS or macOS you should consider setting an
# explicit, fixed bundle identifier manually though.
set_target_properties(appSemanhasht PROPERTIES
#    MACOSX_BUNDLE_GUI_IDENTIFIER com.example.appSemanhasht
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

target_link_libraries(appSemanhasht
    PRIVATE Qt6::Quick
)

include(GNUInstallDirs)
install(TARGETS appSemanhasht
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)
