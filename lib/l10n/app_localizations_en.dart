// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appTitle => 'GoTradex';

  @override
  String get loading => 'Loading...';

  @override
  String get error => 'Error';

  @override
  String get retry => 'Retry';

  @override
  String get cancel => 'Cancel';

  @override
  String get confirm => 'Confirm';

  @override
  String get save => 'Save';

  @override
  String get delete => 'Delete';

  @override
  String get edit => 'Edit';

  @override
  String get add => 'Add';

  @override
  String get remove => 'Remove';

  @override
  String get search => 'Search';

  @override
  String get filter => 'Filter';

  @override
  String get sort => 'Sort';

  @override
  String get clear => 'Clear';

  @override
  String get back => 'Back';

  @override
  String get next => 'Next';

  @override
  String get previous => 'Previous';

  @override
  String get done => 'Done';

  @override
  String get close => 'Close';

  @override
  String get ok => 'OK';

  @override
  String get yes => 'Yes';

  @override
  String get no => 'No';

  @override
  String get home => 'Home';

  @override
  String get cart => 'Cart';

  @override
  String get orders => 'Orders';

  @override
  String get account => 'Account';

  @override
  String get mostPopular => 'Most Popular Products';

  @override
  String get bestSelling => 'Best Selling Products';

  @override
  String get categories => 'Categories';

  @override
  String get brands => 'Brands';

  @override
  String get seeAll => 'See All';

  @override
  String get productName => 'Product Name';

  @override
  String get price => 'Price';

  @override
  String get description => 'Description';

  @override
  String get quantity => 'Quantity';

  @override
  String get minQuantity => 'Min Quantity';

  @override
  String get maxQuantity => 'Max Quantity';

  @override
  String get addToCart => 'Add to Cart';

  @override
  String get addedToCart => 'Added to Cart';

  @override
  String get outOfStock => 'Out of Stock';

  @override
  String get inStock => 'In Stock';

  @override
  String get rating => 'Rating';

  @override
  String get reviews => 'Reviews';

  @override
  String get supplierInfo => 'Supplier Information';

  @override
  String get productDetails => 'Product Details';

  @override
  String get contactSupplier => 'Contact Supplier';

  @override
  String get call => 'Call';

  @override
  String get whatsapp => 'WhatsApp';

  @override
  String get email => 'Email';

  @override
  String get message => 'Message';

  @override
  String get cartEmpty => 'Your Cart is Empty';

  @override
  String get cartEmptyMessage => 'Add some products to get started';

  @override
  String get total => 'Total';

  @override
  String get items => 'items';

  @override
  String get checkout => 'Checkout';

  @override
  String get removeItem => 'Remove Item';

  @override
  String removeConfirm(String productName) {
    return 'Are you sure you want to remove \"$productName\" from your cart?';
  }

  @override
  String itemRemoved(String productName) {
    return '$productName removed from cart';
  }

  @override
  String get ordersEmpty => 'No Orders Yet';

  @override
  String get ordersEmptyMessage => 'Your orders will appear here';

  @override
  String orderNumber(String orderNumber) {
    return 'Order #$orderNumber';
  }

  @override
  String get orderDate => 'Order Date';

  @override
  String get status => 'Status';

  @override
  String get totalAmount => 'Total Amount';

  @override
  String get paymentMethod => 'Payment Method';

  @override
  String get pending => 'Pending';

  @override
  String get confirmed => 'Confirmed';

  @override
  String get shipped => 'Shipped';

  @override
  String get delivered => 'Delivered';

  @override
  String get cancelled => 'Cancelled';

  @override
  String get cashOnDelivery => 'Cash on Delivery';

  @override
  String get creditCard => 'Credit/Debit Card';

  @override
  String get bankTransfer => 'Bank Transfer';

  @override
  String get checkoutTitle => 'Checkout';

  @override
  String get deliveryInfo => 'Delivery Information';

  @override
  String get fullName => 'Full Name';

  @override
  String get fullNameHint => 'Enter your full name';

  @override
  String get phoneNumber => 'Phone Number';

  @override
  String get phoneNumberHint => 'Enter your phone number';

  @override
  String get deliveryAddress => 'Delivery Address';

  @override
  String get deliveryAddressHint => 'Enter your complete delivery address';

  @override
  String get orderNotes => 'Order Notes (Optional)';

  @override
  String get orderNotesHint => 'Any special instructions for delivery';

  @override
  String get placeOrder => 'Place Order';

  @override
  String get orderSummary => 'Order Summary';

  @override
  String get subtotal => 'Subtotal';

  @override
  String get deliveryFee => 'Delivery Fee';

  @override
  String get orderSuccess => 'Order Placed Successfully!';

  @override
  String orderSuccessMessage(String orderNumber) {
    return 'Your order #$orderNumber has been placed successfully';
  }

  @override
  String get estimatedDelivery => 'Estimated Delivery';

  @override
  String get viewOrders => 'View Orders';

  @override
  String get continueShopping => 'Continue Shopping';

  @override
  String get searchHint => 'Search products...';

  @override
  String get noResults => 'No Results Found';

  @override
  String get noResultsMessage => 'Try different keywords';

  @override
  String get searchProducts => 'Search Products';

  @override
  String get searchMessage => 'Find what you\'re looking for';

  @override
  String get profile => 'Profile';

  @override
  String get settings => 'Settings';

  @override
  String get language => 'Language';

  @override
  String get notifications => 'Notifications';

  @override
  String get help => 'Help';

  @override
  String get about => 'About';

  @override
  String get logout => 'Logout';

  @override
  String get english => 'English';

  @override
  String get arabic => 'العربية';

  @override
  String get selectLanguage => 'Select Language';

  @override
  String get required => 'This field is required';

  @override
  String get invalidPhone => 'Please enter a valid phone number';

  @override
  String minLength(int length) {
    return 'Minimum $length characters required';
  }

  @override
  String maxLength(int length) {
    return 'Maximum $length characters allowed';
  }

  @override
  String get manageAccountSettings => 'Manage your account settings';

  @override
  String get payWhenReceive => 'Pay when you receive your order';

  @override
  String get paySecurelyWithCard => 'Pay securely with your card';

  @override
  String get transferDirectly => 'Transfer directly to our account';

  @override
  String get orderConfirmed =>
      'Your order has been confirmed and will be delivered soon.';

  @override
  String get orderId => 'Order ID:';

  @override
  String get businessDays => '2-3 Business Days';

  @override
  String get perUnit => 'per unit';

  @override
  String get verified => 'Verified';

  @override
  String get specialOfferAvailable => 'Special Offer Available';

  @override
  String get makePhoneCall => 'Make a phone call';

  @override
  String get sendWhatsAppMessage => 'Send a WhatsApp message';

  @override
  String get sendEmail => 'Send an email';

  @override
  String get noProductsAvailable => 'No products available';

  @override
  String get noProductsFoundForBrand => 'No products found for this brand';

  @override
  String get noProductsFoundInCategory => 'No products found in this category';

  @override
  String get subcategories => 'Subcategories';

  @override
  String get products => 'Products';
}
