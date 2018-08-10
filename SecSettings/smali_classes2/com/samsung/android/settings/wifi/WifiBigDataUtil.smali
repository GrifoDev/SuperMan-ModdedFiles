.class public Lcom/samsung/android/settings/wifi/WifiBigDataUtil;
.super Ljava/lang/Object;
.source "WifiBigDataUtil.java"


# static fields
.field private static final DBG:Z

.field private static final FEATURE_NAME:[Ljava/lang/String;

.field public static final GSIM_ENABLE_FEATURE:Ljava/lang/String;

.field private static sInstance:Lcom/samsung/android/settings/wifi/WifiBigDataUtil;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/wifi/WifiBigDataUtil;->DBG:Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string/jumbo v1, "SEC_FLOATING_FEATURE_SETTINGS_CONFIG_BEHAVIOR_FLOW_LOGGING"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/wifi/WifiBigDataUtil;->GSIM_ENABLE_FEATURE:Ljava/lang/String;

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "AOST"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "WPST"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "GOWP"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "WHLP"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/settings/wifi/WifiBigDataUtil;->FEATURE_NAME:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiBigDataUtil;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiBigDataUtil;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/wifi/WifiBigDataUtil;
    .locals 2

    const-class v1, Lcom/samsung/android/settings/wifi/WifiBigDataUtil;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/samsung/android/settings/wifi/WifiBigDataUtil;->sInstance:Lcom/samsung/android/settings/wifi/WifiBigDataUtil;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/settings/wifi/WifiBigDataUtil;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/WifiBigDataUtil;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/samsung/android/settings/wifi/WifiBigDataUtil;->sInstance:Lcom/samsung/android/settings/wifi/WifiBigDataUtil;

    :cond_0
    sget-object v0, Lcom/samsung/android/settings/wifi/WifiBigDataUtil;->sInstance:Lcom/samsung/android/settings/wifi/WifiBigDataUtil;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public insertBigdataLog(ILjava/lang/String;)V
    .locals 4

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    const/16 v2, 0x4d

    iput v2, v1, Landroid/os/Message;->what:I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "bigdata"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v2, "feature"

    sget-object v3, Lcom/samsung/android/settings/wifi/WifiBigDataUtil;->FEATURE_NAME:[Ljava/lang/String;

    aget-object v3, v3, p1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "data"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiBigDataUtil;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v1}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    return-void
.end method

.method public insertLog(ILjava/lang/String;)V
    .locals 4

    const/4 v2, 0x4

    if-ge p1, v2, :cond_0

    if-nez p2, :cond_2

    :cond_0
    sget-boolean v2, Lcom/samsung/android/settings/wifi/WifiBigDataUtil;->DBG:Z

    if-eqz v2, :cond_1

    const-string/jumbo v2, "WifiBigDataUtil"

    const-string/jumbo v3, "insertLog failed, feature or extra data is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :cond_2
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    const/16 v2, 0x4d

    iput v2, v1, Landroid/os/Message;->what:I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "feature"

    sget-object v3, Lcom/samsung/android/settings/wifi/WifiBigDataUtil;->FEATURE_NAME:[Ljava/lang/String;

    aget-object v3, v3, p1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "extra"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiBigDataUtil;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v1}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    return-void
.end method
