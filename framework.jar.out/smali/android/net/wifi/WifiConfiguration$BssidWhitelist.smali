.class public final Landroid/net/wifi/WifiConfiguration$BssidWhitelist;
.super Ljava/lang/Object;
.source "WifiConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BssidWhitelist"
.end annotation


# static fields
.field private static final MAX_NUM_BSSID:I = 0x32


# instance fields
.field public whitelist:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/WifiConfiguration$BssidWhitelist;->whitelist:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/WifiConfiguration$BssidWhitelist;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration$BssidWhitelist;->whitelist:Ljava/util/Map;

    iput-object v0, p0, Landroid/net/wifi/WifiConfiguration$BssidWhitelist;->whitelist:Ljava/util/Map;

    return-void
.end method

.method private static entriesSortedByValues(Ljava/util/Map;)Ljava/util/SortedSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V::",
            "Ljava/lang/Comparable",
            "<-TV;>;>(",
            "Ljava/util/Map",
            "<TK;TV;>;)",
            "Ljava/util/SortedSet",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/TreeSet;

    new-instance v1, Landroid/net/wifi/WifiConfiguration$BssidWhitelist$1;

    invoke-direct {v1}, Landroid/net/wifi/WifiConfiguration$BssidWhitelist$1;-><init>()V

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/SortedSet;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method


# virtual methods
.method public declared-synchronized clear()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration$BssidWhitelist;->whitelist:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public containsBssid(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration$BssidWhitelist;->whitelist:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized entrySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration$BssidWhitelist;->whitelist:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration$BssidWhitelist;->whitelist:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    return-object v0
.end method

.method public declared-synchronized put(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration$BssidWhitelist;->whitelist:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    const/16 v3, 0x32

    if-lt v2, v3, :cond_0

    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration$BssidWhitelist;->whitelist:Ljava/util/Map;

    invoke-static {v2}, Landroid/net/wifi/WifiConfiguration$BssidWhitelist;->entriesSortedByValues(Ljava/util/Map;)Ljava/util/SortedSet;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/SortedSet;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration$BssidWhitelist;->whitelist:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_0
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration$BssidWhitelist;->whitelist:Ljava/util/Map;

    invoke-interface {v2, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v2

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration$BssidWhitelist;->whitelist:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .locals 9

    monitor-enter p0

    :try_start_0
    iget-object v7, p0, Landroid/net/wifi/WifiConfiguration$BssidWhitelist;->whitelist:Ljava/util/Map;

    invoke-static {v7}, Landroid/net/wifi/WifiConfiguration$BssidWhitelist;->entriesSortedByValues(Ljava/util/Map;)Ljava/util/SortedSet;

    move-result-object v5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, ""

    const-string/jumbo v7, "{"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, ", "

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7

    :cond_0
    :try_start_1
    const-string/jumbo v7, "}"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v7

    monitor-exit p0

    return-object v7
.end method
