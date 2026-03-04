----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/02/2026 07:35:40 PM
-- Design Name: 
-- Module Name: sevenseg_decoder_tb - Behavioral
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity sevenseg_decoder_tb is
end sevenseg_decoder_tb;

architecture Behavioral of sevenseg_decoder_tb is

    component sevenseg_decoder
        Port ( i_Hex : in STD_LOGIC_VECTOR (3 downto 0);
               o_seg_n : out STD_LOGIC_VECTOR (6 downto 0));
    end component;

    signal w_Hex : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    signal w_seg_n : STD_LOGIC_VECTOR (6 downto 0);

begin

    uut: sevenseg_decoder port map (
        i_Hex => w_Hex,
        o_seg_n => w_seg_n
    );

    stim_proc: process
    begin
        w_Hex <= x"0"; wait for 10 ns;
        w_Hex <= x"1"; wait for 10 ns;
        w_Hex <= x"2"; wait for 10 ns;
        w_Hex <= x"3"; wait for 10 ns;
        w_Hex <= x"4"; wait for 10 ns;
        w_Hex <= x"5"; wait for 10 ns;
        w_Hex <= x"6"; wait for 10 ns;
        w_Hex <= x"7"; wait for 10 ns;
        w_Hex <= x"8"; wait for 10 ns;
        w_Hex <= x"9"; wait for 10 ns;
        w_Hex <= x"A"; wait for 10 ns;
        w_Hex <= x"B"; wait for 10 ns;
        w_Hex <= x"C"; wait for 10 ns;
        w_Hex <= x"D"; wait for 10 ns;
        w_Hex <= x"E"; wait for 10 ns;
        w_Hex <= x"F"; wait for 10 ns;
        wait;
    end process;

end Behavioral;