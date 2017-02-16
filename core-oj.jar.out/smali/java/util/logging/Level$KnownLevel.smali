.class final Ljava/util/logging/Level$KnownLevel;
.super Ljava/lang/Object;
.source "Level.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/logging/Level;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "KnownLevel"
.end annotation


# static fields
.field private static intToLevels:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Ljava/util/logging/Level$KnownLevel;",
            ">;>;"
        }
    .end annotation
.end field

.field private static nameToLevels:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/util/logging/Level$KnownLevel;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field final levelObject:Ljava/util/logging/Level;

.field final mirroredLevel:Ljava/util/logging/Level;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 478
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Ljava/util/logging/Level$KnownLevel;->nameToLevels:Ljava/util/Map;

    .line 479
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Ljava/util/logging/Level$KnownLevel;->intToLevels:Ljava/util/Map;

    .line 477
    return-void
.end method

.method constructor <init>(Ljava/util/logging/Level;)V
    .locals 4
    .param p1, "l"    # Ljava/util/logging/Level;

    .prologue
    .line 482
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 483
    iput-object p1, p0, Ljava/util/logging/Level$KnownLevel;->levelObject:Ljava/util/logging/Level;

    .line 484
    invoke-virtual {p1}, Ljava/util/logging/Level;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/util/logging/Level;

    if-ne v0, v1, :cond_0

    .line 485
    iput-object p1, p0, Ljava/util/logging/Level$KnownLevel;->mirroredLevel:Ljava/util/logging/Level;

    .line 482
    :goto_0
    return-void

    .line 487
    :cond_0
    new-instance v0, Ljava/util/logging/Level;

    invoke-static {p1}, Ljava/util/logging/Level;->-get0(Ljava/util/logging/Level;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/util/logging/Level;->-get2(Ljava/util/logging/Level;)I

    move-result v2

    invoke-static {p1}, Ljava/util/logging/Level;->-get1(Ljava/util/logging/Level;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Ljava/util/logging/Level;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    iput-object v0, p0, Ljava/util/logging/Level$KnownLevel;->mirroredLevel:Ljava/util/logging/Level;

    goto :goto_0
.end method

.method static declared-synchronized add(Ljava/util/logging/Level;)V
    .locals 5
    .param p0, "l"    # Ljava/util/logging/Level;

    .prologue
    const-class v3, Ljava/util/logging/Level$KnownLevel;

    monitor-enter v3

    .line 494
    :try_start_0
    new-instance v1, Ljava/util/logging/Level$KnownLevel;

    invoke-direct {v1, p0}, Ljava/util/logging/Level$KnownLevel;-><init>(Ljava/util/logging/Level;)V

    .line 495
    .local v1, "o":Ljava/util/logging/Level$KnownLevel;
    sget-object v2, Ljava/util/logging/Level$KnownLevel;->nameToLevels:Ljava/util/Map;

    invoke-static {p0}, Ljava/util/logging/Level;->-get0(Ljava/util/logging/Level;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 496
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/util/logging/Level$KnownLevel;>;"
    if-nez v0, :cond_0

    .line 497
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/util/logging/Level$KnownLevel;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 498
    .restart local v0    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/util/logging/Level$KnownLevel;>;"
    sget-object v2, Ljava/util/logging/Level$KnownLevel;->nameToLevels:Ljava/util/Map;

    invoke-static {p0}, Ljava/util/logging/Level;->-get0(Ljava/util/logging/Level;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 500
    :cond_0
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 502
    sget-object v2, Ljava/util/logging/Level$KnownLevel;->intToLevels:Ljava/util/Map;

    invoke-static {p0}, Ljava/util/logging/Level;->-get2(Ljava/util/logging/Level;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/util/logging/Level$KnownLevel;>;"
    check-cast v0, Ljava/util/List;

    .line 503
    .restart local v0    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/util/logging/Level$KnownLevel;>;"
    if-nez v0, :cond_1

    .line 504
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/util/logging/Level$KnownLevel;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 505
    .restart local v0    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/util/logging/Level$KnownLevel;>;"
    sget-object v2, Ljava/util/logging/Level$KnownLevel;->intToLevels:Ljava/util/Map;

    invoke-static {p0}, Ljava/util/logging/Level;->-get2(Ljava/util/logging/Level;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 507
    :cond_1
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    .line 491
    return-void

    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/util/logging/Level$KnownLevel;>;"
    .end local v1    # "o":Ljava/util/logging/Level$KnownLevel;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method static declared-synchronized findByLocalizedLevelName(Ljava/lang/String;)Ljava/util/logging/Level$KnownLevel;
    .locals 7
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const-class v6, Ljava/util/logging/Level$KnownLevel;

    monitor-enter v6

    .line 534
    :try_start_0
    sget-object v5, Ljava/util/logging/Level$KnownLevel;->nameToLevels:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "levels$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 535
    .local v2, "levels":Ljava/util/List;, "Ljava/util/List<Ljava/util/logging/Level$KnownLevel;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "l$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/logging/Level$KnownLevel;

    .line 536
    .local v0, "l":Ljava/util/logging/Level$KnownLevel;
    iget-object v5, v0, Ljava/util/logging/Level$KnownLevel;->levelObject:Ljava/util/logging/Level;

    invoke-virtual {v5}, Ljava/util/logging/Level;->getLocalizedLevelName()Ljava/lang/String;

    move-result-object v4

    .line 537
    .local v4, "lname":Ljava/lang/String;
    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-eqz v5, :cond_1

    monitor-exit v6

    .line 538
    return-object v0

    .line 542
    .end local v0    # "l":Ljava/util/logging/Level$KnownLevel;
    .end local v1    # "l$iterator":Ljava/util/Iterator;
    .end local v2    # "levels":Ljava/util/List;, "Ljava/util/List<Ljava/util/logging/Level$KnownLevel;>;"
    .end local v4    # "lname":Ljava/lang/String;
    :cond_2
    const/4 v5, 0x0

    monitor-exit v6

    return-object v5

    .end local v3    # "levels$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5
.end method

.method static declared-synchronized findByLocalizedName(Ljava/lang/String;)Ljava/util/logging/Level$KnownLevel;
    .locals 7
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const-class v6, Ljava/util/logging/Level$KnownLevel;

    monitor-enter v6

    .line 548
    :try_start_0
    sget-object v5, Ljava/util/logging/Level$KnownLevel;->nameToLevels:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "levels$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 549
    .local v2, "levels":Ljava/util/List;, "Ljava/util/List<Ljava/util/logging/Level$KnownLevel;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "l$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/logging/Level$KnownLevel;

    .line 550
    .local v0, "l":Ljava/util/logging/Level$KnownLevel;
    iget-object v5, v0, Ljava/util/logging/Level$KnownLevel;->levelObject:Ljava/util/logging/Level;

    invoke-virtual {v5}, Ljava/util/logging/Level;->getLocalizedName()Ljava/lang/String;

    move-result-object v4

    .line 551
    .local v4, "lname":Ljava/lang/String;
    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-eqz v5, :cond_1

    monitor-exit v6

    .line 552
    return-object v0

    .line 556
    .end local v0    # "l":Ljava/util/logging/Level$KnownLevel;
    .end local v1    # "l$iterator":Ljava/util/Iterator;
    .end local v2    # "levels":Ljava/util/List;, "Ljava/util/List<Ljava/util/logging/Level$KnownLevel;>;"
    .end local v4    # "lname":Ljava/lang/String;
    :cond_2
    const/4 v5, 0x0

    monitor-exit v6

    return-object v5

    .end local v3    # "levels$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5
.end method

.method static declared-synchronized findByName(Ljava/lang/String;)Ljava/util/logging/Level$KnownLevel;
    .locals 4
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const-class v2, Ljava/util/logging/Level$KnownLevel;

    monitor-enter v2

    .line 512
    :try_start_0
    sget-object v1, Ljava/util/logging/Level$KnownLevel;->nameToLevels:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 513
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/util/logging/Level$KnownLevel;>;"
    if-eqz v0, :cond_0

    .line 514
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/logging/Level$KnownLevel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-object v1

    :cond_0
    monitor-exit v2

    .line 516
    return-object v3

    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/util/logging/Level$KnownLevel;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method static declared-synchronized findByValue(I)Ljava/util/logging/Level$KnownLevel;
    .locals 5
    .param p0, "value"    # I

    .prologue
    const/4 v4, 0x0

    const-class v2, Ljava/util/logging/Level$KnownLevel;

    monitor-enter v2

    .line 521
    :try_start_0
    sget-object v1, Ljava/util/logging/Level$KnownLevel;->intToLevels:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 522
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/util/logging/Level$KnownLevel;>;"
    if-eqz v0, :cond_0

    .line 523
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/logging/Level$KnownLevel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-object v1

    :cond_0
    monitor-exit v2

    .line 525
    return-object v4

    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/util/logging/Level$KnownLevel;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method static declared-synchronized matches(Ljava/util/logging/Level;)Ljava/util/logging/Level$KnownLevel;
    .locals 8
    .param p0, "l"    # Ljava/util/logging/Level;

    .prologue
    const/4 v7, 0x0

    const-class v5, Ljava/util/logging/Level$KnownLevel;

    monitor-enter v5

    .line 560
    :try_start_0
    sget-object v4, Ljava/util/logging/Level$KnownLevel;->nameToLevels:Ljava/util/Map;

    invoke-static {p0}, Ljava/util/logging/Level;->-get0(Ljava/util/logging/Level;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 561
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/util/logging/Level$KnownLevel;>;"
    if-eqz v2, :cond_2

    .line 562
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "level$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/logging/Level$KnownLevel;

    .line 563
    .local v0, "level":Ljava/util/logging/Level$KnownLevel;
    iget-object v3, v0, Ljava/util/logging/Level$KnownLevel;->mirroredLevel:Ljava/util/logging/Level;

    .line 564
    .local v3, "other":Ljava/util/logging/Level;
    invoke-static {p0}, Ljava/util/logging/Level;->-get2(Ljava/util/logging/Level;)I

    move-result v4

    invoke-static {v3}, Ljava/util/logging/Level;->-get2(Ljava/util/logging/Level;)I

    move-result v6

    if-ne v4, v6, :cond_0

    .line 565
    invoke-static {p0}, Ljava/util/logging/Level;->-get1(Ljava/util/logging/Level;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3}, Ljava/util/logging/Level;->-get1(Ljava/util/logging/Level;)Ljava/lang/String;

    move-result-object v6

    if-eq v4, v6, :cond_1

    .line 566
    invoke-static {p0}, Ljava/util/logging/Level;->-get1(Ljava/util/logging/Level;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 567
    invoke-static {p0}, Ljava/util/logging/Level;->-get1(Ljava/util/logging/Level;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3}, Ljava/util/logging/Level;->-get1(Ljava/util/logging/Level;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    .line 564
    if-eqz v4, :cond_0

    :cond_1
    monitor-exit v5

    .line 568
    return-object v0

    .end local v0    # "level":Ljava/util/logging/Level$KnownLevel;
    .end local v1    # "level$iterator":Ljava/util/Iterator;
    .end local v3    # "other":Ljava/util/logging/Level;
    :cond_2
    monitor-exit v5

    .line 572
    return-object v7

    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/util/logging/Level$KnownLevel;>;"
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method
