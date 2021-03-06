class Connection < ApplicationRecord
  belongs_to :customer
  has_many :accounts
  before_destroy :destroy_accounts

  private

  def destroy_accounts
    accounts.destroy_all
  end
end
