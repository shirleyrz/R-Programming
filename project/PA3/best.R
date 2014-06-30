# Getting and Cleaning Data
# PA3
# 2 Finding the best hospital in a state

best <- function(state, outcome) {

        ## Read outcome data
        data <- read.csv("outcome-of-care-measures.csv", colClasses = "character")
        
        ## Check that state and outcome are valid
        #  Check outcome
        #  11: "heart attack", 17: "heart failure", 23: "pneumonia"
        if(outcome=="heart attack"){
                col=11;
        } else if(outcome=="heart failure"){
                col=17;
        } else if(outcome=="pneumonia"){
                col=23;
        } else  {
                stop('invalid outcome')
        }
        
        # Filter State
        FilterState<-data[(data["State"])==state,]
                
        if(nrow(FilterState)==0)
                stop('invalid state')
        ## Return hospital name in that state with lowest 30-day death
        ## rate
        
        FilterState[FilterState[,col]=="Not Available",col]<-"NA"
        FilterState[,col]<-as.numeric(FilterState[,col])
        min<-min(FilterState[!is.na(FilterState[,col]),col]);
        rs_index<-which(FilterState[,col]==min);
        name<-sort(FilterState[rs_index,"Hospital.Name"])[1];
        return(name)
}
 