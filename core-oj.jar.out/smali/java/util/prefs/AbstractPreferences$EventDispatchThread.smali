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

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/prefs/AbstractPreferences$EventDispatchThread;)V
    .locals 0

    invoke-direct {p0}, Ljava/util/prefs/AbstractPreferences$EventDispatchThread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    :cond_0
    const/4 v1, 0x0

    invoke-static {}, Ljava/util/prefs/AbstractPreferences;->-get0()Ljava/util/List;

    move-result-object v9

    monitor-enter v9

    :goto_0
    :try_start_0
    invoke-static {}, Ljava/util/prefs/AbstractPreferences;->-get0()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-static {}, Ljava/util/prefs/AbstractPreferences;->-get0()Ljava/util/List;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    monitor-exit v9

    return-void

    :cond_1
    :try_start_1
    invoke-static {}, Ljava/util/prefs/AbstractPreferences;->-get0()Ljava/util/List;

    move-result-object v8

    const/4 v10, 0x0

    invoke-interface {v8, v10}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/EventObject;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v9

    invoke-virtual {v1}, Ljava/util/EventObject;->getSource()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/prefs/AbstractPreferences;

    instance-of v8, v1, Ljava/util/prefs/PreferenceChangeEvent;

    if-eqz v8, :cond_2

    move-object v6, v1

    nop

    nop

    invoke-virtual {v7}, Ljava/util/prefs/AbstractPreferences;->prefListeners()[Ljava/util/prefs/PreferenceChangeListener;

    move-result-object v4

    const/4 v2, 0x0

    :goto_1
    array-length v8, v4

    if-ge v2, v8, :cond_0

    aget-object v8, v4, v2

    invoke-interface {v8, v6}, Ljava/util/prefs/PreferenceChangeListener;->preferenceChange(Ljava/util/prefs/PreferenceChangeEvent;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :catchall_0
    move-exception v8

    monitor-exit v9

    throw v8

    :cond_2
    move-object v5, v1

    check-cast v5, Ljava/util/prefs/NodeChangeEvent;

    invoke-virtual {v7}, Ljava/util/prefs/AbstractPreferences;->nodeListeners()[Ljava/util/prefs/NodeChangeListener;

    move-result-object v3

    instance-of v8, v5, Ljava/util/prefs/AbstractPreferences$NodeAddedEvent;

    if-eqz v8, :cond_3

    const/4 v2, 0x0

    :goto_2
    array-length v8, v3

    if-ge v2, v8, :cond_0

    aget-object v8, v3, v2

    invoke-interface {v8, v5}, Ljava/util/prefs/NodeChangeListener;->childAdded(Ljava/util/prefs/NodeChangeEvent;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    :goto_3
    array-length v8, v3

    if-ge v2, v8, :cond_0

    aget-object v8, v3, v2

    invoke-interface {v8, v5}, Ljava/util/prefs/NodeChangeListener;->childRemoved(Ljava/util/prefs/NodeChangeEvent;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3
.end method
