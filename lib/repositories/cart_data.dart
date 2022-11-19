

import 'package:examen_movil/models/cart.dart';

class Backend {
  /// Singleton pattern used here.
  static final Backend _backend = Backend._internal();

  var carts;

  factory Backend() {
    return _backend;
  }

  Backend._internal();

  final _carts = [
    Cart (
      id: 1,
      anio: '2019',
      modelo: 'Audi A3',
      marca: 'Audi',
      description: 'Audi A3 2019',
      entrada: '10000',
      precio: '23000',
      imagen: 'https://mediacloud.carbuyer.co.uk/image/private/s--O8p7P8sX--/v1579628518/carbuyer/audi-a3-s-line.jpg',
    ),
    Cart (
      id: 2,
      anio: '2019',
      modelo: 'Ford F50',
      marca: 'Ford',
      description: 'Ford F50 2019,4x4',
      entrada: '10000',
      precio: '35000',
      imagen: 'https://i.pinimg.com/originals/e4/ef/de/e4efdefef7a9dd92cfabdf07d23f0d40.jpg',
    ),
    Cart (
      id:3,
      anio: '2022',
      modelo: 'Chevrolet Camaro',
      marca: 'Chevrolet',
      description: 'Chevrolet Camaro 2022',
      entrada: '10000',
      precio: '50000',
      imagen: 'https://i1.wp.com/www.thesupercarblog.com/wp-content/uploads/2019/05/HSV-Chevrolet-Camaro-ZL1-Australia-1.jpg?fit=1280%2C720&ssl=1',
    ),
    Cart(
      id: 4,
      anio: '2021',
      modelo: 'Chevrolet Corvette',
      marca: 'Chevrolet',
      description: 'Chevrolet Corvette 2021',
      entrada: '10000',
      precio: '40000',
      imagen: 'http://www.marinoperformancemotors.com/imagetag/13382/6/l/Used-2019-Chevrolet-Corvette-Grand-Sport.jpg',
    ),
    Cart(
      id: 5,
      anio: '2021',
      modelo: 'Kia Rio',
      marca: 'Kia',
      description: 'Kia Rio 2021',
      entrada: '10000',
      precio: '18000',
      imagen: 'https://www.focusdailynews.com/wp-content/uploads/2018/01/2018-Kia-Rio-LX.jpg',
    ),
    Cart(
      id: 6,
      anio: '2021',
      modelo: 'Kia Seltos',
      marca: 'Kia',
      description: 'Kia Seltos 2021',
      entrada: '10000',
      precio: '21000',
      imagen: 'https://s.aolcdn.com/commerce/autodata/images/USD10KIS082A021001.jpg',
    ),
    Cart(
      id: 7,
      anio: '2021',
      modelo: 'Kia Sportage',
      marca: 'Kia',
      description: 'Kia Sportage 2021',
      entrada: '10000',
      precio: '26000',
      imagen: 'https://cbf06b96bb24511e188d-bf23c3ee6258a86777f81b2cf11abef7.ssl.cf1.rackcdn.com/KNDPM3ACXM7852835/d9551998c475af158bf4eab889a690b7.jpg',
    ),
    Cart(
      id: 8,
      anio: '2021',
      modelo: 'Kia Telluride',
      marca: 'Kia',
      description: 'Kia Telluride 2021',
      entrada: '10000',
      precio: '27000',
      imagen: 'https://www.autotrader.com/wp-content/uploads/2020/07/2021-kia-telluride-front-left-side.jpg',
    ),
    Cart (
      id: 9,
      anio: '2021',
      modelo: 'Toyota Corolla',
      marca: 'Toyota',
      description: 'Toyota Corolla 2021',
      entrada: '10000',
      precio: '30000',
      imagen: 'https://mediacloud.carbuyer.co.uk/image/private/s--2BgABnEQ--/v1584465949/carbuyer/car_images/toyota-corolla-saloon-cutout-2019.jpg',
    ),
    Cart (
      id: 10,
      anio: '2021',
      modelo: 'Toyota Camry',
      marca: 'Toyota',
      description: 'Toyota Camry 2021',
      entrada: '10000',
      precio: '24000',
      imagen: 'http://cdn.carbuzz.com/gallery-images/1600/759000/500/759529.jpg',
    ),
    Cart (
      id: 11,
      anio: '2021',
      modelo: 'Toyota Avalon',
      marca: 'Toyota',
      description: 'Toyota Avalon 2021',
      entrada: '10000',
      precio: '26000',
      imagen: 'https://www.ihwanburhan.com/wp-content/uploads/2020/09/2021-Toyota-Avalon-Exterior.png',
    ),
    Cart (
      id: 12,
      anio: '2022',
      modelo: 'Toyota RAV4',
      marca: 'Toyota',
      description: 'Toyota RAV4 2022',
      entrada: '10000',
      precio: '25000',
      imagen: 'https://www.electrichunter.com/sites/default/files/field/gallery/Toyota-RAV4-Hybrid-Black-Edition-2020-2021-car-06.jpg',
    ),
    Cart (
      id: 13,
      anio: '2021',
      modelo: 'Toyota Highlander',
      marca: 'Toyota',
      description: 'Toyota Highlander 2021',
      entrada: '10000',
      precio: '20000',
      imagen: 'https://dlmag.com/wp-content/uploads/2020/02/2021-toyota-highlander-xse-2.jpg',
    ),
    Cart (
      id: 14,
      anio: '2021',
      modelo: 'Tiggo One',
      marca: 'Tiggo',
      description: 'Tiggo One 2021',
      entrada: '10000',
      precio: '20000',
      imagen: 'https://mundodoautomovelparapcd.com.br/wp-content/uploads/2020/07/chery-tiggo-5x-2021-13-1024x576.jpg',
    ),
    Cart (
      id: 15,
      anio: '2022',
      modelo: 'Tiggo One Pro',
      marca: 'Tiggo',
      description: 'Tiggo One Pro 2022',
      entrada: '10000',
      precio: '22000',
      imagen: 'https://1.bp.blogspot.com/-RDDE9WvqrxQ/YTJsvb8vYTI/AAAAAAAA2lQ/GWSRGmy6iUoSxawBcPlbQIlUUHa-h_OaACLcBGAsYHQ/s2048/Novo-Tiggo-7-2022%2B%25285%2529.jpg',
    ),

  ];
   /// Returns all emails.
  List<Cart> getCarts() {
    return _carts;
  }

  /// Marks email identified by its id as read.
  void markProductsRead(int id) {
    final index = _carts.indexWhere((cart) => cart.id == id);


  cartWidget(cart) {}
  }
}


     