--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
--Date        : Wed Apr 17 16:26:56 2024
--Host        : acer-lukasz running 64-bit Ubuntu 22.04.4 LTS
--Command     : generate_target design_1.bd
--Design      : design_1
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1 is
  port (
    m_axis_data_tdata_0 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_data_tvalid_0 : out STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of design_1 : entity is "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=3,numReposBlks=3,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=1,numPkgbdBlks=0,bdsource=USER,synth_mode=Hierarchical}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of design_1 : entity is "design_1.hwdef";
end design_1;

architecture STRUCTURE of design_1 is
  component design_1_dds_compiler_0_0 is
  port (
    aclk : in STD_LOGIC;
    s_axis_phase_tvalid : in STD_LOGIC;
    s_axis_phase_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_phase_tuser : in STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axis_data_tvalid : out STD_LOGIC;
    m_axis_data_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_data_tuser : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axis_phase_tvalid : out STD_LOGIC;
    m_axis_phase_tdata : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axis_phase_tuser : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component design_1_dds_compiler_0_0;
  component design_1_sim_clk_gen_0_1 is
  port (
    clk : out STD_LOGIC;
    sync_rst : out STD_LOGIC
  );
  end component design_1_sim_clk_gen_0_1;
  component design_1_string_encoder_0_0 is
  port (
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    enc_message : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component design_1_string_encoder_0_0;
  signal dds_compiler_0_m_axis_data_tdata : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal dds_compiler_0_m_axis_data_tvalid : STD_LOGIC;
  signal sim_clk_gen_0_clk : STD_LOGIC;
  signal sim_clk_gen_0_sync_rst : STD_LOGIC;
  signal string_encoder_0_enc_message : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_dds_compiler_0_m_axis_phase_tvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_dds_compiler_0_m_axis_data_tuser_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_dds_compiler_0_m_axis_phase_tdata_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_dds_compiler_0_m_axis_phase_tuser_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
begin
  m_axis_data_tdata_0(31 downto 0) <= dds_compiler_0_m_axis_data_tdata(31 downto 0);
  m_axis_data_tvalid_0 <= dds_compiler_0_m_axis_data_tvalid;
dds_compiler_0: component design_1_dds_compiler_0_0
     port map (
      aclk => sim_clk_gen_0_clk,
      m_axis_data_tdata(31 downto 0) => dds_compiler_0_m_axis_data_tdata(31 downto 0),
      m_axis_data_tuser(15 downto 0) => NLW_dds_compiler_0_m_axis_data_tuser_UNCONNECTED(15 downto 0),
      m_axis_data_tvalid => dds_compiler_0_m_axis_data_tvalid,
      m_axis_phase_tdata(15 downto 0) => NLW_dds_compiler_0_m_axis_phase_tdata_UNCONNECTED(15 downto 0),
      m_axis_phase_tuser(15 downto 0) => NLW_dds_compiler_0_m_axis_phase_tuser_UNCONNECTED(15 downto 0),
      m_axis_phase_tvalid => NLW_dds_compiler_0_m_axis_phase_tvalid_UNCONNECTED,
      s_axis_phase_tdata(31 downto 0) => B"00000000000000000000000000000000",
      s_axis_phase_tuser(15 downto 0) => string_encoder_0_enc_message(15 downto 0),
      s_axis_phase_tvalid => '0'
    );
sim_clk_gen_0: component design_1_sim_clk_gen_0_1
     port map (
      clk => sim_clk_gen_0_clk,
      sync_rst => sim_clk_gen_0_sync_rst
    );
string_encoder_0: component design_1_string_encoder_0_0
     port map (
      clk => sim_clk_gen_0_clk,
      enc_message(15 downto 0) => string_encoder_0_enc_message(15 downto 0),
      reset => sim_clk_gen_0_sync_rst
    );
end STRUCTURE;
