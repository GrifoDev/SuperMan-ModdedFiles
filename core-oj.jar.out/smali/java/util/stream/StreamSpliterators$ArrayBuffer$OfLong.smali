.class final Ljava/util/stream/StreamSpliterators$ArrayBuffer$OfLong;
.super Ljava/util/stream/StreamSpliterators$ArrayBuffer$OfPrimitive;
.source "StreamSpliterators.java"

# interfaces
.implements Ljava/util/function/LongConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/StreamSpliterators$ArrayBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "OfLong"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/stream/StreamSpliterators$ArrayBuffer$OfPrimitive",
        "<",
        "Ljava/util/function/LongConsumer;",
        ">;",
        "Ljava/util/function/LongConsumer;"
    }
.end annotation


# instance fields
.field final array:[J


# direct methods
.method constructor <init>(I)V
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 1509
    invoke-direct {p0}, Ljava/util/stream/StreamSpliterators$ArrayBuffer$OfPrimitive;-><init>()V

    .line 1510
    new-array v0, p1, [J

    iput-object v0, p0, Ljava/util/stream/StreamSpliterators$ArrayBuffer$OfLong;->array:[J

    .line 1509
    return-void
.end method


# virtual methods
.method public accept(J)V
    .locals 3
    .param p1, "t"    # J

    .prologue
    .line 1515
    iget-object v0, p0, Ljava/util/stream/StreamSpliterators$ArrayBuffer$OfLong;->array:[J

    iget v1, p0, Ljava/util/stream/StreamSpliterators$ArrayBuffer$OfPrimitive;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/util/stream/StreamSpliterators$ArrayBuffer$OfPrimitive;->index:I

    aput-wide p1, v0, v1

    .line 1514
    return-void
.end method

.method public bridge synthetic forEach(Ljava/lang/Object;J)V
    .locals 0
    .param p1, "action"    # Ljava/lang/Object;
    .param p2, "fence"    # J

    .prologue
    .line 1519
    check-cast p1, Ljava/util/function/LongConsumer;

    .end local p1    # "action":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Ljava/util/stream/StreamSpliterators$ArrayBuffer$OfLong;->forEach(Ljava/util/function/LongConsumer;J)V

    return-void
.end method

.method public forEach(Ljava/util/function/LongConsumer;J)V
    .locals 4
    .param p1, "action"    # Ljava/util/function/LongConsumer;
    .param p2, "fence"    # J

    .prologue
    .line 1520
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    int-to-long v2, v0

    cmp-long v1, v2, p2

    if-gez v1, :cond_0

    .line 1521
    iget-object v1, p0, Ljava/util/stream/StreamSpliterators$ArrayBuffer$OfLong;->array:[J

    aget-wide v2, v1, v0

    invoke-interface {p1, v2, v3}, Ljava/util/function/LongConsumer;->accept(J)V

    .line 1520
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1519
    :cond_0
    return-void
.end method
