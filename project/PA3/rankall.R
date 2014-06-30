rankall <- function(outcome, num = "best") {
        
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
        

        ## For each state, find the hospital of the given rank
        
        # Extract Unique state
        state<-unique(data$State);
        rs.df = data.frame( "hospital" = rep(NA, length(state)), state)
        
        for (s in state){
#                 s="AL"
                # filter by state
                FilterState<-data[(data[,"State"])==s,]
                # clean NA
                FilterState<-FilterState[!FilterState[,col]=="Not Available",]
                FilterState[,col]<-as.numeric(FilterState[,col])
                
                # sort data
                rs<-FilterState[order(FilterState[,col], FilterState$Hospital.Name),];
                
                # compute the objective rank
                if(num=="best"){
                        rs_rank=1;
                }else if(num=="worst"){ 
                        rs_rank=dim(rs)[1];
                }else if(num>dim(rs)[1]){
                        
                }else{
                        rs_rank=num;
                }
                
                rs.df[rs.df$state==s,1] = rs[rs_rank,"Hospital.Name"];
               
                
        }
        
        ## Return a data frame with the hospital names and the
        ## (abbreviated) state name
        return (rs.df);

}
