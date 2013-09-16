                Core name: Xilinx LogiCORE Soft Error Mitigation
                Version: 1.2
                Release Date: December 14, 2010


================================================================================

This document contains the following sections:

1. Introduction
2. New Features
3. Supported Devices
4. Resolved Issues
5. Known Issues
6. Technical Support
7. Other Information
8. Core Release History
9. Legal Disclaimer

================================================================================


1. INTRODUCTION

For installation instructions for this release, please go to:

   http://www.xilinx.com/ipcenter/coregen/ip_update_install_instructions.htm

For system requirements:

   http://www.xilinx.com/ipcenter/coregen/ip_update_system_requirements.htm

This file contains release notes for the Xilinx LogiCORE IP Soft Error
Mitigation core, v1.2. For the latest core updates, see the product page at:

   http://www.xilinx.com/products/ipcenter/SEM.htm


2. NEW FEATURES

- ISE 12.4 software support.
- Core status changed to "production".


3. SUPPORTED DEVICES
 
The following device families are supported by the core for this release.

Virtex-6 XC CXT/LXT/SXT/HXT
Virtex-6 XQ LXT/SXT
Virtex-6 -1L XC LXT/SXT


4. RESOLVED ISSUES

The following issues are resolved in v1.2 of this core:

- CR578075: VHDL example design file "sem_ext_byte.vhd" contained a logic error.
  This file is only present if VHDL output products are generated and the core
  configuration requires an interface with external SPI flash.

Based on the core status change to "production" all users are strongly urged to
update to v1.2 of this core.


5. KNOWN ISSUES

The following are known issues for v1.2 of this core at time of release:

- None.

The most recent information, including known issues, workarounds, and
resolutions for this version is provided in the IP Release Notes Guide
located at:

   www.xilinx.com/support/documentation/user_guides/xtp025.pdf


6. TECHNICAL SUPPORT

To obtain technical support, create a WebCase at www.xilinx.com/support.
Questions are routed to a team with expertise using this product.

Xilinx provides technical support for use of this product when used
according to the guidelines described in the core documentation, and
cannot guarantee timing, functionality, or support of this product for
designs that do not follow specified guidelines.


7. OTHER INFORMATION

Please consult the "Additional Considerations" chapter of the LogiCORE IP
Soft Error Mitigation core user guide for information critical to successful
application of the core in a complete design.  This chapter discusses
unsupported features and limitations that result from integration of the
core into a larger project.

The LogiCORE IP Soft Error Mitigation core has been verified using
production Virtex-6 FPGA devices.  Use of the core on certain Virtex-6
FPGA Engineering Sample (ES) devices is not supported due to silicon errata
involving configuration readback.  The core may not work at all on ES devices
with a configuration readback erratum, and if it does, operation may be
unreliable.  Therefore, the core must not be used in affected ES devices
for any purpose other than evaluation.  If you are using the core on an
affected ES device and you encounter a problem, obtain a production device.
For more information, refer to the Virtex-6 FPGA CES Errata at:

   www.xilinx.com/support/documentation/virtex-6.htm#131587

When the core is configured to use the optional error classification
function or the optional correction by replace function, the core
requires externally stored data created by the Xilinx implementation tools.
The application that creates this data requires a large amount of system
RAM.  Xilinx recommends the use of a 64-bit operating system with 16 Gbytes
or more of system RAM.


8. CORE RELEASE HISTORY

Date        By            Version      Description
================================================================================
12/14/2010  Xilinx, Inc.  1.2          ISE 12.4 support
09/21/2010  Xilinx, Inc.  1.1          ISE 12.3 support
================================================================================


9. LEGAL DISCLAIMER

(c) Copyright 2010 Xilinx, Inc. All rights reserved.

This file contains confidential and proprietary information
of Xilinx, Inc. and is protected under U.S. and
international copyright and other intellectual property
laws.

DISCLAIMER
This disclaimer is not a license and does not grant any
rights to the materials distributed herewith. Except as
otherwise provided in a valid license issued to you by
Xilinx, and to the maximum extent permitted by applicable
law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
(2) Xilinx shall not be liable (whether in contract or tort,
including negligence, or under any other theory of
liability) for any loss or damage of any kind or nature
related to, arising under or in connection with these
materials, including for any direct, or any indirect,
special, incidental, or consequential loss or damage
(including loss of data, profits, goodwill, or any type of
loss or damage suffered as a result of any action brought
by a third party) even if such damage or loss was
reasonably foreseeable or Xilinx had been advised of the
possibility of the same.

CRITICAL APPLICATIONS
Xilinx products are not designed or intended to be fail-
safe, or for use in any application requiring fail-safe
performance, such as life-support or safety devices or
systems, Class III medical devices, nuclear facilities,
applications related to the deployment of airbags, or any
other applications that could lead to death, personal
injury, or severe property or environmental damage
(individually and collectively, "Critical
Applications"). Customer assumes the sole risk and
liability of any use of Xilinx products in Critical
Applications, subject only to applicable laws and
regulations governing limitations on product liability.

THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
PART OF THIS FILE AT ALL TIMES.
