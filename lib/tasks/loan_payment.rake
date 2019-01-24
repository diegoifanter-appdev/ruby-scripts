desc "Calculate monthly loan payments"
task :loan_payment do
  
  path_to_text = Rails.root + "lib/input_files/loan_payment_apr.txt"
  loan_apr = open(path_to_text).read.to_f/12
  
  path_to_text = Rails.root + "lib/input_files/loan_payment_years.txt"
  loan_years = open(path_to_text).read.to_i
  loan_months = loan_years*12
  
  path_to_text = Rails.root + "lib/input_files/loan_payment_principal.txt"
  loan_principal = open(path_to_text).read.to_f
  
  ap("APR: "+loan_apr.to_f.to_s.strip)
  ap("Number of Years: "+loan_years.to_s.strip)
  ap("Principal: $"+loan_principal.to_f.to_s.strip)
 
  payment=((loan_apr/100*loan_principal)/(1-(1+loan_apr/100)**(-loan_months)))
  ap("Monthly payment: $"+payment.round(2).to_s)
end
