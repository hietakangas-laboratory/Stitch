paths = getArgument()
print(paths);

listy = split(paths, "<>")

companion_ome = listy[1]
print(companion_ome)
fused_tiff = listy[0]
print(fused_tiff)

run("Bio-Formats Macro Extensions");
Ext.openImagePlus(companion_ome)

getDimensions(width, height, channels, slices, frames)
ch_no = channels 
print(ch_no)
run("Close All")

print(fused_tiff)
open(fused_tiff, "virtual")
iddy2 = getTitle()
print(iddy2)
selectWindow(iddy2)

if (is("composite")){ x = true;
} else { x = false; }

print(x);

startSlice1 = 1;
t = slices;
if (x && ch_no == 4){
    print("processing composite");
    print("performing 4ch macro");
    Stack.setDisplayMode("color");
    Stack.setChannel(1);
    run("Magenta");
    run("Enhance Contrast", "saturated=0.35");
    Stack.setChannel(2);
    run("Cyan");
    run("Enhance Contrast", "saturated=0.35");
    Stack.setChannel(3);
    run("Green");
    run("Enhance Contrast", "saturated=0.35");
    Stack.setChannel(4);
    run("Red");
    run("Enhance Contrast", "saturated=0.35");
    print("done ptI");
} else if (x && ch_no == 5){
    print("processing composite");
    print("performing 5ch macro");
    Stack.setDisplayMode("color");
    Stack.setChannel(1);
    run("Magenta");
    run("Enhance Contrast", "saturated=0.35");
    Stack.setChannel(2);
    run("Cyan");
    run("Enhance Contrast", "saturated=0.35");
    Stack.setChannel(3);
    run("Green");
    run("Enhance Contrast", "saturated=0.35");
    Stack.setChannel(4);
    run("Red");
    run("Enhance Contrast", "saturated=0.35");
    Stack.setChannel(5);
    run("Greys");
    run("Enhance Contrast", "saturated=0.35");
} else if (x && ch_no == 3){
    print("processing composite");
    print("performing 3ch macro");
    Stack.setDisplayMode("color");
    Stack.setChannel(1);
    run("Cyan");
    run("Enhance Contrast", "saturated=0.35");
    Stack.setChannel(2);
    run("Green");
    run("Enhance Contrast", "saturated=0.35");
    Stack.setChannel(3);
    run("Red");
    run("Enhance Contrast", "saturated=0.35");
} else if (x && ch_no == 2){
    print("processing composite");
    print("performing 2ch macro");
    Stack.setDisplayMode("color");
    Stack.setChannel(1);
    run("Cyan");
    run("Enhance Contrast", "saturated=0.35");
    Stack.setChannel(2);
    run("Green");
    run("Enhance Contrast", "saturated=0.35");
} else if (x && ch_no == 1) {
    print("processing composite");
    print("performing 1ch macro");
    run("Cyan");
    run("Enhance Contrast", "saturated=0.35");
} else if (x == 0 && ch_no == 4){
    print("performing 4ch macro");
    i = t/4;
    endSlice1 = i;
    startSlice2 = startSlice1+i;
    endSlice2 = 2*i;
    startSlice3 = startSlice1+(2*i);
    endSlice3 = 3*i;
    startSlice4 = startSlice1+(3*i);
    endSlice4 = 4*i;
    selectWindow(iddy2);
    run("Make Substack...", "  slices="+startSlice1+"-"+endSlice1+"");
    selectWindow(iddy2);
    run("Make Substack...", "  slices="+startSlice2+"-"+endSlice2+"");
    selectWindow(iddy2);
    run("Make Substack...", "  slices="+startSlice3+"-"+endSlice3+"");
    selectWindow(iddy2);
    run("Make Substack...", "  slices="+startSlice4+"-"+endSlice4+"");
    run("Merge Channels...", "c1=[Substack ("+startSlice1+"-"+endSlice1+")] c2=[Substack ("+startSlice2+"-"+endSlice2+")] c3=[Substack ("+startSlice3+"-"+endSlice3+")] c4=[Substack ("+startSlice4+"-"+endSlice4+")] create");
    compositetitle=getTitle();
    selectWindow(compositetitle);
    Stack.setDisplayMode("color");
    Stack.setChannel(1);
    run("Magenta");
    run("Enhance Contrast", "saturated=0.35");
    Stack.setChannel(2);
    run("Cyan");
    run("Enhance Contrast", "saturated=0.35");
    Stack.setChannel(3);
    run("Green");
    run("Enhance Contrast", "saturated=0.35");
    Stack.setChannel(4);
    run("Red");
    run("Enhance Contrast", "saturated=0.35");
} else if (x == 0 && ch_no == 5){
    print("performing 4ch macro");
    i = t/5;
    endSlice1 = i;
    startSlice2 = startSlice1+i;
    endSlice2 = 2*i;
    startSlice3 = startSlice1+(2*i);
    endSlice3 = 3*i;
    startSlice4 = startSlice1+(3*i);
    endSlice4 = 4*i;
    startSlice5 = startSlice1+(4*i);
    endSlice5 = 5*i;
    selectWindow(iddy2);
    run("Make Substack...", "  slices="+startSlice1+"-"+endSlice1+"");
    selectWindow(iddy2);
    run("Make Substack...", "  slices="+startSlice2+"-"+endSlice2+"");
    selectWindow(iddy2);
    run("Make Substack...", "  slices="+startSlice3+"-"+endSlice3+"");
    selectWindow(iddy2);
    run("Make Substack...", "  slices="+startSlice4+"-"+endSlice4+"");
    selectWindow(iddy2);
    run("Make Substack...", "  slices="+startSlice5+"-"+endSlice5+"");
    run("Merge Channels...", "c1=[Substack ("+startSlice1+"-"+endSlice1+")] c2=[Substack ("+startSlice2+"-"+endSlice2+")] c3=[Substack ("+startSlice3+"-"+endSlice3+")] c4=[Substack ("+startSlice4+"-"+endSlice4+") c5=[Substack ("+startSlice5+"-"+endSlice5+")] create");
    compositetitle=getTitle();
    selectWindow(compositetitle);
    Stack.setDisplayMode("color");
    Stack.setChannel(1);
    run("Magenta");
    run("Enhance Contrast", "saturated=0.35");
    Stack.setChannel(2);
    run("Cyan");
    run("Enhance Contrast", "saturated=0.35");
    Stack.setChannel(3);
    run("Green");
    run("Enhance Contrast", "saturated=0.35");
    Stack.setChannel(4);
    run("Red");
    run("Enhance Contrast", "saturated=0.35");
    Stack.setChannel(5);
    run("Greys");
    run("Enhance Contrast", "saturated=0.35");
} else if (x == 0 && ch_no == 3){
    print("performing 3ch macro");
    i = t/3;
    endSlice1 = i;
    startSlice2 = startSlice1+i;
    endSlice2 = 2*i;
    startSlice3 = startSlice1+(2*i);
    endSlice3 = 3*i;
    startSlice4 = startSlice1+(3*i);
    endSlice4 = 4*i;
    selectWindow(iddy2);
    run("Make Substack...", "  slices="+startSlice1+"-"+endSlice1+"");
    selectWindow(iddy2);
    run("Make Substack...", "  slices="+startSlice2+"-"+endSlice2+"");
    selectWindow(iddy2);
    run("Make Substack...", "  slices="+startSlice3+"-"+endSlice3+"");
    run("Merge Channels...", "c1=[Substack ("+startSlice1+"-"+endSlice1+")] c2=[Substack ("+startSlice2+"-"+endSlice2+")] c3=[Substack ("+startSlice3+"-"+endSlice3+")] create");
    compositetitle=getTitle();
    selectWindow(compositetitle);
    Stack.setDisplayMode("color");
    Stack.setChannel(1);
    run("Cyan");
    run("Enhance Contrast", "saturated=0.35");
    Stack.setChannel(2);
    run("Green");
    run("Enhance Contrast", "saturated=0.35");
    Stack.setChannel(3);
    run("Red");
    run("Enhance Contrast", "saturated=0.35");
} else if (x == 0 && ch_no == 2){
    print("performing 2ch macro");
    i = t/2;
    endSlice1 = i;
    startSlice2 = startSlice1+i;
    endSlice2 = 2*i;
    startSlice3 = startSlice1+(2*i);
    endSlice3 = 3*i;
    startSlice4 = startSlice1+(3*i);
    endSlice4 = 4*i;
    selectWindow(iddy2);
    run("Make Substack...", "  slices="+startSlice1+"-"+endSlice1+"");
    selectWindow(iddy2);
    run("Make Substack...", "  slices="+startSlice2+"-"+endSlice2+"");
    run("Merge Channels...", "c1=[Substack ("+startSlice1+"-"+endSlice1+")] c2=[Substack ("+startSlice2+"-"+endSlice2+")] create");
    compositetitle=getTitle();
    selectWindow(compositetitle);
    Stack.setDisplayMode("color");
    Stack.setChannel(1);
    run("Cyan");
    run("Enhance Contrast", "saturated=0.35");
    Stack.setChannel(2);
    run("Green");
    run("Enhance Contrast", "saturated=0.35");
    } else if (x == 0 && ch_no == 1){
    print("performing 1ch macro");
    i = t;
    endSlice1 = i;
    selectWindow(iddy2);
    run("Make Substack...", "  slices="+startSlice1+"-"+endSlice1+"");
    run("Merge Channels...", "c1=[Substack ("+startSlice1+"-"+endSlice1+")] create");
    compositetitle=getTitle();
    selectWindow(compositetitle);
    run("Cyan");
    run("Enhance Contrast", "saturated=0.35");
} else {
    print("Macro could not be performed on " + fused_tiff)
}
print("macro process completed on " + fused_tiff);
