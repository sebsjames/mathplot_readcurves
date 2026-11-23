# Utility prog to test your .svg boundary files
add_executable(show_svg_boundary show_svg_boundary.cpp)
target_link_libraries(show_svg_boundary mathplot_modules)

# Test reading trial.svg
set(TARGETTEST3 testreadcurves)
set(SOURCETEST3 testreadcurves.cpp)
add_executable(${TARGETTEST3} ${SOURCETEST3})
target_link_libraries(testreadcurves mathplot_modules)
add_test(testreadcurves ${TARGETTEST3})

# Test reading whiskerbarrels_withcentres.svg
set(TARGETTEST31 testreadcurves_circles)
set(SOURCETEST31 testreadcurves_circles.cpp)
add_executable(${TARGETTEST31} ${SOURCETEST31})
target_link_libraries(testreadcurves_circles mathplot_modules)
add_test(testreadcurves_circles ${TARGETTEST31})

# Test hexgrid3 (hexgrid2 with visualisation)
add_executable(testhexgrid3 testhexgrid3.cpp)
target_link_libraries(testhexgrid3 mathplot_modules OpenGL::GL glfw Freetype::Freetype glad mplot_fontdata)

add_executable(testbighexgrid testbighexgrid.cpp)
target_link_libraries(testbighexgrid mathplot_modules OpenGL::GL glfw Freetype::Freetype glad mplot_fontdata)
