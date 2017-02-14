.class Ljava/util/WeakHashMap$WeakHashMapSpliterator;
.super Ljava/lang/Object;
.source "WeakHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/WeakHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "WeakHashMapSpliterator"
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
.field current:Ljava/util/WeakHashMap$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap$Entry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field est:I

.field expectedModCount:I

.field fence:I

.field index:I

.field final map:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/WeakHashMap;IIII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/WeakHashMap",
            "<TK;TV;>;IIII)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->map:Ljava/util/WeakHashMap;

    iput p2, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->index:I

    iput p3, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->fence:I

    iput p4, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->est:I

    iput p5, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->expectedModCount:I

    return-void
.end method


# virtual methods
.method public final estimateSize()J
    .locals 2

    invoke-virtual {p0}, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->getFence()I

    iget v0, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->est:I

    int-to-long v0, v0

    return-wide v0
.end method

.method final getFence()I
    .locals 3

    iget v0, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->fence:I

    if-gez v0, :cond_0

    iget-object v1, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->map:Ljava/util/WeakHashMap;

    invoke-virtual {v1}, Ljava/util/WeakHashMap;->size()I

    move-result v2

    iput v2, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->est:I

    iget v2, v1, Ljava/util/WeakHashMap;->modCount:I

    iput v2, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->expectedModCount:I

    iget-object v2, v1, Ljava/util/WeakHashMap;->table:[Ljava/util/WeakHashMap$Entry;

    array-length v0, v2

    iput v0, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->fence:I

    :cond_0
    return v0
.end method
