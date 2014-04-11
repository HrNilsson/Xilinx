-------------------------------------------------------------------------------
-- $Id:$
-------------------------------------------------------------------------------
-- coregen_comp_defs - entity/architecture pair
-------------------------------------------------------------------------------
--
-- *************************************************************************
-- **                                                                     **
-- ** DISCLAIMER OF LIABILITY                                             **
-- **                                                                     **
-- ** This text/file contains proprietary, confidential                   **
-- ** information of Xilinx, Inc., is distributed under                   **
-- ** license from Xilinx, Inc., and may be used, copied                  **
-- ** and/or disclosed only pursuant to the terms of a valid              **
-- ** license agreement with Xilinx, Inc. Xilinx hereby                   **
-- ** grants you a license to use this text/file solely for               **
-- ** design, simulation, implementation and creation of                  **
-- ** design files limited to Xilinx devices or technologies.             **
-- ** Use with non-Xilinx devices or technologies is expressly            **
-- ** prohibited and immediately terminates your license unless           **
-- ** covered by a separate agreement.                                    **
-- **                                                                     **
-- ** Xilinx is providing this design, code, or information               **
-- ** "as-is" solely for use in developing programs and                   **
-- ** solutions for Xilinx devices, with no obligation on the             **
-- ** part of Xilinx to provide support. By providing this design,        **
-- ** code, or information as one possible implementation of              **
-- ** this feature, application or standard, Xilinx is making no          **
-- ** representation that this implementation is free from any            **
-- ** claims of infringement. You are responsible for obtaining           **
-- ** any rights you may require for your implementation.                 **
-- ** Xilinx expressly disclaims any warranty whatsoever with             **
-- ** respect to the adequacy of the implementation, including            **
-- ** but not limited to any warranties or representations that this      **
-- ** implementation is free from claims of infringement, implied         **
-- ** warranties of merchantability or fitness for a particular           **
-- ** purpose.                                                            **
-- **                                                                     **
-- ** Xilinx products are not intended for use in life support            **
-- ** appliances, devices, or systems. Use in such applications is        **
-- ** expressly prohibited.                                               **
-- **                                                                     **
-- ** Any modifications that are made to the Source Code are              **
-- ** done at the user�s sole risk and will be unsupported.               **
-- ** The Xilinx Support Hotline does not have access to source           **
-- ** code and therefore cannot answer specific questions related         **
-- ** to source HDL. The Xilinx Hotline support of original source        **
-- ** code IP shall only address issues and questions related             **
-- ** to the standard Netlist version of the core (and thus               **
-- ** indirectly, the original core source).                              **
-- **                                                                     **
-- ** Copyright (c) 2008-2013 Xilinx, Inc. All rights reserved.           **
-- **                                                                     **
-- ** This copyright and support notice must be retained as part          **
-- ** of this text at all times.                                          **
-- **                                                                     **
-- *************************************************************************
--
-------------------------------------------------------------------------------
-- Filename:        coregen_comp_defs.vhd
-- Version:         initial
-- Description:     
--   Component declarations for all black box netlists generated by
--   running COREGEN and AXI BRAM CTRL when XST elaborated the client core
--
-- VHDL-Standard:   VHDL'93
-------------------------------------------------------------------------------
-- Structure:   
--                      -- coregen_comp_defs.vhd
-------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

PACKAGE coregen_comp_defs IS

-------------------------------------------------------------------------------------
-- Start Block Memory Generator Component for blk_mem_gen_v8_1
-- Component declaration for blk_mem_gen_v8_1 pulled from the  blk_mem_gen_v8_1.v
-- Verilog file used to match paramter order for NCSIM compatibility
-------------------------------------------------------------------------------------
component blk_mem_gen_v8_1
  generic (
  ----------------------------------------------------------------------------
  -- Generic Declarations
  ----------------------------------------------------------------------------
  --Device Family & Elaboration Directory Parameters:
    C_FAMILY                    : STRING  := "virtex4";
    C_XDEVICEFAMILY             : STRING  := "virtex4";
--    C_ELABORATION_DIR           : STRING  := "";
  
    C_INTERFACE_TYPE            : INTEGER := 0;
    C_AXI_TYPE                  : INTEGER := 1;
    C_AXI_SLAVE_TYPE            : INTEGER := 0;
    C_HAS_AXI_ID                : INTEGER := 0;

    C_AXI_ID_WIDTH                : INTEGER := 4;
  --General Memory Parameters:  
    C_MEM_TYPE                  : INTEGER := 2;
    C_BYTE_SIZE                 : INTEGER := 9;
    C_ALGORITHM                 : INTEGER := 0;
    C_PRIM_TYPE                 : INTEGER := 3;
  
  --Memory Initialization Parameters:
    C_LOAD_INIT_FILE            : INTEGER := 0;
    C_INIT_FILE_NAME            : STRING  := "";
    C_USE_DEFAULT_DATA          : INTEGER := 0;
    C_DEFAULT_DATA              : STRING  := "111111111";
    C_RST_TYPE                  : STRING  := "SYNC";
  
  --Port A Parameters:
    --Reset Parameters:
    C_HAS_RSTA                  : INTEGER := 0;
    C_RST_PRIORITY_A            : STRING  := "CE";
    C_RSTRAM_A                  : INTEGER := 0;
    C_INITA_VAL                 : STRING  := "0";
  
    --Enable Parameters:
    C_HAS_ENA                   : INTEGER := 1;
    C_HAS_REGCEA                : INTEGER := 0;
  
    --Byte Write Enable Parameters:
    C_USE_BYTE_WEA              : INTEGER := 0;
    C_WEA_WIDTH                 : INTEGER := 1;
  
    --Write Mode:
    C_WRITE_MODE_A              : STRING  := "WRITE_FIRST";
  
    --Data-Addr Width Parameters:
    C_WRITE_WIDTH_A             : INTEGER := 4;
    C_READ_WIDTH_A              : INTEGER := 4;
    C_WRITE_DEPTH_A             : INTEGER := 4096;
    C_READ_DEPTH_A              : INTEGER := 4096;
    C_ADDRA_WIDTH               : INTEGER := 12;
  
  --Port B Parameters:
    --Reset Parameters:
    C_HAS_RSTB                  : INTEGER := 0;
    C_RST_PRIORITY_B            : STRING  := "CE";
    C_RSTRAM_B                  : INTEGER := 0;
    C_INITB_VAL                 : STRING  := "0";
  
    --Enable Parameters:
    C_HAS_ENB                   : INTEGER := 1;
    C_HAS_REGCEB                : INTEGER := 0;
  
    --Byte Write Enable Parameters:
    C_USE_BYTE_WEB              : INTEGER := 0;
    C_WEB_WIDTH                 : INTEGER := 1;
  
    --Write Mode:
    C_WRITE_MODE_B              : STRING  := "WRITE_FIRST";
  
    --Data-Addr Width Parameters:
    C_WRITE_WIDTH_B             : INTEGER := 4;
    C_READ_WIDTH_B              : INTEGER := 4;
    C_WRITE_DEPTH_B             : INTEGER := 4096;
    C_READ_DEPTH_B              : INTEGER := 4096;
    C_ADDRB_WIDTH               : INTEGER := 12;
  
  --Output Registers/ Pipelining Parameters:
    C_HAS_MEM_OUTPUT_REGS_A     : INTEGER := 0;
    C_HAS_MEM_OUTPUT_REGS_B     : INTEGER := 0;
    C_HAS_MUX_OUTPUT_REGS_A     : INTEGER := 0;
    C_HAS_MUX_OUTPUT_REGS_B     : INTEGER := 0;
    C_MUX_PIPELINE_STAGES       : INTEGER := 0;

   --Input/Output Registers for SoftECC :
    C_HAS_SOFTECC_INPUT_REGS_A  : INTEGER := 0;
    C_HAS_SOFTECC_OUTPUT_REGS_B : INTEGER := 0;
  
  --ECC Parameters
    C_USE_ECC                   : INTEGER := 0;
    C_USE_SOFTECC               : INTEGER := 0;
    C_HAS_INJECTERR             : INTEGER := 0;
    
  --Simulation Model Parameters:
    C_SIM_COLLISION_CHECK       : STRING  := "NONE";
    C_COMMON_CLK                : INTEGER := 0;
    C_DISABLE_WARN_BHV_COLL     : INTEGER := 0;
    C_DISABLE_WARN_BHV_RANGE    : INTEGER := 0
  );
  PORT (
  ----------------------------------------------------------------------------
  -- Input and Output Declarations
  ----------------------------------------------------------------------------
  -- Native BMG Input and Output Port Declarations
  --Port A:
    CLKA                             : IN  STD_LOGIC := '0';
    RSTA                             : IN  STD_LOGIC := '0';
    ENA                              : IN  STD_LOGIC := '0';
    REGCEA                           : IN  STD_LOGIC := '0';
    WEA                              : IN  STD_LOGIC_VECTOR(C_WEA_WIDTH-1 DOWNTO 0) := (OTHERS => '0');
    ADDRA                            : IN  STD_LOGIC_VECTOR(C_ADDRA_WIDTH-1 DOWNTO 0) := (OTHERS => '0');
    DINA                             : IN  STD_LOGIC_VECTOR(C_WRITE_WIDTH_A-1 DOWNTO 0) := (OTHERS => '0');
    DOUTA                            : OUT STD_LOGIC_VECTOR(C_READ_WIDTH_A-1 DOWNTO 0);
  
  --Port B:
    CLKB                             : IN  STD_LOGIC := '0';
    RSTB                             : IN  STD_LOGIC := '0';
    ENB                              : IN  STD_LOGIC := '0';
    REGCEB                           : IN  STD_LOGIC := '0';
    WEB                              : IN  STD_LOGIC_VECTOR(C_WEB_WIDTH-1 DOWNTO 0) := (OTHERS => '0');
    ADDRB                            : IN  STD_LOGIC_VECTOR(C_ADDRB_WIDTH-1 DOWNTO 0) := (OTHERS => '0');
    DINB                             : IN  STD_LOGIC_VECTOR(C_WRITE_WIDTH_B-1 DOWNTO 0) := (OTHERS => '0');
    DOUTB                            : OUT STD_LOGIC_VECTOR(C_READ_WIDTH_B-1 DOWNTO 0);
  
  --ECC:
    INJECTSBITERR                    : IN  STD_LOGIC := '0';
    INJECTDBITERR                    : IN  STD_LOGIC := '0';
    SBITERR                          : OUT STD_LOGIC;
    DBITERR                          : OUT STD_LOGIC;
    RDADDRECC                        : OUT STD_LOGIC_VECTOR(C_ADDRB_WIDTH-1 DOWNTO 0);
  -- AXI BMG Input and Output Port Declarations

    -- AXI Global Signals
    S_AClk                         : IN  STD_LOGIC := '0';
    S_ARESETN                      : IN  STD_LOGIC := '0'; 

    -- AXI Full/Lite Slave Write (write side)
    S_AXI_AWID                     : IN  STD_LOGIC_VECTOR(C_AXI_ID_WIDTH-1 DOWNTO 0) := (OTHERS => '0');
    S_AXI_AWADDR                   : IN  STD_LOGIC_VECTOR(31 DOWNTO 0) := (OTHERS => '0');
    S_AXI_AWLEN                    : IN  STD_LOGIC_VECTOR(7 DOWNTO 0) := (OTHERS => '0');
    S_AXI_AWSIZE                   : IN  STD_LOGIC_VECTOR(2 DOWNTO 0) := (OTHERS => '0');
    S_AXI_AWBURST                  : IN  STD_LOGIC_VECTOR(1 DOWNTO 0) := (OTHERS => '0');
    S_AXI_AWVALID                  : IN  STD_LOGIC := '0';
    S_AXI_AWREADY                  : OUT STD_LOGIC;
    S_AXI_WDATA                    : IN  STD_LOGIC_VECTOR(C_WRITE_WIDTH_A-1 DOWNTO 0) := (OTHERS => '0');
    S_AXI_WSTRB                    : IN  STD_LOGIC_VECTOR(C_WEA_WIDTH-1 DOWNTO 0) := (OTHERS => '0');
    S_AXI_WLAST                    : IN  STD_LOGIC := '0';
    S_AXI_WVALID                   : IN  STD_LOGIC := '0';
    S_AXI_WREADY                   : OUT STD_LOGIC;
    S_AXI_BID                      : OUT  STD_LOGIC_VECTOR(C_AXI_ID_WIDTH-1 DOWNTO 0) := (OTHERS => '0');
    S_AXI_BRESP                    : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    S_AXI_BVALID                   : OUT STD_LOGIC;
    S_AXI_BREADY                   : IN  STD_LOGIC := '0';

    -- AXI Full/Lite Slave Read (Write side)
    S_AXI_ARID                     : IN  STD_LOGIC_VECTOR(C_AXI_ID_WIDTH-1 DOWNTO 0) := (OTHERS => '0');
    S_AXI_ARADDR                   : IN  STD_LOGIC_VECTOR(31 DOWNTO 0) := (OTHERS => '0');
    S_AXI_ARLEN                    : IN  STD_LOGIC_VECTOR(8-1 DOWNTO 0) := (OTHERS => '0');
    S_AXI_ARSIZE                   : IN  STD_LOGIC_VECTOR(2 DOWNTO 0) := (OTHERS => '0');
    S_AXI_ARBURST                  : IN  STD_LOGIC_VECTOR(1 DOWNTO 0) := (OTHERS => '0');
    S_AXI_ARVALID                  : IN  STD_LOGIC := '0';
    S_AXI_ARREADY                  : OUT STD_LOGIC;
    S_AXI_RID                      : OUT  STD_LOGIC_VECTOR(C_AXI_ID_WIDTH-1 DOWNTO 0) := (OTHERS => '0');
    S_AXI_RDATA                    : OUT STD_LOGIC_VECTOR(C_WRITE_WIDTH_B-1 DOWNTO 0); 
    S_AXI_RRESP                    : OUT STD_LOGIC_VECTOR(2-1 DOWNTO 0);
    S_AXI_RLAST                    : OUT STD_LOGIC;
    S_AXI_RVALID                   : OUT STD_LOGIC;
    S_AXI_RREADY                   : IN  STD_LOGIC := '0';

    -- AXI Full/Lite Sideband Signals
    S_AXI_INJECTSBITERR              : IN  STD_LOGIC := '0';
    S_AXI_INJECTDBITERR              : IN  STD_LOGIC := '0';
    S_AXI_SBITERR                    : OUT STD_LOGIC;
    S_AXI_DBITERR                    : OUT STD_LOGIC;
    S_AXI_RDADDRECC                  : OUT STD_LOGIC_VECTOR(C_ADDRB_WIDTH-1 DOWNTO 0)

  );

  END COMPONENT; --blk_mem_gen_v8_1

END coregen_comp_defs;
