.class final Ljava/util/stream/StreamSpliterators$ArrayBuffer$OfInt;
.super Ljava/util/stream/StreamSpliterators$ArrayBuffer$OfPrimitive;
.source "StreamSpliterators.java"

# interfaces
.implements Ljava/util/function/IntConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/StreamSpliterators$ArrayBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "OfInt"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/stream/StreamSpliterators$ArrayBuffer$OfPrimitive",
        "<",
        "Ljava/util/function/IntConsumer;",
        ">;",
        "Ljava/util/function/IntConsumer;"
    }
.end annotation


# instance fields
.field final array:[I


# direct methods
.method constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/util/stream/StreamSpliterators$ArrayBuffer$OfPrimitive;-><init>()V

    new-array v0, p1, [I

    iput-object v0, p0, Ljava/util/stream/StreamSpliterators$ArrayBuffer$OfInt;->array:[I

    return-void
.end method


# virtual methods
.method public accept(I)V
    .locals 3

    iget-object v0, p0, Ljava/util/stream/StreamSpliterators$ArrayBuffer$OfInt;->array:[I

    iget v1, p0, Ljava/util/stream/StreamSpliterators$ArrayBuffer$OfPrimitive;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/util/stream/StreamSpliterators$ArrayBuffer$OfPrimitive;->index:I

    aput p1, v0, v1

    return-void
.end method

.method public bridge synthetic forEach(Ljava/lang/Object;J)V
    .locals 0

    check-cast p1, Ljava/util/function/IntConsumer;

    invoke-virtual {p0, p1, p2, p3}, Ljava/util/stream/StreamSpliterators$ArrayBuffer$OfInt;->forEach(Ljava/util/function/IntConsumer;J)V

    return-void
.end method

.method public forEach(Ljava/util/function/IntConsumer;J)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    int-to-long v2, v0

    cmp-long v1, v2, p2

    if-gez v1, :cond_0

    iget-object v1, p0, Ljava/util/stream/StreamSpliterators$ArrayBuffer$OfInt;->array:[I

    aget v1, v1, v0

    invoke-interface {p1, v1}, Ljava/util/function/IntConsumer;->accept(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
