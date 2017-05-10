require "hacking_mass_scorekeeper/version"
require "httparty"
require "nokogiri"

module HackingMassScorekeeper
  class Standings
    RESULTS_URL = "http://www.baseballprospectus.com/hm/index.php?mode=browse_teams&sortby=score&start=0&limit=10000&dir=DESC".freeze

    def initialize(team_names)
      @team_names = team_names
    end

    def list
      results.sort_by { |result| result[:overall_rank] }
    end

    def pretty_list
      list.each_with_index do |result, index|
        puts "#{index + 1} (#{result[:overall_rank]} overall) - "\
          "#{result[:owner]} [#{result[:team]}], #{result[:espn]} ESPN"
      end
    end

    private

    attr_reader :team_names

    def results
      relevant_results.map do |result|
        {
          espn: result.children[3].text,
          overall_rank: result.children[0].text.to_i,
          owner: team_names.key(result.children[2].text),
          team: result.children[2].text,
        }
      end
    end

    def relevant_results
      standings_table.css("tr").to_a.select do |row|
        team_names.values.include?(row.children[2].text)
      end
    end

    def standings_table
			Nokogiri::HTML(bp_page).css("table")[5]
    end

    def bp_page
      HTTParty.get(RESULTS_URL).body
		end
  end
end
