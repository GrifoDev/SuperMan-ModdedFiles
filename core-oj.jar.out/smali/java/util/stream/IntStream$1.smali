.class final Ljava/util/stream/IntStream$1;
.super Ljava/lang/Object;
.source "IntStream.java"

# interfaces
.implements Ljava/util/PrimitiveIterator$OfInt;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/stream/IntStream;->iterate(ILjava/util/function/IntUnaryOperator;)Ljava/util/stream/IntStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field t:I

.field final synthetic val$f:Ljava/util/function/IntUnaryOperator;

.field final synthetic val$seed:I


# direct methods
.method constructor <init>(ILjava/util/function/IntUnaryOperator;)V
    .locals 1

    iput p1, p0, Ljava/util/stream/IntStream$1;->val$seed:I

    iput-object p2, p0, Ljava/util/stream/IntStream$1;->val$f:Ljava/util/function/IntUnaryOperator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p0, Ljava/util/stream/IntStream$1;->val$seed:I

    iput v0, p0, Ljava/util/stream/IntStream$1;->t:I

    return-void
.end method


# virtual methods
.method public bridge synthetic forEachRemaining(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/function/IntConsumer;

    invoke-interface {p0, p1}, Ljava/util/PrimitiveIterator$OfInt;->forEachRemaining(Ljava/util/function/IntConsumer;)V

    return-void
.end method

.method public hasNext()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-interface {p0}, Ljava/util/PrimitiveIterator$OfInt;->next()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public nextInt()I
    .locals 3

    iget v0, p0, Ljava/util/stream/IntStream$1;->t:I

    iget-object v1, p0, Ljava/util/stream/IntStream$1;->val$f:Ljava/util/function/IntUnaryOperator;

    iget v2, p0, Ljava/util/stream/IntStream$1;->t:I

    invoke-interface {v1, v2}, Ljava/util/function/IntUnaryOperator;->applyAsInt(I)I

    move-result v1

    iput v1, p0, Ljava/util/stream/IntStream$1;->t:I

    return v0
.end method
