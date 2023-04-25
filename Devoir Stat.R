

mean(CreditBancaire$Credit)  ### Calcul de la  moyenne du credit ###

## moyenne du nombre de jours de retard de paiement des clients, par type de crédit ##

CreditBancaire%>%group_by(Type)%>%summarise(moyenne=mean(Jours))

RPT<-CreditBancaire%>%group_by(Type)%>%summarise(moyenne=mean(Jours))
RPT
str(RPT)
class(RPT)

## graphique en baton qui indique la moyenne du nombre de jours de retard de paiement par type de crédit ##

Types<-c("Commerce","Consommation","Production") ## les types de credit##
Moyenne<-c(80.8,66.3,95.9) ## Moyenne de ces types ##
class(Tpes)
class(Moy)

library(ggplot2)
ggplot(RPT,aes(Types,Moyenne))+geom_col(just = 0.5)



