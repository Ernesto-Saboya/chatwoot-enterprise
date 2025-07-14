namespace :chatwoot do
  desc 'Ativa recursos enterprise na conta 1'
  task enable_enterprise_features: :environment do
    account = Account.find(1)
    features = [:audit_logs, :captain, :custom_roles, :sla, :disable_branding]
    account.enable_features(features)
    account.save!
    puts "✅ Recursos enterprise ativados para a conta #{account.name} (ID ##{account.id})"
  end
end
