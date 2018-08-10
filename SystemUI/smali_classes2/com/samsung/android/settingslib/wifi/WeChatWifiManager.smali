.class public Lcom/samsung/android/settingslib/wifi/WeChatWifiManager;
.super Ljava/lang/Object;
.source "WeChatWifiManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settingslib/wifi/WeChatWifiManager$WeChatApInfo;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static sWeChatWifiManager:Lcom/samsung/android/settingslib/wifi/WeChatWifiManager;


# instance fields
.field private mIsLogOut:Z

.field private mWeChatAps:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/settingslib/wifi/WeChatWifiManager$WeChatApInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/settingslib/wifi/WeChatWifiManager;->DBG:Z

    return v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settingslib/wifi/WeChatWifiManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settingslib/wifi/WeChatWifiManager;->mIsLogOut:Z

    return v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settingslib/wifi/WeChatWifiManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settingslib/wifi/WeChatWifiManager;->mIsLogOut:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settingslib/wifi/WeChatWifiManager;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settingslib/wifi/WeChatWifiManager;->sendLogoutBroadcast(Landroid/content/Context;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settingslib/wifi/WeChatWifiManager;->DBG:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settingslib/wifi/WeChatWifiManager;->mWeChatAps:Ljava/util/HashMap;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settingslib/wifi/WeChatWifiManager;->mIsLogOut:Z

    const-string/jumbo v0, "WeChatWifiManager"

    const-string/jumbo v1, "WeChatWifiManager"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settingslib/wifi/WeChatWifiManager;->init()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/samsung/android/settingslib/wifi/WeChatWifiManager;
    .locals 2

    const-class v1, Lcom/samsung/android/settingslib/wifi/WeChatWifiManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/samsung/android/settingslib/wifi/WeChatWifiManager;->sWeChatWifiManager:Lcom/samsung/android/settingslib/wifi/WeChatWifiManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/settingslib/wifi/WeChatWifiManager;

    invoke-direct {v0}, Lcom/samsung/android/settingslib/wifi/WeChatWifiManager;-><init>()V

    sput-object v0, Lcom/samsung/android/settingslib/wifi/WeChatWifiManager;->sWeChatWifiManager:Lcom/samsung/android/settingslib/wifi/WeChatWifiManager;

    :cond_0
    sget-object v0, Lcom/samsung/android/settingslib/wifi/WeChatWifiManager;->sWeChatWifiManager:Lcom/samsung/android/settingslib/wifi/WeChatWifiManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private sendLogoutBroadcast(Landroid/content/Context;)V
    .locals 3

    const-string/jumbo v1, "WeChatWifiManager"

    const-string/jumbo v2, "sendLogoutBroadcast"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "com.samsung.android.net.wifi.WECHAT_LOGOUT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x1000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public checkLogout(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lcom/samsung/android/settingslib/wifi/WeChatWifiManager$1;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/settingslib/wifi/WeChatWifiManager$1;-><init>(Lcom/samsung/android/settingslib/wifi/WeChatWifiManager;Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/wifi/WeChatWifiManager$1;->start()V

    return-void
.end method

.method public clearAll()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settingslib/wifi/WeChatWifiManager;->mWeChatAps:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public getStoreNameIfWeChatAp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v4, 0x0

    if-eqz p2, :cond_3

    iget-object v1, p0, Lcom/samsung/android/settingslib/wifi/WeChatWifiManager;->mWeChatAps:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settingslib/wifi/WeChatWifiManager$WeChatApInfo;

    if-nez v0, :cond_0

    return-object v4

    :cond_0
    if-eqz p1, :cond_1

    iget-object v1, v0, Lcom/samsung/android/settingslib/wifi/WeChatWifiManager$WeChatApInfo;->ssid:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "WeChatWifiManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getStoreNameIfWeChatAp, bssid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " is same but ssid is different. input: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", list: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/samsung/android/settingslib/wifi/WeChatWifiManager$WeChatApInfo;->ssid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    :cond_1
    const-string/jumbo v2, "WeChatWifiManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getStoreNameIfWeChatAp, found WeChat AP, ssid: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v1, Lcom/samsung/android/settingslib/wifi/WeChatWifiManager;->DBG:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "("

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, ")"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ", storeName: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v0, Lcom/samsung/android/settingslib/wifi/WeChatWifiManager$WeChatApInfo;->storeName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ", size: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/settingslib/wifi/WeChatWifiManager;->mWeChatAps:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Lcom/samsung/android/settingslib/wifi/WeChatWifiManager$WeChatApInfo;->storeName:Ljava/lang/String;

    return-object v1

    :cond_2
    const-string/jumbo v1, ""

    goto :goto_0

    :cond_3
    return-object v4
.end method

.method public init()V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/settingslib/wifi/WeChatWifiManager;->clearAll()V

    return-void
.end method

.method public isScanEnabled(Landroid/content/Context;)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "wifi_scan_for_free_wlans"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settingslib/wifi/WeChatWifiManager;->mWeChatAps:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "WeChatWifiManager"

    const-string/jumbo v1, "isAccessPointsInitialize, Scan For Free Wlans is disabled."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settingslib/wifi/WeChatWifiManager;->clearAll()V

    return v2

    :cond_0
    return v3
.end method

.method public setWeChatAccessPoint(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const-string/jumbo v5, "WeChatWifiManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setWeChatAccessPoint, ssidList size: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", bssidList size: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", storeNameList size: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ne v5, v6, :cond_0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-eq v5, v6, :cond_1

    :cond_0
    const-string/jumbo v5, "WeChatWifiManager"

    const-string/jumbo v6, "setWeChatAccessPoint, size is different"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    return v5

    :cond_1
    iget-object v5, p0, Lcom/samsung/android/settingslib/wifi/WeChatWifiManager;->mWeChatAps:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_3

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    new-instance v2, Lcom/samsung/android/settingslib/wifi/WeChatWifiManager$WeChatApInfo;

    invoke-direct {v2, v3, v0, v4}, Lcom/samsung/android/settingslib/wifi/WeChatWifiManager$WeChatApInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/android/settingslib/wifi/WeChatWifiManager;->mWeChatAps:Ljava/util/HashMap;

    invoke-virtual {v5, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean v5, Lcom/samsung/android/settingslib/wifi/WeChatWifiManager;->DBG:Z

    if-eqz v5, :cond_2

    const-string/jumbo v5, "WeChatWifiManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "add "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lcom/samsung/android/settingslib/wifi/WeChatWifiManager$WeChatApInfo;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const-string/jumbo v5, "WeChatWifiManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setWeChatAccessPoint, mWeChatAps size: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/settingslib/wifi/WeChatWifiManager;->mWeChatAps:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x1

    return v5
.end method
