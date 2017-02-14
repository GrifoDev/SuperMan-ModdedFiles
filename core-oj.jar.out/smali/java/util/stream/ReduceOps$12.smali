.class final Ljava/util/stream/ReduceOps$12;
.super Ljava/util/stream/ReduceOps$ReduceOp;
.source "ReduceOps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/stream/ReduceOps;->makeDouble(Ljava/util/function/DoubleBinaryOperator;)Ljava/util/stream/TerminalOp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/stream/ReduceOps$ReduceOp",
        "<",
        "Ljava/lang/Double;",
        "Ljava/util/OptionalDouble;",
        "Ljava/util/stream/ReduceOps$12ReducingSink;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$operator:Ljava/util/function/DoubleBinaryOperator;


# direct methods
.method constructor <init>(Ljava/util/stream/StreamShape;Ljava/util/function/DoubleBinaryOperator;)V
    .locals 0

    iput-object p2, p0, Ljava/util/stream/ReduceOps$12;->val$operator:Ljava/util/function/DoubleBinaryOperator;

    invoke-direct {p0, p1}, Ljava/util/stream/ReduceOps$ReduceOp;-><init>(Ljava/util/stream/StreamShape;)V

    return-void
.end method


# virtual methods
.method public makeSink()Ljava/util/stream/ReduceOps$12ReducingSink;
    .locals 2

    new-instance v0, Ljava/util/stream/ReduceOps$12ReducingSink;

    iget-object v1, p0, Ljava/util/stream/ReduceOps$12;->val$operator:Ljava/util/function/DoubleBinaryOperator;

    invoke-direct {v0, v1}, Ljava/util/stream/ReduceOps$12ReducingSink;-><init>(Ljava/util/function/DoubleBinaryOperator;)V

    return-object v0
.end method

.method public bridge synthetic makeSink()Ljava/util/stream/ReduceOps$AccumulatingSink;
    .locals 1

    invoke-virtual {p0}, Ljava/util/stream/ReduceOps$12;->makeSink()Ljava/util/stream/ReduceOps$12ReducingSink;

    move-result-object v0

    return-object v0
.end method
