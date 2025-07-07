class Account
{
    static var count = 0;

    Account()
    {
        count++;
        print(count);
    }


}
void main()
{
    Account a1 = Account();
    Account a2 = Account();
    Account a3 = Account();

}