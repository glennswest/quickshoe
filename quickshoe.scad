
th = 19;

module qshoe_body()
{
  hull(){
   cylinder($fn=100,r=32,h=th);
   translate([0,65,0]) cylinder($fn=100,r=65.3/2,h=th);
  }
}


module qshoe()
{
  difference(){
   qshoe_body();
   translate([0,0,-1]) cylinder($fn=100,r=26,h=th+2);
   
   translate([0,65,-20]) cylinder($fn=100,r=45.1/2,h=54);
   translate([0,-23,0]) cylinder($fn=100,r=2.60,h=th+1);  
   translate([0, 23,0]) cylinder($fn=100,r=2.60,h=th+1);
   translate([0,105,5]) cylinder($fn=100,r=3.3/2,h=20);
    
   translate([27,70,0]) cylinder($fn=100,r=1.8,h=th+1);  
   translate([-27, 70,0]) cylinder($fn=100,r=1.8,h=th+1);
   translate([27,50,0]) cylinder($fn=100,r=1.8,h=th+2);  
   translate([-27, 50,0]) cylinder($fn=100,r=1.8,h=th+2);
   translate([27,30,0]) cylinder($fn=100,r=1.8,h=th+2);  
   translate([-27, 30,0]) cylinder($fn=100,r=1.8,h=th+2);
         
      
   translate([26.2,-2,-1.2]) cube([17.1,3,th+1]);   
   translate([0,100,th/2]) rotate([90,0,0]) cylinder(r=1.5,h=30);  
   translate([23,-2,-1.2]) cube([22.1,3.3,th+3]);   
   }
     
   difference(){
     translate([27,-8,0]) cube([18,14,th]);
     translate([23,-2,-1.2]) cube([22.1,3.3,th+3]);
     translate([40,9,th/2]) rotate([90,0,0]) cylinder($fn=100,r=1.8,h=th+1); 
     translate([40,-1.5,th/2]) rotate([90,0,0]) cylinder($fn=100,r=1.5,h=th+1);   
     }
}


//projection(cut=true) translate([0,0,10]) rotate([180,0,0]) qshoe();
translate([0,0,10]) rotate([180,0,0]) qshoe();
   