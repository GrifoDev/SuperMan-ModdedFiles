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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TT;>;I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/Spliterators$IteratorSpliterator;->collection:Ljava/util/Collection;

    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/Spliterators$IteratorSpliterator;->it:Ljava/util/Iterator;

    and-int/lit16 v0, p2, 0x1000

    if-nez v0, :cond_0

    or-int/lit8 v0, p2, 0x40

    or-int/lit16 p2, v0, 0x4000

    :cond_0
    iput p2, p0, Ljava/util/Spliterators$IteratorSpliterator;->characteristics:I

    return-void
.end method

.method public constructor <init>(Ljava/util/Iterator;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<+TT;>;I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/Spliterators$IteratorSpliterator;->collection:Ljava/util/Collection;

    iput-object p1, p0, Ljava/util/Spliterators$IteratorSpliterator;->it:Ljava/util/Iterator;

    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Ljava/util/Spliterators$IteratorSpliterator;->est:J

    and-int/lit16 v0, p2, -0x4041

    iput v0, p0, Ljava/util/Spliterators$IteratorSpliterator;->characteristics:I

    return-void
.end method

.method public constructor <init>(Ljava/util/Iterator;JI)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<+TT;>;JI)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/Spliterators$IteratorSpliterator;->collection:Ljava/util/Collection;

    iput-object p1, p0, Ljava/util/Spliterators$IteratorSpliterator;->it:Ljava/util/Iterator;

    iput-wide p2, p0, Ljava/util/Spliterators$IteratorSpliterator;->est:J

    and-int/lit16 v0, p4, 0x1000

    if-nez v0, :cond_0

    or-int/lit8 v0, p4, 0x40

    or-int/lit16 p4, v0, 0x4000

    :cond_0
    iput p4, p0, Ljava/util/Spliterators$IteratorSpliterator;->characteristics:I

    return-void
.end method


# virtual methods
.method public characteristics()I
    .locals 1

    iget v0, p0, Ljava/util/Spliterators$IteratorSpliterator;->characteristics:I

    return v0
.end method

.method public estimateSize()J
    .locals 2

    iget-object v0, p0, Ljava/util/Spliterators$IteratorSpliterator;->it:Ljava/util/Iterator;

    if-nez v0, :cond_0

    iget-object v0, p0, Ljava/util/Spliterators$IteratorSpliterator;->collection:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Ljava/util/Spliterators$IteratorSpliterator;->it:Ljava/util/Iterator;

    iget-object v0, p0, Ljava/util/Spliterators$IteratorSpliterator;->collection:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Ljava/util/Spliterators$IteratorSpliterator;->est:J

    return-wide v0

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

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    :cond_0
    iget-object v0, p0, Ljava/util/Spliterators$IteratorSpliterator;->it:Ljava/util/Iterator;

    if-nez v0, :cond_1

    iget-object v1, p0, Ljava/util/Spliterators$IteratorSpliterator;->collection:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Ljava/util/Spliterators$IteratorSpliterator;->it:Ljava/util/Iterator;

    iget-object v1, p0, Ljava/util/Spliterators$IteratorSpliterator;->collection:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    int-to-long v2, v1

    iput-wide v2, p0, Ljava/util/Spliterators$IteratorSpliterator;->est:J

    :cond_1
    invoke-interface {v0, p1}, Ljava/util/Iterator;->forEachRemaining(Ljava/util/function/Consumer;)V

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

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Ljava/util/Spliterators$IteratorSpliterator;->hasCharacteristics(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

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

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Ljava/util/Spliterators$IteratorSpliterator;->it:Ljava/util/Iterator;

    if-nez v0, :cond_1

    iget-object v0, p0, Ljava/util/Spliterators$IteratorSpliterator;->collection:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Ljava/util/Spliterators$IteratorSpliterator;->it:Ljava/util/Iterator;

    iget-object v0, p0, Ljava/util/Spliterators$IteratorSpliterator;->collection:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Ljava/util/Spliterators$IteratorSpliterator;->est:J

    :cond_1
    iget-object v0, p0, Ljava/util/Spliterators$IteratorSpliterator;->it:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Ljava/util/Spliterators$IteratorSpliterator;->it:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    const/4 v0, 0x1

    return v0

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

    const/4 v8, 0x0

    iget-object v1, p0, Ljava/util/Spliterators$IteratorSpliterator;->it:Ljava/util/Iterator;

    if-nez v1, :cond_5

    iget-object v6, p0, Ljava/util/Spliterators$IteratorSpliterator;->collection:Ljava/util/Collection;

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    iput-object v1, p0, Ljava/util/Spliterators$IteratorSpliterator;->it:Ljava/util/Iterator;

    iget-object v6, p0, Ljava/util/Spliterators$IteratorSpliterator;->collection:Ljava/util/Collection;

    invoke-interface {v6}, Ljava/util/Collection;->size()I

    move-result v6

    int-to-long v4, v6

    iput-wide v4, p0, Ljava/util/Spliterators$IteratorSpliterator;->est:J

    :goto_0
    const-wide/16 v6, 0x1

    cmp-long v6, v4, v6

    if-lez v6, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    iget v6, p0, Ljava/util/Spliterators$IteratorSpliterator;->batch:I

    add-int/lit16 v3, v6, 0x400

    int-to-long v6, v3

    cmp-long v6, v6, v4

    if-lez v6, :cond_0

    long-to-int v3, v4

    :cond_0
    const/high16 v6, 0x2000000

    if-le v3, v6, :cond_1

    const/high16 v3, 0x2000000

    :cond_1
    new-array v0, v3, [Ljava/lang/Object;

    const/4 v2, 0x0

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v0, v2

    add-int/lit8 v2, v2, 0x1

    if-ge v2, v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_2

    :cond_3
    iput v2, p0, Ljava/util/Spliterators$IteratorSpliterator;->batch:I

    iget-wide v6, p0, Ljava/util/Spliterators$IteratorSpliterator;->est:J

    const-wide v8, 0x7fffffffffffffffL

    cmp-long v6, v6, v8

    if-eqz v6, :cond_4

    iget-wide v6, p0, Ljava/util/Spliterators$IteratorSpliterator;->est:J

    int-to-long v8, v2

    sub-long/2addr v6, v8

    iput-wide v6, p0, Ljava/util/Spliterators$IteratorSpliterator;->est:J

    :cond_4
    new-instance v6, Ljava/util/Spliterators$ArraySpliterator;

    iget v7, p0, Ljava/util/Spliterators$IteratorSpliterator;->characteristics:I

    const/4 v8, 0x0

    invoke-direct {v6, v0, v8, v2, v7}, Ljava/util/Spliterators$ArraySpliterator;-><init>([Ljava/lang/Object;III)V

    return-object v6

    :cond_5
    iget-wide v4, p0, Ljava/util/Spliterators$IteratorSpliterator;->est:J

    goto :goto_0

    :cond_6
    return-object v8
.end method
