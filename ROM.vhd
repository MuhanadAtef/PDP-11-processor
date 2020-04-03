LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.numeric_std.all;

ENTITY ROM IS
	PORT(
		clk : IN std_logic;
		ADDRESS : IN  std_logic_vector(4 DOWNTO 0);
		DATAOUT : OUT std_logic_vector(17 DOWNTO 0));
END ENTITY ROM;

ARCHITECTURE SYNCROMA OF ROM IS

	TYPE ROM_TYPE IS ARRAY(0 TO 31) OF std_logic_vector(17 DOWNTO 0);
	SIGNAL ROM : ROM_TYPE := (
	"111010010101101011",
	"000100110000011000",
	"000110100000001000",
	"000000001100000000",
	"001010010001101011",
	"001100100100001000",
	"001110110000000001",
	"010001000011000010",
	"010000100000101000",
	"010101000001101011",
	"010000100000000100",
	"011001000010000011",
	"010000100000101100",
	"000000000000000110",
	"110000110000101000",
	"110001000000101000",
	"000110110000100000",
	"101000110000000001",
	"000111000000100000",
	"101001000000000001",
	"000001010000110010",
	"000000101000010000",
	"000000100000000100",
	"110000010000000001",
	"110011100011000010",
	"000000100000001000",
	"011010000100000000",
	"100000000100000000",
	"101001010000000001",
	"000010000100000000",
	OTHERS => "111110000000000000");

	BEGIN
		dataout <= ROM(to_integer(unsigned(address)));
END SYNCROMA;