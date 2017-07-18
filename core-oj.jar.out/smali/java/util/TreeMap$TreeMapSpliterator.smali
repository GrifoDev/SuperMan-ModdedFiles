.class Ljava/util/TreeMap$TreeMapSpliterator;
.super Ljava/lang/Object;
.source "TreeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/TreeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TreeMapSpliterator"
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
.field current:Ljava/util/TreeMap$TreeMapEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap$TreeMapEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field est:I

.field expectedModCount:I

.field fence:Ljava/util/TreeMap$TreeMapEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap$TreeMapEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field side:I

.field final tree:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/TreeMap;Ljava/util/TreeMap$TreeMapEntry;Ljava/util/TreeMap$TreeMapEntry;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap",
            "<TK;TV;>;",
            "Ljava/util/TreeMap$TreeMapEntry",
            "<TK;TV;>;",
            "Ljava/util/TreeMap$TreeMapEntry",
            "<TK;TV;>;III)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/TreeMap$TreeMapSpliterator;->tree:Ljava/util/TreeMap;

    iput-object p2, p0, Ljava/util/TreeMap$TreeMapSpliterator;->current:Ljava/util/TreeMap$TreeMapEntry;

    iput-object p3, p0, Ljava/util/TreeMap$TreeMapSpliterator;->fence:Ljava/util/TreeMap$TreeMapEntry;

    iput p4, p0, Ljava/util/TreeMap$TreeMapSpliterator;->side:I

    iput p5, p0, Ljava/util/TreeMap$TreeMapSpliterator;->est:I

    iput p6, p0, Ljava/util/TreeMap$TreeMapSpliterator;->expectedModCount:I

    return-void
.end method


# virtual methods
.method public final estimateSize()J
    .locals 2

    invoke-virtual {p0}, Ljava/util/TreeMap$TreeMapSpliterator;->getEstimate()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method final getEstimate()I
    .locals 3

    const/4 v2, 0x0

    iget v0, p0, Ljava/util/TreeMap$TreeMapSpliterator;->est:I

    if-gez v0, :cond_0

    iget-object v1, p0, Ljava/util/TreeMap$TreeMapSpliterator;->tree:Ljava/util/TreeMap;

    if-eqz v1, :cond_2

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    invoke-virtual {v1}, Ljava/util/TreeMap;->getFirstEntry()Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v2

    :goto_0
    iput-object v2, p0, Ljava/util/TreeMap$TreeMapSpliterator;->current:Ljava/util/TreeMap$TreeMapEntry;

    invoke-static {v1}, Ljava/util/TreeMap;->-get4(Ljava/util/TreeMap;)I

    move-result v0

    iput v0, p0, Ljava/util/TreeMap$TreeMapSpliterator;->est:I

    invoke-static {v1}, Ljava/util/TreeMap;->-get2(Ljava/util/TreeMap;)I

    move-result v2

    iput v2, p0, Ljava/util/TreeMap$TreeMapSpliterator;->expectedModCount:I

    :cond_0
    :goto_1
    return v0

    :cond_1
    invoke-virtual {v1}, Ljava/util/TreeMap;->getLastEntry()Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v2

    goto :goto_0

    :cond_2
    iput v2, p0, Ljava/util/TreeMap$TreeMapSpliterator;->est:I

    const/4 v0, 0x0

    goto :goto_1
.end method
