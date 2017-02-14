.class final Ljava/util/Spliterators$ArraySpliterator;
.super Ljava/lang/Object;
.source "Spliterators.java"

# interfaces
.implements Ljava/util/Spliterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Spliterators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ArraySpliterator"
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


# instance fields
.field private final array:[Ljava/lang/Object;

.field private final characteristics:I

.field private final fence:I

.field private index:I


# direct methods
.method public constructor <init>([Ljava/lang/Object;I)V
    .locals 2

    array-length v0, p1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0, p2}, Ljava/util/Spliterators$ArraySpliterator;-><init>([Ljava/lang/Object;III)V

    return-void
.end method

.method public constructor <init>([Ljava/lang/Object;III)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/Spliterators$ArraySpliterator;->array:[Ljava/lang/Object;

    iput p2, p0, Ljava/util/Spliterators$ArraySpliterator;->index:I

    iput p3, p0, Ljava/util/Spliterators$ArraySpliterator;->fence:I

    or-int/lit8 v0, p4, 0x40

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Ljava/util/Spliterators$ArraySpliterator;->characteristics:I

    return-void
.end method


# virtual methods
.method public characteristics()I
    .locals 1

    iget v0, p0, Ljava/util/Spliterators$ArraySpliterator;->characteristics:I

    return v0
.end method

.method public estimateSize()J
    .locals 2

    iget v0, p0, Ljava/util/Spliterators$ArraySpliterator;->fence:I

    iget v1, p0, Ljava/util/Spliterators$ArraySpliterator;->index:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

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

    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    :cond_0
    iget-object v0, p0, Ljava/util/Spliterators$ArraySpliterator;->array:[Ljava/lang/Object;

    array-length v3, v0

    iget v1, p0, Ljava/util/Spliterators$ArraySpliterator;->fence:I

    if-lt v3, v1, :cond_2

    iget v2, p0, Ljava/util/Spliterators$ArraySpliterator;->index:I

    if-ltz v2, :cond_2

    iput v1, p0, Ljava/util/Spliterators$ArraySpliterator;->index:I

    if-ge v2, v1, :cond_2

    :cond_1
    aget-object v3, v0, v2

    invoke-interface {p1, v3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    if-lt v2, v1, :cond_1

    :cond_2
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

    invoke-virtual {p0, v0}, Ljava/util/Spliterators$ArraySpliterator;->hasCharacteristics(I)Z

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
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-TT;>;)Z"
        }
    .end annotation

    const/4 v3, 0x0

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    :cond_0
    iget v1, p0, Ljava/util/Spliterators$ArraySpliterator;->index:I

    if-ltz v1, :cond_1

    iget v1, p0, Ljava/util/Spliterators$ArraySpliterator;->index:I

    iget v2, p0, Ljava/util/Spliterators$ArraySpliterator;->fence:I

    if-ge v1, v2, :cond_1

    iget-object v1, p0, Ljava/util/Spliterators$ArraySpliterator;->array:[Ljava/lang/Object;

    iget v2, p0, Ljava/util/Spliterators$ArraySpliterator;->index:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljava/util/Spliterators$ArraySpliterator;->index:I

    aget-object v0, v1, v2

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    const/4 v1, 0x1

    return v1

    :cond_1
    return v3
.end method

.method public trySplit()Ljava/util/Spliterator;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator",
            "<TT;>;"
        }
    .end annotation

    iget v0, p0, Ljava/util/Spliterators$ArraySpliterator;->index:I

    iget v2, p0, Ljava/util/Spliterators$ArraySpliterator;->fence:I

    add-int/2addr v2, v0

    ushr-int/lit8 v1, v2, 0x1

    if-lt v0, v1, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Ljava/util/Spliterators$ArraySpliterator;

    iget-object v3, p0, Ljava/util/Spliterators$ArraySpliterator;->array:[Ljava/lang/Object;

    iput v1, p0, Ljava/util/Spliterators$ArraySpliterator;->index:I

    iget v4, p0, Ljava/util/Spliterators$ArraySpliterator;->characteristics:I

    invoke-direct {v2, v3, v0, v1, v4}, Ljava/util/Spliterators$ArraySpliterator;-><init>([Ljava/lang/Object;III)V

    goto :goto_0
.end method
