# benign no-op migration: makes no schema changes, only emits a log marker
# this is a test of the preview migrations @cloud66-migrate
class PreviewMigrationTest < ActiveRecord::Migration[7.1]
  def change
    # print a visible marker in the migration output (db:migrate)
    say "preview-migration-test"

    # also write the marker to the Rails log for good measure
    Rails.logger.info "preview-migration-test"
  end
end
