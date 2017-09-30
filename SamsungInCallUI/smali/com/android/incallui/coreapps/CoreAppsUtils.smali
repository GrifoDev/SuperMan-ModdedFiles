.class public Lcom/android/incallui/coreapps/CoreAppsUtils;
.super Ljava/lang/Object;


# static fields
.field public static final AGIF_SERVICE_OFF:I = 0x0

.field public static final AGIF_SERVICE_ON:I = 0x1

.field public static APP_ID:Ljava/lang/String; = null

.field public static APP_SECRET:Ljava/lang/String; = null

.field private static final BASE_CONTENT_URI_PUBLIC:Landroid/net/Uri;

.field public static CID:Ljava/lang/String; = null

.field public static GCM_ID:Ljava/lang/String; = null

.field private static final LOG_TAG:Ljava/lang/String; = "Agifflow-Agifflow-CoreAppsUtils"

.field private static final SERVICE_ID_CONTACT:I = 0x0

.field public static final SERVICE_OFF:I = 0x0

.field public static final SERVICE_ON:I = 0x1

.field public static SHOP_CONTENT_TYPE:Ljava/lang/String; = null

.field public static SHOP_FILE_TYPE:Ljava/lang/String; = null

.field public static SHOP_SERVICE_NAME:Ljava/lang/String; = null

.field public static SPP_ID:Ljava/lang/String; = null

.field private static final SYSTEM_SETTING_AGIF_ENABLE_STATE:Ljava/lang/String; = "system_setting_agif_enable_state"

.field private static mEnhancedAccount:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccount;

.field private static mEnhancedFeatures:Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;

.field private static mEnhancedShare:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;

.field private static mEnhancedShop:Lcom/samsung/android/sdk/enhancedfeatures/shop/apis/EnhancedShop;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "yb0hfzbktt"

    sput-object v0, Lcom/android/incallui/coreapps/CoreAppsUtils;->APP_ID:Ljava/lang/String;

    const-string v0, "7F806N6TF16NTY30RKU132PKUGUMMVBI"

    sput-object v0, Lcom/android/incallui/coreapps/CoreAppsUtils;->APP_SECRET:Ljava/lang/String;

    const-string v0, "879713408279"

    sput-object v0, Lcom/android/incallui/coreapps/CoreAppsUtils;->GCM_ID:Ljava/lang/String;

    const-string v0, "b2139ba90a15d17c"

    sput-object v0, Lcom/android/incallui/coreapps/CoreAppsUtils;->SPP_ID:Ljava/lang/String;

    const-string v0, "yb0hfzbktt"

    sput-object v0, Lcom/android/incallui/coreapps/CoreAppsUtils;->CID:Ljava/lang/String;

    const-string v0, "content://com.samsung.android.coreapps.easysignup.public"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/coreapps/CoreAppsUtils;->BASE_CONTENT_URI_PUBLIC:Landroid/net/Uri;

    const-string v0, "stickeragent"

    sput-object v0, Lcom/android/incallui/coreapps/CoreAppsUtils;->SHOP_SERVICE_NAME:Ljava/lang/String;

    const-string v0, "sticker"

    sput-object v0, Lcom/android/incallui/coreapps/CoreAppsUtils;->SHOP_CONTENT_TYPE:Ljava/lang/String;

    const-string v0, "gif"

    sput-object v0, Lcom/android/incallui/coreapps/CoreAppsUtils;->SHOP_FILE_TYPE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static convertToIntArray(Ljava/lang/String;)[I
    .locals 4

    const/4 v0, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "[]"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v0, "\\["

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\]"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v0, v3

    new-array v1, v0, [I

    const/4 v0, 0x0

    :goto_0
    array-length v2, v3

    if-ge v0, v2, :cond_0

    :try_start_0
    aget-object v2, v3, v0

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aput v2, v1, v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_1

    :cond_0
    move-object v0, v1

    :cond_1
    return-object v0
.end method

.method public static deRegister()V
    .locals 3

    const-string v0, "Agifflow-Agifflow-CoreAppsUtils"

    const-string v1, "deRegister()"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    new-instance v0, Lcom/android/incallui/coreapps/CoreAppsUtils$2;

    invoke-direct {v0}, Lcom/android/incallui/coreapps/CoreAppsUtils$2;-><init>()V

    invoke-static {}, Lcom/android/incallui/coreapps/CoreAppsUtils;->getEnhancedAccount()Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccount;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/incallui/coreapps/CoreAppsUtils;->getEnhancedAccount()Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccount;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccount;->unregister(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountListener;)V

    :cond_0
    return-void
.end method

.method public static downloadFile(Ljava/lang/String;Lcom/samsung/android/sdk/enhancedfeatures/shop/apis/listener/DownloadListener;)V
    .locals 4

    invoke-static {}, Lcom/android/incallui/coreapps/CoreAppsUtils;->getEnhancedShop()Lcom/samsung/android/sdk/enhancedfeatures/shop/apis/EnhancedShop;

    move-result-object v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/incallui/coreapps/CoreAppsUtils;->SHOP_FILE_TYPE:Ljava/lang/String;

    const-string v1, "\\."

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    const-string v2, "png"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "gif"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const-string v0, "Agifflow-Agifflow-CoreAppsUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "downloadFile fileType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    move-object v0, v1

    :cond_1
    invoke-static {}, Lcom/android/incallui/coreapps/CoreAppsUtils;->getEnhancedShop()Lcom/samsung/android/sdk/enhancedfeatures/shop/apis/EnhancedShop;

    move-result-object v1

    sget-object v2, Lcom/android/incallui/coreapps/CoreAppsUtils;->SHOP_CONTENT_TYPE:Ljava/lang/String;

    invoke-virtual {v1, p0, v2, v0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/shop/apis/EnhancedShop;->downloadFilesByFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/enhancedfeatures/shop/apis/listener/DownloadListener;)V

    :cond_2
    return-void
.end method

.method public static getAgifEnableState(Landroid/content/Context;)I
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "system_setting_agif_enable_state"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public static getEnhancedAccount()Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccount;
    .locals 3

    sget-object v0, Lcom/android/incallui/coreapps/CoreAppsUtils;->mEnhancedAccount:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccount;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/incallui/coreapps/CoreAppsUtils;->getEnhancedFeatures()Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccount;->getInstance(Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;)Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccount;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/coreapps/CoreAppsUtils;->mEnhancedAccount:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccount;

    sget-object v0, Lcom/android/incallui/coreapps/CoreAppsUtils;->mEnhancedAccount:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccount;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/incallui/coreapps/CoreAppsUtils;->mEnhancedAccount:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccount;

    new-instance v1, Lcom/android/incallui/coreapps/Sample2FAPushListener;

    invoke-direct {v1}, Lcom/android/incallui/coreapps/Sample2FAPushListener;-><init>()V

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccount;->addAccountPushListener(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountPushListener;)V

    :cond_0
    sget-object v0, Lcom/android/incallui/coreapps/CoreAppsUtils;->mEnhancedAccount:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccount;

    if-nez v0, :cond_1

    const-string v0, "Agifflow-Agifflow-CoreAppsUtils"

    const-string v1, "getEnhancedAccount() mEnhancedAccount = null"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1
    sget-object v0, Lcom/android/incallui/coreapps/CoreAppsUtils;->mEnhancedAccount:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccount;

    return-object v0
.end method

.method public static getEnhancedFeatures()Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;
    .locals 3

    const/4 v2, 0x1

    :try_start_0
    sget-object v0, Lcom/android/incallui/coreapps/CoreAppsUtils;->mEnhancedFeatures:Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures$Builder;

    invoke-static {}, Lcom/android/incallui/coreapps/CoreAppsUtils;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures$Builder;-><init>(Landroid/content/Context;)V

    sget-object v1, Lcom/android/incallui/coreapps/CoreAppsUtils;->APP_ID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures$Builder;->addAppId(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/incallui/coreapps/CoreAppsUtils;->APP_SECRET:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures$Builder;->addAppSecret(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/incallui/coreapps/CoreAppsUtils;->CID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures$Builder;->addCid(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures$Builder;->addAnonymous(Z)Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/incallui/coreapps/CoreAppsUtils;->SPP_ID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures$Builder;->addSppId(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/incallui/coreapps/CoreAppsUtils;->GCM_ID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures$Builder;->addGcmId(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures$Builder;->addEnhancedProfile(I)Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures$Builder;->addEnhancedShare()Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/incallui/coreapps/CoreAppsUtils;->SHOP_SERVICE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures$Builder;->addEnhancedShop(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures$Builder;->enableEnhancedModule()Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures$Builder;->build()Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/coreapps/CoreAppsUtils;->mEnhancedFeatures:Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;

    :cond_0
    sget-object v0, Lcom/android/incallui/coreapps/CoreAppsUtils;->mEnhancedFeatures:Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, "Agifflow-Agifflow-CoreAppsUtils"

    const-string v1, "need READ_PHONE_STATE permission."

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getEnhancedShare()Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;
    .locals 3

    sget-object v0, Lcom/android/incallui/coreapps/CoreAppsUtils;->mEnhancedShare:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/incallui/coreapps/CoreAppsUtils;->getEnhancedFeatures()Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->getInstance(Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/coreapps/CoreAppsUtils;->mEnhancedShare:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;

    sget-object v0, Lcom/android/incallui/coreapps/CoreAppsUtils;->mEnhancedFeatures:Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/incallui/coreapps/CoreAppsUtils;->mEnhancedShare:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;

    new-instance v1, Lcom/android/incallui/coreapps/SampleSharePushListener;

    invoke-direct {v1}, Lcom/android/incallui/coreapps/SampleSharePushListener;-><init>()V

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->addPushListener(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/EnhancedSharePushListener;)V

    invoke-static {}, Lcom/android/incallui/coreapps/CoreAppsUtils;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/coreapps/ShareDBhelper;->init(Landroid/content/Context;)V

    :cond_0
    sget-object v0, Lcom/android/incallui/coreapps/CoreAppsUtils;->mEnhancedShare:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;

    if-nez v0, :cond_1

    const-string v0, "Agifflow-Agifflow-CoreAppsUtils"

    const-string v1, "getEnhancedShare() mEnhancedShare = null"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1
    sget-object v0, Lcom/android/incallui/coreapps/CoreAppsUtils;->mEnhancedShare:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;

    return-object v0
.end method

.method public static getEnhancedShop()Lcom/samsung/android/sdk/enhancedfeatures/shop/apis/EnhancedShop;
    .locals 1

    sget-object v0, Lcom/android/incallui/coreapps/CoreAppsUtils;->SHOP_SERVICE_NAME:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/incallui/coreapps/CoreAppsUtils;->getEnhancedShop(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/shop/apis/EnhancedShop;

    move-result-object v0

    return-object v0
.end method

.method public static getEnhancedShop(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/shop/apis/EnhancedShop;
    .locals 1

    sget-object v0, Lcom/android/incallui/coreapps/CoreAppsUtils;->mEnhancedShop:Lcom/samsung/android/sdk/enhancedfeatures/shop/apis/EnhancedShop;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/incallui/coreapps/CoreAppsUtils;->getEnhancedFeatures()Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/samsung/android/sdk/enhancedfeatures/shop/apis/EnhancedShop;->getInstance(Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/shop/apis/EnhancedShop;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/coreapps/CoreAppsUtils;->mEnhancedShop:Lcom/samsung/android/sdk/enhancedfeatures/shop/apis/EnhancedShop;

    :cond_0
    sget-object v0, Lcom/android/incallui/coreapps/CoreAppsUtils;->mEnhancedShop:Lcom/samsung/android/sdk/enhancedfeatures/shop/apis/EnhancedShop;

    return-object v0
.end method

.method public static getErrorMessage(J)Ljava/lang/String;
    .locals 4

    const-string v0, ""

    long-to-int v0, p0

    sparse-switch v0, :sswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v1, "Agifflow-Agifflow-CoreAppsUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getErrorMessage() - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v0

    :sswitch_0
    const-string v0, "Device was not authenticated."

    goto :goto_0

    :sswitch_1
    const-string v0, "Network error."

    goto :goto_0

    :sswitch_2
    const-string v0, "Network IO error."

    goto :goto_0

    :sswitch_3
    const-string v0, "Network connection error."

    goto :goto_0

    :sswitch_4
    const-string v0, "Network timeout error."

    goto :goto_0

    :sswitch_5
    const-string v0, "Getting push token error."

    goto :goto_0

    :sswitch_6
    const-string v0, "Bad access token error."

    goto :goto_0

    :sswitch_7
    const-string v0, "Server error."

    goto :goto_0

    :sswitch_8
    const-string v0, "Server response error."

    goto :goto_0

    :sswitch_9
    const-string v0, "SIM card not present."

    goto :goto_0

    :sswitch_a
    const-string v0, "Invalid service id."

    goto :goto_0

    :sswitch_b
    const-string v0, "Un authorized model."

    goto :goto_0

    :sswitch_c
    const-string v0, "Invalid phone number."

    goto :goto_0

    :sswitch_d
    const-string v0, "Not able to send push"

    goto :goto_0

    :sswitch_e
    const-string v0, "Some permissions are not granted."

    goto :goto_0

    :sswitch_f
    const-string v0, "Its already authenticated."

    goto :goto_0

    :sswitch_10
    const-string v0, "Dormant user"

    goto :goto_0

    :sswitch_11
    const-string v0, "user was not joined with your service"

    goto :goto_0

    :sswitch_12
    const-string v0, "user was not joined with your service"

    goto :goto_0

    :sswitch_13
    const-string v0, "This service is off"

    goto :goto_0

    :sswitch_14
    const-string v0, "This service is restricted"

    goto :goto_0

    :sswitch_15
    const-string v0, "Invalid access token"

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x65 -> :sswitch_9
        0x66 -> :sswitch_5
        0x67 -> :sswitch_f
        0x68 -> :sswitch_e
        0x2af8 -> :sswitch_1
        0x2af9 -> :sswitch_4
        0x2afa -> :sswitch_3
        0x2afb -> :sswitch_2
        0x2ee0 -> :sswitch_7
        0x2ee1 -> :sswitch_6
        0x2ee2 -> :sswitch_8
        0x4e2a -> :sswitch_15
        0x4e3f -> :sswitch_c
        0x4e40 -> :sswitch_b
        0x4e41 -> :sswitch_a
        0x493e1 -> :sswitch_d
        0x493e2 -> :sswitch_11
        0x493e3 -> :sswitch_10
        0x493e4 -> :sswitch_13
        0x493e5 -> :sswitch_12
        0x493e6 -> :sswitch_14
    .end sparse-switch
.end method

.method public static getNetworkCountryIso(I)Ljava/lang/String;
    .locals 3

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v0, 0x0

    if-ne p0, v1, :cond_1

    invoke-static {v1}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->getNetworkCountryIso(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    if-ne p0, v2, :cond_0

    invoke-static {v2}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->getNetworkCountryIso(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getPhonenumberInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .locals 8

    const/4 v0, 0x0

    const/4 v7, 0x1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {p0, v2}, Lcom/android/incallui/util/SystemServiceUtils;->getCountryIso(Landroid/content/Context;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Agifflow-Agifflow-CoreAppsUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getPhonenumberInfo: first locale : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", countryIso : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    :try_start_0
    invoke-virtual {v1, p1, v3}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/String;Ljava/lang/String;)Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getRegionCodeForNumber(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Agifflow-Agifflow-CoreAppsUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isInternational targetIso "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    invoke-static {v2, v1, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Lcom/google/i18n/phonenumbers/NumberParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v1, "Agifflow-Agifflow-CoreAppsUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPhonenumberInfo: NumberParseException for incoming number \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/android/incallui/coreapps/CoreAppsUtils;->toLogSafePhoneNumberforAgif(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v7}, Lcom/android/incallui/Log;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public static getProfileAndCapabilityfromEFServer(Ljava/lang/String;Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/GetProfileAndCapabilityListener;)V
    .locals 2

    invoke-static {}, Lcom/android/incallui/coreapps/CoreAppsUtils;->getEnhancedFeatures()Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;->getInstance(Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;)Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;->getProfileAndCapability(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/GetProfileAndCapabilityListener;)V

    return-void
.end method

.method public static getSimCountryIso(I)Ljava/lang/String;
    .locals 3

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v0, 0x0

    if-ne p0, v1, :cond_1

    invoke-static {v1}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->getSimCountryIso(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    if-ne p0, v2, :cond_0

    invoke-static {v2}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->getSimCountryIso(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static getTelecomManager(Landroid/content/Context;)Landroid/telecom/TelecomManager;
    .locals 1

    const-string v0, "telecom"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    return-object v0
.end method

.method public static initEnhancedFeatures()V
    .locals 0

    invoke-static {}, Lcom/android/incallui/coreapps/CoreAppsUtils;->getEnhancedAccount()Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccount;

    invoke-static {}, Lcom/android/incallui/coreapps/CoreAppsUtils;->getEnhancedShare()Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;

    invoke-static {}, Lcom/android/incallui/coreapps/CoreAppsUtils;->getEnhancedShop()Lcom/samsung/android/sdk/enhancedfeatures/shop/apis/EnhancedShop;

    return-void
.end method

.method public static isDefaultDialer(Landroid/content/Context;)Z
    .locals 5

    invoke-static {p0}, Lcom/android/incallui/coreapps/CoreAppsUtils;->getTelecomManager(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/common/compat/telecom/TelecomManagerCompat;->b(Landroid/telecom/TelecomManager;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/android/incallui/InCallUIFeature;->getContactsPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v2, "Agifflow-Agifflow-CoreAppsUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dialer is not default dialer contactpackage : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/android/incallui/InCallUIFeature;->getContactsPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", current : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    invoke-static {v2, v0, v3}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    return v1
.end method

.method public static isNeedCheckDefaultDialer()Z
    .locals 1

    const-string v0, "feature_dcm"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "feature_kdi"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "feature_sbm"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isProfilSharingServiceOn()Z
    .locals 9

    const/4 v3, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const-string v6, ""

    sget-object v0, Lcom/android/incallui/coreapps/CoreAppsUtils;->BASE_CONTENT_URI_PUBLIC:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "sids"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-array v2, v8, [Ljava/lang/String;

    const-string v4, "sids"

    aput-object v4, v2, v7

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "sids"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :goto_1
    invoke-static {v0}, Lcom/android/incallui/coreapps/CoreAppsUtils;->convertToIntArray(Ljava/lang/String;)[I

    move-result-object v1

    if-eqz v1, :cond_3

    move v0, v7

    :goto_2
    array-length v2, v1

    if-ge v0, v2, :cond_3

    aget v2, v1, v0

    if-ne v7, v2, :cond_1

    move v0, v8

    :goto_3
    if-ne v0, v8, :cond_2

    const-string v1, "Agifflow-Agifflow-CoreAppsUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getServiceStatus : serviceId ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") is ON"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v8}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_4
    if-ne v0, v8, :cond_0

    move v7, v8

    :cond_0
    return v7

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    const-string v1, "Agifflow-Agifflow-CoreAppsUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getServiceStatus : serviceId ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") is OFF"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v8}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_4

    :cond_3
    move v0, v7

    goto :goto_3

    :cond_4
    move-object v0, v6

    goto :goto_0

    :cond_5
    move-object v0, v6

    goto :goto_1
.end method

.method public static register()V
    .locals 4

    const/4 v3, 0x1

    const-string v0, "Agifflow-Agifflow-CoreAppsUtils"

    const-string v1, "register()..."

    invoke-static {v0, v1, v3}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.READ_PHONE_STATE"

    aput-object v2, v0, v1

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "android.permission.READ_SMS"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "android.permission.SEND_SMS"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "android.permission.RECEIVE_SMS"

    aput-object v2, v0, v1

    new-instance v1, Lcom/android/incallui/coreapps/CoreAppsUtils$1;

    invoke-direct {v1}, Lcom/android/incallui/coreapps/CoreAppsUtils$1;-><init>()V

    invoke-static {}, Lcom/android/incallui/coreapps/CoreAppsUtils;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0, v1}, Lcom/android/incallui/coreapps/PermissionUtils;->permissionRequest(Landroid/content/Context;[Ljava/lang/String;Lcom/android/incallui/coreapps/PermissionInterface;)V

    return-void
.end method

.method public static setAgifEnableState(Landroid/content/Context;I)V
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "system_setting_agif_enable_state"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public static toLogSafePhoneNumberforAgif(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    if-nez p0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_5

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2d

    if-eq v2, v3, :cond_1

    const/16 v3, 0x40

    if-eq v2, v3, :cond_1

    const/16 v3, 0x2e

    if-eq v2, v3, :cond_1

    const/16 v3, 0x26

    if-eq v2, v3, :cond_1

    const/16 v3, 0x2b

    if-ne v2, v3, :cond_2

    :cond_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x6

    if-le v0, v3, :cond_3

    const/16 v2, 0x78

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_3
    const/4 v3, 0x3

    if-ne v0, v3, :cond_4

    const/16 v2, 0x7a

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_4
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static updateGeoDescriptionAsync(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x1

    const-string v0, "Agifflow-Agifflow-CoreAppsUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateGeoDescriptionAsync: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Lcom/android/incallui/coreapps/CoreAppsUtils;->toLogSafePhoneNumberforAgif(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    const-string v0, "Agifflow-Agifflow-CoreAppsUtils"

    const-string v1, "updateGeoDescriptionAsync: return"

    invoke-static {v0, v1, v4}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1
    new-instance v0, Lcom/android/incallui/coreapps/CoreAppsUtils$3;

    invoke-direct {v0}, Lcom/android/incallui/coreapps/CoreAppsUtils$3;-><init>()V

    const/4 v1, 0x3

    :try_start_0
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Agifflow-Agifflow-CoreAppsUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateGeoDescriptionAsync: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v4}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method
