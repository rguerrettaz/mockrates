Rails.application.config.middleware.use OmniAuth::Builder do 
  provider :github, "036b84b3d20917be47f6", "aef7f50fb7df4a31ab394d07f16c7cdb079cd8f7", scope: "user, repo, gist"
end
