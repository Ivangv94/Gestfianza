#input curpDelFirmante,curpDelCer
#output ruteo,curpDelCer

if(curpDelFirmante.equals(curpDelCer)){
ruteo = 1
}else{
ruteo = 0
}

return["ruteo":ruteo,"curpDelCer":curpDelCer]