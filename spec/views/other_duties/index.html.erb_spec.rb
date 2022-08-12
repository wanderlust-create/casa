require "rails_helper"

RSpec.describe "other_duties/index", type: :view do
  
  context 'there are no other duties' do
    it 'displays an empty state message' do
      render template: "other_duties/index"
      
      expect(rendered).to include('There are no duties to display!')
    end
  end
  
  context 'there are other duties to display' do
    let(:other_duty) { create(:other_duty) }
    
    before do
      assign :other_duty, other_duty
    end
    
    it 'displays the other duties' do
      render template: "other_duties/index"
      
      expect(rendered).to include(CGI.escapeHTML(other_duty.notes))
    end
  end
end
