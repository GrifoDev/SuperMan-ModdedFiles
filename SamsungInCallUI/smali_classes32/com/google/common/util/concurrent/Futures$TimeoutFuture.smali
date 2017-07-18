.class final Lcom/google/common/util/concurrent/Futures$TimeoutFuture;
.super Lcom/google/common/util/concurrent/AbstractFuture$TrustedFuture;
.source "Futures.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/Futures;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TimeoutFuture"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/Futures$TimeoutFuture$Fire;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/util/concurrent/AbstractFuture$TrustedFuture",
        "<TV;>;"
    }
.end annotation


# instance fields
.field delegateRef:Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field timer:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/ListenableFuture;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<TV;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/common/util/concurrent/AbstractFuture$TrustedFuture;-><init>()V

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/util/concurrent/ListenableFuture;

    iput-object v0, p0, Lcom/google/common/util/concurrent/Futures$TimeoutFuture;->delegateRef:Lcom/google/common/util/concurrent/ListenableFuture;

    return-void
.end method


# virtual methods
.method done()V
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/google/common/util/concurrent/Futures$TimeoutFuture;->delegateRef:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-virtual {p0, v1}, Lcom/google/common/util/concurrent/Futures$TimeoutFuture;->maybePropagateCancellation(Ljava/util/concurrent/Future;)V

    iget-object v0, p0, Lcom/google/common/util/concurrent/Futures$TimeoutFuture;->timer:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_0
    iput-object v2, p0, Lcom/google/common/util/concurrent/Futures$TimeoutFuture;->delegateRef:Lcom/google/common/util/concurrent/ListenableFuture;

    iput-object v2, p0, Lcom/google/common/util/concurrent/Futures$TimeoutFuture;->timer:Ljava/util/concurrent/Future;

    return-void
.end method
