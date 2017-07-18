.class Ljava/util/HashMap$HashMapSpliterator;
.super Ljava/lang/Object;
.source "HashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/HashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "HashMapSpliterator"
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
.field current:Ljava/util/HashMap$HashMapEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap$HashMapEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field est:I

.field expectedModCount:I

.field fence:I

.field index:I

.field final map:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/HashMap;IIII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<TK;TV;>;IIII)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/HashMap$HashMapSpliterator;->map:Ljava/util/HashMap;

    iput p2, p0, Ljava/util/HashMap$HashMapSpliterator;->index:I

    iput p3, p0, Ljava/util/HashMap$HashMapSpliterator;->fence:I

    iput p4, p0, Ljava/util/HashMap$HashMapSpliterator;->est:I

    iput p5, p0, Ljava/util/HashMap$HashMapSpliterator;->expectedModCount:I

    return-void
.end method


# virtual methods
.method public final estimateSize()J
    .locals 2

    invoke-virtual {p0}, Ljava/util/HashMap$HashMapSpliterator;->getFence()I

    iget v0, p0, Ljava/util/HashMap$HashMapSpliterator;->est:I

    int-to-long v0, v0

    return-wide v0
.end method

.method final getFence()I
    .locals 5

    const/4 v3, 0x0

    iget v0, p0, Ljava/util/HashMap$HashMapSpliterator;->fence:I

    if-gez v0, :cond_0

    iget-object v1, p0, Ljava/util/HashMap$HashMapSpliterator;->map:Ljava/util/HashMap;

    iget v4, v1, Ljava/util/HashMap;->size:I

    iput v4, p0, Ljava/util/HashMap$HashMapSpliterator;->est:I

    iget v4, v1, Ljava/util/HashMap;->modCount:I

    iput v4, p0, Ljava/util/HashMap$HashMapSpliterator;->expectedModCount:I

    iget-object v2, v1, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    if-nez v2, :cond_1

    move v0, v3

    :goto_0
    iput v0, p0, Ljava/util/HashMap$HashMapSpliterator;->fence:I

    :cond_0
    return v0

    :cond_1
    array-length v0, v2

    goto :goto_0
.end method
