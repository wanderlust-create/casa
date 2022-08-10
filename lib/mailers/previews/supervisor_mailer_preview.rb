# Preview all emails at http://localhost:3000/rails/mailers/supervisor_mailer
# :nocov:
class SupervisorMailerPreview < ActionMailer::Preview
  def account_setup
    supervisor = params.has_key?(:id) ? Supervisor.find_by(id: params[:id]) : Supervisor.last
    SupervisorMailer.account_setup(supervisor)
  end

  def weekly_digest
    casa_org = CasaOrg.last
    supervisor = Supervisor.last
    # supervisor = Supervisor.new(email: "supervisor-temp@example.com", display_name: "Supervisor Name", casa_org: casa_org)
    # # supervisor = params.has_key?(:id) ? Supervisor.find_by(id: params[:id]) : Supervisor.last
    # volunteer = Volunteer.new(id: 1234, email: "volunteer-temp@example.com", display_name: "Volunteer Name", supervisor: supervisor)
    # casa_case = CasaCase.new(casa_org: casa_org, id: 4321)

    # case_assignment = CaseAssignment.new(id: 1111, active: false, casa_case_id: casa_case.id, volunteer_id: volunteer.id, updated_at: DateTime.now-10.days, created_at: DateTime.now-11.days)
    # binding.pry
    SupervisorMailer.weekly_digest(supervisor)
  end
end
# :nocov:
