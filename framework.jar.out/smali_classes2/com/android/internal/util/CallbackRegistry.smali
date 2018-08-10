.class public Lcom/android/internal/util/CallbackRegistry;
.super Ljava/lang/Object;
.source "CallbackRegistry.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/util/CallbackRegistry$NotifierCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        "A:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CallbackRegistry"


# instance fields
.field private mCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TC;>;"
        }
    .end annotation
.end field

.field private mFirst64Removed:J

.field private mNotificationLevel:I

.field private final mNotifier:Lcom/android/internal/util/CallbackRegistry$NotifierCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/CallbackRegistry$NotifierCallback",
            "<TC;TT;TA;>;"
        }
    .end annotation
.end field

.field private mRemainderRemoved:[J


# direct methods
.method public constructor <init>(Lcom/android/internal/util/CallbackRegistry$NotifierCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/CallbackRegistry$NotifierCallback",
            "<TC;TT;TA;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/util/CallbackRegistry;->mCallbacks:Ljava/util/List;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/util/CallbackRegistry;->mFirst64Removed:J

    iput-object p1, p0, Lcom/android/internal/util/CallbackRegistry;->mNotifier:Lcom/android/internal/util/CallbackRegistry$NotifierCallback;

    return-void
.end method

.method private isRemovedLocked(I)Z
    .locals 12

    const-wide/16 v8, 0x1

    const-wide/16 v10, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/16 v7, 0x40

    if-ge p1, v7, :cond_1

    shl-long v0, v8, p1

    iget-wide v8, p0, Lcom/android/internal/util/CallbackRegistry;->mFirst64Removed:J

    and-long/2addr v8, v0

    cmp-long v7, v8, v10

    if-eqz v7, :cond_0

    :goto_0
    return v5

    :cond_0
    move v5, v6

    goto :goto_0

    :cond_1
    iget-object v7, p0, Lcom/android/internal/util/CallbackRegistry;->mRemainderRemoved:[J

    if-nez v7, :cond_2

    return v6

    :cond_2
    div-int/lit8 v7, p1, 0x40

    add-int/lit8 v4, v7, -0x1

    iget-object v7, p0, Lcom/android/internal/util/CallbackRegistry;->mRemainderRemoved:[J

    array-length v7, v7

    if-lt v4, v7, :cond_3

    return v6

    :cond_3
    iget-object v7, p0, Lcom/android/internal/util/CallbackRegistry;->mRemainderRemoved:[J

    aget-wide v2, v7, v4

    rem-int/lit8 v7, p1, 0x40

    shl-long v0, v8, v7

    and-long v8, v2, v0

    cmp-long v7, v8, v10

    if-eqz v7, :cond_4

    :goto_1
    return v5

    :cond_4
    move v5, v6

    goto :goto_1
.end method

.method private notifyCallbacksLocked(Ljava/lang/Object;ILjava/lang/Object;IIJ)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;ITA;IIJ)V"
        }
    .end annotation

    const-wide/16 v0, 0x1

    move v2, p4

    :goto_0
    if-ge v2, p5, :cond_1

    and-long v4, p6, v0

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/util/CallbackRegistry;->mNotifier:Lcom/android/internal/util/CallbackRegistry$NotifierCallback;

    iget-object v4, p0, Lcom/android/internal/util/CallbackRegistry;->mCallbacks:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4, p1, p2, p3}, Lcom/android/internal/util/CallbackRegistry$NotifierCallback;->onNotifyCallback(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;)V

    :cond_0
    const/4 v3, 0x1

    shl-long/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private notifyFirst64Locked(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;ITA;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/util/CallbackRegistry;->mCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x40

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    iget-wide v6, p0, Lcom/android/internal/util/CallbackRegistry;->mFirst64Removed:J

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/util/CallbackRegistry;->notifyCallbacksLocked(Ljava/lang/Object;ILjava/lang/Object;IIJ)V

    return-void
.end method

.method private notifyRecurseLocked(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;ITA;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/util/CallbackRegistry;->mCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    iget-object v0, p0, Lcom/android/internal/util/CallbackRegistry;->mRemainderRemoved:[J

    if-nez v0, :cond_0

    const/4 v8, -0x1

    :goto_0
    invoke-direct {p0, p1, p2, p3, v8}, Lcom/android/internal/util/CallbackRegistry;->notifyRemainderLocked(Ljava/lang/Object;ILjava/lang/Object;I)V

    add-int/lit8 v0, v8, 0x2

    mul-int/lit8 v4, v0, 0x40

    const-wide/16 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/util/CallbackRegistry;->notifyCallbacksLocked(Ljava/lang/Object;ILjava/lang/Object;IIJ)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/util/CallbackRegistry;->mRemainderRemoved:[J

    array-length v0, v0

    add-int/lit8 v8, v0, -0x1

    goto :goto_0
.end method

.method private notifyRemainderLocked(Ljava/lang/Object;ILjava/lang/Object;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;ITA;I)V"
        }
    .end annotation

    if-gez p4, :cond_0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/util/CallbackRegistry;->notifyFirst64Locked(Ljava/lang/Object;ILjava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/util/CallbackRegistry;->mRemainderRemoved:[J

    aget-wide v6, v0, p4

    add-int/lit8 v0, p4, 0x1

    mul-int/lit8 v4, v0, 0x40

    iget-object v0, p0, Lcom/android/internal/util/CallbackRegistry;->mCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v1, v4, 0x40

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v5

    add-int/lit8 v0, p4, -0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/util/CallbackRegistry;->notifyRemainderLocked(Ljava/lang/Object;ILjava/lang/Object;I)V

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/util/CallbackRegistry;->notifyCallbacksLocked(Ljava/lang/Object;ILjava/lang/Object;IIJ)V

    goto :goto_0
.end method

.method private removeRemovedCallbacks(IJ)V
    .locals 8

    add-int/lit8 v2, p1, 0x40

    const-wide/high16 v0, -0x8000000000000000L

    add-int/lit8 v3, v2, -0x1

    :goto_0
    if-lt v3, p1, :cond_1

    and-long v4, p2, v0

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/util/CallbackRegistry;->mCallbacks:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    const/4 v4, 0x1

    ushr-long/2addr v0, v4

    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private setRemovalBitLocked(I)V
    .locals 10

    const-wide/16 v8, 0x1

    const/4 v6, 0x0

    const/16 v4, 0x40

    if-ge p1, v4, :cond_0

    shl-long v0, v8, p1

    iget-wide v4, p0, Lcom/android/internal/util/CallbackRegistry;->mFirst64Removed:J

    or-long/2addr v4, v0

    iput-wide v4, p0, Lcom/android/internal/util/CallbackRegistry;->mFirst64Removed:J

    :goto_0
    return-void

    :cond_0
    div-int/lit8 v4, p1, 0x40

    add-int/lit8 v3, v4, -0x1

    iget-object v4, p0, Lcom/android/internal/util/CallbackRegistry;->mRemainderRemoved:[J

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/internal/util/CallbackRegistry;->mCallbacks:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    div-int/lit8 v4, v4, 0x40

    new-array v4, v4, [J

    iput-object v4, p0, Lcom/android/internal/util/CallbackRegistry;->mRemainderRemoved:[J

    :cond_1
    :goto_1
    rem-int/lit8 v4, p1, 0x40

    shl-long v0, v8, v4

    iget-object v4, p0, Lcom/android/internal/util/CallbackRegistry;->mRemainderRemoved:[J

    aget-wide v6, v4, v3

    or-long/2addr v6, v0

    aput-wide v6, v4, v3

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/android/internal/util/CallbackRegistry;->mRemainderRemoved:[J

    array-length v4, v4

    if-ge v4, v3, :cond_1

    iget-object v4, p0, Lcom/android/internal/util/CallbackRegistry;->mCallbacks:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    div-int/lit8 v4, v4, 0x40

    new-array v2, v4, [J

    iget-object v4, p0, Lcom/android/internal/util/CallbackRegistry;->mRemainderRemoved:[J

    iget-object v5, p0, Lcom/android/internal/util/CallbackRegistry;->mRemainderRemoved:[J

    array-length v5, v5

    invoke-static {v4, v6, v2, v6, v5}, Ljava/lang/System;->arraycopy([JI[JII)V

    iput-object v2, p0, Lcom/android/internal/util/CallbackRegistry;->mRemainderRemoved:[J

    goto :goto_1
.end method


# virtual methods
.method public declared-synchronized add(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/util/CallbackRegistry;->mCallbacks:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/android/internal/util/CallbackRegistry;->isRemovedLocked(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/internal/util/CallbackRegistry;->mCallbacks:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized clear()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v1, p0, Lcom/android/internal/util/CallbackRegistry;->mNotificationLevel:I

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/util/CallbackRegistry;->mCallbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/util/CallbackRegistry;->mCallbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/util/CallbackRegistry;->mCallbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_0
    if-ltz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/android/internal/util/CallbackRegistry;->setRemovalBitLocked(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized clone()Lcom/android/internal/util/CallbackRegistry;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/internal/util/CallbackRegistry",
            "<TC;TT;TA;>;"
        }
    .end annotation

    monitor-enter p0

    const/4 v2, 0x0

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Lcom/android/internal/util/CallbackRegistry;

    move-object v2, v0

    const-wide/16 v6, 0x0

    iput-wide v6, v2, Lcom/android/internal/util/CallbackRegistry;->mFirst64Removed:J

    const/4 v6, 0x0

    iput-object v6, v2, Lcom/android/internal/util/CallbackRegistry;->mRemainderRemoved:[J

    const/4 v6, 0x0

    iput v6, v2, Lcom/android/internal/util/CallbackRegistry;->mNotificationLevel:I

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v2, Lcom/android/internal/util/CallbackRegistry;->mCallbacks:Ljava/util/List;

    iget-object v6, p0, Lcom/android/internal/util/CallbackRegistry;->mCallbacks:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v5

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_1

    invoke-direct {p0, v4}, Lcom/android/internal/util/CallbackRegistry;->isRemovedLocked(I)Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, v2, Lcom/android/internal/util/CallbackRegistry;->mCallbacks:Ljava/util/List;

    iget-object v7, p0, Lcom/android/internal/util/CallbackRegistry;->mCallbacks:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catch_0
    move-exception v3

    :try_start_1
    invoke-virtual {v3}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit p0

    return-object v2

    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/internal/util/CallbackRegistry;->clone()Lcom/android/internal/util/CallbackRegistry;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized copyListeners()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<TC;>;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/internal/util/CallbackRegistry;->mCallbacks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v3, p0, Lcom/android/internal/util/CallbackRegistry;->mCallbacks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    invoke-direct {p0, v1}, Lcom/android/internal/util/CallbackRegistry;->isRemovedLocked(I)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/util/CallbackRegistry;->mCallbacks:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized isEmpty()Z
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/internal/util/CallbackRegistry;->mCallbacks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    monitor-exit p0

    return v4

    :cond_0
    :try_start_1
    iget v2, p0, Lcom/android/internal/util/CallbackRegistry;->mNotificationLevel:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_1

    monitor-exit p0

    return v3

    :cond_1
    :try_start_2
    iget-object v2, p0, Lcom/android/internal/util/CallbackRegistry;->mCallbacks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_3

    invoke-direct {p0, v0}, Lcom/android/internal/util/CallbackRegistry;->isRemovedLocked(I)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v2

    if-nez v2, :cond_2

    monitor-exit p0

    return v3

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    monitor-exit p0

    return v4

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized notifyCallbacks(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;ITA;)V"
        }
    .end annotation

    const-wide/16 v6, 0x0

    monitor-enter p0

    :try_start_0
    iget v1, p0, Lcom/android/internal/util/CallbackRegistry;->mNotificationLevel:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/util/CallbackRegistry;->mNotificationLevel:I

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/util/CallbackRegistry;->notifyRecurseLocked(Ljava/lang/Object;ILjava/lang/Object;)V

    iget v1, p0, Lcom/android/internal/util/CallbackRegistry;->mNotificationLevel:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/internal/util/CallbackRegistry;->mNotificationLevel:I

    iget v1, p0, Lcom/android/internal/util/CallbackRegistry;->mNotificationLevel:I

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/util/CallbackRegistry;->mRemainderRemoved:[J

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/util/CallbackRegistry;->mRemainderRemoved:[J

    array-length v1, v1

    add-int/lit8 v0, v1, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/android/internal/util/CallbackRegistry;->mRemainderRemoved:[J

    aget-wide v2, v1, v0

    cmp-long v1, v2, v6

    if-eqz v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    mul-int/lit8 v1, v1, 0x40

    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/util/CallbackRegistry;->removeRemovedCallbacks(IJ)V

    iget-object v1, p0, Lcom/android/internal/util/CallbackRegistry;->mRemainderRemoved:[J

    const-wide/16 v4, 0x0

    aput-wide v4, v1, v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    iget-wide v4, p0, Lcom/android/internal/util/CallbackRegistry;->mFirst64Removed:J

    cmp-long v1, v4, v6

    if-eqz v1, :cond_2

    iget-wide v4, p0, Lcom/android/internal/util/CallbackRegistry;->mFirst64Removed:J

    const/4 v1, 0x0

    invoke-direct {p0, v1, v4, v5}, Lcom/android/internal/util/CallbackRegistry;->removeRemovedCallbacks(IJ)V

    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/android/internal/util/CallbackRegistry;->mFirst64Removed:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized remove(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget v1, p0, Lcom/android/internal/util/CallbackRegistry;->mNotificationLevel:I

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/util/CallbackRegistry;->mCallbacks:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/util/CallbackRegistry;->mCallbacks:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/android/internal/util/CallbackRegistry;->setRemovalBitLocked(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
