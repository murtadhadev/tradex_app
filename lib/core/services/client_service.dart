import '../../../features/home/domain/entities/client_entity.dart';
import '../../../features/home/domain/entities/product_entity.dart';

class ClientService {
  static ClientEntity? findClientForProduct(
    ProductEntity product,
    List<ClientEntity> clients,
  ) {
    if (product.clientId == null) return null;

    try {
      return clients.firstWhere((client) => client.id == product.clientId);
    } catch (e) {
      return null;
    }
  }
}
