.class final Ljava/util/stream/StreamSpliterators$ArrayBuffer$OfRef;
.super Ljava/util/stream/StreamSpliterators$ArrayBuffer;
.source "StreamSpliterators.java"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/StreamSpliterators$ArrayBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "OfRef"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/stream/StreamSpliterators$ArrayBuffer;",
        "Ljava/util/function/Consumer",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final array:[Ljava/lang/Object;


# direct methods
.method constructor <init>(I)V
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 1455
    .local p0, "this":Ljava/util/stream/StreamSpliterators$ArrayBuffer$OfRef;, "Ljava/util/stream/StreamSpliterators$ArrayBuffer$OfRef<TT;>;"
    invoke-direct {p0}, Ljava/util/stream/StreamSpliterators$ArrayBuffer;-><init>()V

    .line 1456
    new-array v0, p1, [Ljava/lang/Object;

    iput-object v0, p0, Ljava/util/stream/StreamSpliterators$ArrayBuffer$OfRef;->array:[Ljava/lang/Object;

    .line 1455
    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 1461
    .local p0, "this":Ljava/util/stream/StreamSpliterators$ArrayBuffer$OfRef;, "Ljava/util/stream/StreamSpliterators$ArrayBuffer$OfRef<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Ljava/util/stream/StreamSpliterators$ArrayBuffer$OfRef;->array:[Ljava/lang/Object;

    iget v1, p0, Ljava/util/stream/StreamSpliterators$ArrayBuffer;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/util/stream/StreamSpliterators$ArrayBuffer;->index:I

    aput-object p1, v0, v1

    .line 1460
    return-void
.end method

.method public forEach(Ljava/util/function/Consumer;J)V
    .locals 4
    .param p2, "fence"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-TT;>;J)V"
        }
    .end annotation

    .prologue
    .line 1465
    .local p0, "this":Ljava/util/stream/StreamSpliterators$ArrayBuffer$OfRef;, "Ljava/util/stream/StreamSpliterators$ArrayBuffer$OfRef<TT;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TT;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    int-to-long v2, v0

    cmp-long v2, v2, p2

    if-gez v2, :cond_0

    .line 1467
    iget-object v2, p0, Ljava/util/stream/StreamSpliterators$ArrayBuffer$OfRef;->array:[Ljava/lang/Object;

    aget-object v1, v2, v0

    .line 1468
    .local v1, "t":Ljava/lang/Object;, "TT;"
    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1465
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1464
    .end local v1    # "t":Ljava/lang/Object;, "TT;"
    :cond_0
    return-void
.end method
