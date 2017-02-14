.class public abstract Ljava/util/Spliterators$AbstractIntSpliterator;
.super Ljava/lang/Object;
.source "Spliterators.java"

# interfaces
.implements Ljava/util/Spliterator$OfInt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Spliterators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AbstractIntSpliterator"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/Spliterators$AbstractIntSpliterator$HoldingIntConsumer;
    }
.end annotation


# static fields
.field static final BATCH_UNIT:I = 0x400

.field static final MAX_BATCH:I = 0x2000000


# instance fields
.field private batch:I

.field private final characteristics:I

.field private est:J


# direct methods
.method protected constructor <init>(JI)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Ljava/util/Spliterators$AbstractIntSpliterator;->est:J

    and-int/lit8 v0, p3, 0x40

    if-eqz v0, :cond_0

    or-int/lit16 p3, p3, 0x4000

    :cond_0
    iput p3, p0, Ljava/util/Spliterators$AbstractIntSpliterator;->characteristics:I

    return-void
.end method


# virtual methods
.method public characteristics()I
    .locals 1

    iget v0, p0, Ljava/util/Spliterators$AbstractIntSpliterator;->characteristics:I

    return v0
.end method

.method public estimateSize()J
    .locals 2

    iget-wide v0, p0, Ljava/util/Spliterators$AbstractIntSpliterator;->est:J

    return-wide v0
.end method

.method public bridge synthetic forEachRemaining(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/function/IntConsumer;

    invoke-interface {p0, p1}, Ljava/util/Spliterator$OfInt;->forEachRemaining(Ljava/util/function/IntConsumer;)V

    return-void
.end method

.method public trySplit()Ljava/util/Spliterator$OfInt;
    .locals 10

    new-instance v1, Ljava/util/Spliterators$AbstractIntSpliterator$HoldingIntConsumer;

    invoke-direct {v1}, Ljava/util/Spliterators$AbstractIntSpliterator$HoldingIntConsumer;-><init>()V

    iget-wide v4, p0, Ljava/util/Spliterators$AbstractIntSpliterator;->est:J

    const-wide/16 v6, 0x1

    cmp-long v6, v4, v6

    if-lez v6, :cond_5

    invoke-virtual {p0, v1}, Ljava/util/Spliterators$AbstractIntSpliterator;->tryAdvance(Ljava/util/function/IntConsumer;)Z

    move-result v6

    if-eqz v6, :cond_5

    iget v6, p0, Ljava/util/Spliterators$AbstractIntSpliterator;->batch:I

    add-int/lit16 v3, v6, 0x400

    int-to-long v6, v3

    cmp-long v6, v6, v4

    if-lez v6, :cond_0

    long-to-int v3, v4

    :cond_0
    const/high16 v6, 0x2000000

    if-le v3, v6, :cond_1

    const/high16 v3, 0x2000000

    :cond_1
    new-array v0, v3, [I

    const/4 v2, 0x0

    :cond_2
    iget v6, v1, Ljava/util/Spliterators$AbstractIntSpliterator$HoldingIntConsumer;->value:I

    aput v6, v0, v2

    add-int/lit8 v2, v2, 0x1

    if-ge v2, v3, :cond_3

    invoke-virtual {p0, v1}, Ljava/util/Spliterators$AbstractIntSpliterator;->tryAdvance(Ljava/util/function/IntConsumer;)Z

    move-result v6

    if-nez v6, :cond_2

    :cond_3
    iput v2, p0, Ljava/util/Spliterators$AbstractIntSpliterator;->batch:I

    iget-wide v6, p0, Ljava/util/Spliterators$AbstractIntSpliterator;->est:J

    const-wide v8, 0x7fffffffffffffffL

    cmp-long v6, v6, v8

    if-eqz v6, :cond_4

    iget-wide v6, p0, Ljava/util/Spliterators$AbstractIntSpliterator;->est:J

    int-to-long v8, v2

    sub-long/2addr v6, v8

    iput-wide v6, p0, Ljava/util/Spliterators$AbstractIntSpliterator;->est:J

    :cond_4
    new-instance v6, Ljava/util/Spliterators$IntArraySpliterator;

    invoke-virtual {p0}, Ljava/util/Spliterators$AbstractIntSpliterator;->characteristics()I

    move-result v7

    const/4 v8, 0x0

    invoke-direct {v6, v0, v8, v2, v7}, Ljava/util/Spliterators$IntArraySpliterator;-><init>([IIII)V

    return-object v6

    :cond_5
    const/4 v6, 0x0

    return-object v6
.end method

.method public bridge synthetic trySplit()Ljava/util/Spliterator$OfPrimitive;
    .locals 1

    invoke-virtual {p0}, Ljava/util/Spliterators$AbstractIntSpliterator;->trySplit()Ljava/util/Spliterator$OfInt;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic trySplit()Ljava/util/Spliterator;
    .locals 1

    invoke-virtual {p0}, Ljava/util/Spliterators$AbstractIntSpliterator;->trySplit()Ljava/util/Spliterator$OfInt;

    move-result-object v0

    return-object v0
.end method
