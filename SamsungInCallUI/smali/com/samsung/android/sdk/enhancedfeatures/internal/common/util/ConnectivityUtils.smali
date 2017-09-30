.class public Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/ConnectivityUtils;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sConMgr:Landroid/net/ConnectivityManager;

.field private static sIsSmsCapableInited:Z

.field private static sIsWifiOnlyModel:Z

.field private static sIsWifiOnlyModelInited:Z

.field private static sTelMgr:Landroid/telephony/TelephonyManager;

.field private static sisSmsCapable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    const-class v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/ConnectivityUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/ConnectivityUtils;->TAG:Ljava/lang/String;

    sput-object v2, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/ConnectivityUtils;->sConMgr:Landroid/net/ConnectivityManager;

    sput-object v2, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/ConnectivityUtils;->sTelMgr:Landroid/telephony/TelephonyManager;

    sput-boolean v1, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/ConnectivityUtils;->sIsWifiOnlyModelInited:Z

    sput-boolean v1, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/ConnectivityUtils;->sIsWifiOnlyModel:Z

    sput-boolean v1, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/ConnectivityUtils;->sIsSmsCapableInited:Z

    sput-boolean v1, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/ConnectivityUtils;->sisSmsCapable:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getConnectivityManager(Landroid/content/Context;)Landroid/net/ConnectivityManager;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/ConnectivityUtils;->sConMgr:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/ConnectivityUtils;->sConMgr:Landroid/net/ConnectivityManager;

    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/ConnectivityUtils;->sConMgr:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method private static getTelephonyManager(Landroid/content/Context;)Landroid/telephony/TelephonyManager;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/ConnectivityUtils;->sTelMgr:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/ConnectivityUtils;->sTelMgr:Landroid/telephony/TelephonyManager;

    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/ConnectivityUtils;->sTelMgr:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method public static isMobileNetworkConnected(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/ConnectivityUtils;->getConnectivityManager(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v2, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/net/NetworkInfo$State;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isNetworkAvailable(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/ConnectivityUtils;->isMobileNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/ConnectivityUtils;->isWifiAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSmsCapable(Landroid/content/Context;)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    sget-boolean v2, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/ConnectivityUtils;->sIsSmsCapableInited:Z

    if-eqz v2, :cond_0

    sget-boolean v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/ConnectivityUtils;->sisSmsCapable:Z

    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonFeature;->isLduDevice(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    sput-boolean v1, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/ConnectivityUtils;->sIsSmsCapableInited:Z

    sput-boolean v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/ConnectivityUtils;->sisSmsCapable:Z

    goto :goto_0

    :cond_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_2

    invoke-static {p0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/ConnectivityUtils;->getTelephonyManager(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isSmsCapable()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/ConnectivityUtils;->sisSmsCapable:Z

    :goto_1
    sput-boolean v1, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/ConnectivityUtils;->sIsSmsCapableInited:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "is SMS capable? : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/ConnectivityUtils;->sisSmsCapable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/ConnectivityUtils;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/SDKLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/ConnectivityUtils;->sisSmsCapable:Z

    goto :goto_0

    :cond_2
    invoke-static {p0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/ConnectivityUtils;->getTelephonyManager(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v2

    if-eq v2, v1, :cond_3

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    :cond_3
    move v0, v1

    :cond_4
    sput-boolean v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/ConnectivityUtils;->sisSmsCapable:Z

    goto :goto_1
.end method

.method public static isWifiAvailable(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/ConnectivityUtils;->getConnectivityManager(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    :cond_0
    return v0
.end method

.method public static isWifiOnlyModel(Landroid/content/Context;)Z
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    sget-boolean v2, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/ConnectivityUtils;->sIsWifiOnlyModelInited:Z

    if-eqz v2, :cond_0

    sget-boolean v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/ConnectivityUtils;->sIsWifiOnlyModel:Z

    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/ConnectivityUtils;->getConnectivityManager(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    if-nez v2, :cond_1

    move v0, v1

    :cond_1
    sput-boolean v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/ConnectivityUtils;->sIsWifiOnlyModel:Z

    sput-boolean v1, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/ConnectivityUtils;->sIsWifiOnlyModelInited:Z

    sget-boolean v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/ConnectivityUtils;->sIsWifiOnlyModel:Z

    goto :goto_0
.end method
