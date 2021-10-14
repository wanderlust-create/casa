# frozen_string_literal: true

class CasaOrgsFeatureTogglesController < ApplicationController
  def index
    @feature_toggles = current_user.casa_org.casa_orgs_feature_toggles
  end

  def update
    if CasaOrgsFeatureToggle.find(params[:id]).update(feature_toggle_params)
      flash[:success] = "Feature toggle successfully updated"
    else
      flash[:error] = "Something went wrong"
    end
  end

  private

  def feature_toggle_params
    params.require(:casa_orgs_feature_toggle).permit(:enabled)
  end
end
