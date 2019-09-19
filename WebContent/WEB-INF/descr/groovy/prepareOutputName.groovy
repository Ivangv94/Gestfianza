#input String name
#output nombreDoc,nombreImg,nombreDocPdf

nombreDoc = name + ".rtf";
nombreImg = name + ".png";
nombreDocPdf = name + ".pdf"; 

return["nombreDoc":nombreDoc,"nombreImg":nombreImg,"nombreDocPdf":nombreDocPdf]