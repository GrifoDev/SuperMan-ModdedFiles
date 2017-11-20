.class public Lcom/android/incallui/agif/AgifCallContract;
.super Ljava/lang/Object;


# static fields
.field public static final ACTION_CHECK_AGIF_LIST:Ljava/lang/String; = "com.samsung.android.provider.agifcallprovider.action.ACTION_CHECK_AGIF_LIST"

.field public static final ACTION_SYNC_UPLOADED_STICKER_LIST_DB:Ljava/lang/String; = "com.samsung.android.provider.agifcallprovider.action.ACTION_SYNC_AGIF_LIST"

.field public static final AGIFS:Ljava/lang/String; = "agifs"

.field public static final AGIF_CALL_PROVIDER:Ljava/lang/String;

.field public static final AGIF_COLUMN_AGIF_NAME:I = 0x2

.field public static final AGIF_COLUMN_ID:I = 0x0

.field public static final AGIF_COLUMN_PACKAGE_NAME:I = 0x1

.field public static final AGIF_COLUMN_PRELOAD:I = 0xd

.field public static final AGIF_DUMMY_SMALL_URI:Landroid/net/Uri;

.field public static final AGIF_DUMMY_URI:Landroid/net/Uri;

.field public static final AGIF_NAME:Ljava/lang/String; = "agif_name"

.field public static final AGIF_PACKAGE_COLUMN_ARTIST:I = 0x6

.field public static final AGIF_PACKAGE_COLUMN_ID:I = 0x0

.field public static final AGIF_PACKAGE_COLUMN_PACKAGE_NAME:I = 0x1

.field public static final AGIF_PACKAGE_COLUMN_TRAY_ICON_OFF:I = 0x3

.field public static final AGIF_PACKAGE_COLUMN_TRAY_ICON_ON:I = 0x2

.field public static final AGIF_PROJECTION:[Ljava/lang/String;

.field public static final AGIF_RECOMMEND_COLUMN_ID:I = 0x0

.field public static final AGIF_RECOMMEND_COLUMN_NAME:I = 0x6

.field public static final AGIF_RECOMMEND_COLUMN_NEW:I = 0x4

.field public static final AGIF_RECOMMEND_COLUMN_PACKAGE_NAME:I = 0x1

.field public static final AGIF_RECOMMEND_COLUMN_PRICE:I = 0x8

.field public static final AGIF_RECOMMEND_COUNT:I = 0x3

.field public static final ARTIST:Ljava/lang/String; = "artist"

.field public static final AUTHORITY:Ljava/lang/String; = "com.samsung.android.provider.agifcallprovider"

.field public static final CATEGORY:Ljava/lang/String; = "category"

.field public static final CATEGORYCALLING:Ljava/lang/String; = "0000005250"

.field public static final CATEGORYLIST:Ljava/lang/String; = "CategoryList"

.field public static final CATEGORY_CALLING:Ljava/lang/String; = "calling"

.field public static final CATEGORY_REJECT:Ljava/lang/String; = "reject"

.field public static final CONTENT:Ljava/lang/String; = "content://"

.field public static final CONTENT_URI_AGIF:Landroid/net/Uri;

.field public static final CONTENT_URI_PACKAGES:Landroid/net/Uri;

.field public static final CONTENT_URI_RECOMMENDED:Landroid/net/Uri;

.field public static final DATE:Ljava/lang/String; = "date"

.field public static final EXTRA_ENHANCED_FEATURE:Ljava/lang/String; = "extra_enhanced_feature"

.field public static final EXTRA_FEATURE_RECOMMEND:Ljava/lang/String; = "recommend"

.field public static final EXTRA_FEATURE_REJECT:Ljava/lang/String; = "reject"

.field public static final EXTRA_SUPPORT_ENHANCED_SERVICE:Ljava/lang/String; = "extra_support_enhanced_service"

.field public static final EXTRA_SUPPORT_SERVICE:Ljava/lang/String; = "extra_support_service"

.field public static final EXTRA_URI:Ljava/lang/String; = "extra_uri"

.field public static final EXTRA_URI_INTENT:Ljava/lang/String; = "extra_uri_intent"

.field public static final FUNC_GET_SUPPORT_ENHANCED_SERVICE:Ljava/lang/String; = "getSupportEnhancedService"

.field public static final FUNC_GET_SUPPORT_SERVICE:Ljava/lang/String; = "getSupportService"

.field public static final INCALLUI_PACKAGE_NAME:Ljava/lang/String;

.field public static final NOTIFY_INSTALL:Ljava/lang/String; = "notify_install"

.field public static final NOTIFY_RECOMMENDED_LIST:Ljava/lang/String; = "notify_recommended_list"

.field public static final NOTIFY_UNINSTALL:Ljava/lang/String; = "notify_uninstall"

.field public static final PACKAGES:Ljava/lang/String; = "packages"

.field public static final PACKAGE_NAME:Ljava/lang/String; = "package_name"

.field public static final PRODUCTDETAIL:Ljava/lang/String; = "ProductDetail"

.field public static final RECOMMENDED:Ljava/lang/String; = "recommended"

.field public static final SAMSUNGAPPS:Ljava/lang/String; = "samsungapps://"

.field public static final SAMSUNGAPPS_URI_CATEGORYCALLING:Landroid/net/Uri;

.field public static final SAMSUNGAPPS_URI_PRODUCTDETAIL:Landroid/net/Uri;

.field public static final SELLERCALLAPP:Ljava/lang/String; = "j3mlioc0qb"

.field public static final SELLERDETAIL:Ljava/lang/String; = "SellerDetail"

.field public static final SEPARATOR:Ljava/lang/String; = "-"

.field public static final STICKER_CENTER_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.stickercenter"

.field public static final TITLE:Ljava/lang/String; = "title"

.field public static final _DATA:Ljava/lang/String; = "_data"

.field public static final _ID:Ljava/lang/String; = "_ID"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_VOICECALL_CONFIG_INCALLUI_PACKAGE_NAME"

    const-string v2, "com.android.incallui"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/agif/AgifCallContract;->AGIF_CALL_PROVIDER:Ljava/lang/String;

    const-string v0, "content://com.samsung.android.provider.agifcallprovider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "agifs"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/agif/AgifCallContract;->CONTENT_URI_AGIF:Landroid/net/Uri;

    const-string v0, "content://com.samsung.android.provider.agifcallprovider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "packages"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/agif/AgifCallContract;->CONTENT_URI_PACKAGES:Landroid/net/Uri;

    const-string v0, "content://com.samsung.android.provider.agifcallprovider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "recommended"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/agif/AgifCallContract;->CONTENT_URI_RECOMMENDED:Landroid/net/Uri;

    const-string v0, "samsungapps://CategoryList"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "0000005250"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/agif/AgifCallContract;->SAMSUNGAPPS_URI_CATEGORYCALLING:Landroid/net/Uri;

    const-string v0, "samsungapps://ProductDetail"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/agif/AgifCallContract;->SAMSUNGAPPS_URI_PRODUCTDETAIL:Landroid/net/Uri;

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_ID"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "package_name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "agif_name"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "_data"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "category"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "artist"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "date"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/incallui/agif/AgifCallContract;->AGIF_PROJECTION:[Ljava/lang/String;

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_VOICECALL_CONFIG_INCALLUI_PACKAGE_NAME"

    const-string v2, "com.android.incallui"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/agif/AgifCallContract;->INCALLUI_PACKAGE_NAME:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android.resource://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/incallui/agif/AgifCallContract;->INCALLUI_PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f0200bc

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/agif/AgifCallContract;->AGIF_DUMMY_URI:Landroid/net/Uri;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android.resource://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/incallui/agif/AgifCallContract;->INCALLUI_PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f0200bd

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/agif/AgifCallContract;->AGIF_DUMMY_SMALL_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
