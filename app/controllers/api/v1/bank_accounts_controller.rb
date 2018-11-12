module Api
  module V1
    class BankAccountsController < ApplicationController
      def new_transaction
        amount = params[:amount]
        transactionType = params[:transaction_type]
        bank_account_id = params[:bank_account_id]

        errors = ::BankAccounts::ValidateNewTransaction.new(amount: amount, transaction_type: transactionType, bank_account_id: bank_account_id).execute!

        if !errors.empty?
          render json: { errors: errors }, status: 402
        else
          bank_account = ::BankAccounts::PerformTransaction.new(amount: amount, transaction_type: transactionType, bank_account_id: bank_account_id).excute!
          render json: { balance: bank_account.balance }
        end
      end
    end
  end
end
