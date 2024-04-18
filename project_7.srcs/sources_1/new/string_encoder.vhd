----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/17/2024 01:06:25 PM
-- Design Name: 
-- Module Name: string_encoder - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity string_encoder is
    Port ( clk : in STD_LOGIC;
           reset: in std_logic;
           enc_message : out std_logic_vector(15 downto 0));
end string_encoder;

architecture Behavioral of string_encoder is
    signal char : character;
    type CharArray is array (natural range <>) of character;
    signal message : CharArray(0 to 4) := ('d', 'u', 'p', 'a', ' ');
    
begin
    process(clk, reset)
    variable count : integer := 0;
    begin
        char <= message(count);

        if rising_edge(clk) then
            enc_message(0) <= '1';
            enc_message(8 downto 1) <= std_logic_vector(to_unsigned(character'pos(char), enc_message(8 downto 1)'length));
            enc_message(14 downto 9) <= (others => '0');
            enc_message(15) <= '0';
            
            count := count + 1;
            if count > 4 then
                count := 0;
            end if;
        end if;
    end process;
end Behavioral;
