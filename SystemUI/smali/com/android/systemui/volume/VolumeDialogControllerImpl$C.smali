.class final Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;
.super Ljava/lang/Object;
.source "VolumeDialogControllerImpl.java"

# interfaces
.implements Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/VolumeDialogControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "C"
.end annotation


# instance fields
.field private final mCallbackMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private mLock:Ljava/lang/Object;

.field final synthetic this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;


# direct methods
.method private constructor <init>(Lcom/android/systemui/volume/VolumeDialogControllerImpl;)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;->mCallbackMap:Ljava/util/HashMap;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;->mLock:Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/volume/VolumeDialogControllerImpl;Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;-><init>(Lcom/android/systemui/volume/VolumeDialogControllerImpl;)V

    return-void
.end method


# virtual methods
.method public add(Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;Landroid/os/Handler;)V
    .locals 2

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;->mCallbackMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onAccessibilityModeChanged(Ljava/lang/Boolean;)V
    .locals 6

    if-nez p1, :cond_0

    const/4 v2, 0x0

    :goto_0
    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;->mCallbackMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Handler;

    new-instance v5, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C$10;

    invoke-direct {v5, p0, v0, v2}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C$10;-><init>(Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;Ljava/util/Map$Entry;Z)V

    invoke-virtual {v3, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto :goto_0

    :cond_1
    monitor-exit v4

    return-void
.end method

.method public onConfigurationChanged()V
    .locals 5

    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;->mCallbackMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Handler;

    new-instance v4, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C$5;

    invoke-direct {v4, p0, v0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C$5;-><init>(Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;Ljava/util/Map$Entry;)V

    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_0
    monitor-exit v3

    return-void
.end method

.method public onDismissRequested(I)V
    .locals 5

    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;->mCallbackMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Handler;

    new-instance v4, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C$2;

    invoke-direct {v4, p0, v0, p1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C$2;-><init>(Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;Ljava/util/Map$Entry;I)V

    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_0
    monitor-exit v3

    return-void
.end method

.method public onLayoutDirectionChanged(I)V
    .locals 5

    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;->mCallbackMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Handler;

    new-instance v4, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C$4;

    invoke-direct {v4, p0, v0, p1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C$4;-><init>(Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;Ljava/util/Map$Entry;I)V

    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_0
    monitor-exit v3

    return-void
.end method

.method public onPlaySound()V
    .locals 5

    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;->mCallbackMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Handler;

    new-instance v4, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C$11;

    invoke-direct {v4, p0, v0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C$11;-><init>(Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;Ljava/util/Map$Entry;)V

    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_0
    monitor-exit v3

    return-void
.end method

.method public onScreenOff()V
    .locals 5

    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;->mCallbackMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Handler;

    new-instance v4, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C$8;

    invoke-direct {v4, p0, v0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C$8;-><init>(Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;Ljava/util/Map$Entry;)V

    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_0
    monitor-exit v3

    return-void
.end method

.method public onShowRequested(I)V
    .locals 5

    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;->mCallbackMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Handler;

    new-instance v4, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C$1;

    invoke-direct {v4, p0, v0, p1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C$1;-><init>(Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;Ljava/util/Map$Entry;I)V

    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_0
    monitor-exit v3

    return-void
.end method

.method public onShowSafetyWarning(I)V
    .locals 5

    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;->mCallbackMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Handler;

    new-instance v4, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C$9;

    invoke-direct {v4, p0, v0, p1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C$9;-><init>(Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;Ljava/util/Map$Entry;I)V

    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_0
    monitor-exit v3

    return-void
.end method

.method public onShowSilentHint()V
    .locals 5

    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;->mCallbackMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Handler;

    new-instance v4, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C$7;

    invoke-direct {v4, p0, v0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C$7;-><init>(Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;Ljava/util/Map$Entry;)V

    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_0
    monitor-exit v3

    return-void
.end method

.method public onShowVibrateHint()V
    .locals 5

    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;->mCallbackMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Handler;

    new-instance v4, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C$6;

    invoke-direct {v4, p0, v0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C$6;-><init>(Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;Ljava/util/Map$Entry;)V

    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_0
    monitor-exit v3

    return-void
.end method

.method public onShowVolumeLimiterToast()V
    .locals 5

    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;->mCallbackMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Handler;

    new-instance v4, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C$14;

    invoke-direct {v4, p0, v0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C$14;-><init>(Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;Ljava/util/Map$Entry;)V

    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_0
    monitor-exit v3

    return-void
.end method

.method public onStateChanged(Lcom/android/systemui/plugins/VolumeDialogController$State;)V
    .locals 8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {p1}, Lcom/android/systemui/plugins/VolumeDialogController$State;->copy()Lcom/android/systemui/plugins/VolumeDialogController$State;

    move-result-object v0

    iget-object v6, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;->mLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;->mCallbackMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Handler;

    new-instance v7, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C$3;

    invoke-direct {v7, p0, v1, v0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C$3;-><init>(Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;Ljava/util/Map$Entry;Lcom/android/systemui/plugins/VolumeDialogController$State;)V

    invoke-virtual {v3, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v6

    throw v3

    :cond_0
    monitor-exit v6

    invoke-static {v4, v5, v0}, Lcom/android/systemui/volume/Events;->writeState(JLcom/android/systemui/plugins/VolumeDialogController$State;)V

    return-void
.end method

.method public onStopSound()V
    .locals 5

    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;->mCallbackMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Handler;

    new-instance v4, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C$12;

    invoke-direct {v4, p0, v0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C$12;-><init>(Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;Ljava/util/Map$Entry;)V

    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_0
    monitor-exit v3

    return-void
.end method

.method public onThemeChanged()V
    .locals 5

    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;->mCallbackMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Handler;

    new-instance v4, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C$13;

    invoke-direct {v4, p0, v0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C$13;-><init>(Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;Ljava/util/Map$Entry;)V

    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_0
    monitor-exit v3

    return-void
.end method

.method public onZenModeChanged()V
    .locals 5

    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;->mCallbackMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Handler;

    new-instance v4, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C$15;

    invoke-direct {v4, p0, v0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C$15;-><init>(Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;Ljava/util/Map$Entry;)V

    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_0
    monitor-exit v3

    return-void
.end method

.method public remove(Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;)V
    .locals 2

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;->mCallbackMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
