# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
### products request

Product.create(brand: 'CosRx', name: 'Good Morning Cleanser', product_type: 'cleanser', description: "Keep your skin fresh and clean with COSRX Low pH Good Morning Gel Cleanser! Formulated with botanical skin-purifying ingredients, this gentle and hydrating formula rinses away impurities without disrupting the skin's natural moisture balance. Best for all skin types, especially oily skin and sensitive skin.")

Product.create(brand: 'CosRx', name: 'Triple Hyaluronic Moisturizing Cleanser', product_type: 'cleanser', description: "CosRx's Triple Hyaluronic Moisturizing Cleanser provides the satisfying lather of a foam cleanser with the moisturizing benefits of a cream cleanser. Three types of replenishing hyaluronic acid deliver layers of moisture while the cleanser thoroughly dissolves oil, dirt, and pore impurities. Vitamin B5 conditions and softens the skin for a super smooth, hydrated result.")

Product.create(brand: 'CosRx', name: 'AHA/BHA Clarifying Toner', product_type: 'toner', description: "COSRX AHA/BHA Clarifying Treatment Toner is an exfoliating daily toner that effectively eliminates flakes and dead skin cells while keeping pores clear. Infused with natural clarifying acids, this treatment toner controls excess oil and sebum while hydrating depleted skin. Best for all skin types, especially dull, and dry skin prone to pore congestion.")

Product.create(brand: 'CosRx', name: 'Full Fit Propolis Overnight Mask', product_type: 'mask', description: "This gel type overnight mask feels refreshing on the skin, and it is good for cooling down sunburn or heated skin.
This moisturizer is so lightweight that it is abosrbed into the skin very quickly, leaving the skin hydrated and baby soft.")

Product.create(brand: 'Neutrogena', name: 'Glycerin Soap Bar', product_type: 'cleanser', description: "Neutrogena's glycerin-rich facial cleansing acne soap contains no dyes or hardeners. Designed for daily cleansing for acne-prone skin, this bar rinses clean-without leaving behind clogged pores It also features a non-medicated formula won't over-dry your skin.")

Product.create(brand: 'Neutrogena', name: 'Pore Refining Exfoliating Cleanser', product_type: 'cleanser', description: "All you have to do to visibly reduce the look of large pores is wash your face. In fact, our dermatologist-tested cleanser with an alpha and beta formula is so effective that it refines the look of skin to be more even toned. There are two ways it delivers results. First, gentle exfoliators sweep away dead surface skin and smooth over rough, uneven patches. Then, the cleanser with an alpha-hydroxy formula penetrates into pores to remove dirt, oil and makeup that can clog and enlarge pores.You’ll discover that your skin looks smoother and more even toned." )

Product.create(brand: 'Neutrogena', name: 'Rapid Clear Stubborn Acne', product_type: 'cleanser', description: "Maximum strength benzoyl peroxide is what powers this acne-fighting cleanser.
It’s clinically proven to rapidly reduce the size and redness of stubborn acne. How rapidly, you might ask? You’ll start seeing results in just 1 day.")

Product.create(brand: 'Neutrogena', name: 'Clear Pore Astringent', product_type: 'toner', description: "Our daily, oil-control astringent for acne-prone skin helps treat acne and prevent future breakouts and blackheads. It’s also gentle enough to use morning, noon and night, because it won't over-dry or irritate your skin.
This maximum strength formula contains Witch Hazel, a natural ingredient known for its skin-soothing properties, as well as Salicylic Acid, an acne-fighting ingredient recommended by dermatologists. It penetrates deep into pores to help remove the dirt, oil and makeup that can cause breakouts. It also instantly eliminates and controls excess surface oil, so you’re always ready to face the day.")

Product.create(brand: 'The Ordinary', name: 'AHA 30% + BHA 2% Peeling Solution', product_type: 'exfoliator', description: 'AHA 30% + BHA 2% Peeling Solution from The Ordinary offers deeper exfoliation to help fight signs of pore congestion and improve skin radiance. The formula also improves the appearance of skin texture and reduces the look of fine lines.')

Product.create(brand: 'The Ordinary', name: 'Niacinamide 10% + Zinc 1%', product_type: 'serum', description: 'Niacinamide 10% + Zinc 1% from The Ordinary is rich in Niacinamide and zinc PCA reduce signs of congestion while balancing visible sebum activity. Niacinamide has also been shown to offer brightening benefits.')

Product.create(brand: 'The Ordinary', name: 'Glycolic Acid 7% Toning Solution', product_type: 'toner', description: 'Glycolic Acid 7% Toning Solution from The Ordinary is a toning solution which offers mild exfoliation for improved skin radiance and visible clarity. The formula also improves the appearance of skin texture with continued use.')

Product.create(brand: 'Dermalogica', name: 'Clearing Skin Wash', product_type: 'cleanser', description: 'Dermalogicas Clearing Skin Wash is a non-irritating, naturally-foaming cleanser that helps clear skin and reduce visible skin aging. Salicylic Acid, a Beta Hydroxy Acid, stimulates natural exfoliation to help clear clogged follicles and smooth away dullness. Menthol and Camphor help cool inflammation. Contains natural extracts of Balm Mint, Eucalyptus and Tea Tree.' )

Product.create(brand: 'La Roche-Posay', name: 'Effaclar Medicated Gel Cleanser for Acne Prone Skin', product_type: 'cleanser', description: 'La Roche-Posay Effaclar Medicated Gel Cleanser for Acne Prone Skin has been developed with dermatologists. Face wash with [2.0%] Salicylic Acid Acne Medication, helps targets excess oil, pimples, blackheads and whiteheads for clear skin. Clinically tested to reduce excess surface oil by up to 47%, leaving skin less oily throughout the day. Salicylic Acid Acne Medication fights acne breakouts. Exclusive micro-exfoliating Lipo Hydroxy Acid helps target oily areas on the skin surface to provide precise cell-by-cell removal of debris and dirt.')

Product.create(brand: 'Acure', name: 'Ultra Hydrating 12 HR Facial Moisturizer', product_type: 'moisturizer', description: 'This ultra hydrating 12 hour facial moisturizer provides intense moisture for super thirsty skin types. Adaptogenic ashwagandha, holy basil, reishi, cordyceps, and turmeric soothe and protect while free radical scavenging spinach, kale and spirulina de-stress.' ) 

Product.create(brand: 'Clinique', name: 'Moisure Surge 72-Hour Auto-Replenishing Hydrator', product_type: 'moisturizer', description: 'The Moisture Surge 72-Hour Auto-Replenishing Hydrator is an addictively refreshing gel-cream enhanced to give your skin the power to rehydrate itself. Delivers an instant moisture boost, and keeps skin almost twice as hydrated at the end of the day than it did before. With hyaluronic acid and activated aloe water to help plump skin with moisture. Enjoy 72 hours of non-stop hydration, even after washing your face.')
