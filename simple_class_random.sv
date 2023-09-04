// Code your testbench here
// or browse Examples

class advance;
  rand bit x,y;
  randc int a,b;
  constraint c1
  {
    a inside {[91:99]};
  }
  
  constraint c2
  {
    if (a != 99)
      b == 55;
    else
      b == 11;
  }
  extern constraint c3;
endclass

constraint advance::c3
{
  if ( b== 11)
    y == 1;
  else
    y == 0;

}

program Test;
  advance ad;
  int i;
  
  initial begin
    ad = new;
    for ( i=0; i<5; i++)
      begin
        ad.randomize;
        $display("%0d, %0d, %0d, %0d", ad.x, ad.y, ad.a, ad.b);
      end
  end
endprogram

  
