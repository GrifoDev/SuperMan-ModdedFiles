.class public Lcom/android/server/EngineeringModeDeviceInfo;
.super Ljava/lang/Object;
.source "EngineeringModeDeviceInfo.java"


# static fields
.field private static final PRODUCT_SERIAL_NUM:Ljava/lang/String; = "ril.serialnumber"

.field private static final TAG:Ljava/lang/String; = "EngineeringModeDeviceInfo"

.field private static volatile uniqueInstance:Lcom/android/server/EngineeringModeDeviceInfo;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/EngineeringModeDeviceInfo;->uniqueInstance:Lcom/android/server/EngineeringModeDeviceInfo;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/EngineeringModeDeviceInfo;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/server/EngineeringModeDeviceInfo;
    .locals 2

    sget-object v0, Lcom/android/server/EngineeringModeDeviceInfo;->uniqueInstance:Lcom/android/server/EngineeringModeDeviceInfo;

    if-nez v0, :cond_1

    const-class v1, Lcom/android/server/EngineeringModeDeviceInfo;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/server/EngineeringModeDeviceInfo;->uniqueInstance:Lcom/android/server/EngineeringModeDeviceInfo;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/EngineeringModeDeviceInfo;

    invoke-direct {v0, p0}, Lcom/android/server/EngineeringModeDeviceInfo;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/EngineeringModeDeviceInfo;->uniqueInstance:Lcom/android/server/EngineeringModeDeviceInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    :cond_1
    sget-object v0, Lcom/android/server/EngineeringModeDeviceInfo;->uniqueInstance:Lcom/android/server/EngineeringModeDeviceInfo;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static isWifiOnlyModel(Landroid/content/Context;)Z
    .locals 3

    const/4 v2, 0x0

    const-string/jumbo v1, "connectivity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v1

    if-eqz v1, :cond_0

    return v2

    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public static readSN()Ljava/lang/String;
    .locals 3

    const-string/jumbo v1, "ril.serialnumber"

    const-string/jumbo v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getImei()Ljava/lang/String;
    .locals 3

    iget-object v1, p0, Lcom/android/server/EngineeringModeDeviceInfo;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/EngineeringModeDeviceInfo;->isWifiOnlyModel(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "EngineeringModeDeviceInfo"

    const-string/jumbo v2, "Support Only Wifi"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/EngineeringModeDeviceInfo;->readSN()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/android/server/EngineeringModeDeviceInfo;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getModelName()Ljava/lang/String;
    .locals 5

    invoke-static {}, Lcom/android/server/CscParser;->getCustomerInstance()Lcom/android/server/CscParser;

    move-result-object v1

    const-string/jumbo v3, "GeneralInfo.SalesCode"

    invoke-virtual {v1, v3}, Lcom/android/server/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
