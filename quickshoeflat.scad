

module qshoe_body()
{
  hull(){
   cylinder($fn=100,r=32,h=10);
   translate([0,70,0]) cylinder($fn=100,r=60.3/2,h=10);
  }
}


module qshoe()
{
  difference(){
   qshoe_body();
   translate([0,0,-1]) cylinder($fn=100,r=26,h=7);
   translate([0,0,-1])  cylinder($fn=100,r=16,h=12);
   translate([0,80,-20]) rotate([35,0,0]) cylinder($fn=100,r=45.3/2,h=54);
   translate([0,-23,0]) cylinder($fn=100,r=2.25,h=12);  
   translate([0, 23,0]) cylinder($fn=100,r=2.25,h=12);
   translate([0,105,5]) rotate([90,0,0]) cylinder($fn=100,r=3.3/2,h=20);    
   }
}


rotate([180,0,0]) qshoe();
   