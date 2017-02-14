.class final Ljava/util/stream/Streams$RangeLongSpliterator;
.super Ljava/lang/Object;
.source "Streams.java"

# interfaces
.implements Ljava/util/Spliterator$OfLong;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/Streams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "RangeLongSpliterator"
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static final BALANCED_SPLIT_THRESHOLD:J = 0x1000000L

.field private static final RIGHT_BALANCED_SPLIT_RATIO:J = 0x8L


# instance fields
.field private from:J

.field private last:I

.field private final upTo:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Ljava/util/stream/Streams$RangeLongSpliterator;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Ljava/util/stream/Streams$RangeLongSpliterator;->-assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private constructor <init>(JJI)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-boolean v0, Ljava/util/stream/Streams$RangeLongSpliterator;->-assertionsDisabled:Z

    if-nez v0, :cond_1

    sub-long v0, p3, p1

    int-to-long v2, p5

    add-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iput-wide p1, p0, Ljava/util/stream/Streams$RangeLongSpliterator;->from:J

    iput-wide p3, p0, Ljava/util/stream/Streams$RangeLongSpliterator;->upTo:J

    iput p5, p0, Ljava/util/stream/Streams$RangeLongSpliterator;->last:I

    return-void
.end method

.method constructor <init>(JJZ)V
    .locals 7

    if-eqz p5, :cond_0

    const/4 v6, 0x1

    :goto_0
    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v1 .. v6}, Ljava/util/stream/Streams$RangeLongSpliterator;-><init>(JJI)V

    return-void

    :cond_0
    const/4 v6, 0x0

    goto :goto_0
.end method

.method private splitPoint(J)J
    .locals 5

    const-wide/32 v2, 0x1000000

    cmp-long v2, p1, v2

    if-gez v2, :cond_0

    const-wide/16 v0, 0x2

    :goto_0
    div-long v2, p1, v0

    return-wide v2

    :cond_0
    const-wide/16 v0, 0x8

    goto :goto_0
.end method


# virtual methods
.method public characteristics()I
    .locals 1

    const/16 v0, 0x4555

    return v0
.end method

.method public estimateSize()J
    .locals 4

    iget-wide v0, p0, Ljava/util/stream/Streams$RangeLongSpliterator;->upTo:J

    iget-wide v2, p0, Ljava/util/stream/Streams$RangeLongSpliterator;->from:J

    sub-long/2addr v0, v2

    iget v2, p0, Ljava/util/stream/Streams$RangeLongSpliterator;->last:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public bridge synthetic forEachRemaining(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/function/LongConsumer;

    invoke-virtual {p0, p1}, Ljava/util/stream/Streams$RangeLongSpliterator;->forEachRemaining(Ljava/util/function/LongConsumer;)V

    return-void
.end method

.method public forEachRemaining(Ljava/util/function/LongConsumer;)V
    .locals 10

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v4, p0, Ljava/util/stream/Streams$RangeLongSpliterator;->from:J

    iget-wide v2, p0, Ljava/util/stream/Streams$RangeLongSpliterator;->upTo:J

    iget v0, p0, Ljava/util/stream/Streams$RangeLongSpliterator;->last:I

    iget-wide v8, p0, Ljava/util/stream/Streams$RangeLongSpliterator;->upTo:J

    iput-wide v8, p0, Ljava/util/stream/Streams$RangeLongSpliterator;->from:J

    iput v1, p0, Ljava/util/stream/Streams$RangeLongSpliterator;->last:I

    move-wide v6, v4

    :goto_0
    cmp-long v1, v6, v2

    if-gez v1, :cond_0

    const-wide/16 v8, 0x1

    add-long v4, v6, v8

    invoke-interface {p1, v6, v7}, Ljava/util/function/LongConsumer;->accept(J)V

    move-wide v6, v4

    goto :goto_0

    :cond_0
    if-lez v0, :cond_1

    invoke-interface {p1, v6, v7}, Ljava/util/function/LongConsumer;->accept(J)V

    :cond_1
    return-void
.end method

.method public getComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<-",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic tryAdvance(Ljava/lang/Object;)Z
    .locals 1

    check-cast p1, Ljava/util/function/LongConsumer;

    invoke-virtual {p0, p1}, Ljava/util/stream/Streams$RangeLongSpliterator;->tryAdvance(Ljava/util/function/LongConsumer;)Z

    move-result v0

    return v0
.end method

.method public tryAdvance(Ljava/util/function/LongConsumer;)Z
    .locals 7

    const/4 v6, 0x1

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v0, p0, Ljava/util/stream/Streams$RangeLongSpliterator;->from:J

    iget-wide v2, p0, Ljava/util/stream/Streams$RangeLongSpliterator;->upTo:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    iget-wide v2, p0, Ljava/util/stream/Streams$RangeLongSpliterator;->from:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Ljava/util/stream/Streams$RangeLongSpliterator;->from:J

    invoke-interface {p1, v0, v1}, Ljava/util/function/LongConsumer;->accept(J)V

    return v6

    :cond_0
    iget v2, p0, Ljava/util/stream/Streams$RangeLongSpliterator;->last:I

    if-lez v2, :cond_1

    iput v4, p0, Ljava/util/stream/Streams$RangeLongSpliterator;->last:I

    invoke-interface {p1, v0, v1}, Ljava/util/function/LongConsumer;->accept(J)V

    return v6

    :cond_1
    return v4
.end method

.method public trySplit()Ljava/util/Spliterator$OfLong;
    .locals 10

    invoke-virtual {p0}, Ljava/util/stream/Streams$RangeLongSpliterator;->estimateSize()J

    move-result-wide v8

    const-wide/16 v0, 0x1

    cmp-long v0, v8, v0

    if-gtz v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/util/stream/Streams$RangeLongSpliterator;

    iget-wide v2, p0, Ljava/util/stream/Streams$RangeLongSpliterator;->from:J

    iget-wide v4, p0, Ljava/util/stream/Streams$RangeLongSpliterator;->from:J

    invoke-direct {p0, v8, v9}, Ljava/util/stream/Streams$RangeLongSpliterator;->splitPoint(J)J

    move-result-wide v6

    add-long/2addr v4, v6

    iput-wide v4, p0, Ljava/util/stream/Streams$RangeLongSpliterator;->from:J

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Ljava/util/stream/Streams$RangeLongSpliterator;-><init>(JJI)V

    goto :goto_0
.end method

.method public bridge synthetic trySplit()Ljava/util/Spliterator$OfPrimitive;
    .locals 1

    invoke-virtual {p0}, Ljava/util/stream/Streams$RangeLongSpliterator;->trySplit()Ljava/util/Spliterator$OfLong;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic trySplit()Ljava/util/Spliterator;
    .locals 1

    invoke-virtual {p0}, Ljava/util/stream/Streams$RangeLongSpliterator;->trySplit()Ljava/util/Spliterator$OfLong;

    move-result-object v0

    return-object v0
.end method
