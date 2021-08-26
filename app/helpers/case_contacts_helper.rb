# Helper methods for new case contact form
module CaseContactsHelper
  def duration_hours(case_contact)
    case_contact.duration_minutes.to_i.div(60)
  end

  def duration_minutes(case_contact)
    case_contact.duration_minutes.to_i.remainder(60)
  end

  def set_contact_made_false(case_contact)
    case_contact.persisted? && case_contact.contact_made == false
  end

  def contact_mediums
    CaseContact::CONTACT_MEDIUMS.map { |contact_medium|
      OpenStruct.new(value: contact_medium, label: contact_medium.titleize)
    }
  end

  def render_back_link(casa_case)
    return send_home if !current_user || current_user&.volunteer?

    send_to_case(casa_case)
  end

  def created_by_link(contact)
    if Pundit.policy(current_user, contact).edit?
      if current_user.volunteer?
          contact.creator&.display_name
      else
        if contact.creator&.supervisor?
          link_to contact.creator&.display_name, edit_supervisor_path(contact.creator)
        elsif contact.creator&.casa_admin?
          link_to contact.creator&.display_name, edit_users_path
        else
          link_to contact.creator&.display_name, edit_volunteer_path(contact.creator) 
        end   
      end
    else
     contact.creator&.display_name
    end
  end

  private

  def send_home
    root_path
  end

  def send_to_case(casa_case)
    casa_case_path(casa_case)
  end
end
