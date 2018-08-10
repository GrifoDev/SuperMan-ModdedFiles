.class public Landroid/net/wifi/WifiNetworkScoreCache;
.super Landroid/net/INetworkScoreCache$Stub;
.source "WifiNetworkScoreCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/WifiNetworkScoreCache$CacheListener;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field public static final INVALID_NETWORK_SCORE:I = -0x80

.field private static final TAG:Ljava/lang/String; = "WifiNetworkScoreCache"


# instance fields
.field private final mCacheLock:Ljava/lang/Object;

.field private final mContext:Landroid/content/Context;

.field private mListener:Landroid/net/wifi/WifiNetworkScoreCache$CacheListener;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mCacheLock"
    .end annotation
.end field

.field private final mNetworkCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/net/ScoredNetwork;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string/jumbo v0, "WifiNetworkScoreCache"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/net/wifi/WifiNetworkScoreCache;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/net/wifi/WifiNetworkScoreCache;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiNetworkScoreCache$CacheListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/wifi/WifiNetworkScoreCache$CacheListener;)V
    .locals 1

    invoke-direct {p0}, Landroid/net/INetworkScoreCache$Stub;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/WifiNetworkScoreCache;->mCacheLock:Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/WifiNetworkScoreCache;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/net/wifi/WifiNetworkScoreCache;->mListener:Landroid/net/wifi/WifiNetworkScoreCache$CacheListener;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/WifiNetworkScoreCache;->mNetworkCache:Ljava/util/Map;

    return-void
.end method

.method private buildNetworkKey(Landroid/net/NetworkKey;)Ljava/lang/String;
    .locals 4

    const/4 v3, 0x0

    if-nez p1, :cond_0

    return-object v3

    :cond_0
    iget-object v1, p1, Landroid/net/NetworkKey;->wifiKey:Landroid/net/WifiKey;

    if-nez v1, :cond_1

    return-object v3

    :cond_1
    iget v1, p1, Landroid/net/NetworkKey;->type:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    iget-object v1, p1, Landroid/net/NetworkKey;->wifiKey:Landroid/net/WifiKey;

    iget-object v0, v1, Landroid/net/WifiKey;->ssid:Ljava/lang/String;

    if-nez v0, :cond_2

    return-object v3

    :cond_2
    iget-object v1, p1, Landroid/net/NetworkKey;->wifiKey:Landroid/net/WifiKey;

    iget-object v1, v1, Landroid/net/WifiKey;->bssid:Ljava/lang/String;

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/net/NetworkKey;->wifiKey:Landroid/net/WifiKey;

    iget-object v2, v2, Landroid/net/WifiKey;->bssid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_3
    return-object v0

    :cond_4
    return-object v3
.end method

.method private buildNetworkKey(Landroid/net/ScoredNetwork;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p1, Landroid/net/ScoredNetwork;->networkKey:Landroid/net/NetworkKey;

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiNetworkScoreCache;->buildNetworkKey(Landroid/net/NetworkKey;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private buildNetworkKey(Landroid/net/wifi/ScanResult;)Ljava/lang/String;
    .locals 3

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    iget-object v1, p1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    if-nez v1, :cond_1

    :cond_0
    return-object v2

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public final clearScores()V
    .locals 2

    iget-object v1, p0, Landroid/net/wifi/WifiNetworkScoreCache;->mNetworkCache:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiNetworkScoreCache;->mNetworkCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method protected final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 10

    iget-object v6, p0, Landroid/net/wifi/WifiNetworkScoreCache;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "android.permission.DUMP"

    const-string/jumbo v8, "WifiNetworkScoreCache"

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v6, "WifiNetworkScoreCache (%s/%d)"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    iget-object v8, p0, Landroid/net/wifi/WifiNetworkScoreCache;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v6, "  All score curves:"

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v6, p0, Landroid/net/wifi/WifiNetworkScoreCache;->mNetworkCache:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ScoredNetwork;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "    "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string/jumbo v6, "  Current network scores:"

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v6, p0, Landroid/net/wifi/WifiNetworkScoreCache;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "wifi"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/ScanResult;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "    "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0, v1}, Landroid/net/wifi/WifiNetworkScoreCache;->buildNetworkKey(Landroid/net/wifi/ScanResult;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0, v1}, Landroid/net/wifi/WifiNetworkScoreCache;->getNetworkScore(Landroid/net/wifi/ScanResult;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public getMeteredHint(Landroid/net/wifi/ScanResult;)Z
    .locals 2

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiNetworkScoreCache;->getScoredNetwork(Landroid/net/wifi/ScanResult;)Landroid/net/ScoredNetwork;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v1, v0, Landroid/net/ScoredNetwork;->meteredHint:Z

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getNetworkScore(Landroid/net/wifi/ScanResult;)I
    .locals 5

    const/16 v1, -0x80

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiNetworkScoreCache;->getScoredNetwork(Landroid/net/wifi/ScanResult;)Landroid/net/ScoredNetwork;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v2, v0, Landroid/net/ScoredNetwork;->rssiCurve:Landroid/net/RssiCurve;

    if-eqz v2, :cond_0

    iget-object v2, v0, Landroid/net/ScoredNetwork;->rssiCurve:Landroid/net/RssiCurve;

    iget v3, p1, Landroid/net/wifi/ScanResult;->level:I

    invoke-virtual {v2, v3}, Landroid/net/RssiCurve;->lookupScore(I)B

    move-result v1

    sget-boolean v2, Landroid/net/wifi/WifiNetworkScoreCache;->DBG:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "WifiNetworkScoreCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getNetworkScore found scored network "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/net/ScoredNetwork;->networkKey:Landroid/net/NetworkKey;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " score "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " RSSI "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/net/wifi/ScanResult;->level:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v1
.end method

.method public getNetworkScore(Landroid/net/wifi/ScanResult;Z)I
    .locals 5

    const/16 v1, -0x80

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiNetworkScoreCache;->getScoredNetwork(Landroid/net/wifi/ScanResult;)Landroid/net/ScoredNetwork;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v2, v0, Landroid/net/ScoredNetwork;->rssiCurve:Landroid/net/RssiCurve;

    if-eqz v2, :cond_0

    iget-object v2, v0, Landroid/net/ScoredNetwork;->rssiCurve:Landroid/net/RssiCurve;

    iget v3, p1, Landroid/net/wifi/ScanResult;->level:I

    invoke-virtual {v2, v3, p2}, Landroid/net/RssiCurve;->lookupScore(IZ)B

    move-result v1

    sget-boolean v2, Landroid/net/wifi/WifiNetworkScoreCache;->DBG:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "WifiNetworkScoreCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getNetworkScore found scored network "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/net/ScoredNetwork;->networkKey:Landroid/net/NetworkKey;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " score "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " RSSI "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/net/wifi/ScanResult;->level:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " isActiveNetwork "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v1
.end method

.method public getScoredNetwork(Landroid/net/NetworkKey;)Landroid/net/ScoredNetwork;
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0, p1}, Landroid/net/wifi/WifiNetworkScoreCache;->buildNetworkKey(Landroid/net/NetworkKey;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    sget-boolean v1, Landroid/net/wifi/WifiNetworkScoreCache;->DBG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "WifiNetworkScoreCache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Could not build key string for Network Key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v4

    :cond_1
    iget-object v2, p0, Landroid/net/wifi/WifiNetworkScoreCache;->mNetworkCache:Ljava/util/Map;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiNetworkScoreCache;->mNetworkCache:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ScoredNetwork;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public getScoredNetwork(Landroid/net/wifi/ScanResult;)Landroid/net/ScoredNetwork;
    .locals 4

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Landroid/net/wifi/WifiNetworkScoreCache;->buildNetworkKey(Landroid/net/wifi/ScanResult;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-object v2

    :cond_0
    iget-object v3, p0, Landroid/net/wifi/WifiNetworkScoreCache;->mNetworkCache:Ljava/util/Map;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Landroid/net/wifi/WifiNetworkScoreCache;->mNetworkCache:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ScoredNetwork;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    return-object v1

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public hasScoreCurve(Landroid/net/wifi/ScanResult;)Z
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiNetworkScoreCache;->getScoredNetwork(Landroid/net/wifi/ScanResult;)Landroid/net/ScoredNetwork;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v2, v0, Landroid/net/ScoredNetwork;->rssiCurve:Landroid/net/RssiCurve;

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public isScoredNetwork(Landroid/net/wifi/ScanResult;)Z
    .locals 1

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiNetworkScoreCache;->getScoredNetwork(Landroid/net/wifi/ScanResult;)Landroid/net/ScoredNetwork;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public registerListener(Landroid/net/wifi/WifiNetworkScoreCache$CacheListener;)V
    .locals 2

    iget-object v0, p0, Landroid/net/wifi/WifiNetworkScoreCache;->mCacheLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Landroid/net/wifi/WifiNetworkScoreCache;->mListener:Landroid/net/wifi/WifiNetworkScoreCache$CacheListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public unregisterListener()V
    .locals 2

    iget-object v0, p0, Landroid/net/wifi/WifiNetworkScoreCache;->mCacheLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Landroid/net/wifi/WifiNetworkScoreCache;->mListener:Landroid/net/wifi/WifiNetworkScoreCache$CacheListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final updateScores(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/ScoredNetwork;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    return-void

    :cond_1
    sget-boolean v4, Landroid/net/wifi/WifiNetworkScoreCache;->DBG:Z

    if-eqz v4, :cond_2

    const-string/jumbo v4, "WifiNetworkScoreCache"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateScores list size="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v0, 0x0

    iget-object v5, p0, Landroid/net/wifi/WifiNetworkScoreCache;->mNetworkCache:Ljava/util/Map;

    monitor-enter v5

    :try_start_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ScoredNetwork;

    invoke-direct {p0, v1}, Landroid/net/wifi/WifiNetworkScoreCache;->buildNetworkKey(Landroid/net/ScoredNetwork;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_4

    sget-boolean v4, Landroid/net/wifi/WifiNetworkScoreCache;->DBG:Z

    if-eqz v4, :cond_3

    const-string/jumbo v4, "WifiNetworkScoreCache"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Failed to build network key for ScoredNetwork"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    :cond_4
    :try_start_1
    iget-object v4, p0, Landroid/net/wifi/WifiNetworkScoreCache;->mNetworkCache:Ljava/util/Map;

    invoke-interface {v4, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_5
    monitor-exit v5

    iget-object v5, p0, Landroid/net/wifi/WifiNetworkScoreCache;->mCacheLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_2
    iget-object v4, p0, Landroid/net/wifi/WifiNetworkScoreCache;->mListener:Landroid/net/wifi/WifiNetworkScoreCache$CacheListener;

    if-eqz v4, :cond_6

    if-eqz v0, :cond_6

    iget-object v4, p0, Landroid/net/wifi/WifiNetworkScoreCache;->mListener:Landroid/net/wifi/WifiNetworkScoreCache$CacheListener;

    invoke-virtual {v4, p1}, Landroid/net/wifi/WifiNetworkScoreCache$CacheListener;->post(Ljava/util/List;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_6
    monitor-exit v5

    return-void

    :catchall_1
    move-exception v4

    monitor-exit v5

    throw v4
.end method
