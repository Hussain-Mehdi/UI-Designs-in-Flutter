class ProductModel {
  String productName;
  String productDetail;
  String productPrice;
  String productImage;

  ProductModel(this.productName, this.productDetail, this.productPrice,
      this.productImage);

  static List<ProductModel> productsSender() {
    List<ProductModel> productsDetail = [];

    productsDetail.add(
        ProductModel("Beauty Cream", "Groom", "12.55", './images/skin1.png'));
    productsDetail.add(
        ProductModel("Beauty Cream", "Groom", "12.55", './images/skin2.png'));
    productsDetail.add(
        ProductModel("Beauty Cream", "Groom", "12.55", './images/skin3.png'));
    productsDetail.add(
        ProductModel("Beauty Cream", "Groom", "12.55", './images/skin4.png'));
    productsDetail.add(
        ProductModel("Beauty Cream", "Groom", "12.55", './images/skin5.png'));
    productsDetail.add(
        ProductModel("Beauty Cream", "Groom", "12.55", './images/skin6.png'));
    productsDetail.add(
        ProductModel("Beauty Cream", "Groom", "12.55", './images/skin7.png'));
    productsDetail.add(
        ProductModel("Beauty Cream", "Groom", "12.55", './images/skin8.png'));
    productsDetail.add(
        ProductModel("Beauty Cream", "Groom", "12.55", './images/skin9.png'));
    productsDetail.add(
        ProductModel("Beauty Cream", "Groom", "12.55", './images/skin10.png'));

    return productsDetail;
  }
}
