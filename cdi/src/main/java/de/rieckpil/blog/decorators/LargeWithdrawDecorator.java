package de.rieckpil.blog.decorators;

import javax.annotation.Priority;
import javax.decorator.Decorator;
import javax.decorator.Delegate;
import javax.inject.Inject;

@Priority(100)
@Decorator
public abstract class LargeWithdrawDecorator implements Account {

    @Inject
    @Delegate
    private Account account;

    @Override
    public void withdrawMoney(Double amount) {
        if (amount >= 100.0) {
            System.out.println("A large amount of money gets withdrawn!!!");
            // e.g. do further checks
        }

        account.withdrawMoney(amount);
    }
}
