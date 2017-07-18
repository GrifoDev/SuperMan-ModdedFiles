.class final Lcom/google/common/util/concurrent/Futures$ListFuture;
.super Lcom/google/common/util/concurrent/CollectionFuture;
.source "Futures.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/Futures;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ListFuture"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/Futures$ListFuture$ListFutureRunningState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/util/concurrent/CollectionFuture",
        "<TV;",
        "Ljava/util/List",
        "<TV;>;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableCollection;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableCollection",
            "<+",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<+TV;>;>;Z)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/common/util/concurrent/CollectionFuture;-><init>()V

    new-instance v0, Lcom/google/common/util/concurrent/Futures$ListFuture$ListFutureRunningState;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/common/util/concurrent/Futures$ListFuture$ListFutureRunningState;-><init>(Lcom/google/common/util/concurrent/Futures$ListFuture;Lcom/google/common/collect/ImmutableCollection;Z)V

    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/Futures$ListFuture;->init(Lcom/google/common/util/concurrent/AggregateFuture$RunningState;)V

    return-void
.end method
