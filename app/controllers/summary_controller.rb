class SummaryController < ApplicationController

  def summary(id)
    render job_summary_index_path(id)
  end

end
