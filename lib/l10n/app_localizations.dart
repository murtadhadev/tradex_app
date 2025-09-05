import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_ar.dart';
import 'app_localizations_en.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('ar'),
    Locale('en'),
  ];

  /// The title of the application
  ///
  /// In en, this message translates to:
  /// **'GoTradex'**
  String get appTitle;

  /// Loading text
  ///
  /// In en, this message translates to:
  /// **'Loading...'**
  String get loading;

  /// Error text
  ///
  /// In en, this message translates to:
  /// **'Error'**
  String get error;

  /// Retry button text
  ///
  /// In en, this message translates to:
  /// **'Retry'**
  String get retry;

  /// Cancel button text
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get cancel;

  /// Confirm button text
  ///
  /// In en, this message translates to:
  /// **'Confirm'**
  String get confirm;

  /// Save button text
  ///
  /// In en, this message translates to:
  /// **'Save'**
  String get save;

  /// Delete button text
  ///
  /// In en, this message translates to:
  /// **'Delete'**
  String get delete;

  /// Edit button text
  ///
  /// In en, this message translates to:
  /// **'Edit'**
  String get edit;

  /// Add button text
  ///
  /// In en, this message translates to:
  /// **'Add'**
  String get add;

  /// Remove button text
  ///
  /// In en, this message translates to:
  /// **'Remove'**
  String get remove;

  /// Search text
  ///
  /// In en, this message translates to:
  /// **'Search'**
  String get search;

  /// Filter text
  ///
  /// In en, this message translates to:
  /// **'Filter'**
  String get filter;

  /// Sort text
  ///
  /// In en, this message translates to:
  /// **'Sort'**
  String get sort;

  /// Clear text
  ///
  /// In en, this message translates to:
  /// **'Clear'**
  String get clear;

  /// Back button text
  ///
  /// In en, this message translates to:
  /// **'Back'**
  String get back;

  /// Next button text
  ///
  /// In en, this message translates to:
  /// **'Next'**
  String get next;

  /// Previous button text
  ///
  /// In en, this message translates to:
  /// **'Previous'**
  String get previous;

  /// Done button text
  ///
  /// In en, this message translates to:
  /// **'Done'**
  String get done;

  /// Close button text
  ///
  /// In en, this message translates to:
  /// **'Close'**
  String get close;

  /// OK button text
  ///
  /// In en, this message translates to:
  /// **'OK'**
  String get ok;

  /// Yes button text
  ///
  /// In en, this message translates to:
  /// **'Yes'**
  String get yes;

  /// No button text
  ///
  /// In en, this message translates to:
  /// **'No'**
  String get no;

  /// Home navigation text
  ///
  /// In en, this message translates to:
  /// **'Home'**
  String get home;

  /// Cart navigation text
  ///
  /// In en, this message translates to:
  /// **'Cart'**
  String get cart;

  /// Orders navigation text
  ///
  /// In en, this message translates to:
  /// **'Orders'**
  String get orders;

  /// Account navigation text
  ///
  /// In en, this message translates to:
  /// **'Account'**
  String get account;

  /// Most popular products section title
  ///
  /// In en, this message translates to:
  /// **'Most Popular Products'**
  String get mostPopular;

  /// Best selling products section title
  ///
  /// In en, this message translates to:
  /// **'Best Selling Products'**
  String get bestSelling;

  /// Categories section title
  ///
  /// In en, this message translates to:
  /// **'Categories'**
  String get categories;

  /// Brands section title
  ///
  /// In en, this message translates to:
  /// **'Brands'**
  String get brands;

  /// See all button text
  ///
  /// In en, this message translates to:
  /// **'See All'**
  String get seeAll;

  /// Product name label
  ///
  /// In en, this message translates to:
  /// **'Product Name'**
  String get productName;

  /// Price label
  ///
  /// In en, this message translates to:
  /// **'Price'**
  String get price;

  /// Description label
  ///
  /// In en, this message translates to:
  /// **'Description'**
  String get description;

  /// Quantity label
  ///
  /// In en, this message translates to:
  /// **'Quantity'**
  String get quantity;

  /// Minimum quantity label
  ///
  /// In en, this message translates to:
  /// **'Min Quantity'**
  String get minQuantity;

  /// Maximum quantity label
  ///
  /// In en, this message translates to:
  /// **'Max Quantity'**
  String get maxQuantity;

  /// Add to cart button text
  ///
  /// In en, this message translates to:
  /// **'Add to Cart'**
  String get addToCart;

  /// Added to cart text
  ///
  /// In en, this message translates to:
  /// **'Added to Cart'**
  String get addedToCart;

  /// Out of stock text
  ///
  /// In en, this message translates to:
  /// **'Out of Stock'**
  String get outOfStock;

  /// In stock text
  ///
  /// In en, this message translates to:
  /// **'In Stock'**
  String get inStock;

  /// Rating label
  ///
  /// In en, this message translates to:
  /// **'Rating'**
  String get rating;

  /// Reviews label
  ///
  /// In en, this message translates to:
  /// **'Reviews'**
  String get reviews;

  /// Supplier information section title
  ///
  /// In en, this message translates to:
  /// **'Supplier Information'**
  String get supplierInfo;

  /// Product details section title
  ///
  /// In en, this message translates to:
  /// **'Product Details'**
  String get productDetails;

  /// Contact supplier button text
  ///
  /// In en, this message translates to:
  /// **'Contact Supplier'**
  String get contactSupplier;

  /// Call button text
  ///
  /// In en, this message translates to:
  /// **'Call'**
  String get call;

  /// WhatsApp button text
  ///
  /// In en, this message translates to:
  /// **'WhatsApp'**
  String get whatsapp;

  /// Email button text
  ///
  /// In en, this message translates to:
  /// **'Email'**
  String get email;

  /// Message button text
  ///
  /// In en, this message translates to:
  /// **'Message'**
  String get message;

  /// Empty cart message
  ///
  /// In en, this message translates to:
  /// **'Your Cart is Empty'**
  String get cartEmpty;

  /// Empty cart description
  ///
  /// In en, this message translates to:
  /// **'Add some products to get started'**
  String get cartEmptyMessage;

  /// Total label
  ///
  /// In en, this message translates to:
  /// **'Total'**
  String get total;

  /// Items label
  ///
  /// In en, this message translates to:
  /// **'items'**
  String get items;

  /// Checkout button text
  ///
  /// In en, this message translates to:
  /// **'Checkout'**
  String get checkout;

  /// Remove item dialog title
  ///
  /// In en, this message translates to:
  /// **'Remove Item'**
  String get removeItem;

  /// Remove item confirmation message
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to remove \"{productName}\" from your cart?'**
  String removeConfirm(String productName);

  /// Item removed confirmation message
  ///
  /// In en, this message translates to:
  /// **'{productName} removed from cart'**
  String itemRemoved(String productName);

  /// Empty orders message
  ///
  /// In en, this message translates to:
  /// **'No Orders Yet'**
  String get ordersEmpty;

  /// Empty orders description
  ///
  /// In en, this message translates to:
  /// **'Your orders will appear here'**
  String get ordersEmptyMessage;

  /// Order number format
  ///
  /// In en, this message translates to:
  /// **'Order #{orderNumber}'**
  String orderNumber(String orderNumber);

  /// Order date label
  ///
  /// In en, this message translates to:
  /// **'Order Date'**
  String get orderDate;

  /// Status label
  ///
  /// In en, this message translates to:
  /// **'Status'**
  String get status;

  /// Total amount label
  ///
  /// In en, this message translates to:
  /// **'Total Amount'**
  String get totalAmount;

  /// Payment method label
  ///
  /// In en, this message translates to:
  /// **'Payment Method'**
  String get paymentMethod;

  /// Pending status
  ///
  /// In en, this message translates to:
  /// **'Pending'**
  String get pending;

  /// Confirmed status
  ///
  /// In en, this message translates to:
  /// **'Confirmed'**
  String get confirmed;

  /// Shipped status
  ///
  /// In en, this message translates to:
  /// **'Shipped'**
  String get shipped;

  /// Delivered status
  ///
  /// In en, this message translates to:
  /// **'Delivered'**
  String get delivered;

  /// Cancelled status
  ///
  /// In en, this message translates to:
  /// **'Cancelled'**
  String get cancelled;

  /// Cash on delivery payment method
  ///
  /// In en, this message translates to:
  /// **'Cash on Delivery'**
  String get cashOnDelivery;

  /// Credit card payment method
  ///
  /// In en, this message translates to:
  /// **'Credit/Debit Card'**
  String get creditCard;

  /// Bank transfer payment method
  ///
  /// In en, this message translates to:
  /// **'Bank Transfer'**
  String get bankTransfer;

  /// Checkout page title
  ///
  /// In en, this message translates to:
  /// **'Checkout'**
  String get checkoutTitle;

  /// Delivery information section title
  ///
  /// In en, this message translates to:
  /// **'Delivery Information'**
  String get deliveryInfo;

  /// Full name field label
  ///
  /// In en, this message translates to:
  /// **'Full Name'**
  String get fullName;

  /// Full name field hint
  ///
  /// In en, this message translates to:
  /// **'Enter your full name'**
  String get fullNameHint;

  /// Phone number field label
  ///
  /// In en, this message translates to:
  /// **'Phone Number'**
  String get phoneNumber;

  /// Phone number field hint
  ///
  /// In en, this message translates to:
  /// **'Enter your phone number'**
  String get phoneNumberHint;

  /// Delivery address field label
  ///
  /// In en, this message translates to:
  /// **'Delivery Address'**
  String get deliveryAddress;

  /// Delivery address field hint
  ///
  /// In en, this message translates to:
  /// **'Enter your complete delivery address'**
  String get deliveryAddressHint;

  /// Order notes field label
  ///
  /// In en, this message translates to:
  /// **'Order Notes (Optional)'**
  String get orderNotes;

  /// Order notes field hint
  ///
  /// In en, this message translates to:
  /// **'Any special instructions for delivery'**
  String get orderNotesHint;

  /// Place order button text
  ///
  /// In en, this message translates to:
  /// **'Place Order'**
  String get placeOrder;

  /// Order summary section title
  ///
  /// In en, this message translates to:
  /// **'Order Summary'**
  String get orderSummary;

  /// Subtotal label
  ///
  /// In en, this message translates to:
  /// **'Subtotal'**
  String get subtotal;

  /// Delivery fee label
  ///
  /// In en, this message translates to:
  /// **'Delivery Fee'**
  String get deliveryFee;

  /// Order success message
  ///
  /// In en, this message translates to:
  /// **'Order Placed Successfully!'**
  String get orderSuccess;

  /// Order success description
  ///
  /// In en, this message translates to:
  /// **'Your order #{orderNumber} has been placed successfully'**
  String orderSuccessMessage(String orderNumber);

  /// Estimated delivery label
  ///
  /// In en, this message translates to:
  /// **'Estimated Delivery'**
  String get estimatedDelivery;

  /// View orders button text
  ///
  /// In en, this message translates to:
  /// **'View Orders'**
  String get viewOrders;

  /// Continue shopping button text
  ///
  /// In en, this message translates to:
  /// **'Continue Shopping'**
  String get continueShopping;

  /// Search field hint
  ///
  /// In en, this message translates to:
  /// **'Search products...'**
  String get searchHint;

  /// No search results message
  ///
  /// In en, this message translates to:
  /// **'No Results Found'**
  String get noResults;

  /// No search results description
  ///
  /// In en, this message translates to:
  /// **'Try different keywords'**
  String get noResultsMessage;

  /// Search products title
  ///
  /// In en, this message translates to:
  /// **'Search Products'**
  String get searchProducts;

  /// Search products description
  ///
  /// In en, this message translates to:
  /// **'Find what you\'re looking for'**
  String get searchMessage;

  /// Profile section title
  ///
  /// In en, this message translates to:
  /// **'Profile'**
  String get profile;

  /// Settings section title
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get settings;

  /// Language section title
  ///
  /// In en, this message translates to:
  /// **'Language'**
  String get language;

  /// Notifications section title
  ///
  /// In en, this message translates to:
  /// **'Notifications'**
  String get notifications;

  /// Help section title
  ///
  /// In en, this message translates to:
  /// **'Help'**
  String get help;

  /// About section title
  ///
  /// In en, this message translates to:
  /// **'About'**
  String get about;

  /// Logout button text
  ///
  /// In en, this message translates to:
  /// **'Logout'**
  String get logout;

  /// English language name
  ///
  /// In en, this message translates to:
  /// **'English'**
  String get english;

  /// Arabic language name
  ///
  /// In en, this message translates to:
  /// **'العربية'**
  String get arabic;

  /// Select language dialog title
  ///
  /// In en, this message translates to:
  /// **'Select Language'**
  String get selectLanguage;

  /// Required field validation message
  ///
  /// In en, this message translates to:
  /// **'This field is required'**
  String get required;

  /// Invalid phone number validation message
  ///
  /// In en, this message translates to:
  /// **'Please enter a valid phone number'**
  String get invalidPhone;

  /// Minimum length validation message
  ///
  /// In en, this message translates to:
  /// **'Minimum {length} characters required'**
  String minLength(int length);

  /// Maximum length validation message
  ///
  /// In en, this message translates to:
  /// **'Maximum {length} characters allowed'**
  String maxLength(int length);

  /// Account settings description
  ///
  /// In en, this message translates to:
  /// **'Manage your account settings'**
  String get manageAccountSettings;

  /// Cash on delivery description
  ///
  /// In en, this message translates to:
  /// **'Pay when you receive your order'**
  String get payWhenReceive;

  /// Credit card payment description
  ///
  /// In en, this message translates to:
  /// **'Pay securely with your card'**
  String get paySecurelyWithCard;

  /// Bank transfer description
  ///
  /// In en, this message translates to:
  /// **'Transfer directly to our account'**
  String get transferDirectly;

  /// Order confirmation message
  ///
  /// In en, this message translates to:
  /// **'Your order has been confirmed and will be delivered soon.'**
  String get orderConfirmed;

  /// Order ID label
  ///
  /// In en, this message translates to:
  /// **'Order ID:'**
  String get orderId;

  /// Delivery time estimate
  ///
  /// In en, this message translates to:
  /// **'2-3 Business Days'**
  String get businessDays;

  /// Per unit text
  ///
  /// In en, this message translates to:
  /// **'per unit'**
  String get perUnit;

  /// Verified status
  ///
  /// In en, this message translates to:
  /// **'Verified'**
  String get verified;

  /// Special offer text
  ///
  /// In en, this message translates to:
  /// **'Special Offer Available'**
  String get specialOfferAvailable;

  /// Phone call description
  ///
  /// In en, this message translates to:
  /// **'Make a phone call'**
  String get makePhoneCall;

  /// WhatsApp message description
  ///
  /// In en, this message translates to:
  /// **'Send a WhatsApp message'**
  String get sendWhatsAppMessage;

  /// Email description
  ///
  /// In en, this message translates to:
  /// **'Send an email'**
  String get sendEmail;

  /// No products available message
  ///
  /// In en, this message translates to:
  /// **'No products available'**
  String get noProductsAvailable;

  /// No products found for brand message
  ///
  /// In en, this message translates to:
  /// **'No products found for this brand'**
  String get noProductsFoundForBrand;

  /// No products found in category message
  ///
  /// In en, this message translates to:
  /// **'No products found in this category'**
  String get noProductsFoundInCategory;

  /// Subcategories title
  ///
  /// In en, this message translates to:
  /// **'Subcategories'**
  String get subcategories;

  /// Products title
  ///
  /// In en, this message translates to:
  /// **'Products'**
  String get products;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['ar', 'en'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'ar':
      return AppLocalizationsAr();
    case 'en':
      return AppLocalizationsEn();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
