.class Ljava/util/stream/ReduceOps$3ReducingSink;
.super Ljava/util/stream/ReduceOps$Box;
.source "ReduceOps.java"

# interfaces
.implements Ljava/util/stream/ReduceOps$AccumulatingSink;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/stream/ReduceOps;->makeRef(Ljava/util/stream/Collector;)Ljava/util/stream/TerminalOp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ReducingSink"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/stream/ReduceOps$Box",
        "<TI;>;",
        "Ljava/util/stream/ReduceOps$AccumulatingSink",
        "<TT;TI;",
        "Ljava/util/stream/ReduceOps$3ReducingSink;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$accumulator:Ljava/util/function/BiConsumer;

.field final synthetic val$combiner:Ljava/util/function/BinaryOperator;

.field final synthetic val$supplier:Ljava/util/function/Supplier;


# direct methods
.method constructor <init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;)V
    .locals 0

    iput-object p1, p0, Ljava/util/stream/ReduceOps$3ReducingSink;->val$supplier:Ljava/util/function/Supplier;

    iput-object p2, p0, Ljava/util/stream/ReduceOps$3ReducingSink;->val$accumulator:Ljava/util/function/BiConsumer;

    iput-object p3, p0, Ljava/util/stream/ReduceOps$3ReducingSink;->val$combiner:Ljava/util/function/BinaryOperator;

    invoke-direct {p0}, Ljava/util/stream/ReduceOps$Box;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Ljava/util/stream/ReduceOps$3ReducingSink;->val$accumulator:Ljava/util/function/BiConsumer;

    iget-object v1, p0, Ljava/util/stream/ReduceOps$Box;->state:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public begin(J)V
    .locals 1

    iget-object v0, p0, Ljava/util/stream/ReduceOps$3ReducingSink;->val$supplier:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Ljava/util/stream/ReduceOps$Box;->state:Ljava/lang/Object;

    return-void
.end method

.method public combine(Ljava/util/stream/ReduceOps$3ReducingSink;)V
    .locals 3

    iget-object v0, p0, Ljava/util/stream/ReduceOps$3ReducingSink;->val$combiner:Ljava/util/function/BinaryOperator;

    iget-object v1, p0, Ljava/util/stream/ReduceOps$Box;->state:Ljava/lang/Object;

    iget-object v2, p1, Ljava/util/stream/ReduceOps$Box;->state:Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Ljava/util/function/BinaryOperator;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Ljava/util/stream/ReduceOps$Box;->state:Ljava/lang/Object;

    return-void
.end method

.method public bridge synthetic combine(Ljava/util/stream/ReduceOps$AccumulatingSink;)V
    .locals 0

    check-cast p1, Ljava/util/stream/ReduceOps$3ReducingSink;

    invoke-virtual {p0, p1}, Ljava/util/stream/ReduceOps$3ReducingSink;->combine(Ljava/util/stream/ReduceOps$3ReducingSink;)V

    return-void
.end method
