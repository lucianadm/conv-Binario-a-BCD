library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

 
entity bin_bcd is
generic( n_bits: integer:=12 );
    PORT(
        num_bin: in  STD_LOGIC_VECTOR(n_bits-1 downto 0);
 k0_bcd:  out std_logic_vector(3 downto 0);
 k1_bcd:  out std_logic_vector(3 downto 0);
 k2_bcd:  out std_logic_vector(3 downto 0);
 k3_bcd:  out std_logic_vector(3 downto 0)
    --    num_bcd: out STD_LOGIC_VECTOR(10 downto 0)
    );
end bin_bcd;
 
architecture Behavioral of bin_bcd is
--signal D0, D1, D2: std_LOGIC_VECTOR(3 downto 0);
begin
    proceso_bcd: process(num_bin)
        variable z: STD_LOGIC_VECTOR(2*n_bits+2 downto 0);
    begin
        -- Inicialización de datos en cero.
        z := (others => '0');
        -- Se realizan los primeros tres corrimientos.
        z(n_bits+1 downto 2) := num_bin;
        for i in 0 to n_bits-3 loop
    -- Unidades (4 bits).
            if z(n_bits+3 downto n_bits) > 4 then
                z(n_bits+3 downto n_bits) := z(n_bits+3 downto n_bits) + 3; --z(11 downto 8) para n_bits=8
            end if;
     -- Decenas (4 bits).
            if z(n_bits+7 downto n_bits+4) > 4 then
                z(n_bits+7 downto n_bits+4):= z(n_bits+7 downto n_bits+4) + 3;--z(15 downto 12) para n_bits=8
            end if;
    -- Centenas (4 bits).
            if z(n_bits+11 downto n_bits+8) > 4 then
                z(n_bits+11 downto n_bits+8) := z(n_bits+11 downto n_bits+8) + 3;  --z(19 downto 16)  para n_bits=8
            end if;
	-- Unidad de mil (3 bits).
	         if z(n_bits+14 downto n_bits+12) > 4 then
                z(n_bits+14 downto n_bits+12) := z(n_bits+14 downto n_bits+12) + 3;  --z(22 downto 20)  para n_bits=8
            end if;			
				
				
            -- Corrimiento a la izquierda.
            z(2*n_bits+2 downto 1) := z(2*n_bits+1 downto 0);
        end loop;
        -- Pasando datos de variable Z, correspondiente a BCD.
       -- num_bcd <= z(18 downto 8);
 k0_bcd<=z(n_bits+3 downto n_bits);   --z(11 downto 8);
 k3_bcd<="0" & z(n_bits+14 downto n_bits+12);  --z(18 downto 16);
 k1_bcd<=z(n_bits+7 downto n_bits+4);  --z(15 downto 12);
 k2_bcd<=z(n_bits+11 downto n_bits+8);  --z(18 downto 16);
    end process;
end Behavioral;