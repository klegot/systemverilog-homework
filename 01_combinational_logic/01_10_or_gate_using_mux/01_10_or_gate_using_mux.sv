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

module or_gate_using_mux
(
    input  a,
    input  b,
    output o
);

  // Task:

  // Implement or gate using instance(s) of mux,
  // constants 0 and 1, and wire connections

  mux mux0( // если b=0 - выводим А, если b=1 - выводим 1 тк 1 | A всегда 1
    .d0(a),
    .d1('b1),
    .sel(b),
    .y(o)
  );


endmodule
