.class public Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/Pref;
.super Ljava/lang/Object;


# static fields
.field private static final DB_MIGRATION_DONE:Ljava/lang/String; = "db_migration_done"

.field private static final DEVICE_ID:Ljava/lang/String; = "device_id"

.field private static final HIDDEN_RS_CONFIG_ORS:Ljava/lang/String; = ".hidden_rs_config_ors"

.field private static final PREF_FILE:Ljava/lang/String; = "rshare_pref"

.field private static final SPP_REG_ID:Ljava/lang/String; = "spp_reg_id"

.field private static final TAG:Ljava/lang/String;

.field protected static final hexArray:[C

.field static sCtx:Landroid/content/Context;

.field private static sPref:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/Pref;


# instance fields
.field private mOrsServerInfo:Lcom/samsung/android/sdk/ssf/account/io/ServerInfo;

.field private sCoreAppsAccessToken:Ljava/lang/String;

.field private sDeviceId:Ljava/lang/String;

.field private sDeviceImsi:Ljava/lang/String;

.field private sOnCircleAccessToken:Ljava/lang/String;

.field private sOrcaDuid:Ljava/lang/String;

.field private sRUtil:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RUtil;

.field private sServerOrcaProxy:Ljava/lang/String;

.field private sServerOrs:Ljava/lang/String;

.field private sServerQuota:Ljava/lang/String;

.field private sSppRegId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/Pref;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/Pref;->TAG:Ljava/lang/String;

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/Pref;

    invoke-direct {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/Pref;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/Pref;->sPref:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/Pref;

    const-string v0, "0123456789ABCDEF"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/Pref;->hexArray:[C

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/Pref;->sDeviceId:Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/Pref;->sCoreAppsAccessToken:Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/Pref;->sOnCircleAccessToken:Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/Pref;->sSppRegId:Ljava/lang/String;

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RUtil;->getInstance()Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/Pref;->sRUtil:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RUtil;

    iput-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/Pref;->sOrcaDuid:Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/Pref;->sServerOrs:Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/Pref;->sServerOrcaProxy:Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/Pref;->sServerQuota:Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/Pref;->sDeviceImsi:Ljava/lang/String;

    return-void
.end method

.method private bytesToHex([B)Ljava/lang/String;
    .locals 6

    array-length v0, p1

    mul-int/lit8 v0, v0, 0x2

    new-array v1, v0, [C

    const/4 v0, 0x0

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    aget-byte v2, p1, v0

    and-int/lit16 v2, v2, 0xff

    mul-int/lit8 v3, v0, 0x2

    sget-object v4, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/Pref;->hexArray:[C

    ushr-int/lit8 v5, v2, 0x4

    aget-char v4, v4, v5

    aput-char v4, v1, v3

    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v3, v3, 0x1

    sget-object v4, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/Pref;->hexArray:[C

    and-int/lit8 v2, v2, 0xf

    aget-char v2, v4, v2

    aput-char v2, v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public static getInstance()Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/Pref;
    .locals 2

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/Pref;->sCtx:Landroid/content/Context;

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/Pref;->sPref:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/Pref;

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/Pref;->init(Landroid/content/Context;)V

    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/Pref;->sPref:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/Pref;

    return-object v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 0

    sput-object p1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/Pref;->sCtx:Landroid/content/Context;

    return-void
.end method

.method private setOrcaDuid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/Pref;->sOrcaDuid:Ljava/lang/String;

    return-void
.end method

.method private setOrcaProxyServer(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/Pref;->sServerOrcaProxy:Ljava/lang/String;

    return-void
.end method

.method private setOrsServer(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/Pref;->sServerOrs:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public clearAuthInfo()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "Clear auth info"

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/Pref;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/Pref;->setOrcaDuid(Ljava/lang/String;)V

    const/4 v0, 0x2

    invoke-virtual {p0, v2, v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/Pref;->setAccessToken(Ljava/lang/String;I)V

    const/4 v0, 0x5

    invoke-virtual {p0, v2, v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/Pref;->setAccessToken(Ljava/lang/String;I)V

    return-void
.end method

.method public clearServer()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/Pref;->setOrcaProxyServer(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/Pref;->setOrsServer(Ljava/lang/String;)V

    return-void
.end method

.method public generateTdkApiId()Ljava/lang/String;
    .locals 7

    const/4 v6, 0x2

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/Feature;->getEnabledTdkNanoId()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    if-ge v1, v2, :cond_1

    :cond_0
    :goto_0
    const-string v1, "%d%d%s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    aput-object v0, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x4

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/Pref;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public getAccessToken(I)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/Pref;->sCoreAppsAccessToken:Ljava/lang/String;

    const/4 v1, 0x5

    if-ne v1, p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/Pref;->sOnCircleAccessToken:Ljava/lang/String;

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAccessToken : serviceId = [ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ], token = [ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/Pref;->TAG:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getDbMigrationDone()Z
    .locals 4

    const-class v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/Pref;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/Pref;->sCtx:Landroid/content/Context;

    const-string v2, "rshare_pref"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "db_migration_done"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/Pref;->sDeviceId:Ljava/lang/String;

    if-nez v0, :cond_2

    const-class v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/Pref;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/Pref;->sDeviceId:Ljava/lang/String;

    if-nez v0, :cond_1

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/Pref;->sCtx:Landroid/content/Context;

    const-string v2, "rshare_pref"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "device_id"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    iput-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/Pref;->sDeviceId:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/Pref;->sDeviceId:Ljava/lang/String;

    monitor-exit v1

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/DeviceUtils;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "device_id"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    iput-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/Pref;->sDeviceId:Ljava/lang/String;

    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/Pref;->sDeviceId:Ljava/lang/String;

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getDeviceImsi()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/Pref;->sDeviceImsi:Ljava/lang/String;

    if-nez v0, :cond_1

    const-class v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/Pref;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/Pref;->sCtx:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/Pref;->sDeviceImsi:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/Pref;->sDeviceImsi:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "000000000000000"

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/Pref;->sDeviceImsi:Ljava/lang/String;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/Pref;->sDeviceImsi:Ljava/lang/String;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getOrcaDuid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/Pref;->sOrcaDuid:Ljava/lang/String;

    return-object v0
.end method

.method public getOrcaProxyServer()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/Pref;->sServerOrcaProxy:Ljava/lang/String;

    return-object v0
.end method

.method public getOrsServer()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/Pref;->sServerOrs:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceEnabled()Z
    .locals 6

    const/4 v5, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/Pref;->sCtx:Landroid/content/Context;

    invoke-static {v0, v5}, Lcom/samsung/android/sdk/enhancedfeatures/internal/EasySignUpInterface;->getServiceStatus(Landroid/content/Context;I)I

    move-result v3

    if-ne v3, v1, :cond_0

    move v0, v1

    :goto_0
    const-string v4, "[getServiceEnabled] status = %d r =%s"

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v2

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/Pref;->TAG:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method public getServiceEnabled(I)Z
    .locals 6

    const/4 v2, 0x0

    const/4 v1, 0x1

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/Pref;->sCtx:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/internal/EasySignUpInterface;->getServiceStatus(Landroid/content/Context;I)I

    move-result v3

    if-ne v3, v1, :cond_0

    move v0, v1

    :goto_0
    const-string v4, "[getServiceEnabled] status = %d r =%s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v2

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/Pref;->TAG:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method public getSppRegId()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/Pref;->sSppRegId:Ljava/lang/String;

    if-nez v0, :cond_1

    const-class v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/Pref;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/Pref;->sSppRegId:Ljava/lang/String;

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/Pref;->sCtx:Landroid/content/Context;

    const-string v2, "rshare_pref"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "spp_reg_id"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/Pref;->sSppRegId:Ljava/lang/String;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/Pref;->sSppRegId:Ljava/lang/String;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setAccessToken(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x2

    if-ne v0, p2, :cond_1

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/Pref;->sCoreAppsAccessToken:Ljava/lang/String;

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x5

    if-ne v0, p2, :cond_0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/Pref;->sOnCircleAccessToken:Ljava/lang/String;

    goto :goto_0
.end method

.method public setAuthInfo()Z
    .locals 9

    const/4 v8, 0x5

    const/4 v1, 0x0

    const/4 v0, 0x1

    const/4 v7, 0x2

    invoke-virtual {p0, v7}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/Pref;->getAccessToken(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/Pref;->sCtx:Landroid/content/Context;

    invoke-static {v2, v7}, Lcom/samsung/android/sdk/enhancedfeatures/internal/EasySignUpInterface;->getAccessToken(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/Pref;->sCtx:Landroid/content/Context;

    invoke-static {v3, v8}, Lcom/samsung/android/sdk/enhancedfeatures/internal/EasySignUpInterface;->getAccessToken(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/Pref;->sCtx:Landroid/content/Context;

    invoke-static {v4}, Lcom/samsung/android/sdk/enhancedfeatures/internal/EasySignUpInterface;->getDuid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "Get RS auth info from ESU token=%s duid=%s"

    new-array v6, v7, [Ljava/lang/Object;

    aput-object v2, v6, v1

    aput-object v4, v6, v0

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/Pref;->TAG:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "Get OC auth info from ESU token=%s duid=%s"

    new-array v6, v7, [Ljava/lang/Object;

    aput-object v3, v6, v1

    aput-object v4, v6, v0

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/Pref;->TAG:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    invoke-direct {p0, v4}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/Pref;->setOrcaDuid(Ljava/lang/String;)V

    invoke-virtual {p0, v2, v7}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/Pref;->setAccessToken(Ljava/lang/String;I)V

    invoke-virtual {p0, v3, v8}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/Pref;->setAccessToken(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public setServer()Z
    .locals 10

    const/4 v3, 0x0

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/Pref;->getOrcaProxyServer()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/Pref;->sCtx:Landroid/content/Context;

    const-string v2, "orca"

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/internal/EasySignUpInterface;->getUrl(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/Pref;->sCtx:Landroid/content/Context;

    const-string v4, "ors"

    invoke-static {v2, v4}, Lcom/samsung/android/sdk/enhancedfeatures/internal/EasySignUpInterface;->getUrl(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/Pref;->sCtx:Landroid/content/Context;

    const-string v5, "quota"

    invoke-static {v4, v5}, Lcom/samsung/android/sdk/enhancedfeatures/internal/EasySignUpInterface;->getUrl(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "orca = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ors = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " quota = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/Pref;->TAG:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/Pref;->setOrcaProxyServer(Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/Pref;->setOrsServer(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    const-string v4, ".hidden_rs_config_ors"

    invoke-direct {v1, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v1, 0x0

    :try_start_1
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v2, 0x0

    :try_start_2
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/Pref;->setOrsServer(Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "use custom ors "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/Pref;->TAG:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    if-eqz v5, :cond_4

    if-eqz v3, :cond_6

    :try_start_3
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_4
    :goto_1
    if-eqz v4, :cond_0

    if-eqz v3, :cond_9

    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    :catch_0
    move-exception v2

    :try_start_5
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    :catch_2
    move-exception v5

    :try_start_6
    invoke-virtual {v2, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_1

    :catch_3
    move-exception v1

    :try_start_7
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :catchall_0
    move-exception v2

    move-object v3, v1

    move-object v1, v2

    :goto_2
    if-eqz v4, :cond_5

    if-eqz v3, :cond_a

    :try_start_8
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_6
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    :cond_5
    :goto_3
    :try_start_9
    throw v1
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1

    :cond_6
    :try_start_a
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v1

    goto :goto_2

    :catch_4
    move-exception v1

    :try_start_b
    throw v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :catchall_2
    move-exception v2

    move-object v9, v2

    move-object v2, v1

    move-object v1, v9

    :goto_4
    if-eqz v5, :cond_7

    if-eqz v2, :cond_8

    :try_start_c
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_5
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    :cond_7
    :goto_5
    :try_start_d
    throw v1

    :catch_5
    move-exception v5

    invoke-virtual {v2, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_5

    :cond_8
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_3
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    goto :goto_5

    :cond_9
    :try_start_e
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    goto/16 :goto_0

    :catch_6
    move-exception v2

    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_a
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_1

    goto :goto_3

    :catchall_3
    move-exception v1

    move-object v2, v3

    goto :goto_4
.end method

.method public sha1Hash(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "SHA-1"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    const/4 v3, 0x0

    array-length v4, v2

    invoke-virtual {v1, v2, v3, v4}, Ljava/security/MessageDigest;->update([BII)V

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/Pref;->bytesToHex([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method
