.class final Ljava/util/Vector$VectorSpliterator;
.super Ljava/lang/Object;
.source "Vector.java"

# interfaces
.implements Ljava/util/Spliterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Vector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "VectorSpliterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Spliterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private array:[Ljava/lang/Object;

.field private expectedModCount:I

.field private fence:I

.field private index:I

.field private final list:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Vector;[Ljava/lang/Object;III)V
    .locals 0
    .param p2, "array"    # [Ljava/lang/Object;
    .param p3, "origin"    # I
    .param p4, "fence"    # I
    .param p5, "expectedModCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<TE;>;[",
            "Ljava/lang/Object;",
            "III)V"
        }
    .end annotation

    .prologue
    .line 1289
    .local p0, "this":Ljava/util/Vector$VectorSpliterator;, "Ljava/util/Vector<TE;>.VectorSpliterator<TE;>;"
    .local p1, "list":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1291
    iput-object p1, p0, Ljava/util/Vector$VectorSpliterator;->list:Ljava/util/Vector;

    .line 1292
    iput-object p2, p0, Ljava/util/Vector$VectorSpliterator;->array:[Ljava/lang/Object;

    .line 1293
    iput p3, p0, Ljava/util/Vector$VectorSpliterator;->index:I

    .line 1294
    iput p4, p0, Ljava/util/Vector$VectorSpliterator;->fence:I

    .line 1295
    iput p5, p0, Ljava/util/Vector$VectorSpliterator;->expectedModCount:I

    .line 1290
    return-void
.end method

.method private getFence()I
    .locals 3

    .prologue
    .line 1300
    .local p0, "this":Ljava/util/Vector$VectorSpliterator;, "Ljava/util/Vector<TE;>.VectorSpliterator<TE;>;"
    iget v0, p0, Ljava/util/Vector$VectorSpliterator;->fence:I

    .local v0, "hi":I
    if-gez v0, :cond_0

    .line 1301
    iget-object v2, p0, Ljava/util/Vector$VectorSpliterator;->list:Ljava/util/Vector;

    monitor-enter v2

    .line 1302
    :try_start_0
    iget-object v1, p0, Ljava/util/Vector$VectorSpliterator;->list:Ljava/util/Vector;

    iget-object v1, v1, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    iput-object v1, p0, Ljava/util/Vector$VectorSpliterator;->array:[Ljava/lang/Object;

    .line 1303
    iget-object v1, p0, Ljava/util/Vector$VectorSpliterator;->list:Ljava/util/Vector;

    iget v1, v1, Ljava/util/AbstractList;->modCount:I

    iput v1, p0, Ljava/util/Vector$VectorSpliterator;->expectedModCount:I

    .line 1304
    iget-object v1, p0, Ljava/util/Vector$VectorSpliterator;->list:Ljava/util/Vector;

    iget v0, v1, Ljava/util/Vector;->elementCount:I

    .end local v0    # "hi":I
    iput v0, p0, Ljava/util/Vector$VectorSpliterator;->fence:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .restart local v0    # "hi":I
    monitor-exit v2

    .line 1307
    :cond_0
    return v0

    .line 1301
    .end local v0    # "hi":I
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method


# virtual methods
.method public characteristics()I
    .locals 1

    .prologue
    .line 1363
    .local p0, "this":Ljava/util/Vector$VectorSpliterator;, "Ljava/util/Vector<TE;>.VectorSpliterator<TE;>;"
    const/16 v0, 0x4050

    return v0
.end method

.method public estimateSize()J
    .locals 2

    .prologue
    .line 1359
    .local p0, "this":Ljava/util/Vector$VectorSpliterator;, "Ljava/util/Vector<TE;>.VectorSpliterator<TE;>;"
    invoke-direct {p0}, Ljava/util/Vector$VectorSpliterator;->getFence()I

    move-result v0

    iget v1, p0, Ljava/util/Vector$VectorSpliterator;->index:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    return-wide v0
.end method

.method public forEachRemaining(Ljava/util/function/Consumer;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-TE;>;)V"
        }
    .end annotation

    .prologue
    .line 1336
    .local p0, "this":Ljava/util/Vector$VectorSpliterator;, "Ljava/util/Vector<TE;>.VectorSpliterator<TE;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE;>;"
    if-nez p1, :cond_0

    .line 1337
    new-instance v5, Ljava/lang/NullPointerException;

    invoke-direct {v5}, Ljava/lang/NullPointerException;-><init>()V

    throw v5

    .line 1338
    :cond_0
    iget-object v4, p0, Ljava/util/Vector$VectorSpliterator;->list:Ljava/util/Vector;

    .local v4, "lst":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    if-eqz v4, :cond_3

    .line 1339
    iget v1, p0, Ljava/util/Vector$VectorSpliterator;->fence:I

    .local v1, "hi":I
    if-gez v1, :cond_1

    .line 1340
    monitor-enter v4

    .line 1341
    :try_start_0
    iget v5, v4, Ljava/util/AbstractList;->modCount:I

    iput v5, p0, Ljava/util/Vector$VectorSpliterator;->expectedModCount:I

    .line 1342
    iget-object v0, v4, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    iput-object v0, p0, Ljava/util/Vector$VectorSpliterator;->array:[Ljava/lang/Object;

    .line 1343
    .local v0, "a":[Ljava/lang/Object;
    iget v1, v4, Ljava/util/Vector;->elementCount:I

    .end local v1    # "hi":I
    iput v1, p0, Ljava/util/Vector$VectorSpliterator;->fence:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .restart local v1    # "hi":I
    monitor-exit v4

    .line 1348
    :goto_0
    if-eqz v0, :cond_3

    iget v2, p0, Ljava/util/Vector$VectorSpliterator;->index:I

    .local v2, "i":I
    if-ltz v2, :cond_3

    iput v1, p0, Ljava/util/Vector$VectorSpliterator;->index:I

    array-length v5, v0

    if-gt v1, v5, :cond_3

    move v3, v2

    .line 1349
    .end local v2    # "i":I
    .local v3, "i":I
    :goto_1
    if-ge v3, v1, :cond_2

    .line 1350
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    aget-object v5, v0, v3

    invoke-interface {p1, v5}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    move v3, v2

    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto :goto_1

    .line 1340
    .end local v0    # "a":[Ljava/lang/Object;
    .end local v1    # "hi":I
    .end local v3    # "i":I
    :catchall_0
    move-exception v5

    monitor-exit v4

    throw v5

    .line 1347
    .restart local v1    # "hi":I
    :cond_1
    iget-object v0, p0, Ljava/util/Vector$VectorSpliterator;->array:[Ljava/lang/Object;

    .restart local v0    # "a":[Ljava/lang/Object;
    goto :goto_0

    .line 1351
    .restart local v3    # "i":I
    :cond_2
    iget v5, v4, Ljava/util/AbstractList;->modCount:I

    iget v6, p0, Ljava/util/Vector$VectorSpliterator;->expectedModCount:I

    if-ne v5, v6, :cond_3

    .line 1352
    return-void

    .line 1355
    .end local v0    # "a":[Ljava/lang/Object;
    .end local v1    # "hi":I
    .end local v3    # "i":I
    :cond_3
    new-instance v5, Ljava/util/ConcurrentModificationException;

    invoke-direct {v5}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v5
.end method

.method public tryAdvance(Ljava/util/function/Consumer;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 1320
    .local p0, "this":Ljava/util/Vector$VectorSpliterator;, "Ljava/util/Vector<TE;>.VectorSpliterator<TE;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE;>;"
    if-nez p1, :cond_0

    .line 1321
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 1322
    :cond_0
    invoke-direct {p0}, Ljava/util/Vector$VectorSpliterator;->getFence()I

    move-result v1

    iget v0, p0, Ljava/util/Vector$VectorSpliterator;->index:I

    .local v0, "i":I
    if-le v1, v0, :cond_2

    .line 1323
    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Ljava/util/Vector$VectorSpliterator;->index:I

    .line 1324
    iget-object v1, p0, Ljava/util/Vector$VectorSpliterator;->array:[Ljava/lang/Object;

    aget-object v1, v1, v0

    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1325
    iget-object v1, p0, Ljava/util/Vector$VectorSpliterator;->list:Ljava/util/Vector;

    iget v1, v1, Ljava/util/AbstractList;->modCount:I

    iget v2, p0, Ljava/util/Vector$VectorSpliterator;->expectedModCount:I

    if-eq v1, v2, :cond_1

    .line 1326
    new-instance v1, Ljava/util/ConcurrentModificationException;

    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v1

    .line 1327
    :cond_1
    const/4 v1, 0x1

    return v1

    .line 1329
    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method public trySplit()Ljava/util/Spliterator;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 1311
    .local p0, "this":Ljava/util/Vector$VectorSpliterator;, "Ljava/util/Vector<TE;>.VectorSpliterator<TE;>;"
    invoke-direct {p0}, Ljava/util/Vector$VectorSpliterator;->getFence()I

    move-result v6

    .local v6, "hi":I
    iget v3, p0, Ljava/util/Vector$VectorSpliterator;->index:I

    .local v3, "lo":I
    add-int v0, v3, v6

    ushr-int/lit8 v4, v0, 0x1

    .line 1312
    .local v4, "mid":I
    if-lt v3, v4, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 1313
    :cond_0
    new-instance v0, Ljava/util/Vector$VectorSpliterator;

    iget-object v1, p0, Ljava/util/Vector$VectorSpliterator;->list:Ljava/util/Vector;

    iget-object v2, p0, Ljava/util/Vector$VectorSpliterator;->array:[Ljava/lang/Object;

    iput v4, p0, Ljava/util/Vector$VectorSpliterator;->index:I

    .line 1314
    iget v5, p0, Ljava/util/Vector$VectorSpliterator;->expectedModCount:I

    .line 1313
    invoke-direct/range {v0 .. v5}, Ljava/util/Vector$VectorSpliterator;-><init>(Ljava/util/Vector;[Ljava/lang/Object;III)V

    goto :goto_0
.end method
