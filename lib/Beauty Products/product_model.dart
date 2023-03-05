class ProductModel {
  String productName;
  String productDetail;
  String productPrice;
  String productImage;

  ProductModel(this.productName, this.productDetail, this.productPrice,
      this.productImage);

  static List<ProductModel> productsSender() {
    List<ProductModel> productsDetail = [];

    productsDetail.add(ProductModel("Beauty Cream", "Groom", "12.55",
        './images/beautyproductimages/skin1.png'));
    productsDetail.add(ProductModel("Beauty Cream", "Groom", "12.55",
        './images/beautyproductimages/skin2.png'));
    productsDetail.add(ProductModel("Beauty Cream", "Groom", "12.55",
        './images/beautyproductimages/skin3.png'));
    productsDetail.add(ProductModel("Beauty Cream", "Groom", "12.55",
        './images/beautyproductimages/skin4.png'));
    productsDetail.add(ProductModel("Beauty Cream", "Groom", "12.55",
        './images/beautyproductimages/skin5.png'));
    productsDetail.add(ProductModel("Beauty Cream", "Groom", "12.55",
        './images/beautyproductimages/skin6.png'));
    productsDetail.add(ProductModel("Beauty Cream", "Groom", "12.55",
        './images/beautyproductimages/skin7.png'));
    productsDetail.add(ProductModel("Beauty Cream", "Groom", "12.55",
        './images/beautyproductimages/skin8.png'));
    productsDetail.add(ProductModel("Beauty Cream", "Groom", "12.55",
        './images/beautyproductimages/skin9.png'));
    productsDetail.add(ProductModel("Beauty Cream", "Groom", "12.55",
        './images/beautyproductimages/skin10.png'));

    return productsDetail;
  }
}
