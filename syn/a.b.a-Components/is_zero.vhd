library IEEE;
use IEEE.std_logic_1164.all;

-- check whether vector is zero 
entity is_zero is
  	generic ( NBIT: integer:= 32);           
	Port (
        A:	In	std_logic_vector(NBIT-1 downto 0);
        BEQZ_OR_BNEZ : in std_logic;
        EN: in std_logic; 
        res:  out std_logic
    );       
end is_zero;

architecture beh of is_zero is 
    signal zeros : std_logic_vector(NBIT-1 downto 0) := (others => '0'); 
begin
      proc_zero : process(A, BEQZ_OR_BNEZ, EN)
      begin
            if EN = '1' then
                  if BEQZ_OR_BNEZ = '1' then  -- BEQZ behavior (Branch if A == 0)
                        res <= '1';
                  else  -- BNEZ behavior (Branch if A != 0)
                        if A /= zeros then
                              res <= '1';
                        else
                              res <= '0';
                        end if;
                  end if;
            else
                  res <= '0';  -- Default state when EN is not active
            end if; 
      end process proc_zero;
end beh;
