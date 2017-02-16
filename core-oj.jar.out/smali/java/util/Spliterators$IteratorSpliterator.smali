.class Ljava/util/Spliterators$IteratorSpliterator;
.super Ljava/lang/Object;
.source "Spliterators.java"

# interfaces
.implements Ljava/util/Spliterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Spliterators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "IteratorSpliterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Spliterator",
        "<TT;>;"
    }
.end annotation


# static fields
.field static final BATCH_UNIT:I = 0x400

.field static final MAX_BATCH:I = 0x2000000


# instance fields
.field private batch:I

.field private final characteristics:I

.field private final collection:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<+TT;>;"
        }
    .end annotation
.end field

.field private est:J

.field private it:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Collection;I)V
    .locals 1
    .param p2, "characteristics"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TT;>;I)V"
        }
    .end annotation

    .prologue
    .line 1710
    .local p0, "this":Ljava/util/Spliterators$IteratorSpliterator;, "Ljava/util/Spliterators$IteratorSpliterator<TT;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1711
    iput-object p1, p0, Ljava/util/Spliterators$IteratorSpliterator;->collection:Ljava/util/Collection;

    .line 1712
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/Spliterators$IteratorSpliterator;->it:Ljava/util/Iterator;

    .line 1713
    and-int/lit16 v0, p2, 0x1000

    if-nez v0, :cond_0

    .line 1714
    or-int/lit8 v0, p2, 0x40

    or-int/lit16 p2, v0, 0x4000

    .line 1713
    .end local p2    # "characteristics":I
    :cond_0
    iput p2, p0, Ljava/util/Spliterators$IteratorSpliterator;->characteristics:I

    .line 1710
    return-void
.end method

.method public constructor <init>(Ljava/util/Iterator;I)V
    .locals 2
    .param p2, "characteristics"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<+TT;>;I)V"
        }
    .end annotation

    .prologue
    .line 1746
    .local p0, "this":Ljava/util/Spliterators$IteratorSpliterator;, "Ljava/util/Spliterators$IteratorSpliterator<TT;>;"
    .local p1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1747
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/Spliterators$IteratorSpliterator;->collection:Ljava/util/Collection;

    .line 1748
    iput-object p1, p0, Ljava/util/Spliterators$IteratorSpliterator;->it:Ljava/util/Iterator;

    .line 1749
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Ljava/util/Spliterators$IteratorSpliterator;->est:J

    .line 1750
    and-int/lit16 v0, p2, -0x4041

    iput v0, p0, Ljava/util/Spliterators$IteratorSpliterator;->characteristics:I

    .line 1746
    return-void
.end method

.method public constructor <init>(Ljava/util/Iterator;JI)V
    .locals 2
    .param p2, "size"    # J
    .param p4, "characteristics"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<+TT;>;JI)V"
        }
    .end annotation

    .prologue
    .line 1728
    .local p0, "this":Ljava/util/Spliterators$IteratorSpliterator;, "Ljava/util/Spliterators$IteratorSpliterator<TT;>;"
    .local p1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1729
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/Spliterators$IteratorSpliterator;->collection:Ljava/util/Collection;

    .line 1730
    iput-object p1, p0, Ljava/util/Spliterators$IteratorSpliterator;->it:Ljava/util/Iterator;

    .line 1731
    iput-wide p2, p0, Ljava/util/Spliterators$IteratorSpliterator;->est:J

    .line 1732
    and-int/lit16 v0, p4, 0x1000

    if-nez v0, :cond_0

    .line 1733
    or-int/lit8 v0, p4, 0x40

    or-int/lit16 p4, v0, 0x4000

    .line 1732
    .end local p4    # "characteristics":I
    :cond_0
    iput p4, p0, Ljava/util/Spliterators$IteratorSpliterator;->characteristics:I

    .line 1728
    return-void
.end method


# virtual methods
.method public characteristics()I
    .locals 1

    .prologue
    .line 1828
    .local p0, "this":Ljava/util/Spliterators$IteratorSpliterator;, "Ljava/util/Spliterators$IteratorSpliterator<TT;>;"
    iget v0, p0, Ljava/util/Spliterators$IteratorSpliterator;->characteristics:I

    return v0
.end method

.method public estimateSize()J
    .locals 2

    .prologue
    .line 1820
    .local p0, "this":Ljava/util/Spliterators$IteratorSpliterator;, "Ljava/util/Spliterators$IteratorSpliterator<TT;>;"
    iget-object v0, p0, Ljava/util/Spliterators$IteratorSpliterator;->it:Ljava/util/Iterator;

    if-nez v0, :cond_0

    .line 1821
    iget-object v0, p0, Ljava/util/Spliterators$IteratorSpliterator;->collection:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Ljava/util/Spliterators$IteratorSpliterator;->it:Ljava/util/Iterator;

    .line 1822
    iget-object v0, p0, Ljava/util/Spliterators$IteratorSpliterator;->collection:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Ljava/util/Spliterators$IteratorSpliterator;->est:J

    return-wide v0

    .line 1824
    :cond_0
    iget-wide v0, p0, Ljava/util/Spliterators$IteratorSpliterator;->est:J

    return-wide v0
.end method

.method public forEachRemaining(Ljava/util/function/Consumer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 1795
    .local p0, "this":Ljava/util/Spliterators$IteratorSpliterator;, "Ljava/util/Spliterators$IteratorSpliterator<TT;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TT;>;"
    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 1797
    :cond_0
    iget-object v0, p0, Ljava/util/Spliterators$IteratorSpliterator;->it:Ljava/util/Iterator;

    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<+TT;>;"
    if-nez v0, :cond_1

    .line 1798
    iget-object v1, p0, Ljava/util/Spliterators$IteratorSpliterator;->collection:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .end local v0    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<+TT;>;"
    iput-object v0, p0, Ljava/util/Spliterators$IteratorSpliterator;->it:Ljava/util/Iterator;

    .line 1799
    .restart local v0    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<+TT;>;"
    iget-object v1, p0, Ljava/util/Spliterators$IteratorSpliterator;->collection:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    int-to-long v2, v1

    iput-wide v2, p0, Ljava/util/Spliterators$IteratorSpliterator;->est:J

    .line 1801
    :cond_1
    invoke-interface {v0, p1}, Ljava/util/Iterator;->forEachRemaining(Ljava/util/function/Consumer;)V

    .line 1794
    return-void
.end method

.method public getComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<-TT;>;"
        }
    .end annotation

    .prologue
    .line 1832
    .local p0, "this":Ljava/util/Spliterators$IteratorSpliterator;, "Ljava/util/Spliterators$IteratorSpliterator<TT;>;"
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Ljava/util/Spliterators$IteratorSpliterator;->hasCharacteristics(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1833
    const/4 v0, 0x0

    return-object v0

    .line 1834
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public tryAdvance(Ljava/util/function/Consumer;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 1806
    .local p0, "this":Ljava/util/Spliterators$IteratorSpliterator;, "Ljava/util/Spliterators$IteratorSpliterator<TT;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TT;>;"
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1807
    :cond_0
    iget-object v0, p0, Ljava/util/Spliterators$IteratorSpliterator;->it:Ljava/util/Iterator;

    if-nez v0, :cond_1

    .line 1808
    iget-object v0, p0, Ljava/util/Spliterators$IteratorSpliterator;->collection:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Ljava/util/Spliterators$IteratorSpliterator;->it:Ljava/util/Iterator;

    .line 1809
    iget-object v0, p0, Ljava/util/Spliterators$IteratorSpliterator;->collection:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Ljava/util/Spliterators$IteratorSpliterator;->est:J

    .line 1811
    :cond_1
    iget-object v0, p0, Ljava/util/Spliterators$IteratorSpliterator;->it:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1812
    iget-object v0, p0, Ljava/util/Spliterators$IteratorSpliterator;->it:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1813
    const/4 v0, 0x1

    return v0

    .line 1815
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public trySplit()Ljava/util/Spliterator;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/Spliterators$IteratorSpliterator;, "Ljava/util/Spliterators$IteratorSpliterator<TT;>;"
    const/4 v8, 0x0

    .line 1770
    iget-object v1, p0, Ljava/util/Spliterators$IteratorSpliterator;->it:Ljava/util/Iterator;

    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<+TT;>;"
    if-nez v1, :cond_5

    .line 1771
    iget-object v6, p0, Ljava/util/Spliterators$IteratorSpliterator;->collection:Ljava/util/Collection;

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .end local v1    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<+TT;>;"
    iput-object v1, p0, Ljava/util/Spliterators$IteratorSpliterator;->it:Ljava/util/Iterator;

    .line 1772
    .restart local v1    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<+TT;>;"
    iget-object v6, p0, Ljava/util/Spliterators$IteratorSpliterator;->collection:Ljava/util/Collection;

    invoke-interface {v6}, Ljava/util/Collection;->size()I

    move-result v6

    int-to-long v4, v6

    iput-wide v4, p0, Ljava/util/Spliterators$IteratorSpliterator;->est:J

    .line 1776
    .local v4, "s":J
    :goto_0
    const-wide/16 v6, 0x1

    cmp-long v6, v4, v6

    if-lez v6, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1777
    iget v6, p0, Ljava/util/Spliterators$IteratorSpliterator;->batch:I

    add-int/lit16 v3, v6, 0x400

    .line 1778
    .local v3, "n":I
    int-to-long v6, v3

    cmp-long v6, v6, v4

    if-lez v6, :cond_0

    .line 1779
    long-to-int v3, v4

    .line 1780
    :cond_0
    const/high16 v6, 0x2000000

    if-le v3, v6, :cond_1

    .line 1781
    const/high16 v3, 0x2000000

    .line 1782
    :cond_1
    new-array v0, v3, [Ljava/lang/Object;

    .line 1783
    .local v0, "a":[Ljava/lang/Object;
    const/4 v2, 0x0

    .line 1784
    .local v2, "j":I
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v0, v2

    add-int/lit8 v2, v2, 0x1

    if-ge v2, v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_2

    .line 1785
    :cond_3
    iput v2, p0, Ljava/util/Spliterators$IteratorSpliterator;->batch:I

    .line 1786
    iget-wide v6, p0, Ljava/util/Spliterators$IteratorSpliterator;->est:J

    const-wide v8, 0x7fffffffffffffffL

    cmp-long v6, v6, v8

    if-eqz v6, :cond_4

    .line 1787
    iget-wide v6, p0, Ljava/util/Spliterators$IteratorSpliterator;->est:J

    int-to-long v8, v2

    sub-long/2addr v6, v8

    iput-wide v6, p0, Ljava/util/Spliterators$IteratorSpliterator;->est:J

    .line 1788
    :cond_4
    new-instance v6, Ljava/util/Spliterators$ArraySpliterator;

    iget v7, p0, Ljava/util/Spliterators$IteratorSpliterator;->characteristics:I

    const/4 v8, 0x0

    invoke-direct {v6, v0, v8, v2, v7}, Ljava/util/Spliterators$ArraySpliterator;-><init>([Ljava/lang/Object;III)V

    return-object v6

    .line 1775
    .end local v0    # "a":[Ljava/lang/Object;
    .end local v2    # "j":I
    .end local v3    # "n":I
    .end local v4    # "s":J
    :cond_5
    iget-wide v4, p0, Ljava/util/Spliterators$IteratorSpliterator;->est:J

    .restart local v4    # "s":J
    goto :goto_0

    .line 1790
    :cond_6
    return-object v8
.end method
