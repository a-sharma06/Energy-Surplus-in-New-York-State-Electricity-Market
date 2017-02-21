#Loading all the files in Jan 2015 
multmerge = function(mypath){
  filenames=list.files(path=mypath, full.names=TRUE)
  datalist = lapply(filenames, function(x){read.csv(file=x,header=T)})
  Reduce(function(x,y) {rbind(x,y)}, datalist)
}

JanData = multmerge("C:/Users/Akshay/Google Drive/Research/Power to Gas/Data/Real Time LBMP/Jan 2015/")


#Generating location based data
NYC2015<-subset(JanData, as.character(Name)=="N.Y.C.", select = c(Time.Stamp,LBMP....MWHr.))
CAPITL2015<-subset(JanData, as.character(Name) =="CAPITL", select = c(Time.Stamp,LBMP....MWHr.))
CENTRL2015<-subset(JanData, as.character(Name) =="CENTRL", select = c(Time.Stamp,LBMP....MWHr.))
DUNWOD2015<-subset(JanData, as.character(Name)=="DUNWOD", select = c(Time.Stamp,LBMP....MWHr.))

GENESE2015<-subset(JanData, as.character(Name)=="GENESE", select = c(Time.Stamp,LBMP....MWHr.))
HQ2015<-subset(JanData, as.character(Name)=="H Q", select = c(Time.Stamp,LBMP....MWHr.))
HUDVL2015<-subset(JanData, as.character(Name)=="HUD VL", select = c(Time.Stamp,LBMP....MWHr.))
LONGIL2015<-subset(JanData, as.character(Name)=="LONGIL", select = c(Time.Stamp,LBMP....MWHr.))

MHKVL2015<-subset(JanData, as.character(Name)=="MHK VL", select = c(Time.Stamp,LBMP....MWHr.))
MILLWD2015<-subset(JanData, as.character(Name)=="MILLWD", select = c(Time.Stamp,LBMP....MWHr.))
NORTH2015<-subset(JanData, as.character(Name)=="NORTH", select = c(Time.Stamp,LBMP....MWHr.))
NPX2015<-subset(JanData, as.character(Name)=="NPX", select = c(Time.Stamp,LBMP....MWHr.))

OH2015<-subset(JanData, as.character(Name)=="O H", select = c(Time.Stamp,LBMP....MWHr.))
PJM2015<-subset(JanData, as.character(Name)=="PJM", select = c(Time.Stamp,LBMP....MWHr.))
WEST2015<-subset(JanData, as.character(Name)=="WEST", select = c(Time.Stamp,LBMP....MWHr.))

#Feruary Data
FebData = multmerge("C:/Users/Akshay/Google Drive/Research/Power to Gas/Data/Real Time LBMP/Feb 2015/")

NYC2015<-rbind(NYC2015,subset(FebData, as.character(Name)=="N.Y.C.", select = c(Time.Stamp,LBMP....MWHr.)))
CAPITL2015<-rbind(CAPITL2015,subset(FebData, as.character(Name) =="CAPITL", select = c(Time.Stamp,LBMP....MWHr.)))
CENTRL2015<-rbind(CENTRL2015,subset(FebData, as.character(Name) =="CENTRL", select = c(Time.Stamp,LBMP....MWHr.)))
DUNWOD2015<-rbind(DUNWOD2015,subset(FebData, as.character(Name)=="DUNWOD", select = c(Time.Stamp,LBMP....MWHr.)))

GENESE2015<-rbind(GENESE2015,subset(FebData, as.character(Name)=="GENESE", select = c(Time.Stamp,LBMP....MWHr.)))
HQ2015<-rbind(HQ2015,subset(FebData, as.character(Name)=="H Q", select = c(Time.Stamp,LBMP....MWHr.)))
HUDVL2015<-rbind(HUDVL2015,subset(FebData, as.character(Name)=="HUD VL", select = c(Time.Stamp,LBMP....MWHr.)))
LONGIL2015<-rbind(LONGIL2015,subset(FebData, as.character(Name)=="LONGIL", select = c(Time.Stamp,LBMP....MWHr.)))

MHKVL2015<-rbind(MHKVL2015,subset(FebData, as.character(Name)=="MHK VL", select = c(Time.Stamp,LBMP....MWHr.)))
MILLWD2015<-rbind(MILLWD2015,subset(FebData, as.character(Name)=="MILLWD", select = c(Time.Stamp,LBMP....MWHr.)))
NORTH2015<-rbind(NORTH2015,subset(FebData, as.character(Name)=="NORTH", select = c(Time.Stamp,LBMP....MWHr.)))
NPX2015<-rbind(NPX2015,subset(FebData, as.character(Name)=="NPX", select = c(Time.Stamp,LBMP....MWHr.)))

OH2015<-rbind(OH2015,subset(FebData, as.character(Name)=="O H", select = c(Time.Stamp,LBMP....MWHr.)))
PJM2015<-rbind(PJM2015,subset(FebData, as.character(Name)=="PJM", select = c(Time.Stamp,LBMP....MWHr.)))
WEST2015<-rbind(WEST2015,subset(FebData, as.character(Name)=="WEST", select = c(Time.Stamp,LBMP....MWHr.)))

#March Data

MarData = multmerge("C:/Users/Akshay/Google Drive/Research/Power to Gas/Data/Real Time LBMP/Mar 2015/")

NYC2015<-rbind(NYC2015,subset(MarData, as.character(Name)=="N.Y.C.", select = c(Time.Stamp,LBMP....MWHr.)))
CAPITL2015<-rbind(CAPITL2015,subset(MarData, as.character(Name) =="CAPITL", select = c(Time.Stamp,LBMP....MWHr.)))
CENTRL2015<-rbind(CENTRL2015,subset(MarData, as.character(Name) =="CENTRL", select = c(Time.Stamp,LBMP....MWHr.)))
DUNWOD2015<-rbind(DUNWOD2015,subset(MarData, as.character(Name)=="DUNWOD", select = c(Time.Stamp,LBMP....MWHr.)))

GENESE2015<-rbind(GENESE2015,subset(MarData, as.character(Name)=="GENESE", select = c(Time.Stamp,LBMP....MWHr.)))
HQ2015<-rbind(HQ2015,subset(MarData, as.character(Name)=="H Q", select = c(Time.Stamp,LBMP....MWHr.)))
HUDVL2015<-rbind(HUDVL2015,subset(MarData, as.character(Name)=="HUD VL", select = c(Time.Stamp,LBMP....MWHr.)))
LONGIL2015<-rbind(LONGIL2015,subset(MarData, as.character(Name)=="LONGIL", select = c(Time.Stamp,LBMP....MWHr.)))

MHKVL2015<-rbind(MHKVL2015,subset(MarData, as.character(Name)=="MHK VL", select = c(Time.Stamp,LBMP....MWHr.)))
MILLWD2015<-rbind(MILLWD2015,subset(MarData, as.character(Name)=="MILLWD", select = c(Time.Stamp,LBMP....MWHr.)))
NORTH2015<-rbind(NORTH2015,subset(MarData, as.character(Name)=="NORTH", select = c(Time.Stamp,LBMP....MWHr.)))
NPX2015<-rbind(NPX2015,subset(MarData, as.character(Name)=="NPX", select = c(Time.Stamp,LBMP....MWHr.)))

OH2015<-rbind(OH2015,subset(MarData, as.character(Name)=="O H", select = c(Time.Stamp,LBMP....MWHr.)))
PJM2015<-rbind(PJM2015,subset(MarData, as.character(Name)=="PJM", select = c(Time.Stamp,LBMP....MWHr.)))
WEST2015<-rbind(WEST2015,subset(MarData, as.character(Name)=="WEST", select = c(Time.Stamp,LBMP....MWHr.)))

#April Data

AprData = multmerge("C:/Users/Akshay/Google Drive/Research/Power to Gas/Data/Real Time LBMP/Apr 2015/")

NYC2015<-rbind(NYC2015,subset(AprData, as.character(Name)=="N.Y.C.", select = c(Time.Stamp,LBMP....MWHr.)))
CAPITL2015<-rbind(CAPITL2015,subset(AprData, as.character(Name) =="CAPITL", select = c(Time.Stamp,LBMP....MWHr.)))
CENTRL2015<-rbind(CENTRL2015,subset(AprData, as.character(Name) =="CENTRL", select = c(Time.Stamp,LBMP....MWHr.)))
DUNWOD2015<-rbind(DUNWOD2015,subset(AprData, as.character(Name)=="DUNWOD", select = c(Time.Stamp,LBMP....MWHr.)))

GENESE2015<-rbind(GENESE2015,subset(AprData, as.character(Name)=="GENESE", select = c(Time.Stamp,LBMP....MWHr.)))
HQ2015<-rbind(HQ2015,subset(AprData, as.character(Name)=="H Q", select = c(Time.Stamp,LBMP....MWHr.)))
HUDVL2015<-rbind(HUDVL2015,subset(AprData, as.character(Name)=="HUD VL", select = c(Time.Stamp,LBMP....MWHr.)))
LONGIL2015<-rbind(LONGIL2015,subset(AprData, as.character(Name)=="LONGIL", select = c(Time.Stamp,LBMP....MWHr.)))

MHKVL2015<-rbind(MHKVL2015,subset(AprData, as.character(Name)=="MHK VL", select = c(Time.Stamp,LBMP....MWHr.)))
MILLWD2015<-rbind(MILLWD2015,subset(AprData, as.character(Name)=="MILLWD", select = c(Time.Stamp,LBMP....MWHr.)))
NORTH2015<-rbind(NORTH2015,subset(AprData, as.character(Name)=="NORTH", select = c(Time.Stamp,LBMP....MWHr.)))
NPX2015<-rbind(NPX2015,subset(AprData, as.character(Name)=="NPX", select = c(Time.Stamp,LBMP....MWHr.)))

OH2015<-rbind(OH2015,subset(AprData, as.character(Name)=="O H", select = c(Time.Stamp,LBMP....MWHr.)))
PJM2015<-rbind(PJM2015,subset(AprData, as.character(Name)=="PJM", select = c(Time.Stamp,LBMP....MWHr.)))
WEST2015<-rbind(WEST2015,subset(AprData, as.character(Name)=="WEST", select = c(Time.Stamp,LBMP....MWHr.)))

#May Data

MayData = multmerge("C:/Users/Akshay/Google Drive/Research/Power to Gas/Data/Real Time LBMP/May 2015/")

NYC2015<-rbind(NYC2015,subset(MayData, as.character(Name)=="N.Y.C.", select = c(Time.Stamp,LBMP....MWHr.)))
CAPITL2015<-rbind(CAPITL2015,subset(MayData, as.character(Name) =="CAPITL", select = c(Time.Stamp,LBMP....MWHr.)))
CENTRL2015<-rbind(CENTRL2015,subset(MayData, as.character(Name) =="CENTRL", select = c(Time.Stamp,LBMP....MWHr.)))
DUNWOD2015<-rbind(DUNWOD2015,subset(MayData, as.character(Name)=="DUNWOD", select = c(Time.Stamp,LBMP....MWHr.)))

GENESE2015<-rbind(GENESE2015,subset(MayData, as.character(Name)=="GENESE", select = c(Time.Stamp,LBMP....MWHr.)))
HQ2015<-rbind(HQ2015,subset(MayData, as.character(Name)=="H Q", select = c(Time.Stamp,LBMP....MWHr.)))
HUDVL2015<-rbind(HUDVL2015,subset(MayData, as.character(Name)=="HUD VL", select = c(Time.Stamp,LBMP....MWHr.)))
LONGIL2015<-rbind(LONGIL2015,subset(MayData, as.character(Name)=="LONGIL", select = c(Time.Stamp,LBMP....MWHr.)))

MHKVL2015<-rbind(MHKVL2015,subset(MayData, as.character(Name)=="MHK VL", select = c(Time.Stamp,LBMP....MWHr.)))
MILLWD2015<-rbind(MILLWD2015,subset(MayData, as.character(Name)=="MILLWD", select = c(Time.Stamp,LBMP....MWHr.)))
NORTH2015<-rbind(NORTH2015,subset(MayData, as.character(Name)=="NORTH", select = c(Time.Stamp,LBMP....MWHr.)))
NPX2015<-rbind(NPX2015,subset(MayData, as.character(Name)=="NPX", select = c(Time.Stamp,LBMP....MWHr.)))

OH2015<-rbind(OH2015,subset(MayData, as.character(Name)=="O H", select = c(Time.Stamp,LBMP....MWHr.)))
PJM2015<-rbind(PJM2015,subset(MayData, as.character(Name)=="PJM", select = c(Time.Stamp,LBMP....MWHr.)))
WEST2015<-rbind(WEST2015,subset(MayData, as.character(Name)=="WEST", select = c(Time.Stamp,LBMP....MWHr.)))

#Jun Data

JunData = multmerge("C:/Users/Akshay/Google Drive/Research/Power to Gas/Data/Real Time LBMP/Jun 2015/")

NYC2015<-rbind(NYC2015,subset(JunData, as.character(Name)=="N.Y.C.", select = c(Time.Stamp,LBMP....MWHr.)))
CAPITL2015<-rbind(CAPITL2015,subset(JunData, as.character(Name) =="CAPITL", select = c(Time.Stamp,LBMP....MWHr.)))
CENTRL2015<-rbind(CENTRL2015,subset(JunData, as.character(Name) =="CENTRL", select = c(Time.Stamp,LBMP....MWHr.)))
DUNWOD2015<-rbind(DUNWOD2015,subset(JunData, as.character(Name)=="DUNWOD", select = c(Time.Stamp,LBMP....MWHr.)))

GENESE2015<-rbind(GENESE2015,subset(JunData, as.character(Name)=="GENESE", select = c(Time.Stamp,LBMP....MWHr.)))
HQ2015<-rbind(HQ2015,subset(JunData, as.character(Name)=="H Q", select = c(Time.Stamp,LBMP....MWHr.)))
HUDVL2015<-rbind(HUDVL2015,subset(JunData, as.character(Name)=="HUD VL", select = c(Time.Stamp,LBMP....MWHr.)))
LONGIL2015<-rbind(LONGIL2015,subset(JunData, as.character(Name)=="LONGIL", select = c(Time.Stamp,LBMP....MWHr.)))

MHKVL2015<-rbind(MHKVL2015,subset(JunData, as.character(Name)=="MHK VL", select = c(Time.Stamp,LBMP....MWHr.)))
MILLWD2015<-rbind(MILLWD2015,subset(JunData, as.character(Name)=="MILLWD", select = c(Time.Stamp,LBMP....MWHr.)))
NORTH2015<-rbind(NORTH2015,subset(JunData, as.character(Name)=="NORTH", select = c(Time.Stamp,LBMP....MWHr.)))
NPX2015<-rbind(NPX2015,subset(JunData, as.character(Name)=="NPX", select = c(Time.Stamp,LBMP....MWHr.)))

OH2015<-rbind(OH2015,subset(JunData, as.character(Name)=="O H", select = c(Time.Stamp,LBMP....MWHr.)))
PJM2015<-rbind(PJM2015,subset(JunData, as.character(Name)=="PJM", select = c(Time.Stamp,LBMP....MWHr.)))
WEST2015<-rbind(WEST2015,subset(JunData, as.character(Name)=="WEST", select = c(Time.Stamp,LBMP....MWHr.)))

#Jul Data

JulData = multmerge("C:/Users/Akshay/Google Drive/Research/Power to Gas/Data/Real Time LBMP/Jul 2015/")

NYC2015<-rbind(NYC2015,subset(JulData, as.character(Name)=="N.Y.C.", select = c(Time.Stamp,LBMP....MWHr.)))
CAPITL2015<-rbind(CAPITL2015,subset(JulData, as.character(Name) =="CAPITL", select = c(Time.Stamp,LBMP....MWHr.)))
CENTRL2015<-rbind(CENTRL2015,subset(JulData, as.character(Name) =="CENTRL", select = c(Time.Stamp,LBMP....MWHr.)))
DUNWOD2015<-rbind(DUNWOD2015,subset(JulData, as.character(Name)=="DUNWOD", select = c(Time.Stamp,LBMP....MWHr.)))

GENESE2015<-rbind(GENESE2015,subset(JulData, as.character(Name)=="GENESE", select = c(Time.Stamp,LBMP....MWHr.)))
HQ2015<-rbind(HQ2015,subset(JulData, as.character(Name)=="H Q", select = c(Time.Stamp,LBMP....MWHr.)))
HUDVL2015<-rbind(HUDVL2015,subset(JulData, as.character(Name)=="HUD VL", select = c(Time.Stamp,LBMP....MWHr.)))
LONGIL2015<-rbind(LONGIL2015,subset(JulData, as.character(Name)=="LONGIL", select = c(Time.Stamp,LBMP....MWHr.)))

MHKVL2015<-rbind(MHKVL2015,subset(JulData, as.character(Name)=="MHK VL", select = c(Time.Stamp,LBMP....MWHr.)))
MILLWD2015<-rbind(MILLWD2015,subset(JulData, as.character(Name)=="MILLWD", select = c(Time.Stamp,LBMP....MWHr.)))
NORTH2015<-rbind(NORTH2015,subset(JulData, as.character(Name)=="NORTH", select = c(Time.Stamp,LBMP....MWHr.)))
NPX2015<-rbind(NPX2015,subset(JulData, as.character(Name)=="NPX", select = c(Time.Stamp,LBMP....MWHr.)))

OH2015<-rbind(OH2015,subset(JulData, as.character(Name)=="O H", select = c(Time.Stamp,LBMP....MWHr.)))
PJM2015<-rbind(PJM2015,subset(JulData, as.character(Name)=="PJM", select = c(Time.Stamp,LBMP....MWHr.)))
WEST2015<-rbind(WEST2015,subset(JulData, as.character(Name)=="WEST", select = c(Time.Stamp,LBMP....MWHr.)))

#Aug Data

AugData = multmerge("C:/Users/Akshay/Google Drive/Research/Power to Gas/Data/Real Time LBMP/Aug 2015/")

NYC2015<-rbind(NYC2015,subset(AugData, as.character(Name)=="N.Y.C.", select = c(Time.Stamp,LBMP....MWHr.)))
CAPITL2015<-rbind(CAPITL2015,subset(AugData, as.character(Name) =="CAPITL", select = c(Time.Stamp,LBMP....MWHr.)))
CENTRL2015<-rbind(CENTRL2015,subset(AugData, as.character(Name) =="CENTRL", select = c(Time.Stamp,LBMP....MWHr.)))
DUNWOD2015<-rbind(DUNWOD2015,subset(AugData, as.character(Name)=="DUNWOD", select = c(Time.Stamp,LBMP....MWHr.)))

GENESE2015<-rbind(GENESE2015,subset(AugData, as.character(Name)=="GENESE", select = c(Time.Stamp,LBMP....MWHr.)))
HQ2015<-rbind(HQ2015,subset(AugData, as.character(Name)=="H Q", select = c(Time.Stamp,LBMP....MWHr.)))
HUDVL2015<-rbind(HUDVL2015,subset(AugData, as.character(Name)=="HUD VL", select = c(Time.Stamp,LBMP....MWHr.)))
LONGIL2015<-rbind(LONGIL2015,subset(AugData, as.character(Name)=="LONGIL", select = c(Time.Stamp,LBMP....MWHr.)))

MHKVL2015<-rbind(MHKVL2015,subset(AugData, as.character(Name)=="MHK VL", select = c(Time.Stamp,LBMP....MWHr.)))
MILLWD2015<-rbind(MILLWD2015,subset(AugData, as.character(Name)=="MILLWD", select = c(Time.Stamp,LBMP....MWHr.)))
NORTH2015<-rbind(NORTH2015,subset(AugData, as.character(Name)=="NORTH", select = c(Time.Stamp,LBMP....MWHr.)))
NPX2015<-rbind(NPX2015,subset(AugData, as.character(Name)=="NPX", select = c(Time.Stamp,LBMP....MWHr.)))

OH2015<-rbind(OH2015,subset(AugData, as.character(Name)=="O H", select = c(Time.Stamp,LBMP....MWHr.)))
PJM2015<-rbind(PJM2015,subset(AugData, as.character(Name)=="PJM", select = c(Time.Stamp,LBMP....MWHr.)))
WEST2015<-rbind(WEST2015,subset(AugData, as.character(Name)=="WEST", select = c(Time.Stamp,LBMP....MWHr.)))

#Sep Data

SepData = multmerge("C:/Users/Akshay/Google Drive/Research/Power to Gas/Data/Real Time LBMP/Sep 2015/")

NYC2015<-rbind(NYC2015,subset(SepData, as.character(Name)=="N.Y.C.", select = c(Time.Stamp,LBMP....MWHr.)))
CAPITL2015<-rbind(CAPITL2015,subset(SepData, as.character(Name) =="CAPITL", select = c(Time.Stamp,LBMP....MWHr.)))
CENTRL2015<-rbind(CENTRL2015,subset(SepData, as.character(Name) =="CENTRL", select = c(Time.Stamp,LBMP....MWHr.)))
DUNWOD2015<-rbind(DUNWOD2015,subset(SepData, as.character(Name)=="DUNWOD", select = c(Time.Stamp,LBMP....MWHr.)))

GENESE2015<-rbind(GENESE2015,subset(SepData, as.character(Name)=="GENESE", select = c(Time.Stamp,LBMP....MWHr.)))
HQ2015<-rbind(HQ2015,subset(SepData, as.character(Name)=="H Q", select = c(Time.Stamp,LBMP....MWHr.)))
HUDVL2015<-rbind(HUDVL2015,subset(SepData, as.character(Name)=="HUD VL", select = c(Time.Stamp,LBMP....MWHr.)))
LONGIL2015<-rbind(LONGIL2015,subset(SepData, as.character(Name)=="LONGIL", select = c(Time.Stamp,LBMP....MWHr.)))

MHKVL2015<-rbind(MHKVL2015,subset(SepData, as.character(Name)=="MHK VL", select = c(Time.Stamp,LBMP....MWHr.)))
MILLWD2015<-rbind(MILLWD2015,subset(SepData, as.character(Name)=="MILLWD", select = c(Time.Stamp,LBMP....MWHr.)))
NORTH2015<-rbind(NORTH2015,subset(SepData, as.character(Name)=="NORTH", select = c(Time.Stamp,LBMP....MWHr.)))
NPX2015<-rbind(NPX2015,subset(SepData, as.character(Name)=="NPX", select = c(Time.Stamp,LBMP....MWHr.)))

OH2015<-rbind(OH2015,subset(SepData, as.character(Name)=="O H", select = c(Time.Stamp,LBMP....MWHr.)))
PJM2015<-rbind(PJM2015,subset(SepData, as.character(Name)=="PJM", select = c(Time.Stamp,LBMP....MWHr.)))
WEST2015<-rbind(WEST2015,subset(SepData, as.character(Name)=="WEST", select = c(Time.Stamp,LBMP....MWHr.)))

#Oct Data

OctData = multmerge("C:/Users/Akshay/Google Drive/Research/Power to Gas/Data/Real Time LBMP/Oct 2015/")

NYC2015<-rbind(NYC2015,subset(OctData, as.character(Name)=="N.Y.C.", select = c(Time.Stamp,LBMP....MWHr.)))
CAPITL2015<-rbind(CAPITL2015,subset(OctData, as.character(Name) =="CAPITL", select = c(Time.Stamp,LBMP....MWHr.)))
CENTRL2015<-rbind(CENTRL2015,subset(OctData, as.character(Name) =="CENTRL", select = c(Time.Stamp,LBMP....MWHr.)))
DUNWOD2015<-rbind(DUNWOD2015,subset(OctData, as.character(Name)=="DUNWOD", select = c(Time.Stamp,LBMP....MWHr.)))

GENESE2015<-rbind(GENESE2015,subset(OctData, as.character(Name)=="GENESE", select = c(Time.Stamp,LBMP....MWHr.)))
HQ2015<-rbind(HQ2015,subset(OctData, as.character(Name)=="H Q", select = c(Time.Stamp,LBMP....MWHr.)))
HUDVL2015<-rbind(HUDVL2015,subset(OctData, as.character(Name)=="HUD VL", select = c(Time.Stamp,LBMP....MWHr.)))
LONGIL2015<-rbind(LONGIL2015,subset(OctData, as.character(Name)=="LONGIL", select = c(Time.Stamp,LBMP....MWHr.)))

MHKVL2015<-rbind(MHKVL2015,subset(OctData, as.character(Name)=="MHK VL", select = c(Time.Stamp,LBMP....MWHr.)))
MILLWD2015<-rbind(MILLWD2015,subset(OctData, as.character(Name)=="MILLWD", select = c(Time.Stamp,LBMP....MWHr.)))
NORTH2015<-rbind(NORTH2015,subset(OctData, as.character(Name)=="NORTH", select = c(Time.Stamp,LBMP....MWHr.)))
NPX2015<-rbind(NPX2015,subset(OctData, as.character(Name)=="NPX", select = c(Time.Stamp,LBMP....MWHr.)))

OH2015<-rbind(OH2015,subset(OctData, as.character(Name)=="O H", select = c(Time.Stamp,LBMP....MWHr.)))
PJM2015<-rbind(PJM2015,subset(OctData, as.character(Name)=="PJM", select = c(Time.Stamp,LBMP....MWHr.)))
WEST2015<-rbind(WEST2015,subset(OctData, as.character(Name)=="WEST", select = c(Time.Stamp,LBMP....MWHr.)))

#Nov Data

NovData = multmerge("C:/Users/Akshay/Google Drive/Research/Power to Gas/Data/Real Time LBMP/Nov 2015/")

NYC2015<-rbind(NYC2015,subset(NovData, as.character(Name)=="N.Y.C.", select = c(Time.Stamp,LBMP....MWHr.)))
CAPITL2015<-rbind(CAPITL2015,subset(NovData, as.character(Name) =="CAPITL", select = c(Time.Stamp,LBMP....MWHr.)))
CENTRL2015<-rbind(CENTRL2015,subset(NovData, as.character(Name) =="CENTRL", select = c(Time.Stamp,LBMP....MWHr.)))
DUNWOD2015<-rbind(DUNWOD2015,subset(NovData, as.character(Name)=="DUNWOD", select = c(Time.Stamp,LBMP....MWHr.)))

GENESE2015<-rbind(GENESE2015,subset(NovData, as.character(Name)=="GENESE", select = c(Time.Stamp,LBMP....MWHr.)))
HQ2015<-rbind(HQ2015,subset(NovData, as.character(Name)=="H Q", select = c(Time.Stamp,LBMP....MWHr.)))
HUDVL2015<-rbind(HUDVL2015,subset(NovData, as.character(Name)=="HUD VL", select = c(Time.Stamp,LBMP....MWHr.)))
LONGIL2015<-rbind(LONGIL2015,subset(NovData, as.character(Name)=="LONGIL", select = c(Time.Stamp,LBMP....MWHr.)))

MHKVL2015<-rbind(MHKVL2015,subset(NovData, as.character(Name)=="MHK VL", select = c(Time.Stamp,LBMP....MWHr.)))
MILLWD2015<-rbind(MILLWD2015,subset(NovData, as.character(Name)=="MILLWD", select = c(Time.Stamp,LBMP....MWHr.)))
NORTH2015<-rbind(NORTH2015,subset(NovData, as.character(Name)=="NORTH", select = c(Time.Stamp,LBMP....MWHr.)))
NPX2015<-rbind(NPX2015,subset(NovData, as.character(Name)=="NPX", select = c(Time.Stamp,LBMP....MWHr.)))

OH2015<-rbind(OH2015,subset(NovData, as.character(Name)=="O H", select = c(Time.Stamp,LBMP....MWHr.)))
PJM2015<-rbind(PJM2015,subset(NovData, as.character(Name)=="PJM", select = c(Time.Stamp,LBMP....MWHr.)))
WEST2015<-rbind(WEST2015,subset(NovData, as.character(Name)=="WEST", select = c(Time.Stamp,LBMP....MWHr.)))

#Dec Data

DecData = multmerge("C:/Users/Akshay/Google Drive/Research/Power to Gas/Data/Real Time LBMP/Dec 2015/")

NYC2015<-rbind(NYC2015,subset(DecData, as.character(Name)=="N.Y.C.", select = c(Time.Stamp,LBMP....MWHr.)))
CAPITL2015<-rbind(CAPITL2015,subset(DecData, as.character(Name) =="CAPITL", select = c(Time.Stamp,LBMP....MWHr.)))
CENTRL2015<-rbind(CENTRL2015,subset(DecData, as.character(Name) =="CENTRL", select = c(Time.Stamp,LBMP....MWHr.)))
DUNWOD2015<-rbind(DUNWOD2015,subset(DecData, as.character(Name)=="DUNWOD", select = c(Time.Stamp,LBMP....MWHr.)))

GENESE2015<-rbind(GENESE2015,subset(DecData, as.character(Name)=="GENESE", select = c(Time.Stamp,LBMP....MWHr.)))
HQ2015<-rbind(HQ2015,subset(DecData, as.character(Name)=="H Q", select = c(Time.Stamp,LBMP....MWHr.)))
HUDVL2015<-rbind(HUDVL2015,subset(DecData, as.character(Name)=="HUD VL", select = c(Time.Stamp,LBMP....MWHr.)))
LONGIL2015<-rbind(LONGIL2015,subset(DecData, as.character(Name)=="LONGIL", select = c(Time.Stamp,LBMP....MWHr.)))

MHKVL2015<-rbind(MHKVL2015,subset(DecData, as.character(Name)=="MHK VL", select = c(Time.Stamp,LBMP....MWHr.)))
MILLWD2015<-rbind(MILLWD2015,subset(DecData, as.character(Name)=="MILLWD", select = c(Time.Stamp,LBMP....MWHr.)))
NORTH2015<-rbind(NORTH2015,subset(DecData, as.character(Name)=="NORTH", select = c(Time.Stamp,LBMP....MWHr.)))
NPX2015<-rbind(NPX2015,subset(DecData, as.character(Name)=="NPX", select = c(Time.Stamp,LBMP....MWHr.)))

OH2015<-rbind(OH2015,subset(DecData, as.character(Name)=="O H", select = c(Time.Stamp,LBMP....MWHr.)))
PJM2015<-rbind(PJM2015,subset(DecData, as.character(Name)=="PJM", select = c(Time.Stamp,LBMP....MWHr.)))
WEST2015<-rbind(WEST2015,subset(DecData, as.character(Name)=="WEST", select = c(Time.Stamp,LBMP....MWHr.)))

#Data Output
write.csv(NYC2015, file = "NYC2015.csv",row.names=FALSE)
write.csv(CAPITL2015, file = "CAPITL2015.csv",row.names=FALSE)
write.csv(CENTRL2015, file = "CENTRL2015.csv",row.names=FALSE)
write.csv(DUNWOD2015, file = "DUNWOD2015.csv",row.names=FALSE)

write.csv(GENESE2015, file = "GENESE2015.csv",row.names=FALSE)
write.csv(HQ2015, file = "HQ2015.csv",row.names=FALSE)
write.csv(HUDVL2015, file = "HUDVL2015.csv",row.names=FALSE)
write.csv(LONGIL2015, file = "LONGIL2015.csv",row.names=FALSE)

write.csv(MHKVL2015, file = "MHKVL2015.csv",row.names=FALSE)
write.csv(MILLWD2015, file = "MILLWD2015.csv",row.names=FALSE)
write.csv(NORTH2015, file = "NORTH2015.csv",row.names=FALSE)
write.csv(NPX2015, file = "NPX2015.csv",row.names=FALSE)

write.csv(OH2015, file = "OH2015.csv",row.names=FALSE)
write.csv(PJM2015, file = "PJM2015.csv",row.names=FALSE)
write.csv(WEST2015, file = "WEST2015.csv",row.names=FALSE)

#Computing number of days LBMP < 0.01

#CAPITL
count.CAPITL<-0
for (i in 1:length(CAPITL2015$LBMP....MWHr.))
{
  if(CAPITL2015$LBMP....MWHr.[i] <= 0.01)
    count.CAPITL<-count.CAPITL + 1
}
percent.CAPITL<-count.CAPITL*100/length(CAPITL2015$LBMP....MWHr.)

#CENTRL
count.CENTRL<-0
for (i in 1:length(CENTRL2015$LBMP....MWHr.))
{
  if(CENTRL2015$LBMP....MWHr.[i] <= 0.01)
    count.CENTRL<-count.CENTRL + 1
}
percent.CENTRL<-count.CENTRL*100/length(CENTRL2015$LBMP....MWHr.)

#DUNWOD
count.DUNWOD<-0
for (i in 1:length(DUNWOD2015$LBMP....MWHr.))
{
  if(DUNWOD2015$LBMP....MWHr.[i] <= 0.01)
    count.DUNWOD<-count.DUNWOD + 1
}
percent.DUNWOD<-count.DUNWOD*100/length(DUNWOD2015$LBMP....MWHr.)

#GENESE
count.GENESE<-0
for (i in 1:length(GENESE2015$LBMP....MWHr.))
{
  if(GENESE2015$LBMP....MWHr.[i] <= 0.01)
    count.GENESE<-count.GENESE + 1
}
percent.GENESE<-count.GENESE*100/length(GENESE2015$LBMP....MWHr.)

#HQ
count.HQ<-0
for (i in 1:length(HQ2015$LBMP....MWHr.))
{
  if(HQ2015$LBMP....MWHr.[i] <= 0.01)
    count.HQ<-count.HQ + 1
}
percent.HQ<-count.HQ*100/length(HQ2015$LBMP....MWHr.)

#HUDVL
count.HUDVL<-0
for (i in 1:length(HUDVL2015$LBMP....MWHr.))
{
  if(HUDVL2015$LBMP....MWHr.[i] <= 0.01)
    count.HUDVL<-count.HUDVL + 1
}
percent.HUDVL<-count.HUDVL*100/length(HUDVL2015$LBMP....MWHr.)

#LONGIL
count.LONGIL<-0
for (i in 1:length(LONGIL2015$LBMP....MWHr.))
{
  if(LONGIL2015$LBMP....MWHr.[i] <= 0.01)
    count.LONGIL<-count.LONGIL + 1
}
percent.LONGIL<-count.LONGIL*100/length(LONGIL2015$LBMP....MWHr.)

#MHKVL
count.MHKVL<-0
for (i in 1:length(MHKVL2015$LBMP....MWHr.))
{
  if(MHKVL2015$LBMP....MWHr.[i] <= 0.01)
    count.MHKVL<-count.MHKVL + 1
}
percent.MHKVL<-count.MHKVL*100/length(MHKVL2015$LBMP....MWHr.)

#MILLWD
count.MILLWD<-0
for (i in 1:length(MILLWD2015$LBMP....MWHr.))
{
  if(MILLWD2015$LBMP....MWHr.[i] <= 0.01)
    count.MILLWD<-count.MILLWD + 1
}
percent.MILLWD<-count.MILLWD*100/length(MILLWD2015$LBMP....MWHr.)

#NORTH
count.NORTH<-0
for (i in 1:length(NORTH2015$LBMP....MWHr.))
{
  if(NORTH2015$LBMP....MWHr.[i] <= 0.01)
    count.NORTH<-count.NORTH + 1
}
percent.NORTH<-count.NORTH*100/length(NORTH2015$LBMP....MWHr.)

#NORTH
count.NORTH<-0
for (i in 1:length(NORTH2015$LBMP....MWHr.))
{
  if(NORTH2015$LBMP....MWHr.[i] <= 0.01)
    count.NORTH<-count.NORTH + 1
}
percent.NORTH<-count.NORTH*100/length(NORTH2015$LBMP....MWHr.)

#NPX
count.NPX<-0
for (i in 1:length(NPX2015$LBMP....MWHr.))
{
  if(NPX2015$LBMP....MWHr.[i] <= 0.01)
    count.NPX<-count.NPX + 1
}
percent.NPX<-count.NPX*100/length(NPX2015$LBMP....MWHr.)

#NYC
count.NYC<-0
for (i in 1:length(NYC2015$LBMP....MWHr.))
{
  if(NYC2015$LBMP....MWHr.[i] <= 0.01)
    count.NYC<-count.NYC + 1
}
percent.NYC<-count.NYC*100/length(NYC2015$LBMP....MWHr.)

#OH
count.OH<-0
for (i in 1:length(OH2015$LBMP....MWHr.))
{
  if(OH2015$LBMP....MWHr.[i] <= 0.01)
    count.OH<-count.OH + 1
}
percent.OH<-count.OH*100/length(OH2015$LBMP....MWHr.)

#PJM
count.PJM<-0
for (i in 1:length(PJM2015$LBMP....MWHr.))
{
  if(PJM2015$LBMP....MWHr.[i] <= 0.01)
    count.PJM<-count.PJM + 1
}
percent.PJM<-count.PJM*100/length(PJM2015$LBMP....MWHr.)

#WEST
count.WEST<-0
for (i in 1:length(WEST2015$LBMP....MWHr.))
{
  if(WEST2015$LBMP....MWHr.[i] <= 0.01)
    count.WEST<-count.WEST + 1
}
percent.WEST<-count.WEST*100/length(WEST2015$LBMP....MWHr.)

percentMWh<-data.frame(percent.NYC,percent.CAPITL,percent.CENTRL,percent.DUNWOD,percent.GENESE, percent.HQ, percent.HUDVL, percent.LONGIL,percent.MHKVL,percent.MILLWD,percent.NORTH,percent.NPX,percent.OH,percent.PJM,percent.WEST)

#Maximum Values
max(NYC2015$LBMP....MWHr.)
max(CAPITL2015$LBMP....MWHr.)
max(CENTRL2015$LBMP....MWHr.)
max(DUNWOD2015$LBMP....MWHr.)

max(GENESE2015$LBMP....MWHr.)
max(HQ2015$LBMP....MWHr.)
max(HUDVL2015$LBMP....MWHr.)
max(LONGIL2015$LBMP....MWHr.)

max(MHKVL2015$LBMP....MWHr.)
max(MILLWD2015$LBMP....MWHr.)
max(NORTH2015$LBMP....MWHr.)
max(NPX2015$LBMP....MWHr.)

max(OH2015$LBMP....MWHr.)
max(PJM2015$LBMP....MWHr.)
max(WEST2015$LBMP....MWHr.)

#Minimum Values 
min(NYC2015$LBMP....MWHr.)
min(CAPITL2015$LBMP....MWHr.)
min(CENTRL2015$LBMP....MWHr.)
min(DUNWOD2015$LBMP....MWHr.)

min(GENESE2015$LBMP....MWHr.)
min(HQ2015$LBMP....MWHr.)
min(HUDVL2015$LBMP....MWHr.)
min(LONGIL2015$LBMP....MWHr.)

min(MHKVL2015$LBMP....MWHr.)
min(MILLWD2015$LBMP....MWHr.)
min(NORTH2015$LBMP....MWHr.)
min(NPX2015$LBMP....MWHr.)

min(OH2015$LBMP....MWHr.)
min(PJM2015$LBMP....MWHr.)
min(WEST2015$LBMP....MWHr.)

#percent On a KWh basis, LBMP<10
#CAPITL
count.CAPITL<-0
for (i in 1:length(CAPITL2015$LBMP....MWHr.))
{
  if(CAPITL2015$LBMP....MWHr.[i] <= 10)
    count.CAPITL<-count.CAPITL + 1
}
percent.CAPITL<-count.CAPITL*100/length(CAPITL2015$LBMP....MWHr.)

#CENTRL
count.CENTRL<-0
for (i in 1:length(CENTRL2015$LBMP....MWHr.))
{
  if(CENTRL2015$LBMP....MWHr.[i] <= 10)
    count.CENTRL<-count.CENTRL + 1
}
percent.CENTRL<-count.CENTRL*100/length(CENTRL2015$LBMP....MWHr.)

#DUNWOD
count.DUNWOD<-0
for (i in 1:length(DUNWOD2015$LBMP....MWHr.))
{
  if(DUNWOD2015$LBMP....MWHr.[i] <= 10)
    count.DUNWOD<-count.DUNWOD + 1
}
percent.DUNWOD<-count.DUNWOD*100/length(DUNWOD2015$LBMP....MWHr.)

#GENESE
count.GENESE<-0
for (i in 1:length(GENESE2015$LBMP....MWHr.))
{
  if(GENESE2015$LBMP....MWHr.[i] <= 10)
    count.GENESE<-count.GENESE + 1
}
percent.GENESE<-count.GENESE*100/length(GENESE2015$LBMP....MWHr.)

#HQ
count.HQ<-0
for (i in 1:length(HQ2015$LBMP....MWHr.))
{
  if(HQ2015$LBMP....MWHr.[i] <= 10)
    count.HQ<-count.HQ + 1
}
percent.HQ<-count.HQ*100/length(HQ2015$LBMP....MWHr.)

#HUDVL
count.HUDVL<-0
for (i in 1:length(HUDVL2015$LBMP....MWHr.))
{
  if(HUDVL2015$LBMP....MWHr.[i] <= 10)
    count.HUDVL<-count.HUDVL + 1
}
percent.HUDVL<-count.HUDVL*100/length(HUDVL2015$LBMP....MWHr.)

#LONGIL
count.LONGIL<-0
for (i in 1:length(LONGIL2015$LBMP....MWHr.))
{
  if(LONGIL2015$LBMP....MWHr.[i] <= 10)
    count.LONGIL<-count.LONGIL + 1
}
percent.LONGIL<-count.LONGIL*100/length(LONGIL2015$LBMP....MWHr.)

#MHKVL
count.MHKVL<-0
for (i in 1:length(MHKVL2015$LBMP....MWHr.))
{
  if(MHKVL2015$LBMP....MWHr.[i] <= 10)
    count.MHKVL<-count.MHKVL + 1
}
percent.MHKVL<-count.MHKVL*100/length(MHKVL2015$LBMP....MWHr.)

#MILLWD
count.MILLWD<-0
for (i in 1:length(MILLWD2015$LBMP....MWHr.))
{
  if(MILLWD2015$LBMP....MWHr.[i] <= 10)
    count.MILLWD<-count.MILLWD + 1
}
percent.MILLWD<-count.MILLWD*100/length(MILLWD2015$LBMP....MWHr.)

#NORTH
count.NORTH<-0
for (i in 1:length(NORTH2015$LBMP....MWHr.))
{
  if(NORTH2015$LBMP....MWHr.[i] <= 10)
    count.NORTH<-count.NORTH + 1
}
percent.NORTH<-count.NORTH*100/length(NORTH2015$LBMP....MWHr.)

#NORTH
count.NORTH<-0
for (i in 1:length(NORTH2015$LBMP....MWHr.))
{
  if(NORTH2015$LBMP....MWHr.[i] <= 10)
    count.NORTH<-count.NORTH + 1
}
percent.NORTH<-count.NORTH*100/length(NORTH2015$LBMP....MWHr.)

#NPX
count.NPX<-0
for (i in 1:length(NPX2015$LBMP....MWHr.))
{
  if(NPX2015$LBMP....MWHr.[i] <= 10)
    count.NPX<-count.NPX + 1
}
percent.NPX<-count.NPX*100/length(NPX2015$LBMP....MWHr.)

#NYC
count.NYC<-0
for (i in 1:length(NYC2015$LBMP....MWHr.))
{
  if(NYC2015$LBMP....MWHr.[i] <= 10)
    count.NYC<-count.NYC + 1
}
percent.NYC<-count.NYC*100/length(NYC2015$LBMP....MWHr.)

#OH
count.OH<-0
for (i in 1:length(OH2015$LBMP....MWHr.))
{
  if(OH2015$LBMP....MWHr.[i] <= 10)
    count.OH<-count.OH + 1
}
percent.OH<-count.OH*100/length(OH2015$LBMP....MWHr.)

#PJM
count.PJM<-0
for (i in 1:length(PJM2015$LBMP....MWHr.))
{
  if(PJM2015$LBMP....MWHr.[i] <= 10)
    count.PJM<-count.PJM + 1
}
percent.PJM<-count.PJM*100/length(PJM2015$LBMP....MWHr.)

#WEST
count.WEST<-0
for (i in 1:length(WEST2015$LBMP....MWHr.))
{
  if(WEST2015$LBMP....MWHr.[i] <= 10)
    count.WEST<-count.WEST + 1
}
percent.WEST<-count.WEST*100/length(WEST2015$LBMP....MWHr.)

percentKWh<-data.frame(percent.NYC,percent.CAPITL,percent.CENTRL,percent.DUNWOD,percent.GENESE, percent.HQ, percent.HUDVL, percent.LONGIL,percent.MHKVL,percent.MILLWD,percent.NORTH,percent.NPX,percent.OH,percent.PJM,percent.WEST)


#Duration Curve

install.packages("FSA")
library(FSA)


install.packages("plotly")
library(plotly)

install.packages("xts")
library(xts)

#CAPITL
price=as.double(CAPITL2015$LBMP....MWHr.)
x<-range(price)
breaks=seq(floor(x[1]),ceiling(x[2]), by=1)
price.cut=cut(price,breaks,right=FALSE)
price.freq=table(price.cut)
plot(price.freq, xlab="Speed bins", ylab="Hours")
price<-as.data.frame(price.freq)
price$FreqSum<-rcumsum(price$Freq)
price$price<-seq(floor(x[1]),(ceiling(x[2])-1), by=1)
#Wind duration Curve
plot(price$FreqSum*5/60, price$price, type='l',ylab="Price bins", xlab="Hours", main="Duration Curve for CAPITL") #Plotting duration curve,

price$revFreqSum<-cumsum((price$Freq))
plot(price$revFreqSum*5/60, price$price, type='l',ylab="Price bins", xlab="Hours", main="Duration Curve for CAPITL") #Plotting duration curve,

#CENTRL
price=as.double(CENTRL2015$LBMP....MWHr.)
x<-range(price)
breaks=seq(floor(x[1]),ceiling(x[2]), by=1)
price.cut=cut(price,breaks,right=FALSE)
price.freq=table(price.cut)
plot(price.freq, xlab="Speed bins", ylab="Hours")
price<-as.data.frame(price.freq)
price$FreqSum<-rcumsum(price$Freq)
price$price<-seq(floor(x[1]),(ceiling(x[2])-1), by=1)
#Wind duration Curve
plot(price$FreqSum*5/60, price$price, type='l',ylab="Price bins", xlab="Hours", main="Duration Curve for CENTRL") #Plotting duration curve,

price$revFreqSum<-cumsum((price$Freq))
plot(price$revFreqSum*5/60, price$price, type='l',ylab="Price bins", xlab="Hours", main="Duration Curve for CENTRL") #Plotting duration curve,
cat("Hours when price is 0 dollars is ",price$revFreqSum[which(price$price==0)]*5/60)
cat("Hours when price is 1 dollars is ",price$revFreqSum[which(price$price==1)]*5/60)
cat("Hours when price is 2 dollars is ",price$revFreqSum[which(price$price==2)]*5/60)
cat("Hours when price is 5 dollars is ",price$revFreqSum[which(price$price==5)]*5/60)


#DUNWOD
price=as.double(DUNWOD2015$LBMP....MWHr.)
x<-range(price)
breaks=seq(floor(x[1]),ceiling(x[2]), by=1)
price.cut=cut(price,breaks,right=FALSE)
price.freq=table(price.cut)
plot(price.freq, xlab="Speed bins", ylab="Hours")
price<-as.data.frame(price.freq)
price$FreqSum<-rcumsum(price$Freq)
price$price<-seq(floor(x[1]),(ceiling(x[2])-1), by=1)
#Wind duration Curve
plot(price$FreqSum*5/60, price$price, type='l',ylab="Price bins", xlab="Hours", main="Duration Curve for DUNWOD") #Plotting duration curve,

price$revFreqSum<-cumsum((price$Freq))
plot(price$revFreqSum*5/60, price$price, type='l',ylab="Price bins", xlab="Hours", main="Duration Curve for DUNWOD") #Plotting duration curve,
cat("Hours when price is 0 dollars is ",price$revFreqSum[which(price$price==0)]*5/60)
cat("Hours when price is 1 dollars is ",price$revFreqSum[which(price$price==1)]*5/60)
cat("Hours when price is 2 dollars is ",price$revFreqSum[which(price$price==2)]*5/60)
cat("Hours when price is 5 dollars is ",price$revFreqSum[which(price$price==5)]*5/60)


#GENESE
price=as.double(GENESE2015$LBMP....MWHr.)
x<-range(price)
breaks=seq(floor(x[1]),ceiling(x[2]), by=1)
price.cut=cut(price,breaks,right=FALSE)
price.freq=table(price.cut)
plot(price.freq, xlab="Speed bins", ylab="Hours")
price<-as.data.frame(price.freq)
price$FreqSum<-rcumsum(price$Freq)
price$price<-seq(floor(x[1]),(ceiling(x[2])-1), by=1)
#Wind duration Curve
plot(price$FreqSum*5/60, price$price, type='l',ylab="Price bins", xlab="Hours", main="Duration Curve for GENESE") #Plotting duration curve,

price$revFreqSum<-cumsum((price$Freq))
plot(price$revFreqSum*5/60, price$price, type='l',ylab="Price bins", xlab="Hours", main="Duration Curve for GENESE") #Plotting duration curve,
cat("Hours when price is 0 dollars is ",price$revFreqSum[which(price$price==0)]*5/60)
cat("Hours when price is 1 dollars is ",price$revFreqSum[which(price$price==1)]*5/60)
cat("Hours when price is 2 dollars is ",price$revFreqSum[which(price$price==2)]*5/60)
cat("Hours when price is 5 dollars is ",price$revFreqSum[which(price$price==5)]*5/60)

#HQ
price=as.double(HQ2015$LBMP....MWHr.)
x<-range(price)
breaks=seq(floor(x[1]),ceiling(x[2]), by=1)
price.cut=cut(price,breaks,right=FALSE)
price.freq=table(price.cut)
plot(price.freq, xlab="Speed bins", ylab="Hours")
price<-as.data.frame(price.freq)
price$FreqSum<-rcumsum(price$Freq)
price$price<-seq(floor(x[1]),(ceiling(x[2])-1), by=1)
#Wind duration Curve
plot(price$FreqSum*5/60, price$price, type='l',ylab="Price bins", xlab="Hours", main="Duration Curve for HQ") #Plotting duration curve,

price$revFreqSum<-cumsum((price$Freq))
plot(price$revFreqSum*5/60, price$price, type='l',ylab="Price bins", xlab="Hours", main="Duration Curve for HQ") #Plotting duration curve,
cat("Hours when price is 0 dollars is ",price$revFreqSum[which(price$price==0)]*5/60)
cat("Hours when price is 1 dollars is ",price$revFreqSum[which(price$price==1)]*5/60)
cat("Hours when price is 2 dollars is ",price$revFreqSum[which(price$price==2)]*5/60)
cat("Hours when price is 5 dollars is ",price$revFreqSum[which(price$price==5)]*5/60)

plot(price$revFreqSum*5/60, price$price,log='y', type='l',ylab="Price bins", xlab="Hours", main="Duration Curve for HQ") #Plotting duration curve,

HQ2015$Time.Stamp<-as.POSIXlt(as.character(HQ2015$Time.Stamp), format="%m/%d/%Y %H:%M:%S")

x<-xts(x=HQ2015$LBMP....MWHr.,as.POSIXct(HQ2015$Time.Stamp))
plot(x, main="Price variation at HQ for 2015", ylab="Price in Dollars")

#HUDVL
price=as.double(HUDVL2015$LBMP....MWHr.)
x<-range(price)
breaks=seq(floor(x[1]),ceiling(x[2]), by=1)
price.cut=cut(price,breaks,right=FALSE)
price.freq=table(price.cut)
plot(price.freq, xlab="Speed bins", ylab="Hours")
price<-as.data.frame(price.freq)
price$FreqSum<-rcumsum(price$Freq)
price$price<-seq(floor(x[1]),(ceiling(x[2])-1), by=1)
#Wind duration Curve
plot(price$FreqSum*5/60, price$price, type='l',ylab="Price bins", xlab="Hours", main="Duration Curve for HUDVL") #Plotting duration curve,

price$revFreqSum<-cumsum((price$Freq))
plot(price$revFreqSum*5/60, price$price, type='l',ylab="Price bins", xlab="Hours", main="Duration Curve for HUDVL") #Plotting duration curve,
cat("Hours when price is 0 dollars is ",price$revFreqSum[which(price$price==0)]*5/60)
cat("Hours when price is 1 dollars is ",price$revFreqSum[which(price$price==1)]*5/60)
cat("Hours when price is 2 dollars is ",price$revFreqSum[which(price$price==2)]*5/60)
cat("Hours when price is 5 dollars is ",price$revFreqSum[which(price$price==5)]*5/60)


#LONGIL
price=as.double(LONGIL2015$LBMP....MWHr.)
x<-range(price)
breaks=seq(floor(x[1]),ceiling(x[2]), by=1)
price.cut=cut(price,breaks,right=FALSE)
price.freq=table(price.cut)
plot(price.freq, xlab="Speed bins", ylab="Hours")
price<-as.data.frame(price.freq)
price$FreqSum<-rcumsum(price$Freq)
price$price<-seq(floor(x[1]),(ceiling(x[2])-1), by=1)
#Wind duration Curve

plot(price$FreqSum*5/60, price$price, type='l',ylab="Price bins", xlab="Hours", main="Duration Curve for LONGIL") #Plotting duration curve,

price$revFreqSum<-cumsum((price$Freq))
plot(price$revFreqSum*5/60, price$price, type='l',ylab="Price bins", xlab="Hours", main="Duration Curve for LONGIL") #Plotting duration curve,
cat("Hours when price is 0 dollars is ",price$revFreqSum[which(price$price==0)]*5/60)
cat("Hours when price is 1 dollars is ",price$revFreqSum[which(price$price==1)]*5/60)
cat("Hours when price is 2 dollars is ",price$revFreqSum[which(price$price==2)]*5/60)
cat("Hours when price is 5 dollars is ",price$revFreqSum[which(price$price==5)]*5/60)


#MHKVL
price=as.double(MHKVL2015$LBMP....MWHr.)
x<-range(price)
breaks=seq(floor(x[1]),ceiling(x[2]), by=1)
price.cut=cut(price,breaks,right=FALSE)
price.freq=table(price.cut)
plot(price.freq, xlab="Speed bins", ylab="Hours")
price<-as.data.frame(price.freq)
price$FreqSum<-rcumsum(price$Freq)
price$price<-seq(floor(x[1]),(ceiling(x[2])-1), by=1)
#Wind duration Curve
plot(price$FreqSum*5/60, price$price, type='l',ylab="Price bins", xlab="Hours", main="Duration Curve for MHKVL") #Plotting duration curve,

price$revFreqSum<-cumsum((price$Freq))
plot(price$revFreqSum*5/60, price$price, type='l',ylab="Price bins", xlab="Hours", main="Duration Curve for MHKVL") #Plotting duration curve,
cat("Hours when price is 0 dollars is ",price$revFreqSum[which(price$price==0)]*5/60)
cat("Hours when price is 1 dollars is ",price$revFreqSum[which(price$price==1)]*5/60)
cat("Hours when price is 2 dollars is ",price$revFreqSum[which(price$price==2)]*5/60)
cat("Hours when price is 5 dollars is ",price$revFreqSum[which(price$price==5)]*5/60)

#NORTH
price=as.double(NORTH2015$LBMP....MWHr.)
x<-range(price)
breaks=seq(floor(x[1]),ceiling(x[2]), by=1)
price.cut=cut(price,breaks,right=FALSE)
price.freq=table(price.cut)
plot(price.freq, xlab="Speed bins", ylab="Hours")
price<-as.data.frame(price.freq)
price$FreqSum<-rcumsum(price$Freq)
price$price<-seq(floor(x[1]),(ceiling(x[2])-1), by=1)
#Wind duration Curve
plot(price$FreqSum*5/60, price$price, type='l',ylab="Price bins", xlab="Hours", main="Duration Curve for NORTH") #Plotting duration curve,

price$revFreqSum<-cumsum((price$Freq))
plot(price$revFreqSum*5/60, price$price, type='l',ylab="Price bins", xlab="Hours", main="Duration Curve for NORTH") #Plotting duration curve,
cat("Hours when price is 0 dollars is ",price$revFreqSum[which(price$price==0)]*5/60)
cat("Hours when price is 1 dollars is ",price$revFreqSum[which(price$price==1)]*5/60)
cat("Hours when price is 2 dollars is ",price$revFreqSum[which(price$price==2)]*5/60)
cat("Hours when price is 5 dollars is ",price$revFreqSum[which(price$price==5)]*5/60)

#NPX
price=as.double(NPX2015$LBMP....MWHr.)
x<-range(price)
breaks=seq(floor(x[1]),ceiling(x[2]), by=1)
price.cut=cut(price,breaks,right=FALSE)
price.freq=table(price.cut)
plot(price.freq, xlab="Speed bins", ylab="Hours")
price<-as.data.frame(price.freq)
price$FreqSum<-rcumsum(price$Freq)
price$price<-seq(floor(x[1]),(ceiling(x[2])-1), by=1)
#Wind duration Curve
plot(price$FreqSum*5/60, price$price, type='l',ylab="Price bins", xlab="Hours", main="Duration Curve for NPX") #Plotting duration curve,

price$revFreqSum<-cumsum((price$Freq))
plot(price$revFreqSum*5/60, price$price, type='l',ylab="Price bins", xlab="Hours", main="Duration Curve for NPX") #Plotting duration curve,
cat("Hours when price is 0 dollars is ",price$revFreqSum[which(price$price==0)]*5/60)
cat("Hours when price is 1 dollars is ",price$revFreqSum[which(price$price==1)]*5/60)
cat("Hours when price is 2 dollars is ",price$revFreqSum[which(price$price==2)]*5/60)
cat("Hours when price is 5 dollars is ",price$revFreqSum[which(price$price==5)]*5/60)

#NYC
price=as.double(NYC2015$LBMP....MWHr.)
x<-range(price)
breaks=seq(floor(x[1]),ceiling(x[2]), by=1)
price.cut=cut(price,breaks,right=FALSE)
price.freq=table(price.cut)
plot(price.freq, xlab="Speed bins", ylab="Hours")
price<-as.data.frame(price.freq)
price$FreqSum<-rcumsum(price$Freq)
price$price<-seq(floor(x[1]),(ceiling(x[2])-1), by=1)
#Wind duration Curve
plot(price$FreqSum*5/60, price$price, type='l',ylab="Price bins", xlab="Hours", main="Duration Curve for NYC") #Plotting duration curve,

price$revFreqSum<-cumsum((price$Freq))
plot(price$revFreqSum*5/60, price$price, type='l',ylab="Price bins", xlab="Hours", main="Duration Curve for NYC") #Plotting duration curve,
cat("Hours when price is 0 dollars is ",price$revFreqSum[which(price$price==0)]*5/60)
cat("Hours when price is 1 dollars is ",price$revFreqSum[which(price$price==1)]*5/60)
cat("Hours when price is 2 dollars is ",price$revFreqSum[which(price$price==2)]*5/60)
cat("Hours when price is 5 dollars is ",price$revFreqSum[which(price$price==5)]*5/60)

#OH
price=as.double(OH2015$LBMP....MWHr.)
x<-range(price)
breaks=seq(floor(x[1]),ceiling(x[2]), by=1)
price.cut=cut(price,breaks,right=FALSE)
price.freq=table(price.cut)
plot(price.freq, xlab="Speed bins", ylab="Hours")
price<-as.data.frame(price.freq)
price$FreqSum<-rcumsum(price$Freq)
price$price<-seq(floor(x[1]),(ceiling(x[2])-1), by=1)
#Wind duration Curve
plot(price$FreqSum*5/60, price$price, type='l',ylab="Price bins", xlab="Hours", main="Duration Curve for OH") #Plotting duration curve,

price$revFreqSum<-cumsum((price$Freq))
plot(price$revFreqSum*5/60, price$price, type='l',ylab="Price bins", xlab="Hours", main="Duration Curve for OH") #Plotting duration curve,
cat("Hours when price is 0 dollars is ",price$revFreqSum[which(price$price==0)]*5/60)
cat("Hours when price is 1 dollars is ",price$revFreqSum[which(price$price==1)]*5/60)
cat("Hours when price is 2 dollars is ",price$revFreqSum[which(price$price==2)]*5/60)
cat("Hours when price is 5 dollars is ",price$revFreqSum[which(price$price==5)]*5/60)

#PJM
price=as.double(PJM2015$LBMP....MWHr.)
x<-range(price)
breaks=seq(floor(x[1]),ceiling(x[2]), by=1)
price.cut=cut(price,breaks,right=FALSE)
price.freq=table(price.cut)
plot(price.freq, xlab="Speed bins", ylab="Hours")
price<-as.data.frame(price.freq)
price$FreqSum<-rcumsum(price$Freq)
price$price<-seq(floor(x[1]),(ceiling(x[2])-1), by=1)
#Wind duration Curve
plot(price$FreqSum*5/60, price$price, type='l',ylab="Price bins", xlab="Hours", main="Duration Curve for PJM") #Plotting duration curve,

price$revFreqSum<-cumsum((price$Freq))
plot(price$revFreqSum*5/60, price$price, type='l',ylab="Price bins", xlab="Hours", main="Duration Curve for PJM") #Plotting duration curve,
cat("Hours when price is 0 dollars is ",price$revFreqSum[which(price$price==0)]*5/60)
cat("Hours when price is 1 dollars is ",price$revFreqSum[which(price$price==1)]*5/60)
cat("Hours when price is 2 dollars is ",price$revFreqSum[which(price$price==2)]*5/60)
cat("Hours when price is 5 dollars is ",price$revFreqSum[which(price$price==5)]*5/60)

#WEST
price=as.double(WEST2015$LBMP....MWHr.)
x<-range(price)
breaks=seq(floor(x[1]),ceiling(x[2]), by=1)
price.cut=cut(price,breaks,right=FALSE)
price.freq=table(price.cut)
plot(price.freq, xlab="Speed bins", ylab="Hours")
price<-as.data.frame(price.freq)
price$FreqSum<-rcumsum(price$Freq)
price$price<-seq(floor(x[1]),(ceiling(x[2])-1), by=1)
#Wind duration Curve
plot(price$FreqSum*5/60, price$price, type='l',ylab="Price bins", xlab="Hours", main="Duration Curve for WEST") #Plotting duration curve,

price$revFreqSum<-cumsum((price$Freq))
plot(price$revFreqSum*5/60, price$price, type='l',ylab="Price bins", xlab="Hours", main="Duration Curve for WEST") #Plotting duration curve,
cat("Hours when price is 0 dollars is ",price$revFreqSum[which(price$price==0)]*5/60)
cat("Hours when price is 1 dollars is ",price$revFreqSum[which(price$price==1)]*5/60)
cat("Hours when price is 2 dollars is ",price$revFreqSum[which(price$price==2)]*5/60)
cat("Hours when price is 5 dollars is ",price$revFreqSum[which(price$price==5)]*5/60)
