Validate email address and domain python                                                                                  
                                                                                                                          
This seems to better than all the posted SAS regex patterns?                                                              
Even does international address and checks the domain.                                                                    
                                                                                                                          
  Two Solutions                                                                                                           
                                                                                                                          
      a. Python email-validator (best)                                                                                    
      b. SAS Does not check for a valid domain                                                                            
         RegEx /^([a-zA-Z0-9_\+\-\.]+)@([a-zA-Z0-9_\+\-\.]+)\.([a-zA-Z]{2,5})$/                                           
                                                                                                                          
github                                                                                                                    
https://tinyurl.com/y42jbq9y                                                                                              
https://github.com/rogerjdeangelis/utl-validate-email-address-and-domain-python                                           
                                                                                                                          
Related github                                                                                                            
https://tinyurl.com/yylj6fy9                                                                                              
https://github.com/rogerjdeangelis/utl_checking_a_valid_telephone_number_ssns_and_email_address                           
                                                                                                                          
SAS Forum                                                                                                                 
https://tinyurl.com/yyzh98sn                                                                                              
https://communities.sas.com/t5/SAS-Programming/How-to-make-it-ass-valid-email-adrdress/m-p/692069                         
                                                                                                                          
/*                   _                                                                                                    
(_)_ __  _ __  _   _| |_                                                                                                  
| | `_ \| `_ \| | | | __|                                                                                                 
| | | | | |_) | |_| | |_                                                                                                  
|_|_| |_| .__/ \__,_|\__|                                                                                                 
        |_|                                                                                                               
*/                                                                                                                        
                                                                                                                          
options validvarname=upcase;                                                                                              
libname sd1 "d:/sd1";                                                                                                     
data sd1.have;                                                                                                            
  informat adr $44.;                                                                                                      
  input adr;                                                                                                              
cards4;                                                                                                                   
regusers@^%&$-@@ACHME.com                                                                                                 
my+address@mydomain.tld                                                                                                   
bob0_@example.com                                                                                                         
santa.banta@gmail.co.in                                                                                                   
arindam31@yahoo.co.in                                                                                                     
bogusemail123@sillymail.com                                                                                               
santa.banta.manta@gmail.co.in                                                                                             
santa.banta.manta@gmail.co.in.xv.fg.gh                                                                                    
abc.dcf@ghj.org                                                                                                           
santa.banta.manta@gmail.co.in.org                                                                                         
;;;;    xpy a. oython                                                                                                     
                                                                                                                          
run;quit;                                                                                                                 
                                                                                                                          
SD1.HAVE total obs=10                                                                                                     
                                                                                                                          
Obs    ADR                                                                                                                
                                                                                                                          
  1    regusers@^%&$-@@ACHME.com                                                                                          
  2    my+address@mydomain.tld                                                                                            
  3    bob0_@example.com                                                                                                  
  4    santa.banta@gmail.co.in                                                                                            
  5    arindam31@yahoo.co.in                                                                                              
  6    bogusemail123@sillymail.com                                                                                        
  7    santa.banta.manta@gmail.co.in                                                                                      
  8    santa.banta.manta@gmail.co.in.xv.fg.gh                                                                             
  9    abc.dcf@ghj.org                                                                                                    
 10    santa.banta.manta@gmail.co.in.org                                                                                  
                                                                                                                          
/*           _               _                                                                                            
  ___  _   _| |_ _ __  _   _| |_                                                                                          
 / _ \| | | | __| `_ \| | | | __|                                                                                         
| (_) | |_| | |_| |_) | |_| | |_                                                                                          
 \___/ \__,_|\__| .__/ \__,_|\__|                                                                                         
                |_|    _   _                                                                                              
  __ _     _ __  _   _| |_| |__   ___  _ __                                                                               
 / _` |   | `_ \| | | | __| `_ \ / _ \| `_ \                                                                              
| (_| |_  | |_) | |_| | |_| | | | (_) | | | |                                                                             
 \__,_(_) | .__/ \__, |\__|_| |_|\___/|_| |_|                                                                             
          |_|    |___/                                                                                                    
*/                                                                                                                        
                                                                                                                          
                                                                                                                          
Up to 40 obs from WANT total obs=10                                                                                       
                                                                                                                          
Obs    ADR                                       CHK                                                                      
                                                                                                                          
  1    regusers@^%&$-@@ACHME.com                 The email address is not valid. It must have exactly one @-sign.         
  2    my+address@mydomain.tld                   The domain name mydomain.tld does not exist.                             
  3    bob0_@example.com                         Valid Email                                                              
  4    santa.banta@gmail.co.in                   Valid Email                                                              
  5    arindam31@yahoo.co.in                     Valid Email                                                              
  6    bogusemail123@sillymail.com               Valid Email                                                              
  7    santa.banta.manta@gmail.co.in             Valid Email                                                              
  8    santa.banta.manta@gmail.co.in.xv.fg.gh    The domain name gmail.co.in.xv.fg.gh does not exist.                     
  9    abc.dcf@ghj.org                           Valid Email                                                              
 10    santa.banta.manta@gmail.co.in.org         Valid Email                                                              
                                                                                                                          
/*                                                                                                                        
| |__     ___  __ _ ___                                                                                                   
| `_ \   / __|/ _` / __|                                                                                                  
| |_) |  \__ \ (_| \__ \                                                                                                  
|_.__(_) |___/\__,_|___/                                                                                                  
                                                                                                                          
*/                                                                                                                        
                                                                                                                          
Up to 40 obs from WANT total obs=10                                                                                       
                                                                                                                          
Obs    ADR                                                CHK                                                             
                                                                                                                          
  1    regusers@^%&$-@@ACHME.com                 Invalid email address                                                    
  2    my+address@mydomain.tld                   Valid email address  Does not catch the invalid domain                   
  3    bob0_@example.com                         Valid email address                                                      
  4    santa.banta@gmail.co.in                   Valid email address                                                      
  5    arindam31@yahoo.co.in                     Valid email address                                                      
  6    bogusemail123@sillymail.com               Valid email address                                                      
  7    santa.banta.manta@gmail.co.in             Valid email address                                                      
  8    santa.banta.manta@gmail.co.in.xv.fg.gh    Valid email address  Does not catch the invalid domain                   
  9    abc.dcf@ghj.org                           Valid email address                                                      
 10    santa.banta.manta@gmail.co.in.org         Valid email address                                                      
                                                                                                                          
/*                                                                                                                        
 _ __  _ __ ___   ___ ___  ___ ___                                                                                        
| `_ \| `__/ _ \ / __/ _ \/ __/ __|                                                                                       
| |_) | | | (_) | (_|  __/\__ \__ \                                                                                       
| .__/|_|  \___/ \___\___||___/___/                                                                                       
|_|                    _   _                                                                                              
  __ _     _ __  _   _| |_| |__   ___  _ __                                                                               
 / _` |   | `_ \| | | | __| `_ \ / _ \| `_ \                                                                              
| (_| |_  | |_) | |_| | |_| | | | (_) | | | |                                                                             
 \__,_(_) | .__/ \__, |\__|_| |_|\___/|_| |_|                                                                             
          |_|    |___/                                                                                                    
*/                                                                                                                        
                                                                                                                          
%utl_submit_py64_38('                                                                                                     
import pyreadstat;                                                                                                        
from email_validator import validate_email, EmailNotValidError;                                                           
have, meta = pyreadstat.read_sas7bdat("d:/sd1/have.sas7bdat");                                                            
for i in range(len(have)) :;                                                                                              
.   email=have.loc[i, "ADR"];                                                                                             
.   try:;                                                                                                                 
.       # Validate.;                                                                                                      
.       valid = validate_email(email);                                                                                    
.       # Update with the normalized form.;                                                                               
.       email = valid.email;                                                                                              
.       have.loc[i, "CHK"]="Valid Email";                                                                                 
.   except EmailNotValidError as e:;                                                                                      
.       # email is not valid, exception message is human-readable;                                                        
.       print(str(e));                                                                                                    
.       have.loc[i, "CHK"]=str(e);                                                                                        
print(have);                                                                                                              
pyreadstat.write_xport(have, "d:/xpt/want.xpt",table_name="want");                                                        
');                                                                                                                       
                                                                                                                          
libname xpt xport "d:/xpt/want.xpt";                                                                                      
data want;                                                                                                                
  set xpt.want(obs=10);                                                                                                   
run;quit;                                                                                                                 
libname xpt clear;                                                                                                        
                                                                                                                          
/*                                                                                                                        
| |__     ___  __ _ ___                                                                                                   
| `_ \   / __|/ _` / __|                                                                                                  
| |_) |  \__ \ (_| \__ \                                                                                                  
|_.__(_) |___/\__,_|___/                                                                                                  
                                                                                                                          
*/                                                                                                                        
                                                                                                                          
data want;                                                                                                                
  set sd1.have;                                                                                                           
  if prxmatch('/^([a-zA-Z0-9_\+\-\.]+)@([a-zA-Z0-9_\+\-\.]+)\.([a-zA-Z]{2,5})$/',trim(ADR))>0                             
     then chk="Valid email address   ";                                                                                   
  else chk="Invalid email address"; ;                                                                                     
run;                                                                                                                      
                                                                                                                          
