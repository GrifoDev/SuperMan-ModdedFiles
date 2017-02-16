.class public abstract Ljava/util/Spliterators$AbstractLongSpliterator;
.super Ljava/lang/Object;
.source "Spliterators.java"

# interfaces
.implements Ljava/util/Spliterator$OfLong;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Spliterators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AbstractLongSpliterator"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/Spliterators$AbstractLongSpliterator$HoldingLongConsumer;
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
    .param p1, "est"    # J
    .param p3, "additionalCharacteristics"    # I

    .prologue
    .line 1506
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1507
    iput-wide p1, p0, Ljava/util/Spliterators$AbstractLongSpliterator;->est:J

    .line 1508
    and-int/lit8 v0, p3, 0x40

    if-eqz v0, :cond_0

    .line 1509
    or-int/lit16 p3, p3, 0x4000

    .line 1508
    .end local p3    # "additionalCharacteristics":I
    :cond_0
    iput p3, p0, Ljava/util/Spliterators$AbstractLongSpliterator;->characteristics:I

    .line 1506
    return-void
.end method


# virtual methods
.method public characteristics()I
    .locals 1

    .prologue
    .line 1570
    iget v0, p0, Ljava/util/Spliterators$AbstractLongSpliterator;->characteristics:I

    return v0
.end method

.method public estimateSize()J
    .locals 2

    .prologue
    .line 1558
    iget-wide v0, p0, Ljava/util/Spliterators$AbstractLongSpliterator;->est:J

    return-wide v0
.end method

.method public bridge synthetic forEachRemaining(Ljava/lang/Object;)V
    .locals 0
    .param p1, "action"    # Ljava/lang/Object;

    .prologue
    .line 717
    check-cast p1, Ljava/util/function/LongConsumer;

    .end local p1    # "action":Ljava/lang/Object;
    invoke-interface {p0, p1}, Ljava/util/Spliterator$OfLong;->forEachRemaining(Ljava/util/function/LongConsumer;)V

    return-void
.end method

.method public trySplit()Ljava/util/Spliterator$OfLong;
    .locals 10

    .prologue
    .line 1529
    new-instance v1, Ljava/util/Spliterators$AbstractLongSpliterator$HoldingLongConsumer;

    invoke-direct {v1}, Ljava/util/Spliterators$AbstractLongSpliterator$HoldingLongConsumer;-><init>()V

    .line 1530
    .local v1, "holder":Ljava/util/Spliterators$AbstractLongSpliterator$HoldingLongConsumer;
    iget-wide v4, p0, Ljava/util/Spliterators$AbstractLongSpliterator;->est:J

    .line 1531
    .local v4, "s":J
    const-wide/16 v6, 0x1

    cmp-long v6, v4, v6

    if-lez v6, :cond_5

    invoke-virtual {p0, v1}, Ljava/util/Spliterators$AbstractLongSpliterator;->tryAdvance(Ljava/util/function/LongConsumer;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1532
    iget v6, p0, Ljava/util/Spliterators$AbstractLongSpliterator;->batch:I

    add-int/lit16 v3, v6, 0x400

    .line 1533
    .local v3, "n":I
    int-to-long v6, v3

    cmp-long v6, v6, v4

    if-lez v6, :cond_0

    .line 1534
    long-to-int v3, v4

    .line 1535
    :cond_0
    const/high16 v6, 0x2000000

    if-le v3, v6, :cond_1

    .line 1536
    const/high16 v3, 0x2000000

    .line 1537
    :cond_1
    new-array v0, v3, [J

    .line 1538
    .local v0, "a":[J
    const/4 v2, 0x0

    .line 1539
    .local v2, "j":I
    :cond_2
    iget-wide v6, v1, Ljava/util/Spliterators$AbstractLongSpliterator$HoldingLongConsumer;->value:J

    aput-wide v6, v0, v2

    add-int/lit8 v2, v2, 0x1

    if-ge v2, v3, :cond_3

    invoke-virtual {p0, v1}, Ljava/util/Spliterators$AbstractLongSpliterator;->tryAdvance(Ljava/util/function/LongConsumer;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 1540
    :cond_3
    iput v2, p0, Ljava/util/Spliterators$AbstractLongSpliterator;->batch:I

    .line 1541
    iget-wide v6, p0, Ljava/util/Spliterators$AbstractLongSpliterator;->est:J

    const-wide v8, 0x7fffffffffffffffL

    cmp-long v6, v6, v8

    if-eqz v6, :cond_4

    .line 1542
    iget-wide v6, p0, Ljava/util/Spliterators$AbstractLongSpliterator;->est:J

    int-to-long v8, v2

    sub-long/2addr v6, v8

    iput-wide v6, p0, Ljava/util/Spliterators$AbstractLongSpliterator;->est:J

    .line 1543
    :cond_4
    new-instance v6, Ljava/util/Spliterators$LongArraySpliterator;

    invoke-virtual {p0}, Ljava/util/Spliterators$AbstractLongSpliterator;->characteristics()I

    move-result v7

    const/4 v8, 0x0

    invoke-direct {v6, v0, v8, v2, v7}, Ljava/util/Spliterators$LongArraySpliterator;-><init>([JIII)V

    return-object v6

    .line 1545
    .end local v0    # "a":[J
    .end local v2    # "j":I
    .end local v3    # "n":I
    :cond_5
    const/4 v6, 0x0

    return-object v6
.end method

.method public bridge synthetic trySplit()Ljava/util/Spliterator$OfPrimitive;
    .locals 1

    .prologue
    .line 1528
    invoke-virtual {p0}, Ljava/util/Spliterators$AbstractLongSpliterator;->trySplit()Ljava/util/Spliterator$OfLong;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic trySplit()Ljava/util/Spliterator;
    .locals 1

    .prologue
    .line 1528
    invoke-virtual {p0}, Ljava/util/Spliterators$AbstractLongSpliterator;->trySplit()Ljava/util/Spliterator$OfLong;

    move-result-object v0

    return-object v0
.end method
