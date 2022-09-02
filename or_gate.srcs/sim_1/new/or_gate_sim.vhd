
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity or_gate_sim is
end or_gate_sim;

architecture Behavioral of or_gate_sim is

component or_gate is
port(
    A: in std_logic;
    B: in std_logic;
    
    C: out std_logic);
end component;

signal A_in, B_in, C_out: std_logic;

begin

    DUT: or_gate port map(A_in, B_in, C_out);
    
    process
    begin
        A_in <= '0';
        B_in <= '0';
        wait for 1ns;
        assert(C_out='0') report "Fail 0/0" severity error;
        
        A_in <= '1';
        B_in <= '0';
        wait for 1ns;
        assert(C_out='1') report "Fail 1/0" severity error;
        
        A_in <= '0';
        B_in <= '1';
        wait for 1ns;
        assert(C_out='1') report "Fail 0/1" severity error;
        
        A_in <= '1';
        B_in <= '1';
        wait for 1ns;
        assert(C_out='1') report "Fail 1/1" severity error;
        
        assert false report "Test done." severity note;
        wait;
    end process;


end Behavioral;
