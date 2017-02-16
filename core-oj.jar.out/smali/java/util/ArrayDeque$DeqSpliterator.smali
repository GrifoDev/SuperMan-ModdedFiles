.class final Ljava/util/ArrayDeque$DeqSpliterator;
.super Ljava/lang/Object;
.source "ArrayDeque.java"

# interfaces
.implements Ljava/util/Spliterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/ArrayDeque;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DeqSpliterator"
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
.field private final deq:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<TE;>;"
        }
    .end annotation
.end field

.field private fence:I

.field private index:I


# direct methods
.method constructor <init>(Ljava/util/ArrayDeque;II)V
    .locals 0
    .param p2, "origin"    # I
    .param p3, "fence"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayDeque",
            "<TE;>;II)V"
        }
    .end annotation

    .prologue
    .line 919
    .local p0, "this":Ljava/util/ArrayDeque$DeqSpliterator;, "Ljava/util/ArrayDeque<TE;>.DeqSpliterator<TE;>;"
    .local p1, "deq":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 920
    iput-object p1, p0, Ljava/util/ArrayDeque$DeqSpliterator;->deq:Ljava/util/ArrayDeque;

    .line 921
    iput p2, p0, Ljava/util/ArrayDeque$DeqSpliterator;->index:I

    .line 922
    iput p3, p0, Ljava/util/ArrayDeque$DeqSpliterator;->fence:I

    .line 919
    return-void
.end method

.method private getFence()I
    .locals 2

    .prologue
    .line 927
    .local p0, "this":Ljava/util/ArrayDeque$DeqSpliterator;, "Ljava/util/ArrayDeque<TE;>.DeqSpliterator<TE;>;"
    iget v0, p0, Ljava/util/ArrayDeque$DeqSpliterator;->fence:I

    .local v0, "t":I
    if-gez v0, :cond_0

    .line 928
    iget-object v1, p0, Ljava/util/ArrayDeque$DeqSpliterator;->deq:Ljava/util/ArrayDeque;

    iget v0, v1, Ljava/util/ArrayDeque;->tail:I

    .end local v0    # "t":I
    iput v0, p0, Ljava/util/ArrayDeque$DeqSpliterator;->fence:I

    .line 929
    .restart local v0    # "t":I
    iget-object v1, p0, Ljava/util/ArrayDeque$DeqSpliterator;->deq:Ljava/util/ArrayDeque;

    iget v1, v1, Ljava/util/ArrayDeque;->head:I

    iput v1, p0, Ljava/util/ArrayDeque$DeqSpliterator;->index:I

    .line 931
    :cond_0
    return v0
.end method


# virtual methods
.method public characteristics()I
    .locals 1

    .prologue
    .line 985
    .local p0, "this":Ljava/util/ArrayDeque$DeqSpliterator;, "Ljava/util/ArrayDeque<TE;>.DeqSpliterator<TE;>;"
    const/16 v0, 0x4150

    return v0
.end method

.method public estimateSize()J
    .locals 4

    .prologue
    .line 977
    .local p0, "this":Ljava/util/ArrayDeque$DeqSpliterator;, "Ljava/util/ArrayDeque<TE;>.DeqSpliterator<TE;>;"
    invoke-direct {p0}, Ljava/util/ArrayDeque$DeqSpliterator;->getFence()I

    move-result v1

    iget v2, p0, Ljava/util/ArrayDeque$DeqSpliterator;->index:I

    sub-int v0, v1, v2

    .line 978
    .local v0, "n":I
    if-gez v0, :cond_0

    .line 979
    iget-object v1, p0, Ljava/util/ArrayDeque$DeqSpliterator;->deq:Ljava/util/ArrayDeque;

    iget-object v1, v1, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    array-length v1, v1

    add-int/2addr v0, v1

    .line 980
    :cond_0
    int-to-long v2, v0

    return-wide v2
.end method

.method public forEachRemaining(Ljava/util/function/Consumer;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-TE;>;)V"
        }
    .end annotation

    .prologue
    .line 946
    .local p0, "this":Ljava/util/ArrayDeque$DeqSpliterator;, "Ljava/util/ArrayDeque<TE;>.DeqSpliterator<TE;>;"
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE;>;"
    if-nez p1, :cond_0

    .line 947
    new-instance v5, Ljava/lang/NullPointerException;

    invoke-direct {v5}, Ljava/lang/NullPointerException;-><init>()V

    throw v5

    .line 948
    :cond_0
    iget-object v5, p0, Ljava/util/ArrayDeque$DeqSpliterator;->deq:Ljava/util/ArrayDeque;

    iget-object v0, v5, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    .line 949
    .local v0, "a":[Ljava/lang/Object;
    array-length v5, v0

    add-int/lit8 v4, v5, -0x1

    .local v4, "m":I
    invoke-direct {p0}, Ljava/util/ArrayDeque$DeqSpliterator;->getFence()I

    move-result v2

    .local v2, "f":I
    iget v3, p0, Ljava/util/ArrayDeque$DeqSpliterator;->index:I

    .line 950
    .local v3, "i":I
    iput v2, p0, Ljava/util/ArrayDeque$DeqSpliterator;->index:I

    .line 951
    :goto_0
    if-eq v3, v2, :cond_2

    .line 952
    aget-object v1, v0, v3

    .line 953
    .local v1, "e":Ljava/lang/Object;, "TE;"
    add-int/lit8 v5, v3, 0x1

    and-int v3, v5, v4

    .line 954
    if-nez v1, :cond_1

    .line 955
    new-instance v5, Ljava/util/ConcurrentModificationException;

    invoke-direct {v5}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v5

    .line 956
    :cond_1
    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    .line 945
    .end local v1    # "e":Ljava/lang/Object;, "TE;"
    :cond_2
    return-void
.end method

.method public tryAdvance(Ljava/util/function/Consumer;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 961
    .local p0, "this":Ljava/util/ArrayDeque$DeqSpliterator;, "Ljava/util/ArrayDeque<TE;>.DeqSpliterator<TE;>;"
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE;>;"
    if-nez p1, :cond_0

    .line 962
    new-instance v5, Ljava/lang/NullPointerException;

    invoke-direct {v5}, Ljava/lang/NullPointerException;-><init>()V

    throw v5

    .line 963
    :cond_0
    iget-object v5, p0, Ljava/util/ArrayDeque$DeqSpliterator;->deq:Ljava/util/ArrayDeque;

    iget-object v0, v5, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    .line 964
    .local v0, "a":[Ljava/lang/Object;
    array-length v5, v0

    add-int/lit8 v4, v5, -0x1

    .local v4, "m":I
    invoke-direct {p0}, Ljava/util/ArrayDeque$DeqSpliterator;->getFence()I

    move-result v2

    .local v2, "f":I
    iget v3, p0, Ljava/util/ArrayDeque$DeqSpliterator;->index:I

    .line 965
    .local v3, "i":I
    if-eq v3, v2, :cond_2

    .line 966
    aget-object v1, v0, v3

    .line 967
    .local v1, "e":Ljava/lang/Object;, "TE;"
    add-int/lit8 v5, v3, 0x1

    and-int/2addr v5, v4

    iput v5, p0, Ljava/util/ArrayDeque$DeqSpliterator;->index:I

    .line 968
    if-nez v1, :cond_1

    .line 969
    new-instance v5, Ljava/util/ConcurrentModificationException;

    invoke-direct {v5}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v5

    .line 970
    :cond_1
    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 971
    const/4 v5, 0x1

    return v5

    .line 973
    .end local v1    # "e":Ljava/lang/Object;, "TE;"
    :cond_2
    const/4 v5, 0x0

    return v5
.end method

.method public trySplit()Ljava/util/ArrayDeque$DeqSpliterator;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayDeque$DeqSpliterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 935
    .local p0, "this":Ljava/util/ArrayDeque$DeqSpliterator;, "Ljava/util/ArrayDeque<TE;>.DeqSpliterator<TE;>;"
    invoke-direct {p0}, Ljava/util/ArrayDeque$DeqSpliterator;->getFence()I

    move-result v3

    .local v3, "t":I
    iget v0, p0, Ljava/util/ArrayDeque$DeqSpliterator;->index:I

    .local v0, "h":I
    iget-object v4, p0, Ljava/util/ArrayDeque$DeqSpliterator;->deq:Ljava/util/ArrayDeque;

    iget-object v4, v4, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    array-length v2, v4

    .line 936
    .local v2, "n":I
    if-eq v0, v3, :cond_1

    add-int/lit8 v4, v0, 0x1

    add-int/lit8 v5, v2, -0x1

    and-int/2addr v4, v5

    if-eq v4, v3, :cond_1

    .line 937
    if-le v0, v3, :cond_0

    .line 938
    add-int/2addr v3, v2

    .line 939
    :cond_0
    add-int v4, v0, v3

    ushr-int/lit8 v4, v4, 0x1

    add-int/lit8 v5, v2, -0x1

    and-int v1, v4, v5

    .line 940
    .local v1, "m":I
    new-instance v4, Ljava/util/ArrayDeque$DeqSpliterator;

    iget-object v5, p0, Ljava/util/ArrayDeque$DeqSpliterator;->deq:Ljava/util/ArrayDeque;

    iput v1, p0, Ljava/util/ArrayDeque$DeqSpliterator;->index:I

    invoke-direct {v4, v5, v0, v1}, Ljava/util/ArrayDeque$DeqSpliterator;-><init>(Ljava/util/ArrayDeque;II)V

    return-object v4

    .line 942
    .end local v1    # "m":I
    :cond_1
    const/4 v4, 0x0

    return-object v4
.end method

.method public bridge synthetic trySplit()Ljava/util/Spliterator;
    .locals 1

    .prologue
    .line 934
    .local p0, "this":Ljava/util/ArrayDeque$DeqSpliterator;, "Ljava/util/ArrayDeque<TE;>.DeqSpliterator<TE;>;"
    invoke-virtual {p0}, Ljava/util/ArrayDeque$DeqSpliterator;->trySplit()Ljava/util/ArrayDeque$DeqSpliterator;

    move-result-object v0

    return-object v0
.end method
