namespace :flood do
  task run: :environment do
    system %{
      flood-capybara spec
      --tag flood
      --api_token=#{ENV['FLOOD_API_TOKEN']}
      --rampup=#{ENV['RAMPUP'] || 60}
      --duration=#{ENV['DURATION'] || 300}
      --url=#{ENV['URL'] || 'https://flood-newrelic-ruby-kata.herokuapp.com/'}
    }.squish
  end
end
