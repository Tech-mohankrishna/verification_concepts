// This code tells about Fork-Join Concepts of Verification
program test;
 initial begin
   $display("start");

   task display1();
     #2
    $display("Task_1");
   endtask
   
   task display2();
     $display("Task_2");
   endtask
   
   task display3();
     $display("Task_3");
   endtask

   
   fork
     display1();
     display2();
     display3();
   join_any
   
   wait fork

     $display("end");
     end
     endprogram