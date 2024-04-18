--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
--Date        : Wed Apr 17 16:26:56 2024
--Host        : acer-lukasz running 64-bit Ubuntu 22.04.4 LTS
--Command     : generate_target design_1_wrapper.bd
--Design      : design_1_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_wrapper is
  port (
    m_axis_data_tdata_0 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_data_tvalid_0 : out STD_LOGIC
  );
end design_1_wrapper;

architecture STRUCTURE of design_1_wrapper is
  component design_1 is
  port (
    m_axis_data_tdata_0 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_data_tvalid_0 : out STD_LOGIC
  );
  end component design_1;
begin
design_1_i: component design_1
     port map (
      m_axis_data_tdata_0(31 downto 0) => m_axis_data_tdata_0(31 downto 0),
      m_axis_data_tvalid_0 => m_axis_data_tvalid_0
    );
end STRUCTURE;
