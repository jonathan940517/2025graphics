//week14_1_PFont_createFont_textSize_text
size(300,300);
textSize(50);
text("Hello",10,50);
PFont font = createFont("Times New Roman",50);
textFont(font);
text("Hello",10,100);
for(String name : PFont.list())println(name);
