.class final Ljava/util/stream/ReduceOps$5;
.super Ljava/util/stream/ReduceOps$ReduceOp;
.source "ReduceOps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/stream/ReduceOps;->makeInt(ILjava/util/function/IntBinaryOperator;)Ljava/util/stream/TerminalOp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/stream/ReduceOps$ReduceOp",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "Ljava/util/stream/ReduceOps$5ReducingSink;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$identity:I

.field final synthetic val$operator:Ljava/util/function/IntBinaryOperator;


# direct methods
.method constructor <init>(Ljava/util/stream/StreamShape;ILjava/util/function/IntBinaryOperator;)V
    .locals 0

    iput p2, p0, Ljava/util/stream/ReduceOps$5;->val$identity:I

    iput-object p3, p0, Ljava/util/stream/ReduceOps$5;->val$operator:Ljava/util/function/IntBinaryOperator;

    invoke-direct {p0, p1}, Ljava/util/stream/ReduceOps$ReduceOp;-><init>(Ljava/util/stream/StreamShape;)V

    return-void
.end method


# virtual methods
.method public makeSink()Ljava/util/stream/ReduceOps$5ReducingSink;
    .locals 3

    new-instance v0, Ljava/util/stream/ReduceOps$5ReducingSink;

    iget v1, p0, Ljava/util/stream/ReduceOps$5;->val$identity:I

    iget-object v2, p0, Ljava/util/stream/ReduceOps$5;->val$operator:Ljava/util/function/IntBinaryOperator;

    invoke-direct {v0, v1, v2}, Ljava/util/stream/ReduceOps$5ReducingSink;-><init>(ILjava/util/function/IntBinaryOperator;)V

    return-object v0
.end method

.method public bridge synthetic makeSink()Ljava/util/stream/ReduceOps$AccumulatingSink;
    .locals 1

    invoke-virtual {p0}, Ljava/util/stream/ReduceOps$5;->makeSink()Ljava/util/stream/ReduceOps$5ReducingSink;

    move-result-object v0

    return-object v0
.end method
