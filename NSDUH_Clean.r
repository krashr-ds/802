# Clean NSDUH Data

library(tidyverse)

NSDUH_2002_2017_Edited_Joined_2 <- read.csv("/home/kylier/Windows/803/NSDUH_2002_2017_Edited_Joined_2.csv")

# Rename Fields

NSDUH_2002_2017_Clean <- transform(NSDUH_2002_2017_Edited_Joined_2, HYDROCOD = HYDCPDAPYU)
NSDUH_2002_2017_Clean <- transform(NSDUH_2002_2017_Clean, METHADON = MTDNPDAPYU)
NSDUH_2002_2017_Clean <- transform(NSDUH_2002_2017_Clean, OXYCONTN = OXCNANYYR)
NSDUH_2002_2017_Clean <- transform(NSDUH_2002_2017_Clean, MORPHINE = MORPPDAPYU)

NSDUH_2002_2017_Clean <- transform(NSDUH_2002_2017_Clean, ANLEVERTRIED = PNRNMLIF)
NSDUH_2002_2017_Clean <- transform(NSDUH_2002_2017_Clean, AGETRIEDANL = PNRNMAGE)
NSDUH_2002_2017_Clean <- transform(NSDUH_2002_2017_Clean, TIMESINCEANL = PNRNMREC)
NSDUH_2002_2017_Clean <- transform(NSDUH_2002_2017_Clean, TRNEVERTRIED = TRBENZAPYU)
NSDUH_2002_2017_Clean <- transform(NSDUH_2002_2017_Clean, AGETRIEDTRN = TRQNMAGE)
NSDUH_2002_2017_Clean <- transform(NSDUH_2002_2017_Clean, METHAMPH = AMMEPDPYMU)
NSDUH_2002_2017_Clean <- transform(NSDUH_2002_2017_Clean, RITALIN = METHPDAPYU)
NSDUH_2002_2017_Clean <- transform(NSDUH_2002_2017_Clean, STMEVERTRIED = STMNMLIF)
NSDUH_2002_2017_Clean <- transform(NSDUH_2002_2017_Clean, AGETRIEDSTM = STMNMAGE)
NSDUH_2002_2017_Clean <- transform(NSDUH_2002_2017_Clean, STMDAYSPERYR = IRMETHAMYFQ) 
NSDUH_2002_2017_Clean <- transform(NSDUH_2002_2017_Clean, MTHAGETRIED = METHAMAGE) 
NSDUH_2002_2017_Clean <- transform(NSDUH_2002_2017_Clean, MTHDAYSPERYR = METHAMYFQ) 
NSDUH_2002_2017_Clean <- transform(NSDUH_2002_2017_Clean, MTHDAYSPERMO = METHDYPMO) 
NSDUH_2002_2017_Clean <- transform(NSDUH_2002_2017_Clean, SEDEVERTRIED = SEDNMLIF) 
NSDUH_2002_2017_Clean <- transform(NSDUH_2002_2017_Clean, AGETRIEDSED = SEDNMAGE) 
NSDUH_2002_2017_Clean <- transform(NSDUH_2002_2017_Clean, TIMESINCESED = SEDNMREC) 

NSDUH_2002_2017_Clean <- transform(NSDUH_2002_2017_Clean, CIGFIRSTCAT = CIGAFU) 
NSDUH_2002_2017_Clean <- transform(NSDUH_2002_2017_Clean, CIGDAILYCAT = DCIGAFU) 
NSDUH_2002_2017_Clean <- transform(NSDUH_2002_2017_Clean, MJDAILYCAT = MJAFU)
NSDUH_2002_2017_Clean <- transform(NSDUH_2002_2017_Clean, ALCDAILYCAT = ALCAFU)
NSDUH_2002_2017_Clean <- transform(NSDUH_2002_2017_Clean, MJDYSYRCAT = MRJYDAYS)
NSDUH_2002_2017_Clean <- transform(NSDUH_2002_2017_Clean, COCDYSYRCAT = COCYDAYS)
NSDUH_2002_2017_Clean <- transform(NSDUH_2002_2017_Clean, MTHDYSYRCAT = METHNDAYYR)
NSDUH_2002_2017_Clean <- transform(NSDUH_2002_2017_Clean, ALCDYSYRCAT = ALCYDAYS)
NSDUH_2002_2017_Clean <- transform(NSDUH_2002_2017_Clean, CIGDYSMOCAT = CIGMDAYS)

NSDUH_2002_2017_Clean <- transform(NSDUH_2002_2017_Clean, APPBYSELLMO = APPDRGMON2)
NSDUH_2002_2017_Clean <- transform(NSDUH_2002_2017_Clean, ENJOYDANGER = RSKYFQDGR)
NSDUH_2002_2017_Clean <- transform(NSDUH_2002_2017_Clean, ENJOYTESTSLF = RSKYFQTES)
NSDUH_2002_2017_Clean <- transform(NSDUH_2002_2017_Clean, SEATBLTPASS = RKFQPBLT)
NSDUH_2002_2017_Clean <- transform(NSDUH_2002_2017_Clean, SEATBLTDRVR = RKFQDBLT)

NSDUH_2002_2017_Clean <- transform(NSDUH_2002_2017_Clean, DEPNDANL = DEPNDPYPNR)
NSDUH_2002_2017_Clean <- transform(NSDUH_2002_2017_Clean, DEPNDANYDYR = DEPNDPYILL)
NSDUH_2002_2017_Clean <- transform(NSDUH_2002_2017_Clean, DEPNDHARDDYR = DEPNDPYIEM)
NSDUH_2002_2017_Clean <- transform(NSDUH_2002_2017_Clean, DEPNDDORAYR = DPPYILLALC)
NSDUH_2002_2017_Clean <- transform(NSDUH_2002_2017_Clean, DEPNDDANDAYR = DPPYILANAL)

NSDUH_2002_2017_Clean <- transform(NSDUH_2002_2017_Clean, TIMESBKDYR = NOBOOKY2)

NSDUH_2002_2017_Clean <- transform(NSDUH_2002_2017_Clean, DUIALCYR = DRVINALCO2)
NSDUH_2002_2017_Clean <- transform(NSDUH_2002_2017_Clean, DUIDRUGYR = DRVINDRG)
NSDUH_2002_2017_Clean <- transform(NSDUH_2002_2017_Clean, DUIANYYR = DRVINALDRG)

NSDUH_2002_2017_Clean <- transform(NSDUH_2002_2017_Clean, TXEVER = TXEVRRCVD)
NSDUH_2002_2017_Clean <- transform(NSDUH_2002_2017_Clean, DAYSINTX = TXLTYDAYS2)

NSDUH_2002_2017_Clean <- transform(NSDUH_2002_2017_Clean, TIMESINERYR = NMERTMT2)
NSDUH_2002_2017_Clean <- transform(NSDUH_2002_2017_Clean, OPMHTXYR = AUOPTYR)
NSDUH_2002_2017_Clean <- transform(NSDUH_2002_2017_Clean, RXMHTXYR = AURXYR)
NSDUH_2002_2017_Clean <- transform(NSDUH_2002_2017_Clean, IPMHTXYR = AMHINP2)
NSDUH_2002_2017_Clean <- transform(NSDUH_2002_2017_Clean, IPMHORSATXYR = RCVMHOSPTX)
NSDUH_2002_2017_Clean <- transform(NSDUH_2002_2017_Clean, IPMHONLYTXYR = RCVMHNSPTX)
NSDUH_2002_2017_Clean <- transform(NSDUH_2002_2017_Clean, IPSAONLYTXYR = RCVSPTXNMH)
NSDUH_2002_2017_Clean <- transform(NSDUH_2002_2017_Clean, IPBOTHTXYR = RCVMHASPTX)

NSDUH_2002_2017_Clean <- transform(NSDUH_2002_2017_Clean, SOLDDRUGS = SNYSELL)
NSDUH_2002_2017_Clean <- transform(NSDUH_2002_2017_Clean, STOLEG50 = SNYSTOLE)
NSDUH_2002_2017_Clean <- transform(NSDUH_2002_2017_Clean, ATTACKED = SNYATTAK)

NSDUH_2002_2017_Clean <- transform(NSDUH_2002_2017_Clean, RSERVICESYR = SNRLGSVC)
NSDUH_2002_2017_Clean <- transform(NSDUH_2002_2017_Clean, RBELIEFSIMP = SNRLGIMP)
NSDUH_2002_2017_Clean <- transform(NSDUH_2002_2017_Clean, RBELIEFSINF = SNRLDCSN)
NSDUH_2002_2017_Clean <- transform(NSDUH_2002_2017_Clean, SCHOOLYR = YEATNDYR)
NSDUH_2002_2017_Clean <- transform(NSDUH_2002_2017_Clean, SCHOOLHOMEYR = YEHMSLYR)
NSDUH_2002_2017_Clean <- transform(NSDUH_2002_2017_Clean, LIKESCHOOLYR = YESCHFLT)
NSDUH_2002_2017_Clean <- transform(NSDUH_2002_2017_Clean, TEACHERENCYR = YETCGJOB)
NSDUH_2002_2017_Clean <- transform(NSDUH_2002_2017_Clean, GRADESSEM = YELSTGRD)
  NSDUH_2002_2017_Clean <- transform(NSDUH_2002_2017_Clean, PARENTSCHECKYR = YEPCHKHW)
NSDUH_2002_2017_Clean <- transform(NSDUH_2002_2017_Clean, CHORESYR = YEPCHORE)
NSDUH_2002_2017_Clean <- transform(NSDUH_2002_2017_Clean, TVLIMITYR = YEPLMTTV)
NSDUH_2002_2017_Clean <- transform(NSDUH_2002_2017_Clean, FRIENDLIMITYR = YEPLMTSN)
NSDUH_2002_2017_Clean <- transform(NSDUH_2002_2017_Clean, PARENTENCYR = YEPGDJOB)
NSDUH_2002_2017_Clean <- transform(NSDUH_2002_2017_Clean, PARENTPRDYR = YEPPROUD)
NSDUH_2002_2017_Clean <- transform(NSDUH_2002_2017_Clean, HANDGUNYR = YEYHGUN)

NSDUH_2002_2017_Clean <- transform(NSDUH_2002_2017_Clean, DRUGEDSCHOOL = ANYEDUC3)

NSDUH_2002_2017_Clean <- transform(NSDUH_2002_2017_Clean, YTHMHTALKYR = YHLTMDE)
NSDUH_2002_2017_Clean <- transform(NSDUH_2002_2017_Clean, ADWHODAS = K6SCMON)
NSDUH_2002_2017_Clean <- transform(NSDUH_2002_2017_Clean, ADSMI = SPDYR)
NSDUH_2002_2017_Clean <- transform(NSDUH_2002_2017_Clean, ADSMIANDSAB = SMISUDPY)

NSDUH_2002_2017_Clean <- transform(NSDUH_2002_2017_Clean, YTHSMI = ANYSMH2)
NSDUH_2002_2017_Clean <- transform(NSDUH_2002_2017_Clean, YTHSMISUICATTMPT = SMHSUI2)

NSDUH_2002_2017_Clean <- transform(NSDUH_2002_2017_Clean, MOTHERINHOME = IMOTHER)
NSDUH_2002_2017_Clean <- transform(NSDUH_2002_2017_Clean, FATHERINHOME = IFATHER)
NSDUH_2002_2017_Clean <- transform(NSDUH_2002_2017_Clean, NKIDSINHOME = NRCH17_2)
NSDUH_2002_2017_Clean <- transform(NSDUH_2002_2017_Clean, AGE = AGE2)
NSDUH_2002_2017_Clean <- transform(NSDUH_2002_2017_Clean, NUMMARRIAGES = NOMARR2)
NSDUH_2002_2017_Clean <- transform(NSDUH_2002_2017_Clean, MILSERVICE = SERVICE)
NSDUH_2002_2017_Clean <- transform(NSDUH_2002_2017_Clean, HEALTHSRCAT = HEALTH)
NSDUH_2002_2017_Clean <- transform(NSDUH_2002_2017_Clean, SEX = IRSEX)
NSDUH_2002_2017_Clean <- transform(NSDUH_2002_2017_Clean, RACECAT = NEWRACE2)
NSDUH_2002_2017_Clean <- transform(NSDUH_2002_2017_Clean, EDUCAT = EDUHIGHCAT)
NSDUH_2002_2017_Clean <- transform(NSDUH_2002_2017_Clean, POPDENSITY = PDEN10)
NSDUH_2002_2017_Clean <- transform(NSDUH_2002_2017_Clean, METROTYPE = COUTYP4)

# Remove fields

NSDUH_2002_2017_Clean <- select(NSDUH_2002_2017_Clean, -c(HYDCPDAPYU,MTDNPDAPYU,OXCNANYYR,PNRNMLIF,PNRNMAGE,PNRNMREC,TRBENZAPYU,TRQNMAGE,AMMEPDPYMU,METHPDAPYU,STMNMLIF,
                                                          STMNMAGE,IRMETHAMYFQ,METHAMAGE,METHAMYFQ,SEDNMLIF,SEDNMAGE,SEDNMREC,CIGAFU,DCIGAFU,MJAFU,MRJYDAYS,COCYDAYS,
                                                          METHNDAYYR,ALCYDAYS,CIGMDAYS,APPDRGMON2,RSKYFQDGR,RSKYFQTES,RKFQPBLT,RKFQDBLT,
                                                          DEPNDPYPNR,DEPNDPYILL,DEPNDPYIEM,DPPYILLALC,DPPYILANAL,NOBOOKY2,DRVINALCO2,DRVINDRG,DRVINALDRG,TXEVRRCVD,
                                                          TXLTYDAYS2,NMERTMT2,AUOPTYR,AURXYR,RCVMHOSPTX,RCVMHNSPTX,RCVSPTXNMH,RCVMHASPTX,SNYSELL,SNYSTOLE,SNYATTAK, 
                                                          SNRLGSVC,SNRLGIMP,SNRLDCSN,YEATNDYR,YEHMSLYR,YESCHFLT,YETCGJOB,YELSTGRD,YEPCHKHW,YEPCHORE,YEPLMTTV,
                                                          YEPLMTSN,YEPGDJOB,YEPPROUD,YEYHGUN,ANYEDUC3,YHLTMDE,K6SCMON,SPDYR,SMISUDPY,ANYSMH2,SMHSUI2,IMOTHER,
                                                          IFATHER,NRCH17_2,AGE2,NOMARR2,SERVICE,HEALTH,IRSEX,NEWRACE2,EDUHIGHCAT,PDEN10,COUTYP4, 
                                                          MORPPDAPYU,METHDYPMO,HALLNDAYPM,APPDRGMON,AMHINP2,CIGAFU,DCIGAFU,ALCAFU,MJAFU))

# Cast as Factors
NSDUH_2002_2017_Clean <-   NSDUH_2002_2017_Clean %>% as_tibble() %>% mutate(across(where(is.integer), as.factor))

# Clean 

# Recode categorical values
# Unique columns

NSDUH_2002_2017_Clean <- NSDUH_2002_2017_Clean %>% mutate(INCOME = recode(INCOME,
                                                                         '1' = "< $20,000",
                                                                         '2' = "$20,000 - $49,000",
                                                                         '3' = "$50,000 - $74,000",
                                                                         '4' = "$75,000+"))

NSDUH_2002_2017_Clean <- NSDUH_2002_2017_Clean %>% mutate(CATAGE = recode(CATAGE,
                                                                          '1' = "12-17",
                                                                          '2' = "18-25",
                                                                          '3' = "26-34",
                                                                          '4' = "35+"))

NSDUH_2002_2017_Clean <- NSDUH_2002_2017_Clean %>% mutate(SEX = recode(SEX,
                                                                          '1' = "Male",
                                                                          '2' = "Female"))

NSDUH_2002_2017_Clean <- NSDUH_2002_2017_Clean %>% mutate(SEXAGE = recode(SEXAGE,
                                                                          '1' = "Male 12-17",
                                                                          '2' = "Female 12-17",
                                                                          '3' = "Male 18-25",
                                                                          '4' = "Female 18-25"))



NSDUH_2002_2017_Clean <- NSDUH_2002_2017_Clean %>% mutate(HEALTHSRCAT = recode(HEALTHSRCAT,
                                                                          '1' = "Excellent",
                                                                          '2' = "Very Good",
                                                                          '3' = "Good",
                                                                          '4' = "Fair",
                                                                          '5' = "Poor",
                                                                          '94' = "DON'T KNOW",
                                                                          '97' = "REFUSED"))
                                                                          
NSDUH_2002_2017_Clean <- NSDUH_2002_2017_Clean %>% mutate(NKIDSINHOME = recode(NKIDSINHOME,
                                                                              '3' = "3+"))

NSDUH_2002_2017_Clean <- NSDUH_2002_2017_Clean %>% mutate(TIMESBKDYR = recode(TIMESBKDYR,
                                                                          '3' = "3+",
                                                                          '985' = "BAD DATA",
                                                                          '994' = "DON'T KNOW",
                                                                          '997' = "REFUSED",
                                                                          '998' = ".",
                                                                          '999' = "NA"))

NSDUH_2002_2017_Clean <- NSDUH_2002_2017_Clean %>% mutate(LIKESCHOOLYR = recode(LIKESCHOOLYR,
                                                                              '1' = "LIKED A LOT",
                                                                              '2' = "KIND OF LIKED",
                                                                              '3' = "DIDN'T LIKE",
                                                                              '4' = "HATED",
                                                                              '85' = "BAD DATA",
                                                                              '94' = "DON'T KNOW",
                                                                              '97' = "REFUSED",
                                                                              '98' = ".",
                                                                              '99' = "NA"))

NSDUH_2002_2017_Clean <- NSDUH_2002_2017_Clean %>% mutate(NUMMARRIAGES = recode(NUMMARRIAGES,
                                                                                '1' = "1",
                                                                                '2' = "2+",
                                                                                '85' = "BAD DATA",
                                                                                '94' = "DON'T KNOW",
                                                                                '97' = "REFUSED",
                                                                                '98' = ".",
                                                                                '99' = "NA"))

NUMMARRIAGES
NSDUH_2002_2017_Clean <- NSDUH_2002_2017_Clean %>% mutate(GRADESSEM = recode(GRADESSEM,
                                                                                '1' = "A",
                                                                                '2' = "B",
                                                                                '3' = "C",
                                                                                '4' = "D",
                                                                                '5' = "OTHER GRD SYSTEM",
                                                                                '85' = "BAD DATA",
                                                                                '94' = "DON'T KNOW",
                                                                                '97' = "REFUSED",
                                                                                '98' = ".",
                                                                                '99' = "NA"))


NSDUH_2002_2017_Clean <- NSDUH_2002_2017_Clean %>% mutate(AGE = recode(AGE,
                                                                             '1' = "12",
                                                                             '2' = "13",
                                                                             '3' = "14",
                                                                             '4' = "15",
                                                                             '5' = "16",
                                                                             '6' = "17",
                                                                             '7' = "18",
                                                                             '8' = "19",
                                                                             '9' = "20",
                                                                             '10' = "21",
                                                                             '11' = "22-23",
                                                                             '12' = "24-25",
                                                                             '13' = "26-29",
                                                                             '14' = "30-34",
                                                                             '15' = "35-49",
                                                                             '16' = "50-64",
                                                                             '17' = "65+"))


NSDUH_2002_2017_Clean <- NSDUH_2002_2017_Clean %>% mutate(RACECAT = recode(RACECAT,
                                                                       '1' = "WHITE",
                                                                       '2' = "BLACK",
                                                                       '3' = "AM INDIAN/ AK NATIVE",
                                                                       '4' = "NATIVE HI/ PACIFIC ISL",
                                                                       '5' = "ASIAN",
                                                                       '6' = "MORE THAN ONE",
                                                                       '7' = "HISPANIC"))

NSDUH_2002_2017_Clean <- NSDUH_2002_2017_Clean %>% mutate(EDUCAT = recode(EDUCAT,
                                                                       '1' = "< HIGH SCHOOL",
                                                                       '2' = "HIGH SCHOOL DIPLOMA",
                                                                       '3' = "SOME COLLEGE/ ASSOC",
                                                                       '4' = "COLLEGE GRAD/ BACHL",
                                                                       '5' = "12-17 YEAR OLDS"))


NSDUH_2002_2017_Clean <- NSDUH_2002_2017_Clean %>% mutate(POPDENSITY = recode(POPDENSITY,
                                                                       '1' = "1,000,000+ PERSONS",
                                                                       '2' = "<1,000,000 PERSONS",
                                                                       '3' = "NOT IN A CBSA"))

NSDUH_2002_2017_Clean <- NSDUH_2002_2017_Clean %>% mutate(METROTYPE = recode(METROTYPE,
                                                                       '1' = "LARGE METRO",
                                                                       '2' = "SMALL METRO",
                                                                       '3' = "NON-METRO"))
# Cast as Tibble
df_NSDUH_Clean <- as.tibble(NSDUH_2002_2017_Clean)

# Recoding Functions

recodeTwoDigitCodes <- function(col) {
  case_when(
    col == '85' ~ "BAD DATA",
    col == '93' ~ "OTHER PERIOD",
    col == '94' ~ "DON'T KNOW",
    col == '97' ~ "REFUSED",
    col == '98' ~ ".",
    col == '81' ~ "NA",
    col == '91' ~ "NA",
    col == '99' ~ "NA"
  )
}

twoCodeRecodes <- c("HERDYSPERMO", "MTHDAYSPERMO")

df_NSDUH_Clean <- df_NSDUH_Clean %>%
  mutate_at(vars(one_of(twoCodeRecodes)), recodeTwoDigitCodes)

recodeThreeDigitCodes <- function(col) {
  case_when(
    col == '985' ~ "BAD DATA",
    col == '993' ~ "OTHER PERIOD",
    col == '994' ~ "DON'T KNOW",
    col == '997' ~ "REFUSED",
    col == '998' ~ ".",
    col == '981' ~ "NA",
    col == '991' ~ "NA",
    col == '999' ~ "NA"
  )
}

threeCodeRecodes <- c("HERDAYSPERYR", "AGETRIEDANL", "AGETRIEDTRN", "AGETRIEDSTM", "STMDAYSPERYR", "MTHAGETRIED", "MTHDAYSPERYR", "AGETRIEDSED", "TIMESINERYR")

df_NSDUH_Clean <- df_NSDUH_Clean %>%
  mutate_at(vars(one_of(threeCodeRecodes)), recodeThreeDigitCodes)

recodeFiveDigitCodes <- function(col) {
  case_when(
    col == '99985' ~ "BAD DATA",
    col == '99993' ~ "OTHER PERIOD",
    col == '99994' ~ "DON'T KNOW",
    col == '99997' ~ "REFUSED",
    col == '99998' ~ ".",
    col == '99981' ~ "NA",
    col == '99991' ~ "NA",
    col == '99999' ~ "NA"
  )
}

fiveCodeRecodes <- c("DAYSINTX")

df_NSDUH_Clean <- df_NSDUH_Clean %>%
  mutate_at(vars(one_of(fiveCodeRecodes)), recodeFiveDigitCodes)

recodeZeroOneCol <- function(col) {
  case_when(
    col == '0' ~ "No",
    col == '1' ~ "Yes",
    col == '3' ~ "Yes",
    col == '6' ~ "."
  )
  recodeTwoDigitCodes(col)
}


ZeroOneCols <- c("HYDROCOD", "METHADON", "MORPHINE", "METHAMPH", "RITALIN", "TRNEVERTRIED", "APPBYSELLMO", "DIFOBTMRJ", "YTHMHTALKYR", "ADSMI",
                 "DIFOBTCOC", "DIFOBTCRK", "DIFOBTHER", "DEPNDALC", "DEPNDANL", "DEPNDCOC", "DEPNDHER", "DEPNDANYDYR", "DEPNDHARDDYR", "YTHSMI",
                 "DEPNDDORAYR", "DEPNDDANDAYR", "DUIALCYR", "DUIDRUGYR", "DUIANYYR", "IPMHORSATXYR", "IPMHONLYTXYR", "IPSAONLYTXYR", "IPBOTHTXYR",
                 "YTHSMISUICATTMPT")

df_NSDUH_Clean <- df_NSDUH_Clean %>%
  mutate_at(vars(one_of(ZeroOneCols)), recodeZeroOneCol)

recodeOneTwoCol <- function(col) {
  case_when(
    col == '1' ~ "Yes",
    col == '2' ~ "No",
    col == '3' ~ "Yes"
  )
  recodeTwoDigitCodes(col)
}

OneTwoCols <- c("BOOKED", "PROBATON", "PREGNANT", "RXMHTXYR", "RXMHTXYR", "INHOSPYR", "GOVTPROG", "OXYCONTN", "ANLEVERTRIED",
                "STMEVERTRIED", "SEDEVERTRIED", "TXEVER", "OPMHTXYR", "RXMHTXYR", "IPMHTXYR", "SCHOOLYR", "SCHOOLHOMEYR", "DRUGEDSCHOOL",
                "ADSMIANDSAB", "MILSERVICE")

df_NSDUH_Clean <- df_NSDUH_Clean %>%
  mutate_at(vars(one_of(OneTwoCols)), recodeOneTwoCol)

recodeTimeSinceCol <- function(col) {
  case_when(
    col == '1' ~ "< 30 DAYS",
    col == '2' ~ "> 30 DAYS < 12 MOS",
    col == '3' ~ "> 12 MOS",
    col == '8' ~ "OTHER TIME",
    col == '9' ~ "OTHER TIME"
  )
  recodeTwoDigitCodes(col)
}

timeSinceCols <- c("TIMESINCEANL", "TIMESINCESED")

df_NSDUH_Clean <- df_NSDUH_Clean %>%
  mutate_at(vars(one_of(timeSinceCols)), recodeTimeSinceCol)

recodeFUFactors <- function(col) {
  case_when (
    col == '1' ~ "<= 14",
    col == '2' ~ "15-17",
    col == '3' ~ "18+",
    col == '4' ~ "NA"
  )
}

fuFactors <- c("CIGFIRSTCAT", "ALCDAILYCAT", "CIGDAILYCAT", "MJDAILYCAT")

df_NSDUH_Clean <- df_NSDUH_Clean %>%
  mutate_at(vars(one_of(fuFactors)), recodeFUFactors)

recodeCATDaysYear <- function(col) {
  case_when (
    col == '1' ~ "1-11",
    col == '2' ~ "12-49",
    col == '3' ~ "50-99",
    col == '4' ~ "100-299",
    col == '5' ~ "300-365",
    col == '6' ~ "None"
    
  )
}

catDaysYearCols <- c("MJDYSYRCAT", "COCDYSYRCAT", "MTHDYSYRCAT", "ALCDYSYRCAT")
df_NSDUH_Clean <- df_NSDUH_Clean %>%
  mutate_at(vars(one_of(catDaysYearCols)), recodeCATDaysYear)

recodeCATTimesYear <- function(col) {
  case_when (
    col == '1' ~ "0",
    col == '2' ~ "1-2",
    col == '3' ~ "3-5",
    col == '4' ~ "6-24",
    col == '5' ~ "25-52",
    col == '6' ~ "52+"
    
  )
  recodeTwoDigitCodes(col)
}


catTimesYear <- c("RSERVICESYR")
df_NSDUH_Clean <- df_NSDUH_Clean %>%
  mutate_at(vars(one_of(catTimesYear)), recodeCATTimesYear)


recodeCATDaysMonth <- function(col) {
  case_when (
    col == '1' ~ "1-2",
    col == '2' ~ "3-5",
    col == '3' ~ "6-19",
    col == '4' ~ "20-30",
    col == '5' ~ "None"
    
  )
}

catDaysMoCols <- c("CIGDYSMOCAT")
df_NSDUH_Clean <- df_NSDUH_Clean %>%
  mutate_at(vars(one_of(catDaysMoCols)), recodeCATDaysMonth)


recodeCATDifGet <- function(col) {
  case_when (
    col == '1' ~ "Probably Impossible",
    col == '2' ~ "Very Difficult",
    col == '3' ~ "Fairly Difficult",
    col == '4' ~ "Fairly Easy",
    col == '5' ~ "Very Easy",
    col == '94' ~ "DON'T KNOW"
    
  )
}

difGetRecodes <- c("DIFGETMRJ", "DIFGETCOC", "DIFGETCRK", "DIFGETHER")
df_NSDUH_Clean <- df_NSDUH_Clean %>%
  mutate_at(vars(one_of(difGetRecodes)), recodeCATDifGet)

recodeCATNSSA <- function(col) {
  case_when (
    col == '1' ~ "Never",
    col == '2' ~ "Seldom",
    col == '3' ~ "Sometimes",
    col == '4' ~ "Always"
    
  )
  recodeTwoDigitCodes(col)
}

NSSACols <- c("ENJOYDANGER", "ENJOYTESTSLF", "SEATBLTPASS", "SEATBLTDRVR")
df_NSDUH_Clean <- df_NSDUH_Clean %>%
  mutate_at(vars(one_of(NSSACols)), recodeCATNSSA)

recodeCATASSN <- function(col) {
  case_when (
    col == '1' ~ "Always",
    col == '2' ~ "Sometimes",
    col == '3' ~ "Seldom",
    col == '4' ~ "Never"
    
  )
  recodeTwoDigitCodes(col)
}


ASSNCols <- c("TEACHERENCYR", "CHORESYR", "TVLIMITYR", "FRIENDLIMITYR", "PARENTENCYR", "PARENTPRDYR")
df_NSDUH_Clean <- df_NSDUH_Clean %>%
  mutate_at(vars(one_of(ASSNCols)), recodeCATASSN)

recodeCATDisagreeAgree <- function(col) {
  case_when (
    col == '1' ~ "Strongly Disagree",
    col == '2' ~ "Disagree",
    col == '3' ~ "Agree",
    col == '4' ~ "Strongly Agree"
    
  )
  recodeTwoDigitCodes(col)
}

AgrDisCols <- c("RBELIEFSIMP", "RBELIEFSINF")
df_NSDUH_Clean <- df_NSDUH_Clean %>%
  mutate_at(vars(one_of(AgrDisCols)), recodeCATDisagreeAgree)

recodeInHome <- function(col) {
  case_when (
    col == '1' ~ "IN HOME",
    col == '2' ~ "ABSENT",
    col == '3' ~ "DON'T KNOW",
    col == '4' ~ "NA"
  )
  
}

inHomeCols <- c("MOTHERINHOME", "FATHERINHOME")
df_NSDUH_Clean <- df_NSDUH_Clean %>%
  mutate_at(vars(one_of(inHomeCols)), recodeInHome)

recodeCrimes <- function(col) {
  case_when (
    col == '1' ~ "0",
    col == '2' ~ "1 or 2",
    col == '3' ~ "3 to 5",
    col == '4' ~ "6 to 9",
    col == '5' ~ "10 +"
  )
  recodeTwoDigitCodes(col)
}

crimeCols <- c("SOLDDRUGS", "STOLEG50", "ATTACKED", "HANDGUNYR")
df_NSDUH_Clean <- df_NSDUH_Clean %>%
  mutate_at(vars(one_of(crimeCols)), recodeCrimes)



NSDUH_2002_2017_Clean <- as.data.frame(df_NSDUH_Clean)

NSDUH_2002_2017_Clean <-   NSDUH_2002_2017_Clean %>% as_tibble() %>% mutate(across(where(is.character), as.factor))


write.csv(NSDUH_2002_2017_Clean, '/home/kylier/Documents/UNH/803/NSDUH_Clean.csv')





