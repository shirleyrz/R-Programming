rankhospital <- function(state, outcome, num = "best") {
        
        ## Read outcome data
        data <- read.csv("outcome-of-care-measures.csv", colClasses = "character")
        
        ## Check that state and outcome are valid
        if(outcome=="heart attack"){
                col=11;
        } else if(outcome=="heart failure"){
                col=17;
        } else if(outcome=="pneumonia"){
                col=23;
        } else  {
                stop('invalid outcome')
        }
        
        FilterState<-data[(data["State"])==state,]
        if(nrow(FilterState)==0)
                stop('invalid state')
        
             
        
        ## Return hospital name in that state with the given rank
        ## 30-day death rate
        
        # Clean data
        FilterState<-FilterState[!FilterState[,col]=="Not Available",]
        FilterState[,col]<-as.numeric(FilterState[,col])

        # sort data
        rs<-FilterState[order(FilterState[,col], FilterState$Hospital.Name),];
        
        
        if(num=="best"){
                rs_rank=1;
        }else if(num=="worst"){ 
                rs_rank=dim(rs)[1];
        }else if(num>dim(rs)[1]){
                return(NA);
        }else{
                rs_rank=num;
        }
        
        
        return(rs[rs_rank,"Hospital.Name"]);
        
}


