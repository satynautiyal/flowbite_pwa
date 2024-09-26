class HomeController < ApplicationController
    def index
        @salesData = [
            {
                heading: "Daily Sales",
                revenue: 308.55,
                percent: 50,
            },
            {
                heading: "Monthly Sales",
                revenue: 184.47,
                percent: -36,
            },
            {
                heading: "Yearly Sales",
                revenue: 904.58,
                percent: 80,
            },
        ]
        @products = Product.all
    end

    def offline
        render 'index'
    end
end