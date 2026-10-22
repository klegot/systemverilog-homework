//----------------------------------------------------------------------------
// Example
//----------------------------------------------------------------------------

module mux_2_1
(
  input        [3:0] d0, d1,
  input              sel,
  output logic [3:0] y
);

  always_comb
    if (sel)
      y = d1;
    else
      y = d0;

endmodule

//----------------------------------------------------------------------------
// Task
//----------------------------------------------------------------------------

module mux_4_1
(
  input        [3:0] d0, d1, d2, d3,
  input        [1:0] sel,
  output logic [3:0] y
);

  // Task:
  // Using code for mux_2_1 as an example,
  // write code for 4:1 mux using the "if" statement

  always_comb // процедурный блок, предназначенный исключительно для описания комбинационной логики
    if (sel[0]) begin // begin и end — это просто операторные скобки {}, которые объединяют несколько строк кода внутри этого блока
        if (sel[1])
          y = d3;
        else
          y = d1;
    end
    else begin
        if (sel[1])
          y = d2;
        else
          y = d0;
    end

endmodule
