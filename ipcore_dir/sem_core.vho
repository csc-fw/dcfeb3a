--------------------------------------------------------------------------------
--     (c) Copyright 1995 - 2010 Xilinx, Inc. All rights reserved.            --
--                                                                            --
--     This file contains confidential and proprietary information            --
--     of Xilinx, Inc. and is protected under U.S. and                        --
--     international copyright and other intellectual property                --
--     laws.                                                                  --
--                                                                            --
--     DISCLAIMER                                                             --
--     This disclaimer is not a license and does not grant any                --
--     rights to the materials distributed herewith. Except as                --
--     otherwise provided in a valid license issued to you by                 --
--     Xilinx, and to the maximum extent permitted by applicable              --
--     law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND                --
--     WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES            --
--     AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING              --
--     BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-                 --
--     INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and               --
--     (2) Xilinx shall not be liable (whether in contract or tort,           --
--     including negligence, or under any other theory of                     --
--     liability) for any loss or damage of any kind or nature                --
--     related to, arising under or in connection with these                  --
--     materials, including for any direct, or any indirect,                  --
--     special, incidental, or consequential loss or damage                   --
--     (including loss of data, profits, goodwill, or any type of             --
--     loss or damage suffered as a result of any action brought              --
--     by a third party) even if such damage or loss was                      --
--     reasonably foreseeable or Xilinx had been advised of the               --
--     possibility of the same.                                               --
--                                                                            --
--     CRITICAL APPLICATIONS                                                  --
--     Xilinx products are not designed or intended to be fail-               --
--     safe, or for use in any application requiring fail-safe                --
--     performance, such as life-support or safety devices or                 --
--     systems, Class III medical devices, nuclear facilities,                --
--     applications related to the deployment of airbags, or any              --
--     other applications that could lead to death, personal                  --
--     injury, or severe property or environmental damage                     --
--     (individually and collectively, "Critical                              --
--     Applications"). Customer assumes the sole risk and                     --
--     liability of any use of Xilinx products in Critical                    --
--     Applications, subject only to applicable laws and                      --
--     regulations governing limitations on product liability.                --
--                                                                            --
--     THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS               --
--     PART OF THIS FILE AT ALL TIMES.                                        --
--------------------------------------------------------------------------------
-- The following code must appear in the VHDL architecture header:

------------- Begin Cut here for COMPONENT Declaration ------ COMP_TAG
component sem_core
	port (
	status_heartbeat: out std_logic;
	status_initialization: out std_logic;
	status_observation: out std_logic;
	status_correction: out std_logic;
	status_classification: out std_logic;
	status_injection: out std_logic;
	status_critical: out std_logic;
	status_uncorrectable: out std_logic;
	monitor_txdata: out std_logic_vector(7 downto 0);
	monitor_txwrite: out std_logic;
	monitor_txfull: in std_logic;
	monitor_rxdata: in std_logic_vector(7 downto 0);
	monitor_rxread: out std_logic;
	monitor_rxempty: in std_logic;
	inject_strobe: in std_logic;
	inject_address: in std_logic_vector(35 downto 0);
	icap_busy: in std_logic;
	icap_o: in std_logic_vector(31 downto 0);
	icap_csb: out std_logic;
	icap_rdwrb: out std_logic;
	icap_i: out std_logic_vector(31 downto 0);
	icap_clk: in std_logic;
	icap_request: out std_logic;
	icap_grant: in std_logic;
	fecc_crcerr: in std_logic;
	fecc_eccerr: in std_logic;
	fecc_eccerrsingle: in std_logic;
	fecc_syndromevalid: in std_logic;
	fecc_syndrome: in std_logic_vector(12 downto 0);
	fecc_far: in std_logic_vector(23 downto 0);
	fecc_synbit: in std_logic_vector(4 downto 0);
	fecc_synword: in std_logic_vector(6 downto 0));
end component;

-- Synplicity black box declaration
attribute syn_black_box : boolean;
attribute syn_black_box of sem_core: component is true;

-- COMP_TAG_END ------ End COMPONENT Declaration ------------

-- The following code must appear in the VHDL architecture
-- body. Substitute your own instance name and net names.

------------- Begin Cut here for INSTANTIATION Template ----- INST_TAG
your_instance_name : sem_core
		port map (
			status_heartbeat => status_heartbeat,
			status_initialization => status_initialization,
			status_observation => status_observation,
			status_correction => status_correction,
			status_classification => status_classification,
			status_injection => status_injection,
			status_critical => status_critical,
			status_uncorrectable => status_uncorrectable,
			monitor_txdata => monitor_txdata,
			monitor_txwrite => monitor_txwrite,
			monitor_txfull => monitor_txfull,
			monitor_rxdata => monitor_rxdata,
			monitor_rxread => monitor_rxread,
			monitor_rxempty => monitor_rxempty,
			inject_strobe => inject_strobe,
			inject_address => inject_address,
			icap_busy => icap_busy,
			icap_o => icap_o,
			icap_csb => icap_csb,
			icap_rdwrb => icap_rdwrb,
			icap_i => icap_i,
			icap_clk => icap_clk,
			icap_request => icap_request,
			icap_grant => icap_grant,
			fecc_crcerr => fecc_crcerr,
			fecc_eccerr => fecc_eccerr,
			fecc_eccerrsingle => fecc_eccerrsingle,
			fecc_syndromevalid => fecc_syndromevalid,
			fecc_syndrome => fecc_syndrome,
			fecc_far => fecc_far,
			fecc_synbit => fecc_synbit,
			fecc_synword => fecc_synword);
-- INST_TAG_END ------ End INSTANTIATION Template ------------

