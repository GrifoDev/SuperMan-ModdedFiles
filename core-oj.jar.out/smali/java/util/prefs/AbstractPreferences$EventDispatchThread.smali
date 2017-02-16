.class Ljava/util/prefs/AbstractPreferences$EventDispatchThread;
.super Ljava/lang/Thread;
.source "AbstractPreferences.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/prefs/AbstractPreferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EventDispatchThread"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1435
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/prefs/AbstractPreferences$EventDispatchThread;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/util/prefs/AbstractPreferences$EventDispatchThread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    .line 1439
    :cond_0
    const/4 v1, 0x0

    .line 1440
    .local v1, "event":Ljava/util/EventObject;
    invoke-static {}, Ljava/util/prefs/AbstractPreferences;->-get0()Ljava/util/List;

    move-result-object v9

    monitor-enter v9

    .line 1442
    :goto_0
    :try_start_0
    invoke-static {}, Ljava/util/prefs/AbstractPreferences;->-get0()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1443
    invoke-static {}, Ljava/util/prefs/AbstractPreferences;->-get0()Ljava/util/List;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1445
    .end local v1    # "event":Ljava/util/EventObject;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/InterruptedException;
    monitor-exit v9

    .line 1447
    return-void

    .line 1444
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .restart local v1    # "event":Ljava/util/EventObject;
    :cond_1
    :try_start_1
    invoke-static {}, Ljava/util/prefs/AbstractPreferences;->-get0()Ljava/util/List;

    move-result-object v8

    const/4 v10, 0x0

    invoke-interface {v8, v10}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "event":Ljava/util/EventObject;
    check-cast v1, Ljava/util/EventObject;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .local v1, "event":Ljava/util/EventObject;
    monitor-exit v9

    .line 1452
    invoke-virtual {v1}, Ljava/util/EventObject;->getSource()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/prefs/AbstractPreferences;

    .line 1453
    .local v7, "src":Ljava/util/prefs/AbstractPreferences;
    instance-of v8, v1, Ljava/util/prefs/PreferenceChangeEvent;

    if-eqz v8, :cond_2

    move-object v6, v1

    .line 1454
    nop

    nop

    .line 1455
    .local v6, "pce":Ljava/util/prefs/PreferenceChangeEvent;
    invoke-virtual {v7}, Ljava/util/prefs/AbstractPreferences;->prefListeners()[Ljava/util/prefs/PreferenceChangeListener;

    move-result-object v4

    .line 1456
    .local v4, "listeners":[Ljava/util/prefs/PreferenceChangeListener;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v8, v4

    if-ge v2, v8, :cond_0

    .line 1457
    aget-object v8, v4, v2

    invoke-interface {v8, v6}, Ljava/util/prefs/PreferenceChangeListener;->preferenceChange(Ljava/util/prefs/PreferenceChangeEvent;)V

    .line 1456
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1440
    .end local v1    # "event":Ljava/util/EventObject;
    .end local v2    # "i":I
    .end local v4    # "listeners":[Ljava/util/prefs/PreferenceChangeListener;
    .end local v6    # "pce":Ljava/util/prefs/PreferenceChangeEvent;
    .end local v7    # "src":Ljava/util/prefs/AbstractPreferences;
    :catchall_0
    move-exception v8

    monitor-exit v9

    throw v8

    .restart local v1    # "event":Ljava/util/EventObject;
    .restart local v7    # "src":Ljava/util/prefs/AbstractPreferences;
    :cond_2
    move-object v5, v1

    .line 1459
    check-cast v5, Ljava/util/prefs/NodeChangeEvent;

    .line 1460
    .local v5, "nce":Ljava/util/prefs/NodeChangeEvent;
    invoke-virtual {v7}, Ljava/util/prefs/AbstractPreferences;->nodeListeners()[Ljava/util/prefs/NodeChangeListener;

    move-result-object v3

    .line 1461
    .local v3, "listeners":[Ljava/util/prefs/NodeChangeListener;
    instance-of v8, v5, Ljava/util/prefs/AbstractPreferences$NodeAddedEvent;

    if-eqz v8, :cond_3

    .line 1462
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_2
    array-length v8, v3

    if-ge v2, v8, :cond_0

    .line 1463
    aget-object v8, v3, v2

    invoke-interface {v8, v5}, Ljava/util/prefs/NodeChangeListener;->childAdded(Ljava/util/prefs/NodeChangeEvent;)V

    .line 1462
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1466
    .end local v2    # "i":I
    :cond_3
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_3
    array-length v8, v3

    if-ge v2, v8, :cond_0

    .line 1467
    aget-object v8, v3, v2

    invoke-interface {v8, v5}, Ljava/util/prefs/NodeChangeListener;->childRemoved(Ljava/util/prefs/NodeChangeEvent;)V

    .line 1466
    add-int/lit8 v2, v2, 0x1

    goto :goto_3
.end method
