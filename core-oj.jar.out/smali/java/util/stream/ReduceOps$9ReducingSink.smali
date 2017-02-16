.class Ljava/util/stream/ReduceOps$9ReducingSink;
.super Ljava/lang/Object;
.source "ReduceOps.java"

# interfaces
.implements Ljava/util/stream/ReduceOps$AccumulatingSink;
.implements Ljava/util/stream/Sink$OfLong;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/stream/ReduceOps;->makeLong(Ljava/util/function/LongBinaryOperator;)Ljava/util/stream/TerminalOp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ReducingSink"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/stream/ReduceOps$AccumulatingSink",
        "<",
        "Ljava/lang/Long;",
        "Ljava/util/OptionalLong;",
        "Ljava/util/stream/ReduceOps$9ReducingSink;",
        ">;",
        "Ljava/util/stream/Sink$OfLong;"
    }
.end annotation


# instance fields
.field private empty:Z

.field private state:J

.field final synthetic val$operator:Ljava/util/function/LongBinaryOperator;


# direct methods
.method constructor <init>(Ljava/util/function/LongBinaryOperator;)V
    .locals 0
    .param p1, "val$operator"    # Ljava/util/function/LongBinaryOperator;

    .prologue
    .line 425
    iput-object p1, p0, Ljava/util/stream/ReduceOps$9ReducingSink;->val$operator:Ljava/util/function/LongBinaryOperator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(J)V
    .locals 5
    .param p1, "t"    # J

    .prologue
    .line 437
    iget-boolean v0, p0, Ljava/util/stream/ReduceOps$9ReducingSink;->empty:Z

    if-eqz v0, :cond_0

    .line 438
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/stream/ReduceOps$9ReducingSink;->empty:Z

    .line 439
    iput-wide p1, p0, Ljava/util/stream/ReduceOps$9ReducingSink;->state:J

    .line 436
    :goto_0
    return-void

    .line 442
    :cond_0
    iget-object v0, p0, Ljava/util/stream/ReduceOps$9ReducingSink;->val$operator:Ljava/util/function/LongBinaryOperator;

    iget-wide v2, p0, Ljava/util/stream/ReduceOps$9ReducingSink;->state:J

    invoke-interface {v0, v2, v3, p1, p2}, Ljava/util/function/LongBinaryOperator;->applyAsLong(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Ljava/util/stream/ReduceOps$9ReducingSink;->state:J

    goto :goto_0
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .param p1, "i"    # Ljava/lang/Object;

    .prologue
    .line 212
    check-cast p1, Ljava/lang/Long;

    .end local p1    # "i":Ljava/lang/Object;
    invoke-interface {p0, p1}, Ljava/util/stream/Sink$OfLong;->accept(Ljava/lang/Long;)V

    return-void
.end method

.method public begin(J)V
    .locals 2
    .param p1, "size"    # J

    .prologue
    .line 431
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/stream/ReduceOps$9ReducingSink;->empty:Z

    .line 432
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljava/util/stream/ReduceOps$9ReducingSink;->state:J

    .line 430
    return-void
.end method

.method public combine(Ljava/util/stream/ReduceOps$9ReducingSink;)V
    .locals 2
    .param p1, "other"    # Ljava/util/stream/ReduceOps$9ReducingSink;

    .prologue
    .line 453
    iget-boolean v0, p1, Ljava/util/stream/ReduceOps$9ReducingSink;->empty:Z

    if-nez v0, :cond_0

    .line 454
    iget-wide v0, p1, Ljava/util/stream/ReduceOps$9ReducingSink;->state:J

    invoke-virtual {p0, v0, v1}, Ljava/util/stream/ReduceOps$9ReducingSink;->accept(J)V

    .line 452
    :cond_0
    return-void
.end method

.method public bridge synthetic combine(Ljava/util/stream/ReduceOps$AccumulatingSink;)V
    .locals 0
    .param p1, "other"    # Ljava/util/stream/ReduceOps$AccumulatingSink;

    .prologue
    .line 452
    check-cast p1, Ljava/util/stream/ReduceOps$9ReducingSink;

    .end local p1    # "other":Ljava/util/stream/ReduceOps$AccumulatingSink;
    invoke-virtual {p0, p1}, Ljava/util/stream/ReduceOps$9ReducingSink;->combine(Ljava/util/stream/ReduceOps$9ReducingSink;)V

    return-void
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 447
    invoke-virtual {p0}, Ljava/util/stream/ReduceOps$9ReducingSink;->get()Ljava/util/OptionalLong;

    move-result-object v0

    return-object v0
.end method

.method public get()Ljava/util/OptionalLong;
    .locals 2

    .prologue
    .line 448
    iget-boolean v0, p0, Ljava/util/stream/ReduceOps$9ReducingSink;->empty:Z

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/OptionalLong;->empty()Ljava/util/OptionalLong;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-wide v0, p0, Ljava/util/stream/ReduceOps$9ReducingSink;->state:J

    invoke-static {v0, v1}, Ljava/util/OptionalLong;->of(J)Ljava/util/OptionalLong;

    move-result-object v0

    goto :goto_0
.end method
