.class public abstract Ljava/nio/channels/spi/AbstractSelectionKey;
.super Ljava/nio/channels/SelectionKey;
.source "AbstractSelectionKey.java"


# instance fields
.field private volatile valid:Z


# direct methods
.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/nio/channels/SelectionKey;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/nio/channels/spi/AbstractSelectionKey;->valid:Z

    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Ljava/nio/channels/spi/AbstractSelectionKey;->valid:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/nio/channels/spi/AbstractSelectionKey;->valid:Z

    invoke-virtual {p0}, Ljava/nio/channels/spi/AbstractSelectionKey;->selector()Ljava/nio/channels/Selector;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/spi/AbstractSelector;

    invoke-virtual {v0, p0}, Ljava/nio/channels/spi/AbstractSelector;->cancel(Ljava/nio/channels/SelectionKey;)V
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

.method invalidate()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/nio/channels/spi/AbstractSelectionKey;->valid:Z

    return-void
.end method

.method public final isValid()Z
    .locals 1

    iget-boolean v0, p0, Ljava/nio/channels/spi/AbstractSelectionKey;->valid:Z

    return v0
.end method
