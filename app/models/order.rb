class Order < ActiveRecord::Base
  belongs_to :user
  has_many :order_items

  accepts_nested_attributes_for :order_items

  validates :user, presence: true

  enum status: [ :created, :complited, :aborted ]

  default_scope { where(status: Order.statuses[:created]) }

  def total
    order_items.map { |item| item.quantity * item.product.price }.reduce(:+)
  end

end
