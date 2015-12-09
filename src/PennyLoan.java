public class PennyLoan 
{
        private int amount ; // Amount of loan in pence
        private int length ; // length of subscription in months
        
        public PennyLoan(int a, int l) {
                amount = a ;
                length = l ;
        }

        /**
        * Calculate the monthly payment in pounds,
        * rounded up to the nearest penny.
        */
        
        public double paymentPerMonth() {
                double r = Math.ceil((((double) amount/100)/ (double) length)*100)/100;
                return r ;
        }
}
