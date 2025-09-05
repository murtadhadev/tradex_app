// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Arabic (`ar`).
class AppLocalizationsAr extends AppLocalizations {
  AppLocalizationsAr([String locale = 'ar']) : super(locale);

  @override
  String get appTitle => 'جو تريدكس';

  @override
  String get loading => 'جاري التحميل...';

  @override
  String get error => 'خطأ';

  @override
  String get retry => 'إعادة المحاولة';

  @override
  String get cancel => 'إلغاء';

  @override
  String get confirm => 'تأكيد';

  @override
  String get save => 'حفظ';

  @override
  String get delete => 'حذف';

  @override
  String get edit => 'تعديل';

  @override
  String get add => 'إضافة';

  @override
  String get remove => 'إزالة';

  @override
  String get search => 'بحث';

  @override
  String get filter => 'تصفية';

  @override
  String get sort => 'ترتيب';

  @override
  String get clear => 'مسح';

  @override
  String get back => 'رجوع';

  @override
  String get next => 'التالي';

  @override
  String get previous => 'السابق';

  @override
  String get done => 'تم';

  @override
  String get close => 'إغلاق';

  @override
  String get ok => 'موافق';

  @override
  String get yes => 'نعم';

  @override
  String get no => 'لا';

  @override
  String get home => 'الرئيسية';

  @override
  String get cart => 'السلة';

  @override
  String get orders => 'الطلبات';

  @override
  String get account => 'الحساب';

  @override
  String get mostPopular => 'المنتجات الأكثر شعبية';

  @override
  String get bestSelling => 'الأكثر مبيعاً';

  @override
  String get categories => 'الفئات';

  @override
  String get brands => 'العلامات التجارية';

  @override
  String get seeAll => 'عرض الكل';

  @override
  String get productName => 'اسم المنتج';

  @override
  String get price => 'السعر';

  @override
  String get description => 'الوصف';

  @override
  String get quantity => 'الكمية';

  @override
  String get minQuantity => 'الحد الأدنى';

  @override
  String get maxQuantity => 'الحد الأقصى';

  @override
  String get addToCart => 'أضف للسلة';

  @override
  String get addedToCart => 'تم الإضافة للسلة';

  @override
  String get outOfStock => 'نفد المخزون';

  @override
  String get inStock => 'متوفر';

  @override
  String get rating => 'التقييم';

  @override
  String get reviews => 'التقييمات';

  @override
  String get supplierInfo => 'معلومات المورد';

  @override
  String get productDetails => 'تفاصيل المنتج';

  @override
  String get contactSupplier => 'تواصل مع المورد';

  @override
  String get call => 'اتصال';

  @override
  String get whatsapp => 'واتساب';

  @override
  String get email => 'بريد إلكتروني';

  @override
  String get message => 'رسالة';

  @override
  String get cartEmpty => 'سلتك فارغة';

  @override
  String get cartEmptyMessage => 'أضف بعض المنتجات للبدء';

  @override
  String get total => 'المجموع';

  @override
  String get items => 'عنصر';

  @override
  String get checkout => 'الدفع';

  @override
  String get removeItem => 'إزالة المنتج';

  @override
  String removeConfirm(String productName) {
    return 'هل أنت متأكد من إزالة \"$productName\" من سلتك؟';
  }

  @override
  String itemRemoved(String productName) {
    return 'تم إزالة $productName من السلة';
  }

  @override
  String get ordersEmpty => 'لا توجد طلبات بعد';

  @override
  String get ordersEmptyMessage => 'ستظهر طلباتك هنا';

  @override
  String orderNumber(String orderNumber) {
    return 'طلب رقم #$orderNumber';
  }

  @override
  String get orderDate => 'تاريخ الطلب';

  @override
  String get status => 'الحالة';

  @override
  String get totalAmount => 'المبلغ الإجمالي';

  @override
  String get paymentMethod => 'طريقة الدفع';

  @override
  String get pending => 'قيد الانتظار';

  @override
  String get confirmed => 'مؤكد';

  @override
  String get shipped => 'تم الشحن';

  @override
  String get delivered => 'تم التسليم';

  @override
  String get cancelled => 'ملغي';

  @override
  String get cashOnDelivery => 'الدفع عند الاستلام';

  @override
  String get creditCard => 'بطاقة ائتمان/خصم';

  @override
  String get bankTransfer => 'تحويل بنكي';

  @override
  String get checkoutTitle => 'الدفع';

  @override
  String get deliveryInfo => 'معلومات التسليم';

  @override
  String get fullName => 'الاسم الكامل';

  @override
  String get fullNameHint => 'أدخل اسمك الكامل';

  @override
  String get phoneNumber => 'رقم الهاتف';

  @override
  String get phoneNumberHint => 'أدخل رقم هاتفك';

  @override
  String get deliveryAddress => 'عنوان التسليم';

  @override
  String get deliveryAddressHint => 'أدخل عنوان التسليم الكامل';

  @override
  String get orderNotes => 'ملاحظات الطلب (اختياري)';

  @override
  String get orderNotesHint => 'أي تعليمات خاصة للتسليم';

  @override
  String get placeOrder => 'تأكيد الطلب';

  @override
  String get orderSummary => 'ملخص الطلب';

  @override
  String get subtotal => 'المجموع الفرعي';

  @override
  String get deliveryFee => 'رسوم التوصيل';

  @override
  String get orderSuccess => 'تم تأكيد الطلب بنجاح!';

  @override
  String orderSuccessMessage(String orderNumber) {
    return 'تم تأكيد طلبك رقم #$orderNumber بنجاح';
  }

  @override
  String get estimatedDelivery => 'التسليم المتوقع';

  @override
  String get viewOrders => 'عرض الطلبات';

  @override
  String get continueShopping => 'متابعة التسوق';

  @override
  String get searchHint => 'ابحث عن المنتجات...';

  @override
  String get noResults => 'لا توجد نتائج';

  @override
  String get noResultsMessage => 'جرب كلمات مختلفة';

  @override
  String get searchProducts => 'البحث عن المنتجات';

  @override
  String get searchMessage => 'ابحث عما تريد';

  @override
  String get profile => 'الملف الشخصي';

  @override
  String get settings => 'الإعدادات';

  @override
  String get language => 'اللغة';

  @override
  String get notifications => 'الإشعارات';

  @override
  String get help => 'المساعدة';

  @override
  String get about => 'حول التطبيق';

  @override
  String get logout => 'تسجيل الخروج';

  @override
  String get english => 'English';

  @override
  String get arabic => 'العربية';

  @override
  String get selectLanguage => 'اختر اللغة';

  @override
  String get required => 'هذا الحقل مطلوب';

  @override
  String get invalidPhone => 'يرجى إدخال رقم هاتف صحيح';

  @override
  String minLength(int length) {
    return 'الحد الأدنى $length حرف';
  }

  @override
  String maxLength(int length) {
    return 'الحد الأقصى $length حرف';
  }

  @override
  String get manageAccountSettings => 'إدارة إعدادات حسابك';

  @override
  String get payWhenReceive => 'ادفع عند استلام طلبك';

  @override
  String get paySecurelyWithCard => 'ادفع بأمان باستخدام بطاقتك';

  @override
  String get transferDirectly => 'حول مباشرة إلى حسابنا';

  @override
  String get orderConfirmed => 'تم تأكيد طلبك وسيتم تسليمه قريباً.';

  @override
  String get orderId => 'رقم الطلب:';

  @override
  String get businessDays => '2-3 أيام عمل';

  @override
  String get perUnit => 'للقطعة';

  @override
  String get verified => 'موثق';

  @override
  String get specialOfferAvailable => 'عرض خاص متاح';

  @override
  String get makePhoneCall => 'إجراء مكالمة هاتفية';

  @override
  String get sendWhatsAppMessage => 'إرسال رسالة واتساب';

  @override
  String get sendEmail => 'إرسال بريد إلكتروني';

  @override
  String get noProductsAvailable => 'لا توجد منتجات متاحة';

  @override
  String get noProductsFoundForBrand => 'لا توجد منتجات لهذه العلامة التجارية';

  @override
  String get noProductsFoundInCategory => 'لا توجد منتجات في هذه الفئة';

  @override
  String get subcategories => 'الفئات الفرعية';

  @override
  String get products => 'المنتجات';
}
