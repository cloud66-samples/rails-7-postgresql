# benign no-op migration: makes no schema changes, only emits a log marker
class LogMigrateHereAgain < ActiveRecord::Migration[7.1]
  def change
    # print a visible marker in the migration output (db:migrate)
    say "migrate-here-again"

    # also write the marker to the Rails log for good measure
    Rails.logger.info "migrate-here-again"
  end
end
