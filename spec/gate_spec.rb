require './spec/spec_helper'
require './lib/gate.rb'
require './lib/ticket.rb'

RSpec.describe 'Gate Test' do
  it 'is OK' do
    def test_gate
      umeda = Gate.new(:umeda)
      juso = Gate.new(:juso)
      ticket = Ticket.new(150)
      umeda.enter(ticket)
      expect(juso.exit(ticket)).to be_truthy
    end
  end

  describe 'Umeda to Mikuni' do
    it 'is NG' do
      def fare_in_not_enough
        umeda = Gate.new(:umeda)
        mikuni = Gate.new(:mikuni)
        ticket = Ticket.new(150)
        umeda.enter(ticket)
        expect(mikuni.exit(ticket)).to be falsey
      end
    end
  end
end

# require './spec/spec_helper'
# require './lib/gate'
# require './lib/ticket'
#
# RSpec.describe 'Gate' do
#   let(:umeda) { Gate.new(:umeda) }
#   let(:juso) { Gate.new(:juso) }
#   let(:mikuni) { Gate.new(:mikuni) }
#
#   describe 'Umeda to Juso' do
#     it 'is OK' do
#       ticket = Ticket.new(150)
#       umeda.enter(ticket)
#       expect(juso.exit(ticket)).to be_truthy
#     end
#   end
#
#   describe 'Umeda to Mikuni' do
#     context 'fare is not enough' do
#       it 'is NG' do
#         ticket = Ticket.new(150)
#         umeda.enter(ticket)
#         expect(mikuni.exit(ticket)).to be_falsey
#       end
#     end
#     context 'fare is enough' do
#       it 'is OK' do
#         ticket = Ticket.new(190)
#         umeda.enter(ticket)
#         expect(mikuni.exit(ticket)).to be_truthy
#       end
#     end
#   end
#
#   describe 'Juso to Mikuni' do
#     it 'is OK' do
#       ticket = Ticket.new(150)
#       juso.enter(ticket)
#       expect(mikuni.exit(ticket)).to be_truthy
#     end
#   end
# end
