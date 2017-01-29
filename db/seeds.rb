# Product.create!([
#   {name: "Cheddar", price: "3.0", color: "orange", description: "Pretty average!", image: "https://www.splendidtable.org/sites/default/files/styles/lede_image/public/470340853.jpg?itok=7acsHkTk", in_stock: true, supplier_id: 1},
#   {name: "Parmegiano Reggiano", price: "15.0", color: "pale-ish yellow", description: "VERY fancy cheese", image: "https://3ner1e34iilsjdn1qohanunu-wpengine.netdna-ssl.com/wp-content/uploads/cheeseImages/ParmigianoReggiano.jpg", in_stock: true, supplier_id: 1},
#   {name: "Romano", price: "6.0", color: "white", description: "Not the sitcom character", image: "https://www.gianteagle.com/ProductImages/PRODUCT_NODE_116/99212.jpg", in_stock: true, supplier_id: 1},
#   {name: "Comte", price: "6.0", color: "Kind of yellow", description: "Unpasteurized!", image: "https://3wheeledcheese.files.wordpress.com/2013/01/21774-comte-cheese-shot-b.jpg", in_stock: true, supplier_id: 1},
#   {name: "American cheese", price: "1.0", color: "unnatural orange", description: "Cheese made by science!", image: "http://bmedia.fooducate.com/wp-content/uploads/2012/04/processed-cheese-slices.jpg", in_stock: true, supplier_id: 1},
#   {name: "Parmesan", price: "5.0", color: "pale-ish white", description: "Fancy cheese", image: "http://media1.s-nbcnews.com/j/newscms/2016_07/977756/grated-parmesan-today-tease-160217_f9ef7604016457433d18c10f422ffcde.today-inline-large.jpg", in_stock: true, supplier_id: 2},
#   {name: "Whiz", price: "3.0", color: "neon orange", description: "It comes in a can.  Pretty neat!", image: "https://notrealfood.files.wordpress.com/2010/12/easycheese.jpg", in_stock: true, supplier_id: 2},
#   {name: "Mozzarella", price: "3.0", color: "white", description: "Low moisture, whole milk, stretchy", image: "http://www.seriouseats.com/images/2014/08/20140819-cheese101-imported-mozzarella-3.jpg", in_stock: true, supplier_id: 2},
#   {name: "Brie", price: "8.0", color: "white, with weird rind", description: "Also a woman's name", image: "http://foods.weneedfun.com/wp-content/uploads/2016/02/Brie-Cheese-2.jpg", in_stock: true, supplier_id: 2},
#   {name: "White Cheddar", price: "5.0", color: "See: Name", description: "Like cheddar, but different", image: "http://www.pop-a-harrys.com/images/White%20Cheddar%20Cheese.jpg", in_stock: true, supplier_id: 3},
#   {name: "Monterey Jack", price: "2.0", color: "White", description: "Very boring", image: "http://www.cheesemaking.com/images/recipes/60DryJack/Pics/pic49.jpg", in_stock: true, supplier_id: 3}
# ])
# Supplier.create!([
#   {name: "Wisconsin Dairy", email: "cheesedudes@wiscydairy.com", phone: "414-253-4291"},
#   {name: "California Cheeses", email: "hello@calicheese.com", phone: "707-959-1800"},
#   {name: "Ames Farms", email: "iowastatecheese@iastate.edu", phone: "515-222-8132"}
# ])


image = Image.new(url: "http://bmedia.fooducate.com/wp-content/uploads/2012/04/processed-cheese-slices.jpg", product_id: 2)
image.save

image = Image.new(url: "http://media1.s-nbcnews.com/j/newscms/2016_07/977756/grated-parmesan-today-tease-160217_f9ef7604016457433d18c10f422ffcde.today-inline-large.jpg", product_id: 3)
image.save

image = Image.new(url: "https://3ner1e34iilsjdn1qohanunu-wpengine.netdna-ssl.com/wp-content/uploads/cheeseImages/ParmigianoReggiano.jpg", product_id: 4)
image.save

image = Image.new(url: "https://www.gianteagle.com/ProductImages/PRODUCT_NODE_116/99212.jpg", product_id: 5)
image.save

image = Image.new(url: "https://notrealfood.files.wordpress.com/2010/12/easycheese.jpg", product_id: 6)
image.save

image = Image.new(url: "http://foods.weneedfun.com/wp-content/uploads/2016/02/Brie-Cheese-2.jpg", product_id: 7)
image.save

image = Image.new(url: "http://www.pop-a-harrys.com/images/White%20Cheddar%20Cheese.jpg", product_id: 8)
image.save

image = Image.new(url: "http://www.cheesemaking.com/images/recipes/60DryJack/Pics/pic49.jpg", product_id: 10)
image.save

image = Image.new(url: "http://www.seriouseats.com/images/2014/08/20140819-cheese101-imported-mozzarella-3.jpg", product_id: 11)
image.save

image = Image.new(url: "https://3wheeledcheese.files.wordpress.com/2013/01/21774-comte-cheese-shot-b.jpg", product_id: 12)
image.save