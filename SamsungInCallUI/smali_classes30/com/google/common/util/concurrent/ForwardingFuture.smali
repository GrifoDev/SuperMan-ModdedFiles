.class public abstract Lcom/google/common/util/concurrent/ForwardingFuture;
.super Lcom/google/common/collect/ForwardingObject;
.source "ForwardingFuture.java"

# interfaces
.implements Ljava/util/concurrent/Future;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/ForwardingFuture$SimpleForwardingFuture;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ForwardingObject;",
        "Ljava/util/concurrent/Future",
        "<TV;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 42
    .local p0, "this":Lcom/google/common/util/concurrent/ForwardingFuture;, "Lcom/google/common/util/concurrent/ForwardingFuture<TV;>;"
    invoke-direct {p0}, Lcom/google/common/collect/ForwardingObject;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel(Z)Z
    .locals 1
    .param p1, "mayInterruptIfRunning"    # Z

    .prologue
    .line 48
    .local p0, "this":Lcom/google/common/util/concurrent/ForwardingFuture;, "Lcom/google/common/util/concurrent/ForwardingFuture<TV;>;"
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/ForwardingFuture;->delegate()Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 38
    .local p0, "this":Lcom/google/common/util/concurrent/ForwardingFuture;, "Lcom/google/common/util/concurrent/ForwardingFuture<TV;>;"
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/ForwardingFuture;->delegate()Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method protected abstract delegate()Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future",
            "<TV;>;"
        }
    .end annotation
.end method

.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .prologue
    .line 63
    .local p0, "this":Lcom/google/common/util/concurrent/ForwardingFuture;, "Lcom/google/common/util/concurrent/ForwardingFuture<TV;>;"
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/ForwardingFuture;->delegate()Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 1
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 69
    .local p0, "this":Lcom/google/common/util/concurrent/ForwardingFuture;, "Lcom/google/common/util/concurrent/ForwardingFuture<TV;>;"
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/ForwardingFuture;->delegate()Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isCancelled()Z
    .locals 1

    .prologue
    .line 53
    .local p0, "this":Lcom/google/common/util/concurrent/ForwardingFuture;, "Lcom/google/common/util/concurrent/ForwardingFuture<TV;>;"
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/ForwardingFuture;->delegate()Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v0

    return v0
.end method

.method public isDone()Z
    .locals 1

    .prologue
    .line 58
    .local p0, "this":Lcom/google/common/util/concurrent/ForwardingFuture;, "Lcom/google/common/util/concurrent/ForwardingFuture<TV;>;"
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/ForwardingFuture;->delegate()Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    return v0
.end method
