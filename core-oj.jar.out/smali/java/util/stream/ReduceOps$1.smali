.class final Ljava/util/stream/ReduceOps$1;
.super Ljava/util/stream/ReduceOps$ReduceOp;
.source "ReduceOps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/stream/ReduceOps;->makeRef(Ljava/lang/Object;Ljava/util/function/BiFunction;Ljava/util/function/BinaryOperator;)Ljava/util/stream/TerminalOp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/stream/ReduceOps$ReduceOp",
        "<TT;TU;",
        "Ljava/util/stream/ReduceOps$1ReducingSink;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$combiner:Ljava/util/function/BinaryOperator;

.field final synthetic val$reducer:Ljava/util/function/BiFunction;

.field final synthetic val$seed:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/util/stream/StreamShape;Ljava/lang/Object;Ljava/util/function/BiFunction;Ljava/util/function/BinaryOperator;)V
    .locals 0

    iput-object p2, p0, Ljava/util/stream/ReduceOps$1;->val$seed:Ljava/lang/Object;

    iput-object p3, p0, Ljava/util/stream/ReduceOps$1;->val$reducer:Ljava/util/function/BiFunction;

    iput-object p4, p0, Ljava/util/stream/ReduceOps$1;->val$combiner:Ljava/util/function/BinaryOperator;

    invoke-direct {p0, p1}, Ljava/util/stream/ReduceOps$ReduceOp;-><init>(Ljava/util/stream/StreamShape;)V

    return-void
.end method


# virtual methods
.method public makeSink()Ljava/util/stream/ReduceOps$1ReducingSink;
    .locals 4

    new-instance v0, Ljava/util/stream/ReduceOps$1ReducingSink;

    iget-object v1, p0, Ljava/util/stream/ReduceOps$1;->val$seed:Ljava/lang/Object;

    iget-object v2, p0, Ljava/util/stream/ReduceOps$1;->val$reducer:Ljava/util/function/BiFunction;

    iget-object v3, p0, Ljava/util/stream/ReduceOps$1;->val$combiner:Ljava/util/function/BinaryOperator;

    invoke-direct {v0, v1, v2, v3}, Ljava/util/stream/ReduceOps$1ReducingSink;-><init>(Ljava/lang/Object;Ljava/util/function/BiFunction;Ljava/util/function/BinaryOperator;)V

    return-object v0
.end method

.method public bridge synthetic makeSink()Ljava/util/stream/ReduceOps$AccumulatingSink;
    .locals 1

    invoke-virtual {p0}, Ljava/util/stream/ReduceOps$1;->makeSink()Ljava/util/stream/ReduceOps$1ReducingSink;

    move-result-object v0

    return-object v0
.end method
