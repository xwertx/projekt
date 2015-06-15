# app/workers/posts_worker.rb

class PdfWorker
  include Sneakers::Worker
  # This worker will connect to "dashboard.posts" queue
  # env is set to nil since by default the actuall queue name would be
  # "dashboard.posts_development"
  from_queue "pdf_gen.media", env: nil
  #Sneakers::Worker.configure_logger(Logger.new('/dev/null'))

  # work method receives message payload in raw format
  # in our case it is JSON encoded string
  # which we can pass to RecentPosts service without
  # changes
  def work(msg)
    logger.info "#{msg}"
    PdfGen.generate(msg)
    ack! # we need to let queue know that message was received
  end
end