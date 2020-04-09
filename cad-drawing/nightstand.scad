/*

    Nightstand
    
    By Anton Augustsson
    
    
*/



/*
    ---------- Variables ---------- 
*/

thickness = 25;

totalHeight = 600;
totalWidth  = 420;
totalDepth  = 420;

extraWidth = 10;
extraDepth = 10;

legWidth     = 30;
legLength    = totalHeight-thickness;
legThickness = thickness;

tenonWidth     = thickness;
tenonLengthX   = totalWidth-extraWidth*2; 
tenonLengthY   = totalDepth-extraDepth*2-legWidth*2; 
tenonThickness = legWidth;

boxHeight = 120;
boxWidth  = totalWidth-extraWidth*2-legThickness*2;
boxDepth  = totalDepth-extraDepth*2-thickness*2;
boxBottomWidth = boxWidth-thickness*2;

shelfPositionHeight = 120;
shelfWidth = tenonThickness;



/* 
    ---------- Code ----------
*/



// ---------- Leg ----------

color("Wheat")
union(){
         
// leg 1
translate([
    0,
    0,
    0]) 
cube(size = [
    legThickness,
    legWidth,
    legLength]);
    
// leg 2
translate([
    tenonLengthX-legThickness,
    0,
    0]) 
cube(size = [
    legThickness,
    legWidth,
    legLength]);
    
// leg 3
translate([
    0,
    tenonLengthY+legWidth,
    0]) 
cube(size = [
    legThickness,
    legWidth,
    legLength]);
    
// leg 4
translate([
    tenonLengthX-legThickness,
    tenonLengthY+legWidth,
    0]) 
cube(size = [
    legThickness,
    legWidth,
    legLength]);
    

// ---------- Tenons ----------

// front upper tenon
translate([
    0,
    0,
    legLength-tenonThickness]) 
cube(size = [
    tenonLengthX,
    tenonWidth,
    tenonThickness]);
    
// front lower tenon
translate([
    0,
    0,
    legLength-tenonThickness*2-boxHeight]) 
cube(size = [
    tenonLengthX,
    tenonWidth,
    tenonThickness]);
     
// back upper tenon
translate([
    0,
    tenonLengthY+legWidth*2-tenonWidth,
    legLength-tenonThickness]) 
cube(size = [
    tenonLengthX,
    tenonWidth,
    tenonThickness]);
    
// back lower tenon
translate([
    0,
    tenonLengthY+legWidth*2-tenonWidth,
    legLength-tenonThickness*2-boxHeight]) 
cube(size = [
    tenonLengthX,
    tenonWidth,
    tenonThickness]);

// left upper tenon
translate([
    0,
    legWidth,
    legLength-tenonThickness]) 
cube(size = [
    tenonWidth,
    tenonLengthY,
    tenonThickness]);

// left lower tenon
translate([
    0,
    legWidth,
    legLength-tenonThickness*2-boxHeight]) 
cube(size = [
    tenonWidth,
    tenonLengthY,
    tenonThickness]);

// right upper tenon
translate([
    tenonLengthX-legThickness,
    legWidth,
    legLength-tenonThickness]) 
cube(size = [
    tenonWidth,
    tenonLengthY,
    tenonThickness]);

// right lower tenon
translate([
    tenonLengthX-legThickness,
    legWidth,
    legLength-tenonThickness*2-boxHeight]) 
cube(size = [
    tenonWidth,
    tenonLengthY,
    tenonThickness]);
    
}


/* 
  ---------- Shelf ----------
*/

color("tan")
// Shelf
translate([
    0,
    legWidth,
    shelfPositionHeight+tenonThickness]) 
cube(size = [
    tenonLengthX,
    tenonLengthY,
    thickness]);


/* 
  ---------- Box ----------
*/

color("tan")
union(){ 
// Box Front
translate([
    legThickness,
    0,
    legLength-boxHeight-tenonThickness]) 
cube(size = [
    boxWidth,
    thickness,
    boxHeight]);
    
// Box Back
translate([
    legThickness,
    tenonLengthY+legWidth*2-thickness,
    legLength-boxHeight-tenonThickness]) 
cube(size = [
    boxWidth,
    thickness,
    boxHeight]);
    
// Box Left side
translate([
    legThickness,
    thickness,
    legLength-boxHeight-tenonThickness]) 
cube(size = [
    thickness,
    boxDepth,
    boxHeight]);
    
// Box Right side
translate([
    legThickness+boxWidth-thickness,
    thickness,
    legLength-boxHeight-tenonThickness]) 
cube(size = [
    thickness,
    boxDepth,
    boxHeight]);
    
// Box Bottom
translate([
    legThickness+thickness,
    thickness,
    legLength-boxHeight-tenonThickness]) 
cube(size = [
    boxBottomWidth,
    boxDepth,
    thickness]);

// Box left side stop
translate([
    0,
    legThickness+tenonLengthY-thickness,
    legLength-boxHeight-tenonThickness]) 
cube(size = [
    thickness,
    thickness,
    boxHeight]);
    
// Box Right side stop
translate([
    legThickness+boxWidth,
    legThickness+tenonLengthY-thickness,
    legLength-boxHeight-tenonThickness]) 
cube(size = [
    thickness,
    thickness,
    boxHeight]);
        
}


/* 
  ---------- Top ----------
*/

color("Sienna")
translate([
    -extraWidth,
    -extraDepth,
    totalHeight-thickness]) 
cube(size = [
    totalWidth,
    totalDepth,
    thickness]);
