.class public Ljava/util/ArrayDeque;
.super Ljava/util/AbstractCollection;
.source "ArrayDeque.java"

# interfaces
.implements Ljava/util/Deque;
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/ArrayDeque$DeqIterator;,
        Ljava/util/ArrayDeque$DeqSpliterator;,
        Ljava/util/ArrayDeque$DescendingIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractCollection",
        "<TE;>;",
        "Ljava/util/Deque",
        "<TE;>;",
        "Ljava/lang/Cloneable;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static final MIN_INITIAL_CAPACITY:I = 0x8

.field private static final serialVersionUID:J = 0x207cda2e240da08bL


# instance fields
.field transient elements:[Ljava/lang/Object;

.field transient head:I

.field transient tail:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-class v0, Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Ljava/util/ArrayDeque;->-assertionsDisabled:Z

    .line 86
    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 170
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    .line 171
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    .line 170
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "numElements"    # I

    .prologue
    .line 180
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    .line 181
    invoke-direct {p0, p1}, Ljava/util/ArrayDeque;->allocateElements(I)V

    .line 180
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)V"
        }
    .end annotation

    .prologue
    .line 194
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    .line 195
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-direct {p0, v0}, Ljava/util/ArrayDeque;->allocateElements(I)V

    .line 196
    invoke-virtual {p0, p1}, Ljava/util/ArrayDeque;->addAll(Ljava/util/Collection;)Z

    .line 194
    return-void
.end method

.method private allocateElements(I)V
    .locals 2
    .param p1, "numElements"    # I

    .prologue
    .line 128
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    const/16 v0, 0x8

    .local v0, "initialCapacity":I
    const/16 v1, 0x8

    .line 131
    if-lt p1, v1, :cond_0

    .line 132
    move v0, p1

    .line 133
    ushr-int/lit8 v1, p1, 0x1

    or-int v0, p1, v1

    .line 134
    ushr-int/lit8 v1, v0, 0x2

    or-int/2addr v0, v1

    .line 135
    ushr-int/lit8 v1, v0, 0x4

    or-int/2addr v0, v1

    .line 136
    ushr-int/lit8 v1, v0, 0x8

    or-int/2addr v0, v1

    .line 137
    ushr-int/lit8 v1, v0, 0x10

    or-int/2addr v0, v1

    .line 138
    add-int/lit8 v0, v0, 0x1

    .line 140
    if-gez v0, :cond_0

    .line 141
    ushr-int/lit8 v0, v0, 0x1

    .line 143
    :cond_0
    new-array v1, v0, [Ljava/lang/Object;

    iput-object v1, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    .line 127
    return-void
.end method

.method private checkInvariants()V
    .locals 5

    .prologue
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 502
    sget-boolean v2, Ljava/util/ArrayDeque;->-assertionsDisabled:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    iget v3, p0, Ljava/util/ArrayDeque;->tail:I

    aget-object v2, v2, v3

    if-nez v2, :cond_0

    move v2, v0

    :goto_0
    if-nez v2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    move v2, v1

    goto :goto_0

    .line 503
    :cond_1
    sget-boolean v2, Ljava/util/ArrayDeque;->-assertionsDisabled:Z

    if-nez v2, :cond_6

    iget v2, p0, Ljava/util/ArrayDeque;->head:I

    iget v3, p0, Ljava/util/ArrayDeque;->tail:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    iget v3, p0, Ljava/util/ArrayDeque;->head:I

    aget-object v2, v2, v3

    if-nez v2, :cond_2

    move v2, v0

    :goto_1
    if-nez v2, :cond_6

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_2
    move v2, v1

    goto :goto_1

    .line 504
    :cond_3
    iget-object v2, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    iget v3, p0, Ljava/util/ArrayDeque;->head:I

    aget-object v2, v2, v3

    if-eqz v2, :cond_5

    .line 505
    iget-object v2, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    iget v3, p0, Ljava/util/ArrayDeque;->tail:I

    add-int/lit8 v3, v3, -0x1

    iget-object v4, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    and-int/2addr v3, v4

    aget-object v2, v2, v3

    if-eqz v2, :cond_4

    move v2, v0

    goto :goto_1

    :cond_4
    move v2, v1

    goto :goto_1

    :cond_5
    move v2, v1

    .line 504
    goto :goto_1

    .line 506
    :cond_6
    sget-boolean v2, Ljava/util/ArrayDeque;->-assertionsDisabled:Z

    if-nez v2, :cond_8

    iget-object v2, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    iget v3, p0, Ljava/util/ArrayDeque;->head:I

    add-int/lit8 v3, v3, -0x1

    iget-object v4, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    and-int/2addr v3, v4

    aget-object v2, v2, v3

    if-nez v2, :cond_7

    :goto_2
    if-nez v0, :cond_8

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_7
    move v0, v1

    goto :goto_2

    .line 501
    :cond_8
    return-void
.end method

.method private doubleCapacity()V
    .locals 8

    .prologue
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    const/4 v6, 0x0

    .line 151
    sget-boolean v5, Ljava/util/ArrayDeque;->-assertionsDisabled:Z

    if-nez v5, :cond_1

    iget v5, p0, Ljava/util/ArrayDeque;->head:I

    iget v7, p0, Ljava/util/ArrayDeque;->tail:I

    if-ne v5, v7, :cond_0

    const/4 v5, 0x1

    :goto_0
    if-nez v5, :cond_1

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    :cond_0
    move v5, v6

    goto :goto_0

    .line 152
    :cond_1
    iget v3, p0, Ljava/util/ArrayDeque;->head:I

    .line 153
    .local v3, "p":I
    iget-object v5, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    array-length v1, v5

    .line 154
    .local v1, "n":I
    sub-int v4, v1, v3

    .line 155
    .local v4, "r":I
    shl-int/lit8 v2, v1, 0x1

    .line 156
    .local v2, "newCapacity":I
    if-gez v2, :cond_2

    .line 157
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string/jumbo v6, "Sorry, deque too big"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 158
    :cond_2
    new-array v0, v2, [Ljava/lang/Object;

    .line 159
    .local v0, "a":[Ljava/lang/Object;
    iget-object v5, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    invoke-static {v5, v3, v0, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 160
    iget-object v5, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    invoke-static {v5, v6, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 161
    iput-object v0, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    .line 162
    iput v6, p0, Ljava/util/ArrayDeque;->head:I

    .line 163
    iput v1, p0, Ljava/util/ArrayDeque;->tail:I

    .line 150
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 4
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 883
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 886
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v1

    .line 887
    .local v1, "size":I
    invoke-direct {p0, v1}, Ljava/util/ArrayDeque;->allocateElements(I)V

    .line 888
    const/4 v2, 0x0

    iput v2, p0, Ljava/util/ArrayDeque;->head:I

    .line 889
    iput v1, p0, Ljava/util/ArrayDeque;->tail:I

    .line 892
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 893
    iget-object v2, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v0

    .line 892
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 882
    :cond_0
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 3
    .param p1, "s"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 863
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 866
    invoke-virtual {p0}, Ljava/util/ArrayDeque;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 869
    iget-object v2, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    array-length v2, v2

    add-int/lit8 v1, v2, -0x1

    .line 870
    .local v1, "mask":I
    iget v0, p0, Ljava/util/ArrayDeque;->head:I

    .local v0, "i":I
    :goto_0
    iget v2, p0, Ljava/util/ArrayDeque;->tail:I

    if-eq v0, v2, :cond_0

    .line 871
    iget-object v2, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 870
    add-int/lit8 v2, v0, 0x1

    and-int v0, v2, v1

    goto :goto_0

    .line 862
    :cond_0
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 399
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 400
    const/4 v0, 0x1

    return v0
.end method

.method public addFirst(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 210
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    if-nez p1, :cond_0

    .line 211
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 212
    :cond_0
    iget-object v0, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    iget v1, p0, Ljava/util/ArrayDeque;->head:I

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    and-int/2addr v1, v2

    iput v1, p0, Ljava/util/ArrayDeque;->head:I

    aput-object p1, v0, v1

    .line 213
    iget v0, p0, Ljava/util/ArrayDeque;->head:I

    iget v1, p0, Ljava/util/ArrayDeque;->tail:I

    if-ne v0, v1, :cond_1

    .line 214
    invoke-direct {p0}, Ljava/util/ArrayDeque;->doubleCapacity()V

    .line 209
    :cond_1
    return-void
.end method

.method public addLast(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 226
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    if-nez p1, :cond_0

    .line 227
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 228
    :cond_0
    iget-object v0, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    iget v1, p0, Ljava/util/ArrayDeque;->tail:I

    aput-object p1, v0, v1

    .line 229
    iget v0, p0, Ljava/util/ArrayDeque;->tail:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Ljava/util/ArrayDeque;->tail:I

    iget v1, p0, Ljava/util/ArrayDeque;->head:I

    if-ne v0, v1, :cond_1

    .line 230
    invoke-direct {p0}, Ljava/util/ArrayDeque;->doubleCapacity()V

    .line 225
    :cond_1
    return-void
.end method

.method public clear()V
    .locals 6

    .prologue
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    const/4 v4, 0x0

    .line 738
    iget v0, p0, Ljava/util/ArrayDeque;->head:I

    .line 739
    .local v0, "h":I
    iget v3, p0, Ljava/util/ArrayDeque;->tail:I

    .line 740
    .local v3, "t":I
    if-eq v0, v3, :cond_1

    .line 741
    iput v4, p0, Ljava/util/ArrayDeque;->tail:I

    iput v4, p0, Ljava/util/ArrayDeque;->head:I

    .line 742
    move v1, v0

    .line 743
    .local v1, "i":I
    iget-object v4, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    array-length v4, v4

    add-int/lit8 v2, v4, -0x1

    .line 745
    .local v2, "mask":I
    :cond_0
    iget-object v4, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v5, v4, v1

    .line 746
    add-int/lit8 v4, v1, 0x1

    and-int v1, v4, v2

    .line 747
    if-ne v1, v3, :cond_0

    .line 737
    .end local v1    # "i":I
    .end local v2    # "mask":I
    :cond_1
    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 839
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    invoke-virtual {p0}, Ljava/util/ArrayDeque;->clone()Ljava/util/ArrayDeque;

    move-result-object v0

    return-object v0
.end method

.method public clone()Ljava/util/ArrayDeque;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayDeque",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 842
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    :try_start_0
    invoke-super {p0}, Ljava/util/AbstractCollection;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayDeque;

    .line 843
    .local v1, "result":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    iget-object v2, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    iget-object v3, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    array-length v3, v3

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v1, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 844
    return-object v1

    .line 845
    .end local v1    # "result":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    :catch_0
    move-exception v0

    .line 846
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 705
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    if-eqz p1, :cond_1

    .line 706
    iget-object v3, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    array-length v3, v3

    add-int/lit8 v1, v3, -0x1

    .line 707
    .local v1, "mask":I
    iget v0, p0, Ljava/util/ArrayDeque;->head:I

    .line 708
    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    aget-object v2, v3, v0

    .local v2, "x":Ljava/lang/Object;
    if-eqz v2, :cond_1

    .line 709
    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 710
    const/4 v3, 0x1

    return v3

    .line 708
    :cond_0
    add-int/lit8 v3, v0, 0x1

    and-int v0, v3, v1

    goto :goto_0

    .line 713
    .end local v0    # "i":I
    .end local v1    # "mask":I
    .end local v2    # "x":Ljava/lang/Object;
    :cond_1
    const/4 v3, 0x0

    return v3
.end method

.method delete(I)Z
    .locals 10
    .param p1, "i"    # I

    .prologue
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 520
    invoke-direct {p0}, Ljava/util/ArrayDeque;->checkInvariants()V

    .line 521
    iget-object v1, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    .line 522
    .local v1, "elements":[Ljava/lang/Object;
    array-length v6, v1

    add-int/lit8 v4, v6, -0x1

    .line 523
    .local v4, "mask":I
    iget v3, p0, Ljava/util/ArrayDeque;->head:I

    .line 524
    .local v3, "h":I
    iget v5, p0, Ljava/util/ArrayDeque;->tail:I

    .line 525
    .local v5, "t":I
    sub-int v6, p1, v3

    and-int v2, v6, v4

    .line 526
    .local v2, "front":I
    sub-int v6, v5, p1

    and-int v0, v6, v4

    .line 529
    .local v0, "back":I
    sub-int v6, v5, v3

    and-int/2addr v6, v4

    if-lt v2, v6, :cond_0

    .line 530
    new-instance v6, Ljava/util/ConcurrentModificationException;

    invoke-direct {v6}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v6

    .line 533
    :cond_0
    if-ge v2, v0, :cond_2

    .line 534
    if-gt v3, p1, :cond_1

    .line 535
    add-int/lit8 v6, v3, 0x1

    invoke-static {v1, v3, v1, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 541
    :goto_0
    const/4 v6, 0x0

    aput-object v6, v1, v3

    .line 542
    add-int/lit8 v6, v3, 0x1

    and-int/2addr v6, v4

    iput v6, p0, Ljava/util/ArrayDeque;->head:I

    .line 543
    return v8

    .line 537
    :cond_1
    invoke-static {v1, v8, v1, v9, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 538
    aget-object v6, v1, v4

    aput-object v6, v1, v8

    .line 539
    add-int/lit8 v6, v3, 0x1

    sub-int v7, v4, v3

    invoke-static {v1, v3, v1, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 545
    :cond_2
    if-ge p1, v5, :cond_3

    .line 546
    add-int/lit8 v6, p1, 0x1

    invoke-static {v1, v6, v1, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 547
    add-int/lit8 v6, v5, -0x1

    iput v6, p0, Ljava/util/ArrayDeque;->tail:I

    .line 554
    :goto_1
    return v9

    .line 549
    :cond_3
    add-int/lit8 v6, p1, 0x1

    sub-int v7, v4, p1

    invoke-static {v1, v6, v1, p1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 550
    aget-object v6, v1, v8

    aput-object v6, v1, v4

    .line 551
    invoke-static {v1, v9, v1, v8, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 552
    add-int/lit8 v6, v5, -0x1

    and-int/2addr v6, v4

    iput v6, p0, Ljava/util/ArrayDeque;->tail:I

    goto :goto_1
.end method

.method public descendingIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 591
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    new-instance v0, Ljava/util/ArrayDeque$DescendingIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljava/util/ArrayDeque$DescendingIterator;-><init>(Ljava/util/ArrayDeque;Ljava/util/ArrayDeque$DescendingIterator;)V

    return-object v0
.end method

.method public element()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 456
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    invoke-virtual {p0}, Ljava/util/ArrayDeque;->getFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getFirst()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 307
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    iget-object v1, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    iget v2, p0, Ljava/util/ArrayDeque;->head:I

    aget-object v0, v1, v2

    .line 308
    .local v0, "result":Ljava/lang/Object;, "TE;"
    if-nez v0, :cond_0

    .line 309
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 310
    :cond_0
    return-object v0
.end method

.method public getLast()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 318
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    iget-object v1, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    iget v2, p0, Ljava/util/ArrayDeque;->tail:I

    add-int/lit8 v2, v2, -0x1

    iget-object v3, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    and-int/2addr v2, v3

    aget-object v0, v1, v2

    .line 319
    .local v0, "result":Ljava/lang/Object;, "TE;"
    if-nez v0, :cond_0

    .line 320
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 321
    :cond_0
    return-object v0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .line 575
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    iget v0, p0, Ljava/util/ArrayDeque;->head:I

    iget v1, p0, Ljava/util/ArrayDeque;->tail:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 587
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    new-instance v0, Ljava/util/ArrayDeque$DeqIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljava/util/ArrayDeque$DeqIterator;-><init>(Ljava/util/ArrayDeque;Ljava/util/ArrayDeque$DeqIterator;)V

    return-object v0
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 413
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1}, Ljava/util/ArrayDeque;->offerLast(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public offerFirst(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 241
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 242
    const/4 v0, 0x1

    return v0
.end method

.method public offerLast(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 253
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 254
    const/4 v0, 0x1

    return v0
.end method

.method public peek()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 469
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    invoke-virtual {p0}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public peekFirst()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 327
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    iget-object v0, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    iget v1, p0, Ljava/util/ArrayDeque;->head:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public peekLast()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 332
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    iget-object v0, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    iget v1, p0, Ljava/util/ArrayDeque;->tail:I

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    and-int/2addr v1, v2

    aget-object v0, v0, v1

    return-object v0
.end method

.method public poll()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 442
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    invoke-virtual {p0}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public pollFirst()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    const/4 v3, 0x0

    .line 278
    iget-object v0, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    .line 279
    .local v0, "elements":[Ljava/lang/Object;
    iget v1, p0, Ljava/util/ArrayDeque;->head:I

    .line 281
    .local v1, "h":I
    aget-object v2, v0, v1

    .line 283
    .local v2, "result":Ljava/lang/Object;, "TE;"
    if-eqz v2, :cond_0

    .line 284
    aput-object v3, v0, v1

    .line 285
    add-int/lit8 v3, v1, 0x1

    array-length v4, v0

    add-int/lit8 v4, v4, -0x1

    and-int/2addr v3, v4

    iput v3, p0, Ljava/util/ArrayDeque;->head:I

    .line 287
    :cond_0
    return-object v2
.end method

.method public pollLast()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    const/4 v5, 0x0

    .line 291
    iget-object v0, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    .line 292
    .local v0, "elements":[Ljava/lang/Object;
    iget v3, p0, Ljava/util/ArrayDeque;->tail:I

    add-int/lit8 v3, v3, -0x1

    array-length v4, v0

    add-int/lit8 v4, v4, -0x1

    and-int v2, v3, v4

    .line 294
    .local v2, "t":I
    aget-object v1, v0, v2

    .line 295
    .local v1, "result":Ljava/lang/Object;, "TE;"
    if-eqz v1, :cond_0

    .line 296
    aput-object v5, v0, v2

    .line 297
    iput v2, p0, Ljava/util/ArrayDeque;->tail:I

    .line 299
    :cond_0
    return-object v1
.end method

.method public pop()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 498
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    invoke-virtual {p0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public push(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 484
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 483
    return-void
.end method

.method public remove()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 428
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    invoke-virtual {p0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 730
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    invoke-virtual {p0, p1}, Ljava/util/ArrayDeque;->removeFirstOccurrence(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeFirst()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 261
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    invoke-virtual {p0}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    .line 262
    .local v0, "x":Ljava/lang/Object;, "TE;"
    if-nez v0, :cond_0

    .line 263
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 264
    :cond_0
    return-object v0
.end method

.method public removeFirstOccurrence(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 348
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    if-eqz p1, :cond_1

    .line 349
    iget-object v3, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    array-length v3, v3

    add-int/lit8 v1, v3, -0x1

    .line 350
    .local v1, "mask":I
    iget v0, p0, Ljava/util/ArrayDeque;->head:I

    .line 351
    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    aget-object v2, v3, v0

    .local v2, "x":Ljava/lang/Object;
    if-eqz v2, :cond_1

    .line 352
    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 353
    invoke-virtual {p0, v0}, Ljava/util/ArrayDeque;->delete(I)Z

    .line 354
    const/4 v3, 0x1

    return v3

    .line 351
    :cond_0
    add-int/lit8 v3, v0, 0x1

    and-int v0, v3, v1

    goto :goto_0

    .line 358
    .end local v0    # "i":I
    .end local v1    # "mask":I
    .end local v2    # "x":Ljava/lang/Object;
    :cond_1
    const/4 v3, 0x0

    return v3
.end method

.method public removeLast()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 271
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    invoke-virtual {p0}, Ljava/util/ArrayDeque;->pollLast()Ljava/lang/Object;

    move-result-object v0

    .line 272
    .local v0, "x":Ljava/lang/Object;, "TE;"
    if-nez v0, :cond_0

    .line 273
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 274
    :cond_0
    return-object v0
.end method

.method public removeLastOccurrence(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 374
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    if-eqz p1, :cond_1

    .line 375
    iget-object v3, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    array-length v3, v3

    add-int/lit8 v1, v3, -0x1

    .line 376
    .local v1, "mask":I
    iget v3, p0, Ljava/util/ArrayDeque;->tail:I

    add-int/lit8 v3, v3, -0x1

    and-int v0, v3, v1

    .line 377
    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    aget-object v2, v3, v0

    .local v2, "x":Ljava/lang/Object;
    if-eqz v2, :cond_1

    .line 378
    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 379
    invoke-virtual {p0, v0}, Ljava/util/ArrayDeque;->delete(I)Z

    .line 380
    const/4 v3, 0x1

    return v3

    .line 377
    :cond_0
    add-int/lit8 v3, v0, -0x1

    and-int v0, v3, v1

    goto :goto_0

    .line 384
    .end local v0    # "i":I
    .end local v1    # "mask":I
    .end local v2    # "x":Ljava/lang/Object;
    :cond_1
    const/4 v3, 0x0

    return v3
.end method

.method public size()I
    .locals 2

    .prologue
    .line 566
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    iget v0, p0, Ljava/util/ArrayDeque;->tail:I

    iget v1, p0, Ljava/util/ArrayDeque;->head:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    return v0
.end method

.method public spliterator()Ljava/util/Spliterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    const/4 v1, -0x1

    .line 910
    new-instance v0, Ljava/util/ArrayDeque$DeqSpliterator;

    invoke-direct {v0, p0, v1, v1}, Ljava/util/ArrayDeque$DeqSpliterator;-><init>(Ljava/util/ArrayDeque;II)V

    return-object v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 8

    .prologue
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    const/4 v5, 0x0

    .line 765
    iget v2, p0, Ljava/util/ArrayDeque;->head:I

    .line 766
    .local v2, "head":I
    iget v3, p0, Ljava/util/ArrayDeque;->tail:I

    .line 767
    .local v3, "tail":I
    if-ge v3, v2, :cond_1

    const/4 v4, 0x1

    .line 768
    .local v4, "wrap":Z
    :goto_0
    if-eqz v4, :cond_2

    iget-object v6, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    array-length v6, v6

    add-int v1, v3, v6

    .line 769
    .local v1, "end":I
    :goto_1
    iget-object v6, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    invoke-static {v6, v2, v1}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v0

    .line 770
    .local v0, "a":[Ljava/lang/Object;
    if-eqz v4, :cond_0

    .line 771
    iget-object v6, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    iget-object v7, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    array-length v7, v7

    sub-int/2addr v7, v2

    invoke-static {v6, v5, v0, v7, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 772
    :cond_0
    return-object v0

    .end local v0    # "a":[Ljava/lang/Object;
    .end local v1    # "end":I
    .end local v4    # "wrap":Z
    :cond_1
    move v4, v5

    .line 767
    goto :goto_0

    .line 768
    .restart local v4    # "wrap":Z
    :cond_2
    move v1, v3

    .restart local v1    # "end":I
    goto :goto_1
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    const/4 v7, 0x0

    .line 813
    iget v1, p0, Ljava/util/ArrayDeque;->head:I

    .line 814
    .local v1, "head":I
    iget v4, p0, Ljava/util/ArrayDeque;->tail:I

    .line 815
    .local v4, "tail":I
    if-ge v4, v1, :cond_2

    const/4 v5, 0x1

    .line 816
    .local v5, "wrap":Z
    :goto_0
    sub-int v8, v4, v1

    if-eqz v5, :cond_3

    iget-object v6, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    array-length v6, v6

    :goto_1
    add-int v3, v8, v6

    .line 817
    .local v3, "size":I
    if-eqz v5, :cond_4

    move v6, v4

    :goto_2
    sub-int v0, v3, v6

    .line 818
    .local v0, "firstLeg":I
    array-length v2, p1

    .line 819
    .local v2, "len":I
    if-le v3, v2, :cond_5

    .line 820
    iget-object v6, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    add-int v8, v1, v3

    .line 821
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    .line 820
    invoke-static {v6, v1, v8, v9}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    .line 827
    :cond_0
    :goto_3
    if-eqz v5, :cond_1

    .line 828
    iget-object v6, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    invoke-static {v6, v7, p1, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 829
    :cond_1
    return-object p1

    .end local v0    # "firstLeg":I
    .end local v2    # "len":I
    .end local v3    # "size":I
    .end local v5    # "wrap":Z
    :cond_2
    move v5, v7

    .line 815
    goto :goto_0

    .restart local v5    # "wrap":Z
    :cond_3
    move v6, v7

    .line 816
    goto :goto_1

    .restart local v3    # "size":I
    :cond_4
    move v6, v7

    .line 817
    goto :goto_2

    .line 823
    .restart local v0    # "firstLeg":I
    .restart local v2    # "len":I
    :cond_5
    iget-object v6, p0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    invoke-static {v6, v1, p1, v7, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 824
    if-ge v3, v2, :cond_0

    .line 825
    const/4 v6, 0x0

    aput-object v6, p1, v3

    goto :goto_3
.end method
