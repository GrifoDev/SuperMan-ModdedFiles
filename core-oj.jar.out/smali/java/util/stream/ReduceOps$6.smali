.class final Ljava/util/stream/ReduceOps$6;
.super Ljava/util/stream/ReduceOps$ReduceOp;
.source "ReduceOps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/stream/ReduceOps;->makeInt(Ljava/util/function/IntBinaryOperator;)Ljava/util/stream/TerminalOp;
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
        "Ljava/util/OptionalInt;",
        "Ljava/util/stream/ReduceOps$6ReducingSink;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$operator:Ljava/util/function/IntBinaryOperator;


# direct methods
.method constructor <init>(Ljava/util/stream/StreamShape;Ljava/util/function/IntBinaryOperator;)V
    .locals 0

    iput-object p2, p0, Ljava/util/stream/ReduceOps$6;->val$operator:Ljava/util/function/IntBinaryOperator;

    invoke-direct {p0, p1}, Ljava/util/stream/ReduceOps$ReduceOp;-><init>(Ljava/util/stream/StreamShape;)V

    return-void
.end method


# virtual methods
.method public makeSink()Ljava/util/stream/ReduceOps$6ReducingSink;
    .locals 2

    new-instance v0, Ljava/util/stream/ReduceOps$6ReducingSink;

    iget-object v1, p0, Ljava/util/stream/ReduceOps$6;->val$operator:Ljava/util/function/IntBinaryOperator;

    invoke-direct {v0, v1}, Ljava/util/stream/ReduceOps$6ReducingSink;-><init>(Ljava/util/function/IntBinaryOperator;)V

    return-object v0
.end method

.method public bridge synthetic makeSink()Ljava/util/stream/ReduceOps$AccumulatingSink;
    .locals 1

    invoke-virtual {p0}, Ljava/util/stream/ReduceOps$6;->makeSink()Ljava/util/stream/ReduceOps$6ReducingSink;

    move-result-object v0

    return-object v0
.end method
