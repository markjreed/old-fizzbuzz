with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure FizzBuzz is
begin
  for I in 1..100 loop
    if I mod 15 = 0 then
      Put("FizzBuzz");
    elsif I mod 3 = 0 then
      Put("Fizz");
    elsif I mod 5 = 0 then
      Put("Buzz");
    else
      Put(I);
    end if;
    New_Line;
  end loop;
end FizzBuzz;
