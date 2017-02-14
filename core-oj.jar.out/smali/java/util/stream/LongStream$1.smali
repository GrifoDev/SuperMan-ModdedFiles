.class final Ljava/util/stream/LongStream$1;
.super Ljava/lang/Object;
.source "LongStream.java"

# interfaces
.implements Ljava/util/PrimitiveIterator$OfLong;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/stream/LongStream;->iterate(JLjava/util/function/LongUnaryOperator;)Ljava/util/stream/LongStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field t:J

.field final synthetic val$f:Ljava/util/function/LongUnaryOperator;

.field final synthetic val$seed:J


# direct methods
.method constructor <init>(JLjava/util/function/LongUnaryOperator;)V
    .locals 3

    iput-wide p1, p0, Ljava/util/stream/LongStream$1;->val$seed:J

    iput-object p3, p0, Ljava/util/stream/LongStream$1;->val$f:Ljava/util/function/LongUnaryOperator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-wide v0, p0, Ljava/util/stream/LongStream$1;->val$seed:J

    iput-wide v0, p0, Ljava/util/stream/LongStream$1;->t:J

    return-void
.end method


# virtual methods
.method public bridge synthetic forEachRemaining(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/function/LongConsumer;

    invoke-interface {p0, p1}, Ljava/util/PrimitiveIterator$OfLong;->forEachRemaining(Ljava/util/function/LongConsumer;)V

    return-void
.end method

.method public hasNext()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-interface {p0}, Ljava/util/PrimitiveIterator$OfLong;->next()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public nextLong()J
    .locals 6

    iget-wide v0, p0, Ljava/util/stream/LongStream$1;->t:J

    iget-object v2, p0, Ljava/util/stream/LongStream$1;->val$f:Ljava/util/function/LongUnaryOperator;

    iget-wide v4, p0, Ljava/util/stream/LongStream$1;->t:J

    invoke-interface {v2, v4, v5}, Ljava/util/function/LongUnaryOperator;->applyAsLong(J)J

    move-result-wide v2

    iput-wide v2, p0, Ljava/util/stream/LongStream$1;->t:J

    return-wide v0
.end method
