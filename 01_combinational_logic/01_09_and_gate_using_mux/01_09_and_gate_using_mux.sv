//----------------------------------------------------------------------------
// Example
//----------------------------------------------------------------------------

module mux
(
  input  d0, d1,
  input  sel,
  output y
);

  assign y = sel ? d1 : d0;

endmodule

//----------------------------------------------------------------------------
// Task
//----------------------------------------------------------------------------

module and_gate_using_mux
(
    input  a,
    input  b,
    output o
);

  // Task:
  // Implement and gate using instance(s) of mux,
  // constants 0 and 1, and wire connections

  mux mux0( // если b=0, выводим 0 ( так как A&0 всегда будет 0 ), если b=1, выводим А
    .d0('b0),
    .d1(a),
    .sel(b),
    .y(o)
  );


endmodule
