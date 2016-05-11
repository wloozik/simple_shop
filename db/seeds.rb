Admin.create(email: 'admin@simle-shop.com', password: 'moonlight') unless Admin.find_by(email: 'admin@simle-shop.com').present?
