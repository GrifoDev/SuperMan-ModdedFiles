.class Ljava/util/stream/ReduceOps$6ReducingSink;
.super Ljava/lang/Object;
.source "ReduceOps.java"

# interfaces
.implements Ljava/util/stream/ReduceOps$AccumulatingSink;
.implements Ljava/util/stream/Sink$OfInt;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/stream/ReduceOps;->makeInt(Ljava/util/function/IntBinaryOperator;)Ljava/util/stream/TerminalOp;
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
        "Ljava/lang/Integer;",
        "Ljava/util/OptionalInt;",
        "Ljava/util/stream/ReduceOps$6ReducingSink;",
        ">;",
        "Ljava/util/stream/Sink$OfInt;"
    }
.end annotation


# instance fields
.field private empty:Z

.field private state:I

.field final synthetic val$operator:Ljava/util/function/IntBinaryOperator;


# direct methods
.method constructor <init>(Ljava/util/function/IntBinaryOperator;)V
    .locals 0
    .param p1, "val$operator"    # Ljava/util/function/IntBinaryOperator;

    .prologue
    .line 289
    iput-object p1, p0, Ljava/util/stream/ReduceOps$6ReducingSink;->val$operator:Ljava/util/function/IntBinaryOperator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(I)V
    .locals 2
    .param p1, "t"    # I

    .prologue
    .line 301
    iget-boolean v0, p0, Ljava/util/stream/ReduceOps$6ReducingSink;->empty:Z

    if-eqz v0, :cond_0

    .line 302
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/stream/ReduceOps$6ReducingSink;->empty:Z

    .line 303
    iput p1, p0, Ljava/util/stream/ReduceOps$6ReducingSink;->state:I

    .line 300
    :goto_0
    return-void

    .line 306
    :cond_0
    iget-object v0, p0, Ljava/util/stream/ReduceOps$6ReducingSink;->val$operator:Ljava/util/function/IntBinaryOperator;

    iget v1, p0, Ljava/util/stream/ReduceOps$6ReducingSink;->state:I

    invoke-interface {v0, v1, p1}, Ljava/util/function/IntBinaryOperator;->applyAsInt(II)I

    move-result v0

    iput v0, p0, Ljava/util/stream/ReduceOps$6ReducingSink;->state:I

    goto :goto_0
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .param p1, "i"    # Ljava/lang/Object;

    .prologue
    .line 195
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "i":Ljava/lang/Object;
    invoke-interface {p0, p1}, Ljava/util/stream/Sink$OfInt;->accept(Ljava/lang/Integer;)V

    return-void
.end method

.method public begin(J)V
    .locals 1
    .param p1, "size"    # J

    .prologue
    .line 295
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/stream/ReduceOps$6ReducingSink;->empty:Z

    .line 296
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/stream/ReduceOps$6ReducingSink;->state:I

    .line 294
    return-void
.end method

.method public combine(Ljava/util/stream/ReduceOps$6ReducingSink;)V
    .locals 1
    .param p1, "other"    # Ljava/util/stream/ReduceOps$6ReducingSink;

    .prologue
    .line 317
    iget-boolean v0, p1, Ljava/util/stream/ReduceOps$6ReducingSink;->empty:Z

    if-nez v0, :cond_0

    .line 318
    iget v0, p1, Ljava/util/stream/ReduceOps$6ReducingSink;->state:I

    invoke-virtual {p0, v0}, Ljava/util/stream/ReduceOps$6ReducingSink;->accept(I)V

    .line 316
    :cond_0
    return-void
.end method

.method public bridge synthetic combine(Ljava/util/stream/ReduceOps$AccumulatingSink;)V
    .locals 0
    .param p1, "other"    # Ljava/util/stream/ReduceOps$AccumulatingSink;

    .prologue
    .line 316
    check-cast p1, Ljava/util/stream/ReduceOps$6ReducingSink;

    .end local p1    # "other":Ljava/util/stream/ReduceOps$AccumulatingSink;
    invoke-virtual {p0, p1}, Ljava/util/stream/ReduceOps$6ReducingSink;->combine(Ljava/util/stream/ReduceOps$6ReducingSink;)V

    return-void
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 311
    invoke-virtual {p0}, Ljava/util/stream/ReduceOps$6ReducingSink;->get()Ljava/util/OptionalInt;

    move-result-object v0

    return-object v0
.end method

.method public get()Ljava/util/OptionalInt;
    .locals 1

    .prologue
    .line 312
    iget-boolean v0, p0, Ljava/util/stream/ReduceOps$6ReducingSink;->empty:Z

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/OptionalInt;->empty()Ljava/util/OptionalInt;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Ljava/util/stream/ReduceOps$6ReducingSink;->state:I

    invoke-static {v0}, Ljava/util/OptionalInt;->of(I)Ljava/util/OptionalInt;

    move-result-object v0

    goto :goto_0
.end method
