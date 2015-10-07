# integers
a = 1_000_000
IO.puts a

# atoms
b = :foo
IO.puts b

# ranges
Enum.each 1..5, &IO.puts &1

# Perl-regex
Regex.replace ~r{[xyz]}i, "SXMYAZRXT", "_"
"S_M_A_R_T"
