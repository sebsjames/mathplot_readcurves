#
# Define variables of module groups for use by the sebsjames/mathplot_readcurves
# build process, and by client projects.
#

# Sets up variables that define list of the modules used building
# mathplot. Pass in the path to the mathplot_readcurves root and the
# sebsjames/maths root
macro(setup_module_variables_for_mathplot_readcurves base_directory maths_directory)

  # Modules in addition to core required for ReadCurves.cppm
  set(MPLOT_MATHS_READCURVES_MODULES
    ${maths_directory}/sm/nm_simplex.cppm
    ${maths_directory}/sm/binomial.cppm
    ${maths_directory}/sm/bezcoord.cppm
    ${maths_directory}/sm/bezcurve.cppm
    ${maths_directory}/sm/bezcurvepath.cppm
  )

  set(MPLOT_READCURVES_MODULES
    ${MPLOT_MATHS_READCURVES_MODULES}
    ##${base_directory}/mplot/tools.cppm
    ${base_directory}/rapidxml/rapidxml.cppm
    ${base_directory}/mplot/ReadCurves.cppm
  )

endmacro()
