.class final Ljava/util/stream/ForEachOps$ForEachOp$OfDouble;
.super Ljava/util/stream/ForEachOps$ForEachOp;
.source "ForEachOps.java"

# interfaces
.implements Ljava/util/stream/Sink$OfDouble;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/ForEachOps$ForEachOp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "OfDouble"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/stream/ForEachOps$ForEachOp",
        "<",
        "Ljava/lang/Double;",
        ">;",
        "Ljava/util/stream/Sink$OfDouble;"
    }
.end annotation


# instance fields
.field final consumer:Ljava/util/function/DoubleConsumer;


# direct methods
.method constructor <init>(Ljava/util/function/DoubleConsumer;Z)V
    .locals 0
    .param p1, "consumer"    # Ljava/util/function/DoubleConsumer;
    .param p2, "ordered"    # Z

    .prologue
    .line 236
    .local p0, "this":Ljava/util/stream/ForEachOps$ForEachOp$OfDouble;, "Ljava/util/stream/ForEachOps$ForEachOp<TT;>.OfDouble;"
    invoke-direct {p0, p2}, Ljava/util/stream/ForEachOps$ForEachOp;-><init>(Z)V

    .line 237
    iput-object p1, p0, Ljava/util/stream/ForEachOps$ForEachOp$OfDouble;->consumer:Ljava/util/function/DoubleConsumer;

    .line 235
    return-void
.end method


# virtual methods
.method public accept(D)V
    .locals 1
    .param p1, "t"    # D

    .prologue
    .line 247
    .local p0, "this":Ljava/util/stream/ForEachOps$ForEachOp$OfDouble;, "Ljava/util/stream/ForEachOps$ForEachOp<TT;>.OfDouble;"
    iget-object v0, p0, Ljava/util/stream/ForEachOps$ForEachOp$OfDouble;->consumer:Ljava/util/function/DoubleConsumer;

    invoke-interface {v0, p1, p2}, Ljava/util/function/DoubleConsumer;->accept(D)V

    .line 246
    return-void
.end method

.method public inputShape()Ljava/util/stream/StreamShape;
    .locals 1

    .prologue
    .line 242
    .local p0, "this":Ljava/util/stream/ForEachOps$ForEachOp$OfDouble;, "Ljava/util/stream/ForEachOps$ForEachOp<TT;>.OfDouble;"
    sget-object v0, Ljava/util/stream/StreamShape;->DOUBLE_VALUE:Ljava/util/stream/StreamShape;

    return-object v0
.end method
