class Product {
  final String productName;
  final String brand;
  final String productType;
  final double price;
  final String description;
  final List<String> productSize;
  final int stock;
  final String productImage;

  Product({
    required this.productName,
    required this.brand,
    required this.productType,
    required this.price,
    required this.description,
    required this.productSize,
    required this.stock,
    required this.productImage,
  });
}

var products = [
  {
    "product_name": "Puma White Hat",
    "brand": "Puma",
    "product_type": "hat",
    "price": 12.99,
    "description": "A casual white hat from Puma",
    "product_size": ["m", "xl", "xxl"],
    "stock": 120,
    "product_image":
        "https://images-eu.ssl-images-amazon.com/images/I/61z099AUTVL._AC_UL600_SR600,600_.jpg"
  },
  {
    "product_name": "Puma White T-Shirt",
    "brand": "Puma",
    "product_type": "shirt",
    "price": 12.99,
    "description": "A short sleeves white t-shirt from Puma",
    "product_size": ["m", "xl", "xxl"],
    "stock": 120,
    "product_image":
        "https://images.puma.com/image/upload/f_auto,q_auto,b_rgb:fafafa,w_450,h_450/global/586674/52/fv/fnd/IDN/fmt/png"
  },
  // {
  //   "product_name": "Puma White Running Shorts",
  //   "brand": "Nevada",
  //   "product_type": "pants",
  //   "price": 7.99,
  //   "description": "Shorts that fit both men and women",
  //   "product_size": ["s", "xl", "xxl"],
  //   "stock": 85,
  //   "product_image":
  //       "https://cdn.istyle.im/images/product/web/67/54/35/01/0/000001355467_01_800.png",
  // },
  {
    "product_name": "Puma White Sneakers",
    "brand": "Puma",
    "product_type": "shoes",
    "price": 25.45,
    "description":
        "These sneakers are popular among teenagers for being simple, comfy, and fashionable.",
    "product_size": ["35", "37", "38", "39"],
    "stock": 90,
    "product_image":
        "https://images.puma.com/image/upload/f_auto,q_auto,b_rgb:fafafa,w_2000,h_2000/global/389390/01/sv01/fnd/EEA/fmt/png/Carina-Street-Sneakers-Women"
  },
  // {
  //   "product_name": "Puma Black Hat",
  //   "brand": "Puma",
  //   "product_type": "hat",
  //   "price": 12.99,
  //   "description": "A casual black hat from Puma",
  //   "product_size": ["m", "xl", "xxl"],
  //   "stock": 120,
  //   "product_image":
  //       "https://www.planetsports.asia/media/catalog/product/cache/932b880b51303ef8bdfacfab1d810ff5/0/1/01-PUMA-E04HPPMA0-Puma-Unisex-Running-Cap-III---Black-Black.jpg"
  // },
  {
    "product_name": "Puma Black T-Shirt",
    "brand": "Puma",
    "product_type": "shirt",
    "price": 12.99,
    "description": "A short sleeves white t-shirt from Puma",
    "product_size": ["m", "xl", "xxl"],
    "stock": 120,
    "product_image":
        "https://images.puma.com/image/upload/f_auto,q_auto,b_rgb:fafafa,w_450,h_450/global/586725/01/fv/fnd/IDN/fmt/png"
  },
  {
    "product_name": "Puma Black Running Shorts",
    "brand": "Nevada",
    "product_type": "pants",
    "price": 7.99,
    "description": "Shorts that fit both men and women",
    "product_size": ["s", "xl", "xxl"],
    "stock": 85,
    "product_image":
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTwjEkGFGoiD0Gk5d7vo17nPXmAOLPYjXdTUq_2W-s&s"
  },
  {
    "product_name": "Puma Black Sneakers",
    "brand": "Puma",
    "product_type": "shoes",
    "price": 25.45,
    "description":
        "These sneakers are popular among teenagers for being simple, comfy, and fashionable.",
    "product_size": ["35", "37", "38", "39"],
    "stock": 90,
    "product_image":
        "https://images.puma.com/image/upload/f_auto,q_auto,b_rgb:fafafa,w_450,h_450/global/392434/02/sv01/fnd/IDN/fmt/png"
  },
  {
    "product_name": "Nevada Black Hat",
    "brand": "Nevada",
    "product_type": "hat",
    "price": 12.99,
    "description": "A casual black hat from nevada",
    "product_size": ["m", "xl", "xxl"],
    "stock": 115,
    "product_image":
        "https://getyourhooey.com/cdn/shop/products/7162T-BK_2_grande.jpg?v=1650582634"
  },
  // {
  //   "product_name": "Nevada Black T-Shirt",
  //   "brand": "Nevada",
  //   "product_type": "shirt",
  //   "price": 12.99,
  //   "description": "A short sleeves black t-shirt from nevada",
  //   "product_size": ["m", "xl", "xxl"],
  //   "stock": 120,
  //   "product_image":
  //       "https://dynamic.bonfireassets.com/thumb/design-image/dfd70c00-e4e2-4225-a6ae-f834f421b199/7329f207-b69c-4f7e-8322-9f628fd81358/900/"
  // },
  {
    "product_name": "Nevada Black Running Shorts",
    "brand": "Nevada",
    "product_type": "pants",
    "price": 7.99,
    "description": "Shorts that fit for women",
    "product_size": ["s", "xl", "xxl"],
    "stock": 85,
    "product_image":
        "https://media.karousell.com/media/photos/products/2023/9/4/nevada_denim_black_shorts__cel_1693824601_c2f44f52.jpg"
  },
  // {
  //   "product_name": "Nevada Black Sneakers",
  //   "brand": "Nevada",
  //   "product_type": "shoes",
  //   "price": 25.45,
  //   "description":
  //       "These sneakers are popular among teenage girl for being simple, comfy, and fashionable.",
  //   "product_size": ["35", "37", "38", "39"],
  //   "stock": 90,
  //   "product_image":
  //       "https://www.static-src.com/wcsstore/Indraprastha/images/catalog/full//catalog-image/99/MTA-133817066/brd-94288_-sale-vera-nevada-sepatu-sneakers-wanita-sport-shoes-a811_full06-7f89284e.jpg"
  // },
  // {
  //   "product_name": "Nevada White Hat",
  //   "brand": "Nevada",
  //   "product_type": "hat",
  //   "price": 12.99,
  //   "description": "A casual white hat from nevada",
  //   "product_size": ["m", "xl", "xxl"],
  //   "stock": 115,
  //   "product_image":
  //       "https://juliesaffrin.com/wp-content/uploads/2022/11/classic-dad-hat-white-left-front-638798b78b5eb.jpg"
  // },
  // {
  //   "product_name": "Nevada White T-Shirt",
  //   "brand": "Nevada",
  //   "product_type": "shirt",
  //   "price": 12.99,
  //   "description": "A short sleeves white t-shirt from nevada",
  //   "product_size": ["m", "xl", "xxl"],
  //   "stock": 120,
  //   "product_image":
  //       "https://www.screamous.com/cdn/shop/products/id-11134201-23030-z32wli3ir9nv91_0e235aa4-e450-4c78-89f1-80c03fdb4ed0.jpg?v=1677933145"
  // },
  // {
  //   "product_name": "Nevada White Shorts",
  //   "brand": "Nevada",
  //   "product_type": "pants",
  //   "price": 7.99,
  //   "description": "Shorts that comfy to use for daily",
  //   "product_size": ["s", "xl", "xxl"],
  //   "stock": 85,
  //   "product_image":
  //       "https://dressmann.imgix.net/globalassets/xx-archive/productimages/7351283_900_f_q_shorts_nevada-color__dressmannxl__.jpg"
  // },
  // {
  //   "product_name": "Nevada White Sneakers",
  //   "brand": "Nevada",
  //   "product_type": "shoes",
  //   "price": 25.45,
  //   "description":
  //       "These sneakers are popular among teenage girl for being simple, comfy, and fashionable.",
  //   "product_size": ["35", "37", "38", "39"],
  //   "stock": 90,
  //   "product_image":
  //       "https://media.karousell.com/media/photos/products/2018/01/25/white_sneakers_nevada_1516809780_abab7adf.jpg"
  // },
  {
    "product_name": "Skechers White Hat",
    "brand": "Skechers",
    "product_type": "hat",
    "price": 12.99,
    "description": "A casual white hat",
    "product_size": ["m", "xl", "xxl"],
    "stock": 115,
    "product_image":
        "https://images.tokopedia.net/img/cache/700/VqbcmM/2023/7/12/5c68e446-0ec2-45e1-85ef-48e87e3fdf86.jpg"
  },
  // {
  //   "product_name": "Skechers White T-Shirt",
  //   "brand": "Skechers",
  //   "product_type": "shirt",
  //   "price": 12.99,
  //   "description": "A short sleeves white t-shirt",
  //   "product_size": ["m", "xl", "xxl"],
  //   "stock": 120,
  //   "product_image":
  //       "https://www.skechers.id/media/catalog/product/cache/c1feb3550df60acd013ba17bf29e4991/0/8/0888-SKEH23M2118W00W0XL-1.jpg"
  // },
  {
    "product_name": "Skechers Grey Shorts",
    "brand": "Skechers",
    "product_type": "pants",
    "price": 7.99,
    "description": "Shorts that comfy to use for daily",
    "product_size": ["s", "xl", "xxl"],
    "stock": 85,
    "product_image":
        "https://www.skechers.com.sg/cdn/shop/products/SP22Q4M413_01F3_1000x.jpg?v=1696998343"
  },
  {
    "product_name": "Skechers White Sneakers",
    "brand": "Skechers",
    "product_type": "shoes",
    "price": 25.45,
    "description":
        "These sneakers are popular among teenage girl for being simple, comfy, and fashionable.",
    "product_size": ["35", "37", "38", "39"],
    "stock": 90,
    "product_image":
        "https://www.skechers.id/media/catalog/product/cache/c1feb3550df60acd013ba17bf29e4991/0/8/0888-SKE246070CNF00W11H-1.jpg"
  },
  {
    "product_name": "Skechers Black Hat",
    "brand": "Skechers",
    "product_type": "hat",
    "price": 12.99,
    "description": "A casual white hat from nevada",
    "product_size": ["m", "xl", "xxl"],
    "stock": 115,
    "product_image":
        "https://images.tokopedia.net/img/cache/700/VqbcmM/2023/4/26/f1533920-41d2-4c05-ae1d-d525b64257e0.jpg"
  },
  {
    "product_name": "Skechers Black T-Shirt",
    "brand": "Skechers",
    "product_type": "shirt",
    "price": 12.99,
    "description": "A short sleeves white t-shirt from nevada",
    "product_size": ["m", "xl", "xxl"],
    "stock": 120,
    "product_image":
        "https://www.skechers.id/media/catalog/product/cache/c1feb3550df60acd013ba17bf29e4991/0/8/0888-SKEHSM2127BK0050XL-1.jpg"
  },
  {
    "product_name": "Skechers Black Shorts",
    "brand": "Skechers",
    "product_type": "pants",
    "price": 7.99,
    "description": "Shorts that comfy to use for daily",
    "product_size": ["s", "xl", "xxl"],
    "stock": 85,
    "product_image":
        "https://www.skechers.id/media/catalog/product/cache/c1feb3550df60acd013ba17bf29e4991/0/8/0888-SKEHSM2128BK0050XL-1.jpg"
  },
  {
    "product_name": "Skechers Black Sneakers",
    "brand": "Skechers",
    "product_type": "shoes",
    "price": 25.45,
    "description":
        "These sneakers are popular among teenage girl for being simple, comfy, and fashionable.",
    "product_size": ["35", "37", "38", "39"],
    "stock": 90,
    "product_image":
        "https://www.skechers.id/media/catalog/product/cache/c1feb3550df60acd013ba17bf29e4991/0/2/02-SKECHERS-FFSSBSKEA-SKE177288BBK-Black.jpg"
  },
  {
    "product_name": "Nike Black Hat",
    "brand": "Nike",
    "product_type": "hat",
    "price": 12.99,
    "description": "A casual Black hat from Nike",
    "product_size": ["m", "xl", "xxl"],
    "stock": 115,
    "product_image":
        "https://www.sportsdirect.com/images/imgzoom/39/39104703_xxl.jpg"
  },
  {
    "product_name": "Nike Black T-Shirt",
    "brand": "Nike",
    "product_type": "shirt",
    "price": 12.99,
    "description": "A short sleeves Black t-shirt from Nike",
    "product_size": ["m", "xl", "xxl"],
    "stock": 120,
    "product_image":
        "https://therainydays.co.uk/wp-content/uploads/2021/09/Nike-Running-Black-T-Shirt.jpg"
  },
  {
    "product_name": "Nike Black Shorts",
    "brand": "Nike",
    "product_type": "pants",
    "price": 7.99,
    "description": "Shorts that comfy to use for daily",
    "product_size": ["s", "xl", "xxl"],
    "stock": 85,
    "product_image":
        "https://www.footlocker.id/media/catalog/product/0/1/01-NIKE-AYAHONIK5-NIKBV2773010-Black.jpg"
  },
  {
    "product_name": "Nike Black Sneakers",
    "brand": "Nike",
    "product_type": "shoes",
    "price": 25.45,
    "description":
        "These sneakers are popular among teenage girl for being simple, comfy, and fashionable.",
    "product_size": ["35", "37", "38", "39"],
    "stock": 90,
    "product_image":
        "https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/922139e1-3221-4e96-a9f9-3fbb67926e17/nikecourt-legacy-shoes-PKg8wX.png"
  },
  {
    "product_name": "Nike White Hat",
    "brand": "Nike",
    "product_type": "hat",
    "price": 12.99,
    "description": "A casual white hat from Nike",
    "product_size": ["m", "xl", "xxl"],
    "stock": 115,
    "product_image":
        "https://www.urbanathletics.com.ph/cdn/shop/files/FB5368-100-A.jpg?v=1690441791"
  },
  {
    "product_name": "Nike White T-Shirt",
    "brand": "Nike",
    "product_type": "shirt",
    "price": 12.99,
    "description": "A short sleeves white t-shirt from Nike",
    "product_size": ["m", "xl", "xxl"],
    "stock": 120,
    "product_image":
        "https://i.ebayimg.com/images/g/SkMAAOSwQgVj89eX/s-l1600.jpg"
  },
  {
    "product_name": "Nike White Shorts",
    "brand": "Nike",
    "product_type": "pants",
    "price": 7.99,
    "description": "Shorts that comfy to use for daily",
    "product_size": ["s", "xl", "xxl"],
    "stock": 85,
    "product_image":
        "https://www.nikys-sports.com/cdn/shop/products/BV6857-100-NIKE-001.jpg?v=1613086567"
  },
  {
    "product_name": "Nike White Sneakers",
    "brand": "Nike",
    "product_type": "shoes",
    "price": 25.45,
    "description":
        "These sneakers are popular among teenage girl for being simple, comfy, and fashionable.",
    "product_size": ["35", "37", "38", "39"],
    "stock": 90,
    "product_image":
        "https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/ab3ec819-7808-4cd8-ba1c-b1e9386c8540/air-jordan-1-low-mens-shoes-0LXhbn.png"
  },
  {
    "product_name": "Adidas Black Hat",
    "brand": "Adidas",
    "product_type": "hat",
    "price": 12.99,
    "description": "A casual Black hat from Adidas",
    "product_size": ["m", "xl", "xxl"],
    "stock": 115,
    "product_image":
        "https://www.adidas.co.id/media/catalog/product/E/C/EC3603_FC_eCom.jpg"
  },
  {
    "product_name": "Adidas Black T-Shirt",
    "brand": "Adidas",
    "product_type": "shirt",
    "price": 12.99,
    "description": "A short sleeves Black t-shirt from Adidas",
    "product_size": ["m", "xl", "xxl"],
    "stock": 120,
    "product_image":
        "https://www.adidas.co.id/media/catalog/product/h/c/hc9582_fc_ecom.jpg"
  },
  {
    "product_name": "Adidas Black Shorts",
    "brand": "Adidas",
    "product_type": "pants",
    "price": 7.99,
    "description": "Shorts that comfy to use for training",
    "product_size": ["s", "xl", "xxl"],
    "stock": 85,
    "product_image":
        "https://www.adidas.co.id/media/catalog/product/h/d/hd0956_2_apparel_photography_front20center20view_grey.jpg"
  },
  {
    "product_name": "Adidas Black Sneakers",
    "brand": "Adidas",
    "product_type": "shoes",
    "price": 25.45,
    "description":
        "These sneakers are popular among teenage boy for being simple, comfy, and fashionable.",
    "product_size": ["35", "37", "38", "39"],
    "stock": 90,
    "product_image":
        "https://media.kohlsimg.com/is/image/kohls/5533230_Black_White_Black?wid=240&hei=240&op_sharpen=1"
  },
  {
    "product_name": "Adidas White Hat",
    "brand": "Adidas",
    "product_type": "hat",
    "price": 12.99,
    "description": "A casual white hat from Adidas",
    "product_size": ["m", "xl", "xxl"],
    "stock": 115,
    "product_image":
        "https://www.footlocker.id/media/catalog/product/cache/e81e4f913a1cad058ef66fea8e95c839/0/1/01-ADIDAS-E04HPADI5-ADIFQ4641-WHITE.jpg"
  },
  {
    "product_name": "Adidas White T-Shirt",
    "brand": "Adidas",
    "product_type": "shirt",
    "price": 12.99,
    "description": "A short sleeves white t-shirt from Adidas",
    "product_size": ["m", "xl", "xxl"],
    "stock": 120,
    "product_image":
        "https://www.adidas.co.id/media/catalog/product/i/b/ib7410_2_apparel_photography_front20center20view_grey.jpg"
  },
  {
    "product_name": "Adidas White Shorts",
    "brand": "Adidas",
    "product_type": "pants",
    "price": 7.99,
    "description": "Shorts that comfy to use for marathon",
    "product_size": ["s", "xl", "xxl"],
    "stock": 85,
    "product_image":
        "https://www.adidas.co.id/media/catalog/product/h/3/h31069_2_apparel_photography_front20center20view_grey.jpg"
  },
  {
    "product_name": "Adidas White Sneakers",
    "brand": "Adidas",
    "product_type": "shoes",
    "price": 25.45,
    "description":
        "These sneakers are popular among teenage girl for being simple, comfy, and fashionable.",
    "product_size": ["35", "37", "38", "39"],
    "stock": 90,
    "product_image":
        "https://s4.bukalapak.com/img/43384213003/s-463-463/data.jpeg.webp"
  },
];

void main() {
  products;
}
