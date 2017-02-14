.class Lsun/nio/ch/NativeThreadSet;
.super Ljava/lang/Object;
.source "NativeThreadSet.java"


# static fields
.field static final synthetic -assertionsDisabled:Z


# instance fields
.field private elts:[J

.field private used:I

.field private waitingToEmpty:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lsun/nio/ch/NativeThreadSet;->-assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lsun/nio/ch/NativeThreadSet;->used:I

    new-array v0, p1, [J

    iput-object v0, p0, Lsun/nio/ch/NativeThreadSet;->elts:[J

    return-void
.end method


# virtual methods
.method add()I
    .locals 12

    const-wide/16 v10, 0x0

    invoke-static {}, Lsun/nio/ch/NativeThread;->current()J

    move-result-wide v6

    cmp-long v5, v6, v10

    if-nez v5, :cond_0

    const-wide/16 v6, -0x1

    :cond_0
    monitor-enter p0

    const/4 v4, 0x0

    :try_start_0
    iget v5, p0, Lsun/nio/ch/NativeThreadSet;->used:I

    iget-object v8, p0, Lsun/nio/ch/NativeThreadSet;->elts:[J

    array-length v8, v8

    if-lt v5, v8, :cond_1

    iget-object v5, p0, Lsun/nio/ch/NativeThreadSet;->elts:[J

    array-length v3, v5

    mul-int/lit8 v2, v3, 0x2

    new-array v1, v2, [J

    iget-object v5, p0, Lsun/nio/ch/NativeThreadSet;->elts:[J

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v5, v8, v1, v9, v3}, Ljava/lang/System;->arraycopy([JI[JII)V

    iput-object v1, p0, Lsun/nio/ch/NativeThreadSet;->elts:[J

    move v4, v3

    :cond_1
    move v0, v4

    :goto_0
    iget-object v5, p0, Lsun/nio/ch/NativeThreadSet;->elts:[J

    array-length v5, v5

    if-ge v0, v5, :cond_3

    iget-object v5, p0, Lsun/nio/ch/NativeThreadSet;->elts:[J

    aget-wide v8, v5, v0

    cmp-long v5, v8, v10

    if-nez v5, :cond_2

    iget-object v5, p0, Lsun/nio/ch/NativeThreadSet;->elts:[J

    aput-wide v6, v5, v0

    iget v5, p0, Lsun/nio/ch/NativeThreadSet;->used:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lsun/nio/ch/NativeThreadSet;->used:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :try_start_1
    sget-boolean v5, Lsun/nio/ch/NativeThreadSet;->-assertionsDisabled:Z

    if-nez v5, :cond_4

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    :cond_4
    const/4 v5, -0x1

    monitor-exit p0

    return v5
.end method

.method remove(I)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lsun/nio/ch/NativeThreadSet;->elts:[J

    const-wide/16 v2, 0x0

    aput-wide v2, v0, p1

    iget v0, p0, Lsun/nio/ch/NativeThreadSet;->used:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lsun/nio/ch/NativeThreadSet;->used:I

    iget v0, p0, Lsun/nio/ch/NativeThreadSet;->used:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lsun/nio/ch/NativeThreadSet;->waitingToEmpty:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lsun/nio/ch/NativeThreadSet;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method signalAndWait()V
    .locals 10

    monitor-enter p0

    :try_start_0
    iget v6, p0, Lsun/nio/ch/NativeThreadSet;->used:I

    iget-object v7, p0, Lsun/nio/ch/NativeThreadSet;->elts:[J

    array-length v3, v7

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_3

    iget-object v7, p0, Lsun/nio/ch/NativeThreadSet;->elts:[J

    aget-wide v4, v7, v1

    const-wide/16 v8, 0x0

    cmp-long v7, v4, v8

    if-nez v7, :cond_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-wide/16 v8, -0x1

    cmp-long v7, v4, v8

    if-eqz v7, :cond_2

    invoke-static {v4, v5}, Lsun/nio/ch/NativeThread;->signal(J)V

    :cond_2
    add-int/lit8 v6, v6, -0x1

    if-nez v6, :cond_0

    :cond_3
    const/4 v7, 0x1

    iput-boolean v7, p0, Lsun/nio/ch/NativeThreadSet;->waitingToEmpty:Z

    const/4 v2, 0x0

    :goto_1
    iget v7, p0, Lsun/nio/ch/NativeThreadSet;->used:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v7, :cond_4

    :try_start_1
    invoke-virtual {p0}, Lsun/nio/ch/NativeThreadSet;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    const/4 v2, 0x1

    goto :goto_1

    :cond_4
    if-eqz v2, :cond_5

    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7
.end method
