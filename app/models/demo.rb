class Demo < ActiveRecord::Base
  include AASM

  belongs_to :client
  belongs_to :contractor
  belongs_to :facilitator
  belongs_to :venue

  aasm do

    state :drafted, initial: true
    state :proffered
    state :contracted
    state :performed
    state :disputed
    state :accepted
    state :invoiced
    state :paid
    state :contractor_reviewed
    state :client_reviewed
    state :complete

    event :proffer do
      transitions from: :drafted, to: :proffered
    end

    event :agree do
      transitions from: :proffered, to: :contracted
    end


  end
end
