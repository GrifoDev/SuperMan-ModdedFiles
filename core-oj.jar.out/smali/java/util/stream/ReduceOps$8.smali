.class final Ljava/util/stream/ReduceOps$8;
.super Ljava/util/stream/ReduceOps$ReduceOp;
.source "ReduceOps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/stream/ReduceOps;->makeLong(JLjava/util/function/LongBinaryOperator;)Ljava/util/stream/TerminalOp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/stream/ReduceOps$ReduceOp",
        "<",
        "Ljava/lang/Long;",
        "Ljava/lang/Long;",
        "Ljava/util/stream/ReduceOps$8ReducingSink;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$identity:J

.field final synthetic val$operator:Ljava/util/function/LongBinaryOperator;


# direct methods
.method constructor <init>(Ljava/util/stream/StreamShape;JLjava/util/function/LongBinaryOperator;)V
    .locals 0

    iput-wide p2, p0, Ljava/util/stream/ReduceOps$8;->val$identity:J

    iput-object p4, p0, Ljava/util/stream/ReduceOps$8;->val$operator:Ljava/util/function/LongBinaryOperator;

    invoke-direct {p0, p1}, Ljava/util/stream/ReduceOps$ReduceOp;-><init>(Ljava/util/stream/StreamShape;)V

    return-void
.end method


# virtual methods
.method public makeSink()Ljava/util/stream/ReduceOps$8ReducingSink;
    .locals 4

    new-instance v0, Ljava/util/stream/ReduceOps$8ReducingSink;

    iget-wide v2, p0, Ljava/util/stream/ReduceOps$8;->val$identity:J

    iget-object v1, p0, Ljava/util/stream/ReduceOps$8;->val$operator:Ljava/util/function/LongBinaryOperator;

    invoke-direct {v0, v2, v3, v1}, Ljava/util/stream/ReduceOps$8ReducingSink;-><init>(JLjava/util/function/LongBinaryOperator;)V

    return-object v0
.end method

.method public bridge synthetic makeSink()Ljava/util/stream/ReduceOps$AccumulatingSink;
    .locals 1

    invoke-virtual {p0}, Ljava/util/stream/ReduceOps$8;->makeSink()Ljava/util/stream/ReduceOps$8ReducingSink;

    move-result-object v0

    return-object v0
.end method
