.class public Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonFeature;
.super Ljava/lang/Object;


# static fields
.field public static ACCOUNTNAME_COREAPPS:Ljava/lang/String; = null

.field public static final ACCOUNTNAME_DEVICE:Ljava/lang/String; = "vnd.sec.contact.phone"

.field public static final ACCOUNTTYPE_DEVICE:Ljava/lang/String; = "vnd.sec.contact.phone"

.field public static CONTACT_PROFILE_SERVICE_ENABLE:Z = false

.field public static DEBUG_LOG:Z = false

.field public static FALSE:I = 0x0

.field public static final FREE_MESSAGE_DEFAULT_ON:Z = true

.field public static final FREE_MESSAGE_DEV_SERVER:Z = true

.field public static final FREE_MESSAGE_SUPPORT_FILE_TRANSFER:Z = true

.field public static final FREE_MESSAGE_WIFI_ONLY:Z = false

.field private static final IS_LDU_DEVICE:Z

.field public static final LDU_CSC:Ljava/lang/String; = "PAP"

.field public static LOCAL_DB_ENCRYPTION:Z = false

.field public static NONE:I = 0x0

.field public static ONLY_USE_EASHSHARE_APP:Z = false

.field public static final PREPRD_SERVER_FEATURE:Z = true

.field public static final SHOW_BTN_BG:Z

.field public static SUPPORT_COREAPPS_JOIN_AUTH:I = 0x0

.field public static final SUPPORT_DEFAULT_FEATURES_ONLY:Z = false

.field public static SUPPORT_DEV_FILE_UPLOAD:Z = false

.field public static SUPPORT_GCM:Z = false

.field public static SUPPORT_NOT_NORMALIZED_NUMBER:Z = false

.field public static SUPPORT_PRESENCE_FEATURE:Z = false

.field public static SUPPORT_SYNC_SIM_CONTACT:Z = false

.field private static final TAG:Ljava/lang/String; = "CommonFeature"

.field public static TRUE:I

.field public static USE_MESSAGE_BACKGROUND_SENDER:Z

.field private static isRussiaDevice:Z

.field private static isSamsungDevice:Z

.field private static isSupportedSamsungDevice:Z

.field private static sCscContact:Z

.field private static sCscFreeMessage:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    sput-boolean v1, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonFeature;->USE_MESSAGE_BACKGROUND_SENDER:Z

    sput-boolean v2, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonFeature;->SUPPORT_PRESENCE_FEATURE:Z

    sput-boolean v2, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonFeature;->SUPPORT_DEV_FILE_UPLOAD:Z

    sput-boolean v1, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonFeature;->LOCAL_DB_ENCRYPTION:Z

    sput-boolean v1, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonFeature;->SUPPORT_GCM:Z

    sput-boolean v1, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonFeature;->CONTACT_PROFILE_SERVICE_ENABLE:Z

    sput-boolean v2, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonFeature;->ONLY_USE_EASHSHARE_APP:Z

    sput-object v4, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonFeature;->sCscFreeMessage:Ljava/lang/String;

    sput-boolean v1, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonFeature;->sCscContact:Z

    sput-boolean v2, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonFeature;->DEBUG_LOG:Z

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/apiInterface/FloatingFeatureRef;->isSupportLinkSimContactEnabled()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonFeature;->SUPPORT_SYNC_SIM_CONTACT:Z

    sput-boolean v2, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonFeature;->SUPPORT_NOT_NORMALIZED_NUMBER:Z

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/apiInterface/FloatingFeatureRef;->isShowBtnBgEnabled()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonFeature;->SHOW_BTN_BG:Z

    const-string v0, "samsung"

    sget-object v3, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonFeature;->isSamsungDevice:Z

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonFeature;->getIsSamsungDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v0, v3, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonFeature;->isSupportedSamsungDevice:Z

    const-string v0, "ro.csc.sales_code"

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/apiInterface/SystemPropertiesRef;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "PAP"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonFeature;->IS_LDU_DEVICE:Z

    const-string v0, "SER"

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CscUtil;->getCSC()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonFeature;->isRussiaDevice:Z

    sput-object v4, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonFeature;->ACCOUNTNAME_COREAPPS:Ljava/lang/String;

    const/4 v0, -0x1

    sput v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonFeature;->NONE:I

    sput v2, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonFeature;->FALSE:I

    sput v1, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonFeature;->TRUE:I

    sget v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonFeature;->NONE:I

    sput v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonFeature;->SUPPORT_COREAPPS_JOIN_AUTH:I

    return-void

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static coreAppsInstalled(Landroid/content/Context;)Z
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "com.samsung.android.coreapps"

    const/16 v2, 0x40

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    const-string v0, "coreapps is installed"

    const-string v1, "CommonFeature"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/SDKLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getCoreAppsMajorVersion(Landroid/content/Context;)I
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.samsung.android.coreapps"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    const-string v2, "."

    invoke-static {v2}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "coreapps version : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v3, v1, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v3, v1, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v3, v1, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CommonFeature"

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/SDKLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getEnableBadNetworkPerformance()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static getIsRussiaDevice()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonFeature;->isRussiaDevice:Z

    return v0
.end method

.method public static getIsSamsungDevice()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonFeature;->isSamsungDevice:Z

    return v0
.end method

.method public static getIsSupportedSamsungDevice()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonFeature;->isSupportedSamsungDevice:Z

    return v0
.end method

.method public static getProfileAccountName()Ljava/lang/String;
    .locals 2

    sget-boolean v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonFeature;->isSamsungDevice:Z

    if-eqz v0, :cond_0

    const-string v0, "vnd.sec.contact.phone"

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonFeature;->ACCOUNTNAME_COREAPPS:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonFeature;->ACCOUNTNAME_COREAPPS:Ljava/lang/String;

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/SimUtil;->getIMSI()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/internal/EasySignUpInterface;->getMsisdn(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, "MSISDN is null!"

    const-string v1, "CommonFeature"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/SDKLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "No results"

    :cond_2
    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/NumberUtils;->convertMsisdnToInternational(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonFeature;->ACCOUNTNAME_COREAPPS:Ljava/lang/String;

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonFeature;->ACCOUNTNAME_COREAPPS:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getProfileAccountType()Ljava/lang/String;
    .locals 1

    sget-boolean v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonFeature;->isSamsungDevice:Z

    if-eqz v0, :cond_0

    const-string v0, "vnd.sec.contact.phone"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "com.samsung.android.coreapps"

    goto :goto_0
.end method

.method private static getVersionCode()I
    .locals 4

    const/4 v0, 0x0

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    :try_start_0
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget v0, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mvoip"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonFeature;->SUPPORT_NOT_NORMALIZED_NUMBER:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isJoinAuth(Landroid/content/Context;)Z
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    const-string v1, "joinauth"

    const-string v2, "com.samsung.android.enhancedfeatures.sdk.type"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "sdk is joinauth"

    const-string v1, "CommonFeature"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/SDKLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isLduDevice(Landroid/content/Context;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    sget-boolean v2, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonFeature;->IS_LDU_DEVICE:Z

    if-nez v2, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "shopdemo"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    return v0
.end method

.method public static makeFeature()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "###versionCode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonFeature;->getVersionCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sCscContact : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonFeature;->sCscContact:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", SYNC SIM :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonFeature;->SUPPORT_SYNC_SIM_CONTACT:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CommonFeature"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/SDKLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/DeviceUtils;->isEngBinary()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonFeature;->LOCAL_DB_ENCRYPTION:Z

    :cond_0
    return-void
.end method

.method public static supportCoreAppsJoinAuth(Landroid/content/Context;)Z
    .locals 2

    sget v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonFeature;->SUPPORT_COREAPPS_JOIN_AUTH:I

    sget v1, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonFeature;->NONE:I

    if-ne v0, v1, :cond_0

    invoke-static {p0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonFeature;->isJoinAuth(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonFeature;->coreAppsInstalled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonFeature;->getCoreAppsMajorVersion(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_1

    sget v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonFeature;->TRUE:I

    sput v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonFeature;->SUPPORT_COREAPPS_JOIN_AUTH:I

    :cond_0
    :goto_0
    sget v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonFeature;->SUPPORT_COREAPPS_JOIN_AUTH:I

    sget v1, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonFeature;->TRUE:I

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_1
    sget v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonFeature;->FALSE:I

    sput v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonFeature;->SUPPORT_COREAPPS_JOIN_AUTH:I

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method
