.class Ljava/util/stream/ReduceOps$11ReducingSink;
.super Ljava/lang/Object;
.source "ReduceOps.java"

# interfaces
.implements Ljava/util/stream/ReduceOps$AccumulatingSink;
.implements Ljava/util/stream/Sink$OfDouble;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/stream/ReduceOps;->makeDouble(DLjava/util/function/DoubleBinaryOperator;)Ljava/util/stream/TerminalOp;
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
        "Ljava/lang/Double;",
        "Ljava/lang/Double;",
        "Ljava/util/stream/ReduceOps$11ReducingSink;",
        ">;",
        "Ljava/util/stream/Sink$OfDouble;"
    }
.end annotation


# instance fields
.field private state:D

.field final synthetic val$identity:D

.field final synthetic val$operator:Ljava/util/function/DoubleBinaryOperator;


# direct methods
.method constructor <init>(DLjava/util/function/DoubleBinaryOperator;)V
    .locals 1
    .param p1, "val$identity"    # D
    .param p3, "val$operator"    # Ljava/util/function/DoubleBinaryOperator;

    .prologue
    .line 519
    iput-wide p1, p0, Ljava/util/stream/ReduceOps$11ReducingSink;->val$identity:D

    iput-object p3, p0, Ljava/util/stream/ReduceOps$11ReducingSink;->val$operator:Ljava/util/function/DoubleBinaryOperator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(D)V
    .locals 5
    .param p1, "t"    # D

    .prologue
    .line 530
    iget-object v0, p0, Ljava/util/stream/ReduceOps$11ReducingSink;->val$operator:Ljava/util/function/DoubleBinaryOperator;

    iget-wide v2, p0, Ljava/util/stream/ReduceOps$11ReducingSink;->state:D

    invoke-interface {v0, v2, v3, p1, p2}, Ljava/util/function/DoubleBinaryOperator;->applyAsDouble(DD)D

    move-result-wide v0

    iput-wide v0, p0, Ljava/util/stream/ReduceOps$11ReducingSink;->state:D

    .line 529
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .param p1, "i"    # Ljava/lang/Object;

    .prologue
    .line 229
    check-cast p1, Ljava/lang/Double;

    .end local p1    # "i":Ljava/lang/Object;
    invoke-interface {p0, p1}, Ljava/util/stream/Sink$OfDouble;->accept(Ljava/lang/Double;)V

    return-void
.end method

.method public begin(J)V
    .locals 2
    .param p1, "size"    # J

    .prologue
    .line 525
    iget-wide v0, p0, Ljava/util/stream/ReduceOps$11ReducingSink;->val$identity:D

    iput-wide v0, p0, Ljava/util/stream/ReduceOps$11ReducingSink;->state:D

    .line 524
    return-void
.end method

.method public combine(Ljava/util/stream/ReduceOps$11ReducingSink;)V
    .locals 2
    .param p1, "other"    # Ljava/util/stream/ReduceOps$11ReducingSink;

    .prologue
    .line 540
    iget-wide v0, p1, Ljava/util/stream/ReduceOps$11ReducingSink;->state:D

    invoke-virtual {p0, v0, v1}, Ljava/util/stream/ReduceOps$11ReducingSink;->accept(D)V

    .line 539
    return-void
.end method

.method public bridge synthetic combine(Ljava/util/stream/ReduceOps$AccumulatingSink;)V
    .locals 0
    .param p1, "other"    # Ljava/util/stream/ReduceOps$AccumulatingSink;

    .prologue
    .line 539
    check-cast p1, Ljava/util/stream/ReduceOps$11ReducingSink;

    .end local p1    # "other":Ljava/util/stream/ReduceOps$AccumulatingSink;
    invoke-virtual {p0, p1}, Ljava/util/stream/ReduceOps$11ReducingSink;->combine(Ljava/util/stream/ReduceOps$11ReducingSink;)V

    return-void
.end method

.method public get()Ljava/lang/Double;
    .locals 2

    .prologue
    .line 535
    iget-wide v0, p0, Ljava/util/stream/ReduceOps$11ReducingSink;->state:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 534
    invoke-virtual {p0}, Ljava/util/stream/ReduceOps$11ReducingSink;->get()Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method
