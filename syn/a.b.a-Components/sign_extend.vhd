library IEEE;
use IEEE.std_logic_1164.all;
use work.constants.all;

-- EXTEND 16 BIT VECTOR TO 32 BIT WHILE MAINTAINING THE SIGN
entity sign_extend is
    generic ( NBIT: integer := 16;  -- Numero di bit in input
              NBIT_F: integer := 32);  -- Numero di bit finali
    Port (A: In std_logic_vector(NBIT-1 downto 0);
          res: Out std_logic_vector(NBIT_F-1 downto 0));
end sign_extend;

architecture beh of sign_extend is
begin
    process(A)  -- Aggiungi un processo per gestire l'assegnazione
    begin
        if NBIT_F > NBIT then
			res(NBIT_F-1 downto NBIT) <= (others => A(NBIT-1));
            res(NBIT-1 downto 0) <= A;
        else
            res <= A(NBIT-1 downto 0);  -- Copia dell'input se non necessario estendere
        end if;
    end process;
end beh;
