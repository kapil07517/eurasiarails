class HomeController < ApplicationController
  
  def index
    my_app = FbGraph::Application.new(FB_APP_ID);
    acc_tok = my_app.get_access_token(FB_SEC_ID);
    me = FbGraph::User.me(current_user.token)
    me.fetch
    me.accounts
    account = me.accounts.select {|account| account if account.name == "kapil07517"}.first
    page = FbGraph::Page.new(current_user.uid)
    puts page.link
  end
end
