module ProductsHelper
    def shipping_partners
        partners = [
            {
                img: 'xpress_bees',
                desc: 'Xpressbees, one of the fastest growing express logistics service providers in India, specialise in providing same/next day delivery, cash on delivery, reverse pickup, and reverse shipping.'
            },
            {
                img: 'blue_dart_logo',
                desc: 'Blue Dart shipping, South Asia’s premier express air and integrated transportation & distribution company, provides secure and reliable delivery of consignments to 35000+ locations in India.',
            },
            {
                img: 'DHL_Logo',
                desc: 'Founded in 1969, DHL is one of the leading logistics service providers across the world. DHL eCommerce provides international standard parcel delivery with reliable transit times and customs clearances.'
            },
            {
                img: 'amazon_shipping',
                desc: "Launched in 2022, Amazon shipping aims to offer extensive reach and highly reliable services at the minimum total logistics cost without any extra fees for weekends."
            }
        ]
    end
end
