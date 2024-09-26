class ServiceWorkerController < ApplicationController
    protect_from_forgery except: :service_worker
   
    def service_worker
    end

    def offline
        @offline = true
        render layout: false
    end
   
  end