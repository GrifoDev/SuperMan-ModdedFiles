.class Ljava/util/IdentityHashMap$IdentityHashMapSpliterator;
.super Ljava/lang/Object;
.source "IdentityHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/IdentityHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "IdentityHashMapSpliterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field est:I

.field expectedModCount:I

.field fence:I

.field index:I

.field final map:Ljava/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/IdentityHashMap",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/IdentityHashMap;IIII)V
    .locals 0
    .param p2, "origin"    # I
    .param p3, "fence"    # I
    .param p4, "est"    # I
    .param p5, "expectedModCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/IdentityHashMap",
            "<TK;TV;>;IIII)V"
        }
    .end annotation

    .prologue
    .line 1393
    .local p0, "this":Ljava/util/IdentityHashMap$IdentityHashMapSpliterator;, "Ljava/util/IdentityHashMap<TK;TV;>.IdentityHashMapSpliterator<TK;TV;>;"
    .local p1, "map":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1395
    iput-object p1, p0, Ljava/util/IdentityHashMap$IdentityHashMapSpliterator;->map:Ljava/util/IdentityHashMap;

    .line 1396
    iput p2, p0, Ljava/util/IdentityHashMap$IdentityHashMapSpliterator;->index:I

    .line 1397
    iput p3, p0, Ljava/util/IdentityHashMap$IdentityHashMapSpliterator;->fence:I

    .line 1398
    iput p4, p0, Ljava/util/IdentityHashMap$IdentityHashMapSpliterator;->est:I

    .line 1399
    iput p5, p0, Ljava/util/IdentityHashMap$IdentityHashMapSpliterator;->expectedModCount:I

    .line 1394
    return-void
.end method


# virtual methods
.method public final estimateSize()J
    .locals 2

    .prologue
    .line 1413
    .local p0, "this":Ljava/util/IdentityHashMap$IdentityHashMapSpliterator;, "Ljava/util/IdentityHashMap<TK;TV;>.IdentityHashMapSpliterator<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/IdentityHashMap$IdentityHashMapSpliterator;->getFence()I

    .line 1414
    iget v0, p0, Ljava/util/IdentityHashMap$IdentityHashMapSpliterator;->est:I

    int-to-long v0, v0

    return-wide v0
.end method

.method final getFence()I
    .locals 2

    .prologue
    .line 1404
    .local p0, "this":Ljava/util/IdentityHashMap$IdentityHashMapSpliterator;, "Ljava/util/IdentityHashMap<TK;TV;>.IdentityHashMapSpliterator<TK;TV;>;"
    iget v0, p0, Ljava/util/IdentityHashMap$IdentityHashMapSpliterator;->fence:I

    .local v0, "hi":I
    if-gez v0, :cond_0

    .line 1405
    iget-object v1, p0, Ljava/util/IdentityHashMap$IdentityHashMapSpliterator;->map:Ljava/util/IdentityHashMap;

    invoke-static {v1}, Ljava/util/IdentityHashMap;->-get1(Ljava/util/IdentityHashMap;)I

    move-result v1

    iput v1, p0, Ljava/util/IdentityHashMap$IdentityHashMapSpliterator;->est:I

    .line 1406
    iget-object v1, p0, Ljava/util/IdentityHashMap$IdentityHashMapSpliterator;->map:Ljava/util/IdentityHashMap;

    invoke-static {v1}, Ljava/util/IdentityHashMap;->-get0(Ljava/util/IdentityHashMap;)I

    move-result v1

    iput v1, p0, Ljava/util/IdentityHashMap$IdentityHashMapSpliterator;->expectedModCount:I

    .line 1407
    iget-object v1, p0, Ljava/util/IdentityHashMap$IdentityHashMapSpliterator;->map:Ljava/util/IdentityHashMap;

    invoke-static {v1}, Ljava/util/IdentityHashMap;->-get2(Ljava/util/IdentityHashMap;)[Ljava/lang/Object;

    move-result-object v1

    array-length v0, v1

    .end local v0    # "hi":I
    iput v0, p0, Ljava/util/IdentityHashMap$IdentityHashMapSpliterator;->fence:I

    .line 1409
    .restart local v0    # "hi":I
    :cond_0
    return v0
.end method
