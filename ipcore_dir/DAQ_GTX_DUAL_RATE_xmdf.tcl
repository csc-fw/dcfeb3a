# The package naming convention is <core_name>_xmdf
package provide DAQ_GTX_DUAL_RATE_xmdf 1.0

# This includes some utilities that support common XMDF operations
package require utilities_xmdf

# Define a namespace for this package. The name of the name space
# is <core_name>_xmdf
namespace eval ::DAQ_GTX_DUAL_RATE_xmdf {
# Use this to define any statics
}

# Function called by client to rebuild the params and port arrays
# Optional when the use context does not require the param or ports
# arrays to be available.
proc ::DAQ_GTX_DUAL_RATE_xmdf::xmdfInit { instance } {
# Variable containg name of library into which module is compiled
# Recommendation: <module_name>
# Required
utilities_xmdf::xmdfSetData $instance Module Attributes Name DAQ_GTX_DUAL_RATE
}
# ::DAQ_GTX_DUAL_RATE_xmdf::xmdfInit

# Function called by client to fill in all the xmdf* data variables
# based on the current settings of the parameters
proc ::DAQ_GTX_DUAL_RATE_xmdf::xmdfApplyParams { instance } {

set fcount 0
# Array containing libraries that are assumed to exist
# Examples include unisim and xilinxcorelib
# Optional
# In this example, we assume that the unisim library will
# be magically
# available to the simulation and synthesis tool
utilities_xmdf::xmdfSetData $instance FileSet $fcount type logical_library
utilities_xmdf::xmdfSetData $instance FileSet $fcount logical_library unisim
incr fcount

utilities_xmdf::xmdfSetData $instance FileSet $fcount relative_path DAQ_GTX_DUAL_RATE/daq_gtx_dual_rate.pf
utilities_xmdf::xmdfSetData $instance FileSet $fcount type Ignore
incr fcount

utilities_xmdf::xmdfSetData $instance FileSet $fcount relative_path DAQ_GTX_DUAL_RATE/doc/ug516_v6_gtxwizard.pdf
utilities_xmdf::xmdfSetData $instance FileSet $fcount type Ignore
incr fcount

utilities_xmdf::xmdfSetData $instance FileSet $fcount relative_path DAQ_GTX_DUAL_RATE/example_design/daq_gtx_dual_rate_top.ucf
utilities_xmdf::xmdfSetData $instance FileSet $fcount type Ignore
incr fcount

utilities_xmdf::xmdfSetData $instance FileSet $fcount relative_path DAQ_GTX_DUAL_RATE/example_design/daq_gtx_dual_rate_top.v
utilities_xmdf::xmdfSetData $instance FileSet $fcount type Ignore
incr fcount

utilities_xmdf::xmdfSetData $instance FileSet $fcount relative_path DAQ_GTX_DUAL_RATE/example_design/daq_gtx_dual_rate_top.vhd
utilities_xmdf::xmdfSetData $instance FileSet $fcount type Ignore
incr fcount

utilities_xmdf::xmdfSetData $instance FileSet $fcount relative_path DAQ_GTX_DUAL_RATE/example_design/double_reset.v
utilities_xmdf::xmdfSetData $instance FileSet $fcount type Ignore
incr fcount

utilities_xmdf::xmdfSetData $instance FileSet $fcount relative_path DAQ_GTX_DUAL_RATE/example_design/double_reset.vhd
utilities_xmdf::xmdfSetData $instance FileSet $fcount type Ignore
incr fcount

utilities_xmdf::xmdfSetData $instance FileSet $fcount relative_path DAQ_GTX_DUAL_RATE/example_design/frame_check.v
utilities_xmdf::xmdfSetData $instance FileSet $fcount type Ignore
incr fcount

utilities_xmdf::xmdfSetData $instance FileSet $fcount relative_path DAQ_GTX_DUAL_RATE/example_design/frame_check.vhd
utilities_xmdf::xmdfSetData $instance FileSet $fcount type Ignore
incr fcount

utilities_xmdf::xmdfSetData $instance FileSet $fcount relative_path DAQ_GTX_DUAL_RATE/example_design/frame_gen.v
utilities_xmdf::xmdfSetData $instance FileSet $fcount type Ignore
incr fcount

utilities_xmdf::xmdfSetData $instance FileSet $fcount relative_path DAQ_GTX_DUAL_RATE/example_design/frame_gen.vhd
utilities_xmdf::xmdfSetData $instance FileSet $fcount type Ignore
incr fcount

utilities_xmdf::xmdfSetData $instance FileSet $fcount relative_path DAQ_GTX_DUAL_RATE/example_design/gtx_attributes.ucf
utilities_xmdf::xmdfSetData $instance FileSet $fcount type Ignore
incr fcount

utilities_xmdf::xmdfSetData $instance FileSet $fcount relative_path DAQ_GTX_DUAL_RATE/example_design/mgt_usrclk_source_mmcm.v
utilities_xmdf::xmdfSetData $instance FileSet $fcount type Ignore
incr fcount

utilities_xmdf::xmdfSetData $instance FileSet $fcount relative_path DAQ_GTX_DUAL_RATE/example_design/mgt_usrclk_source_mmcm.vhd
utilities_xmdf::xmdfSetData $instance FileSet $fcount type Ignore
incr fcount

utilities_xmdf::xmdfSetData $instance FileSet $fcount relative_path DAQ_GTX_DUAL_RATE/implement/chipscope_project.cpj
utilities_xmdf::xmdfSetData $instance FileSet $fcount type Ignore
incr fcount

utilities_xmdf::xmdfSetData $instance FileSet $fcount relative_path DAQ_GTX_DUAL_RATE/implement/data_vio.ngc
utilities_xmdf::xmdfSetData $instance FileSet $fcount type Ignore
incr fcount

utilities_xmdf::xmdfSetData $instance FileSet $fcount relative_path DAQ_GTX_DUAL_RATE/implement/icon.ngc
utilities_xmdf::xmdfSetData $instance FileSet $fcount type Ignore
incr fcount

utilities_xmdf::xmdfSetData $instance FileSet $fcount relative_path DAQ_GTX_DUAL_RATE/implement/ila.ngc
utilities_xmdf::xmdfSetData $instance FileSet $fcount type Ignore
incr fcount

utilities_xmdf::xmdfSetData $instance FileSet $fcount relative_path DAQ_GTX_DUAL_RATE/implement/implement.bat
utilities_xmdf::xmdfSetData $instance FileSet $fcount type Ignore
incr fcount

utilities_xmdf::xmdfSetData $instance FileSet $fcount relative_path DAQ_GTX_DUAL_RATE/implement/implement.sh
utilities_xmdf::xmdfSetData $instance FileSet $fcount type Ignore
incr fcount

utilities_xmdf::xmdfSetData $instance FileSet $fcount relative_path DAQ_GTX_DUAL_RATE/implement/implement_synplify.bat
utilities_xmdf::xmdfSetData $instance FileSet $fcount type Ignore
incr fcount

utilities_xmdf::xmdfSetData $instance FileSet $fcount relative_path DAQ_GTX_DUAL_RATE/implement/implement_synplify.sh
utilities_xmdf::xmdfSetData $instance FileSet $fcount type Ignore
incr fcount

utilities_xmdf::xmdfSetData $instance FileSet $fcount relative_path DAQ_GTX_DUAL_RATE/implement/synplify.prj
utilities_xmdf::xmdfSetData $instance FileSet $fcount type Ignore
incr fcount

utilities_xmdf::xmdfSetData $instance FileSet $fcount relative_path DAQ_GTX_DUAL_RATE/implement/xst.prj
utilities_xmdf::xmdfSetData $instance FileSet $fcount type Ignore
incr fcount

utilities_xmdf::xmdfSetData $instance FileSet $fcount relative_path DAQ_GTX_DUAL_RATE/implement/xst.scr
utilities_xmdf::xmdfSetData $instance FileSet $fcount type Ignore
incr fcount

utilities_xmdf::xmdfSetData $instance FileSet $fcount relative_path DAQ_GTX_DUAL_RATE/simulation/demo_tb.v
utilities_xmdf::xmdfSetData $instance FileSet $fcount type Ignore
incr fcount

utilities_xmdf::xmdfSetData $instance FileSet $fcount relative_path DAQ_GTX_DUAL_RATE/simulation/demo_tb.vhd
utilities_xmdf::xmdfSetData $instance FileSet $fcount type Ignore
incr fcount

utilities_xmdf::xmdfSetData $instance FileSet $fcount relative_path DAQ_GTX_DUAL_RATE/simulation/functional/simulate_isim.bat
utilities_xmdf::xmdfSetData $instance FileSet $fcount type Ignore
incr fcount

utilities_xmdf::xmdfSetData $instance FileSet $fcount relative_path DAQ_GTX_DUAL_RATE/simulation/functional/simulate_isim.sh
utilities_xmdf::xmdfSetData $instance FileSet $fcount type Ignore
incr fcount

utilities_xmdf::xmdfSetData $instance FileSet $fcount relative_path DAQ_GTX_DUAL_RATE/simulation/functional/simulate_mti.do
utilities_xmdf::xmdfSetData $instance FileSet $fcount type Ignore
incr fcount

utilities_xmdf::xmdfSetData $instance FileSet $fcount relative_path DAQ_GTX_DUAL_RATE/simulation/functional/simulate_ncsim.bat
utilities_xmdf::xmdfSetData $instance FileSet $fcount type Ignore
incr fcount

utilities_xmdf::xmdfSetData $instance FileSet $fcount relative_path DAQ_GTX_DUAL_RATE/simulation/functional/simulate_ncsim.sh
utilities_xmdf::xmdfSetData $instance FileSet $fcount type Ignore
incr fcount

utilities_xmdf::xmdfSetData $instance FileSet $fcount relative_path DAQ_GTX_DUAL_RATE/simulation/functional/simulate_vcs.sh
utilities_xmdf::xmdfSetData $instance FileSet $fcount type Ignore
incr fcount

utilities_xmdf::xmdfSetData $instance FileSet $fcount relative_path DAQ_GTX_DUAL_RATE/simulation/functional/ucli_commands.key
utilities_xmdf::xmdfSetData $instance FileSet $fcount type Ignore
incr fcount

utilities_xmdf::xmdfSetData $instance FileSet $fcount relative_path DAQ_GTX_DUAL_RATE/simulation/functional/vcs_session.tcl
utilities_xmdf::xmdfSetData $instance FileSet $fcount type Ignore
incr fcount

utilities_xmdf::xmdfSetData $instance FileSet $fcount relative_path DAQ_GTX_DUAL_RATE/simulation/functional/wave_isim.tcl
utilities_xmdf::xmdfSetData $instance FileSet $fcount type Ignore
incr fcount

utilities_xmdf::xmdfSetData $instance FileSet $fcount relative_path DAQ_GTX_DUAL_RATE/simulation/functional/wave_mti.do
utilities_xmdf::xmdfSetData $instance FileSet $fcount type Ignore
incr fcount

utilities_xmdf::xmdfSetData $instance FileSet $fcount relative_path DAQ_GTX_DUAL_RATE/simulation/functional/wave_ncsim.sv
utilities_xmdf::xmdfSetData $instance FileSet $fcount type Ignore
incr fcount

utilities_xmdf::xmdfSetData $instance FileSet $fcount relative_path DAQ_GTX_DUAL_RATE/simulation/sim_reset_mgt_model.vhd
utilities_xmdf::xmdfSetData $instance FileSet $fcount type Ignore
incr fcount

utilities_xmdf::xmdfSetData $instance FileSet $fcount relative_path DAQ_GTX_DUAL_RATE/v6_gtxwizard_readme.txt
utilities_xmdf::xmdfSetData $instance FileSet $fcount type Ignore
incr fcount

utilities_xmdf::xmdfSetData $instance FileSet $fcount relative_path DAQ_GTX_DUAL_RATE.xco
utilities_xmdf::xmdfSetData $instance FileSet $fcount type coregen_ip
incr fcount

utilities_xmdf::xmdfSetData $instance FileSet $fcount relative_path DAQ_GTX_DUAL_RATE_xmdf.tcl
utilities_xmdf::xmdfSetData $instance FileSet $fcount type AnyView
incr fcount

utilities_xmdf::xmdfSetData $instance FileSet $fcount relative_path daq_gtx_dual_rate.v
utilities_xmdf::xmdfSetData $instance FileSet $fcount type verilog
incr fcount

utilities_xmdf::xmdfSetData $instance FileSet $fcount relative_path daq_gtx_dual_rate.veo
utilities_xmdf::xmdfSetData $instance FileSet $fcount type verilog_template
incr fcount

utilities_xmdf::xmdfSetData $instance FileSet $fcount relative_path daq_gtx_dual_rate.vhd
utilities_xmdf::xmdfSetData $instance FileSet $fcount type vhdl
incr fcount

utilities_xmdf::xmdfSetData $instance FileSet $fcount relative_path daq_gtx_dual_rate.vho
utilities_xmdf::xmdfSetData $instance FileSet $fcount type vhdl_template
incr fcount

utilities_xmdf::xmdfSetData $instance FileSet $fcount relative_path daq_gtx_dual_rate_gtx.v
utilities_xmdf::xmdfSetData $instance FileSet $fcount type verilog
incr fcount

utilities_xmdf::xmdfSetData $instance FileSet $fcount relative_path daq_gtx_dual_rate_gtx.vhd
utilities_xmdf::xmdfSetData $instance FileSet $fcount type vhdl
incr fcount

utilities_xmdf::xmdfSetData $instance FileSet $fcount associated_module DAQ_GTX_DUAL_RATE
incr fcount

}

# ::gen_comp_name_xmdf::xmdfApplyParams
