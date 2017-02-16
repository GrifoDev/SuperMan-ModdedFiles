.class Ljava/util/JumboEnumSet;
.super Ljava/util/EnumSet;
.source "JumboEnumSet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/JumboEnumSet$EnumSetIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Enum",
        "<TE;>;>",
        "Ljava/util/EnumSet",
        "<TE;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x4a3d96ac32134e0L


# instance fields
.field private elements:[J

.field private size:I


# direct methods
.method static synthetic -get0(Ljava/util/JumboEnumSet;)[J
    .locals 1

    iget-object v0, p0, Ljava/util/JumboEnumSet;->elements:[J

    return-object v0
.end method

.method static synthetic -get1(Ljava/util/JumboEnumSet;)I
    .locals 1

    iget v0, p0, Ljava/util/JumboEnumSet;->size:I

    return v0
.end method

.method static synthetic -set0(Ljava/util/JumboEnumSet;I)I
    .locals 0

    iput p1, p0, Ljava/util/JumboEnumSet;->size:I

    return p1
.end method

.method constructor <init>(Ljava/lang/Class;[Ljava/lang/Enum;)V
    .locals 1
    .param p2, "universe"    # [Ljava/lang/Enum;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TE;>;[",
            "Ljava/lang/Enum;",
            ")V"
        }
    .end annotation

    .prologue
    .line 50
    .local p0, "this":Ljava/util/JumboEnumSet;, "Ljava/util/JumboEnumSet<TE;>;"
    .local p1, "elementType":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    invoke-direct {p0, p1, p2}, Ljava/util/EnumSet;-><init>(Ljava/lang/Class;[Ljava/lang/Enum;)V

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/JumboEnumSet;->size:I

    .line 51
    array-length v0, p2

    add-int/lit8 v0, v0, 0x3f

    ushr-int/lit8 v0, v0, 0x6

    new-array v0, v0, [J

    iput-object v0, p0, Ljava/util/JumboEnumSet;->elements:[J

    .line 49
    return-void
.end method

.method private recalculateSize()Z
    .locals 9

    .prologue
    .local p0, "this":Ljava/util/JumboEnumSet;, "Ljava/util/JumboEnumSet<TE;>;"
    const/4 v3, 0x0

    .line 362
    iget v2, p0, Ljava/util/JumboEnumSet;->size:I

    .line 363
    .local v2, "oldSize":I
    iput v3, p0, Ljava/util/JumboEnumSet;->size:I

    .line 364
    iget-object v5, p0, Ljava/util/JumboEnumSet;->elements:[J

    array-length v6, v5

    move v4, v3

    :goto_0
    if-ge v4, v6, :cond_0

    aget-wide v0, v5, v4

    .line 365
    .local v0, "elt":J
    iget v7, p0, Ljava/util/JumboEnumSet;->size:I

    invoke-static {v0, v1}, Ljava/lang/Long;->bitCount(J)I

    move-result v8

    add-int/2addr v7, v8

    iput v7, p0, Ljava/util/JumboEnumSet;->size:I

    .line 364
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 367
    .end local v0    # "elt":J
    :cond_0
    iget v4, p0, Ljava/util/JumboEnumSet;->size:I

    if-eq v4, v2, :cond_1

    const/4 v3, 0x1

    :cond_1
    return v3
.end method


# virtual methods
.method public add(Ljava/lang/Enum;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 198
    .local p0, "this":Ljava/util/JumboEnumSet;, "Ljava/util/JumboEnumSet<TE;>;"
    .local p1, "e":Ljava/lang/Enum;, "TE;"
    invoke-virtual {p0, p1}, Ljava/util/JumboEnumSet;->typeCheck(Ljava/lang/Enum;)V

    .line 200
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    .line 201
    .local v0, "eOrdinal":I
    ushr-int/lit8 v1, v0, 0x6

    .line 203
    .local v1, "eWordNum":I
    iget-object v5, p0, Ljava/util/JumboEnumSet;->elements:[J

    aget-wide v2, v5, v1

    .line 204
    .local v2, "oldElements":J
    iget-object v5, p0, Ljava/util/JumboEnumSet;->elements:[J

    aget-wide v6, v5, v1

    const-wide/16 v8, 0x1

    shl-long/2addr v8, v0

    or-long/2addr v6, v8

    aput-wide v6, v5, v1

    .line 205
    iget-object v5, p0, Ljava/util/JumboEnumSet;->elements:[J

    aget-wide v6, v5, v1

    cmp-long v5, v6, v2

    if-eqz v5, :cond_1

    const/4 v4, 0x1

    .line 206
    .local v4, "result":Z
    :goto_0
    if-eqz v4, :cond_0

    .line 207
    iget v5, p0, Ljava/util/JumboEnumSet;->size:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Ljava/util/JumboEnumSet;->size:I

    .line 208
    :cond_0
    return v4

    .line 205
    .end local v4    # "result":Z
    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "e"    # Ljava/lang/Object;

    .prologue
    .line 197
    .local p0, "this":Ljava/util/JumboEnumSet;, "Ljava/util/JumboEnumSet<TE;>;"
    check-cast p1, Ljava/lang/Enum;

    .end local p1    # "e":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ljava/util/JumboEnumSet;->add(Ljava/lang/Enum;)Z

    move-result v0

    return v0
.end method

.method addAll()V
    .locals 6

    .prologue
    .line 71
    .local p0, "this":Ljava/util/JumboEnumSet;, "Ljava/util/JumboEnumSet<TE;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Ljava/util/JumboEnumSet;->elements:[J

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 72
    iget-object v1, p0, Ljava/util/JumboEnumSet;->elements:[J

    const-wide/16 v2, -0x1

    aput-wide v2, v1, v0

    .line 71
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 73
    :cond_0
    iget-object v1, p0, Ljava/util/JumboEnumSet;->elements:[J

    iget-object v2, p0, Ljava/util/JumboEnumSet;->elements:[J

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    aget-wide v4, v1, v2

    iget-object v3, p0, Ljava/util/JumboEnumSet;->universe:[Ljava/lang/Enum;

    array-length v3, v3

    neg-int v3, v3

    ushr-long/2addr v4, v3

    aput-wide v4, v1, v2

    .line 74
    iget-object v1, p0, Ljava/util/JumboEnumSet;->universe:[Ljava/lang/Enum;

    array-length v1, v1

    iput v1, p0, Ljava/util/JumboEnumSet;->size:I

    .line 70
    return-void
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 268
    .local p0, "this":Ljava/util/JumboEnumSet;, "Ljava/util/JumboEnumSet<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    instance-of v2, p1, Ljava/util/JumboEnumSet;

    if-nez v2, :cond_0

    .line 269
    invoke-super {p0, p1}, Ljava/util/EnumSet;->addAll(Ljava/util/Collection;)Z

    move-result v2

    return v2

    :cond_0
    move-object v0, p1

    .line 271
    check-cast v0, Ljava/util/JumboEnumSet;

    .line 272
    .local v0, "es":Ljava/util/JumboEnumSet;
    iget-object v2, v0, Ljava/util/JumboEnumSet;->elementType:Ljava/lang/Class;

    iget-object v3, p0, Ljava/util/JumboEnumSet;->elementType:Ljava/lang/Class;

    if-eq v2, v3, :cond_2

    .line 273
    invoke-virtual {v0}, Ljava/util/JumboEnumSet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 274
    const/4 v2, 0x0

    return v2

    .line 276
    :cond_1
    new-instance v2, Ljava/lang/ClassCastException;

    .line 277
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v0, Ljava/util/JumboEnumSet;->elementType:Ljava/lang/Class;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " != "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Ljava/util/JumboEnumSet;->elementType:Ljava/lang/Class;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 276
    invoke-direct {v2, v3}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 280
    :cond_2
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Ljava/util/JumboEnumSet;->elements:[J

    array-length v2, v2

    if-ge v1, v2, :cond_3

    .line 281
    iget-object v2, p0, Ljava/util/JumboEnumSet;->elements:[J

    aget-wide v4, v2, v1

    iget-object v3, v0, Ljava/util/JumboEnumSet;->elements:[J

    aget-wide v6, v3, v1

    or-long/2addr v4, v6

    aput-wide v4, v2, v1

    .line 280
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 282
    :cond_3
    invoke-direct {p0}, Ljava/util/JumboEnumSet;->recalculateSize()Z

    move-result v2

    return v2
.end method

.method addRange(Ljava/lang/Enum;Ljava/lang/Enum;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TE;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/JumboEnumSet;, "Ljava/util/JumboEnumSet<TE;>;"
    .local p1, "from":Ljava/lang/Enum;, "TE;"
    .local p2, "to":Ljava/lang/Enum;, "TE;"
    const-wide/16 v6, -0x1

    .line 55
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    ushr-int/lit8 v0, v3, 0x6

    .line 56
    .local v0, "fromIndex":I
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    ushr-int/lit8 v2, v3, 0x6

    .line 58
    .local v2, "toIndex":I
    if-ne v0, v2, :cond_0

    .line 59
    iget-object v3, p0, Ljava/util/JumboEnumSet;->elements:[J

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    sub-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x1

    ushr-long v4, v6, v4

    .line 60
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    .line 59
    shl-long/2addr v4, v6

    aput-wide v4, v3, v0

    .line 67
    :goto_0
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Ljava/util/JumboEnumSet;->size:I

    .line 54
    return-void

    .line 62
    :cond_0
    iget-object v3, p0, Ljava/util/JumboEnumSet;->elements:[J

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    shl-long v4, v6, v4

    aput-wide v4, v3, v0

    .line 63
    add-int/lit8 v1, v0, 0x1

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_1

    .line 64
    iget-object v3, p0, Ljava/util/JumboEnumSet;->elements:[J

    aput-wide v6, v3, v1

    .line 63
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 65
    :cond_1
    iget-object v3, p0, Ljava/util/JumboEnumSet;->elements:[J

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    rsub-int/lit8 v4, v4, 0x3f

    ushr-long v4, v6, v4

    aput-wide v4, v3, v2

    goto :goto_0
.end method

.method public clear()V
    .locals 4

    .prologue
    .line 334
    .local p0, "this":Ljava/util/JumboEnumSet;, "Ljava/util/JumboEnumSet<TE;>;"
    iget-object v0, p0, Ljava/util/JumboEnumSet;->elements:[J

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Ljava/util/Arrays;->fill([JJ)V

    .line 335
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/JumboEnumSet;->size:I

    .line 333
    return-void
.end method

.method public clone()Ljava/util/EnumSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 371
    .local p0, "this":Ljava/util/JumboEnumSet;, "Ljava/util/JumboEnumSet<TE;>;"
    invoke-super {p0}, Ljava/util/EnumSet;->clone()Ljava/util/EnumSet;

    move-result-object v0

    check-cast v0, Ljava/util/JumboEnumSet;

    .line 372
    .local v0, "result":Ljava/util/JumboEnumSet;, "Ljava/util/JumboEnumSet<TE;>;"
    iget-object v1, v0, Ljava/util/JumboEnumSet;->elements:[J

    invoke-virtual {v1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [J

    iput-object v1, v0, Ljava/util/JumboEnumSet;->elements:[J

    .line 373
    return-object v0
.end method

.method complement()V
    .locals 8

    .prologue
    .line 78
    .local p0, "this":Ljava/util/JumboEnumSet;, "Ljava/util/JumboEnumSet<TE;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Ljava/util/JumboEnumSet;->elements:[J

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 79
    iget-object v1, p0, Ljava/util/JumboEnumSet;->elements:[J

    iget-object v2, p0, Ljava/util/JumboEnumSet;->elements:[J

    aget-wide v2, v2, v0

    not-long v2, v2

    aput-wide v2, v1, v0

    .line 78
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 80
    :cond_0
    iget-object v1, p0, Ljava/util/JumboEnumSet;->elements:[J

    iget-object v2, p0, Ljava/util/JumboEnumSet;->elements:[J

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    aget-wide v4, v1, v2

    iget-object v3, p0, Ljava/util/JumboEnumSet;->universe:[Ljava/lang/Enum;

    array-length v3, v3

    neg-int v3, v3

    const-wide/16 v6, -0x1

    ushr-long/2addr v6, v3

    and-long/2addr v4, v6

    aput-wide v4, v1, v2

    .line 81
    iget-object v1, p0, Ljava/util/JumboEnumSet;->universe:[Ljava/lang/Enum;

    array-length v1, v1

    iget v2, p0, Ljava/util/JumboEnumSet;->size:I

    sub-int/2addr v1, v2

    iput v1, p0, Ljava/util/JumboEnumSet;->size:I

    .line 77
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "e"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Ljava/util/JumboEnumSet;, "Ljava/util/JumboEnumSet<TE;>;"
    const/4 v2, 0x0

    .line 177
    if-nez p1, :cond_0

    .line 178
    return v2

    .line 179
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 180
    .local v0, "eClass":Ljava/lang/Class;
    iget-object v3, p0, Ljava/util/JumboEnumSet;->elementType:Ljava/lang/Class;

    if-eq v0, v3, :cond_1

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v3

    iget-object v4, p0, Ljava/util/JumboEnumSet;->elementType:Ljava/lang/Class;

    if-eq v3, v4, :cond_1

    .line 181
    return v2

    .line 183
    :cond_1
    check-cast p1, Ljava/lang/Enum;

    .end local p1    # "e":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    .line 184
    .local v1, "eOrdinal":I
    iget-object v3, p0, Ljava/util/JumboEnumSet;->elements:[J

    ushr-int/lit8 v4, v1, 0x6

    aget-wide v4, v3, v4

    const-wide/16 v6, 0x1

    shl-long/2addr v6, v1

    and-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-eqz v3, :cond_2

    const/4 v2, 0x1

    :cond_2
    return v2
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 246
    .local p0, "this":Ljava/util/JumboEnumSet;, "Ljava/util/JumboEnumSet<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    instance-of v2, p1, Ljava/util/JumboEnumSet;

    if-nez v2, :cond_0

    .line 247
    invoke-super {p0, p1}, Ljava/util/EnumSet;->containsAll(Ljava/util/Collection;)Z

    move-result v2

    return v2

    :cond_0
    move-object v0, p1

    .line 249
    check-cast v0, Ljava/util/JumboEnumSet;

    .line 250
    .local v0, "es":Ljava/util/JumboEnumSet;
    iget-object v2, v0, Ljava/util/JumboEnumSet;->elementType:Ljava/lang/Class;

    iget-object v3, p0, Ljava/util/JumboEnumSet;->elementType:Ljava/lang/Class;

    if-eq v2, v3, :cond_1

    .line 251
    invoke-virtual {v0}, Ljava/util/JumboEnumSet;->isEmpty()Z

    move-result v2

    return v2

    .line 253
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Ljava/util/JumboEnumSet;->elements:[J

    array-length v2, v2

    if-ge v1, v2, :cond_3

    .line 254
    iget-object v2, v0, Ljava/util/JumboEnumSet;->elements:[J

    aget-wide v2, v2, v1

    iget-object v4, p0, Ljava/util/JumboEnumSet;->elements:[J

    aget-wide v4, v4, v1

    not-long v4, v4

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    .line 255
    const/4 v2, 0x0

    return v2

    .line 253
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 256
    :cond_3
    const/4 v2, 0x1

    return v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Ljava/util/JumboEnumSet;, "Ljava/util/JumboEnumSet<TE;>;"
    const/4 v1, 0x0

    .line 348
    instance-of v2, p1, Ljava/util/JumboEnumSet;

    if-nez v2, :cond_0

    .line 349
    invoke-super {p0, p1}, Ljava/util/EnumSet;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    :cond_0
    move-object v0, p1

    .line 351
    check-cast v0, Ljava/util/JumboEnumSet;

    .line 352
    .local v0, "es":Ljava/util/JumboEnumSet;
    iget-object v2, v0, Ljava/util/JumboEnumSet;->elementType:Ljava/lang/Class;

    iget-object v3, p0, Ljava/util/JumboEnumSet;->elementType:Ljava/lang/Class;

    if-eq v2, v3, :cond_2

    .line 353
    iget v2, p0, Ljava/util/JumboEnumSet;->size:I

    if-nez v2, :cond_1

    iget v2, v0, Ljava/util/JumboEnumSet;->size:I

    if-nez v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    .line 355
    :cond_2
    iget-object v1, v0, Ljava/util/JumboEnumSet;->elements:[J

    iget-object v2, p0, Ljava/util/JumboEnumSet;->elements:[J

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v1

    return v1
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .local p0, "this":Ljava/util/JumboEnumSet;, "Ljava/util/JumboEnumSet<TE;>;"
    const/4 v0, 0x0

    .line 167
    iget v1, p0, Ljava/util/JumboEnumSet;->size:I

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 94
    .local p0, "this":Ljava/util/JumboEnumSet;, "Ljava/util/JumboEnumSet<TE;>;"
    new-instance v0, Ljava/util/JumboEnumSet$EnumSetIterator;

    invoke-direct {v0, p0}, Ljava/util/JumboEnumSet$EnumSetIterator;-><init>(Ljava/util/JumboEnumSet;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 12
    .param p1, "e"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Ljava/util/JumboEnumSet;, "Ljava/util/JumboEnumSet<TE;>;"
    const/4 v3, 0x0

    .line 218
    if-nez p1, :cond_0

    .line 219
    return v3

    .line 220
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 221
    .local v0, "eClass":Ljava/lang/Class;
    iget-object v6, p0, Ljava/util/JumboEnumSet;->elementType:Ljava/lang/Class;

    if-eq v0, v6, :cond_1

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v6

    iget-object v7, p0, Ljava/util/JumboEnumSet;->elementType:Ljava/lang/Class;

    if-eq v6, v7, :cond_1

    .line 222
    return v3

    .line 223
    :cond_1
    check-cast p1, Ljava/lang/Enum;

    .end local p1    # "e":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    .line 224
    .local v1, "eOrdinal":I
    ushr-int/lit8 v2, v1, 0x6

    .line 226
    .local v2, "eWordNum":I
    iget-object v6, p0, Ljava/util/JumboEnumSet;->elements:[J

    aget-wide v4, v6, v2

    .line 227
    .local v4, "oldElements":J
    iget-object v6, p0, Ljava/util/JumboEnumSet;->elements:[J

    aget-wide v8, v6, v2

    const-wide/16 v10, 0x1

    shl-long/2addr v10, v1

    not-long v10, v10

    and-long/2addr v8, v10

    aput-wide v8, v6, v2

    .line 228
    iget-object v6, p0, Ljava/util/JumboEnumSet;->elements:[J

    aget-wide v6, v6, v2

    cmp-long v6, v6, v4

    if-eqz v6, :cond_2

    const/4 v3, 0x1

    .line 229
    .local v3, "result":Z
    :cond_2
    if-eqz v3, :cond_3

    .line 230
    iget v6, p0, Ljava/util/JumboEnumSet;->size:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Ljava/util/JumboEnumSet;->size:I

    .line 231
    :cond_3
    return v3
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 294
    .local p0, "this":Ljava/util/JumboEnumSet;, "Ljava/util/JumboEnumSet<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    instance-of v2, p1, Ljava/util/JumboEnumSet;

    if-nez v2, :cond_0

    .line 295
    invoke-super {p0, p1}, Ljava/util/EnumSet;->removeAll(Ljava/util/Collection;)Z

    move-result v2

    return v2

    :cond_0
    move-object v0, p1

    .line 297
    check-cast v0, Ljava/util/JumboEnumSet;

    .line 298
    .local v0, "es":Ljava/util/JumboEnumSet;
    iget-object v2, v0, Ljava/util/JumboEnumSet;->elementType:Ljava/lang/Class;

    iget-object v3, p0, Ljava/util/JumboEnumSet;->elementType:Ljava/lang/Class;

    if-eq v2, v3, :cond_1

    .line 299
    const/4 v2, 0x0

    return v2

    .line 301
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Ljava/util/JumboEnumSet;->elements:[J

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 302
    iget-object v2, p0, Ljava/util/JumboEnumSet;->elements:[J

    aget-wide v4, v2, v1

    iget-object v3, v0, Ljava/util/JumboEnumSet;->elements:[J

    aget-wide v6, v3, v1

    not-long v6, v6

    and-long/2addr v4, v6

    aput-wide v4, v2, v1

    .line 301
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 303
    :cond_2
    invoke-direct {p0}, Ljava/util/JumboEnumSet;->recalculateSize()Z

    move-result v2

    return v2
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 315
    .local p0, "this":Ljava/util/JumboEnumSet;, "Ljava/util/JumboEnumSet<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    instance-of v3, p1, Ljava/util/JumboEnumSet;

    if-nez v3, :cond_0

    .line 316
    invoke-super {p0, p1}, Ljava/util/EnumSet;->retainAll(Ljava/util/Collection;)Z

    move-result v3

    return v3

    :cond_0
    move-object v1, p1

    .line 318
    check-cast v1, Ljava/util/JumboEnumSet;

    .line 319
    .local v1, "es":Ljava/util/JumboEnumSet;, "Ljava/util/JumboEnumSet<*>;"
    iget-object v3, v1, Ljava/util/JumboEnumSet;->elementType:Ljava/lang/Class;

    iget-object v4, p0, Ljava/util/JumboEnumSet;->elementType:Ljava/lang/Class;

    if-eq v3, v4, :cond_2

    .line 320
    iget v3, p0, Ljava/util/JumboEnumSet;->size:I

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    .line 321
    .local v0, "changed":Z
    :goto_0
    invoke-virtual {p0}, Ljava/util/JumboEnumSet;->clear()V

    .line 322
    return v0

    .line 320
    .end local v0    # "changed":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "changed":Z
    goto :goto_0

    .line 325
    .end local v0    # "changed":Z
    :cond_2
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v3, p0, Ljava/util/JumboEnumSet;->elements:[J

    array-length v3, v3

    if-ge v2, v3, :cond_3

    .line 326
    iget-object v3, p0, Ljava/util/JumboEnumSet;->elements:[J

    aget-wide v4, v3, v2

    iget-object v6, v1, Ljava/util/JumboEnumSet;->elements:[J

    aget-wide v6, v6, v2

    and-long/2addr v4, v6

    aput-wide v4, v3, v2

    .line 325
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 327
    :cond_3
    invoke-direct {p0}, Ljava/util/JumboEnumSet;->recalculateSize()Z

    move-result v3

    return v3
.end method

.method public size()I
    .locals 1

    .prologue
    .line 158
    .local p0, "this":Ljava/util/JumboEnumSet;, "Ljava/util/JumboEnumSet<TE;>;"
    iget v0, p0, Ljava/util/JumboEnumSet;->size:I

    return v0
.end method
