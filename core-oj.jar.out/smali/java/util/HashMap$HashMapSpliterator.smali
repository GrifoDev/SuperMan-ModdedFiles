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
    .param p2, "origin"    # I
    .param p3, "fence"    # I
    .param p4, "est"    # I
    .param p5, "expectedModCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<TK;TV;>;IIII)V"
        }
    .end annotation

    .prologue
    .line 906
    .local p0, "this":Ljava/util/HashMap$HashMapSpliterator;, "Ljava/util/HashMap<TK;TV;>.HashMapSpliterator<TK;TV;>;"
    .local p1, "m":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 909
    iput-object p1, p0, Ljava/util/HashMap$HashMapSpliterator;->map:Ljava/util/HashMap;

    .line 910
    iput p2, p0, Ljava/util/HashMap$HashMapSpliterator;->index:I

    .line 911
    iput p3, p0, Ljava/util/HashMap$HashMapSpliterator;->fence:I

    .line 912
    iput p4, p0, Ljava/util/HashMap$HashMapSpliterator;->est:I

    .line 913
    iput p5, p0, Ljava/util/HashMap$HashMapSpliterator;->expectedModCount:I

    .line 908
    return-void
.end method


# virtual methods
.method public final estimateSize()J
    .locals 2

    .prologue
    .line 929
    .local p0, "this":Ljava/util/HashMap$HashMapSpliterator;, "Ljava/util/HashMap<TK;TV;>.HashMapSpliterator<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/HashMap$HashMapSpliterator;->getFence()I

    .line 930
    iget v0, p0, Ljava/util/HashMap$HashMapSpliterator;->est:I

    int-to-long v0, v0

    return-wide v0
.end method

.method final getFence()I
    .locals 5

    .prologue
    .local p0, "this":Ljava/util/HashMap$HashMapSpliterator;, "Ljava/util/HashMap<TK;TV;>.HashMapSpliterator<TK;TV;>;"
    const/4 v3, 0x0

    .line 918
    iget v0, p0, Ljava/util/HashMap$HashMapSpliterator;->fence:I

    .local v0, "hi":I
    if-gez v0, :cond_0

    .line 919
    iget-object v1, p0, Ljava/util/HashMap$HashMapSpliterator;->map:Ljava/util/HashMap;

    .line 920
    .local v1, "m":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    iget v4, v1, Ljava/util/HashMap;->size:I

    iput v4, p0, Ljava/util/HashMap$HashMapSpliterator;->est:I

    .line 921
    iget v4, v1, Ljava/util/HashMap;->modCount:I

    iput v4, p0, Ljava/util/HashMap$HashMapSpliterator;->expectedModCount:I

    .line 922
    iget-object v2, v1, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    .line 923
    .local v2, "tab":[Ljava/util/HashMap$HashMapEntry;, "[Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    if-nez v2, :cond_1

    move v0, v3

    :goto_0
    iput v0, p0, Ljava/util/HashMap$HashMapSpliterator;->fence:I

    .line 925
    .end local v1    # "m":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    .end local v2    # "tab":[Ljava/util/HashMap$HashMapEntry;, "[Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    :cond_0
    return v0

    .line 923
    .restart local v1    # "m":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    .restart local v2    # "tab":[Ljava/util/HashMap$HashMapEntry;, "[Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    :cond_1
    array-length v0, v2

    goto :goto_0
.end method
