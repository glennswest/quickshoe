

module qshoe_body()
{
  hull(){
   cylinder($fn=100,r=32,h=10);
   translate([0,55,0]) cylinder($fn=100,r=65.3/2,h=10);
  }
}


module qshoe()
{
  difference(){
   qshoe_body();
   translate([0,0,-1]) cylinder($fn=100,r=27,h=7);
   translate([0,0,-1])  cylinder($fn=100,r=16,h=12);
   translate([0,55,-20]) cylinder($fn=100,r=45.3/2,h=54);
   translate([0,-23,0]) cylinder($fn=100,r=2.25,h=12);  
   translate([0, 23,0]) cylinder($fn=100,r=2.25,h=12);
   translate([0,105,5]) cylinder($fn=100,r=3.3/2,h=20); 
    
  translate([27,60,0]) cylinder($fn=100,r=4,h=12);  
  translate([-27, 60,0]) cylinder($fn=100,r=4,h=12);     
      
   }
}


projection(cut=true) translate([0,0,5]) rotate([180,0,0]) qshoe();

