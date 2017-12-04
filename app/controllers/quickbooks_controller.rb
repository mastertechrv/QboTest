class QuickbooksController < ApplicationController

	def authenticate
	  redirect_uri = oauth_callback_quickbooks_url
	  grant_url = ::QB_OAUTH2_CONSUMER.auth_code.authorize_url(:redirect_uri => redirect_uri, :response_type => "code", :state => SecureRandom.hex(12), :scope => "com.intuit.quickbooks.accounting")
	  redirect_to grant_url
	end

	def oauth_callback
	  if params[:state]
	    redirect_uri = oauth_callback_quickbooks_url
	    if resp = ::QB_OAUTH2_CONSUMER.auth_code.get_token(params[:code], :redirect_uri => redirect_uri)

	      # save your tokens here. For example:
	      # quickbooks_credentials.update_attributes(access_token: resp.token, refresh_token: resp.refresh_token, realm_id: params[:realmId])
	    end
	  end
	end

end