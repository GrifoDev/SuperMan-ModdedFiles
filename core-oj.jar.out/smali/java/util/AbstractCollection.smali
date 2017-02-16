.class public abstract Ljava/util/AbstractCollection;
.super Ljava/lang/Object;
.source "AbstractCollection.java"

# interfaces
.implements Ljava/util/Collection;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Collection",
        "<TE;>;"
    }
.end annotation


# static fields
.field private static final MAX_ARRAY_SIZE:I = 0x7ffffff7


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 66
    .local p0, "this":Ljava/util/AbstractCollection;, "Ljava/util/AbstractCollection<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static finishToArray([Ljava/lang/Object;Ljava/util/Iterator;)[Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Ljava/util/Iterator",
            "<*>;)[TT;"
        }
    .end annotation

    .prologue
    .line 220
    .local p0, "r":[Ljava/lang/Object;, "[TT;"
    .local p1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    array-length v1, p0

    .line 221
    .local v1, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 222
    array-length v0, p0

    .line 223
    .local v0, "cap":I
    if-ne v1, v0, :cond_1

    .line 224
    shr-int/lit8 v4, v0, 0x1

    add-int/2addr v4, v0

    add-int/lit8 v3, v4, 0x1

    .line 226
    .local v3, "newCap":I
    const v4, 0x7ffffff7

    sub-int v4, v3, v4

    if-lez v4, :cond_0

    .line 227
    add-int/lit8 v4, v0, 0x1

    invoke-static {v4}, Ljava/util/AbstractCollection;->hugeCapacity(I)I

    move-result v3

    .line 228
    :cond_0
    invoke-static {p0, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    .line 230
    .end local v3    # "newCap":I
    :cond_1
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .local v2, "i":I
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, p0, v1

    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_0

    .line 233
    .end local v0    # "cap":I
    :cond_2
    array-length v4, p0

    if-ne v1, v4, :cond_3

    .end local p0    # "r":[Ljava/lang/Object;, "[TT;"
    :goto_1
    return-object p0

    .restart local p0    # "r":[Ljava/lang/Object;, "[TT;"
    :cond_3
    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    goto :goto_1
.end method

.method private static hugeCapacity(I)I
    .locals 2
    .param p0, "minCapacity"    # I

    .prologue
    const v0, 0x7ffffff7

    .line 237
    if-gez p0, :cond_0

    .line 238
    new-instance v0, Ljava/lang/OutOfMemoryError;

    .line 239
    const-string/jumbo v1, "Required array size too large"

    .line 238
    invoke-direct {v0, v1}, Ljava/lang/OutOfMemoryError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 240
    :cond_0
    if-le p0, v0, :cond_1

    .line 241
    const v0, 0x7fffffff

    .line 240
    :cond_1
    return v0
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
    .line 260
    .local p0, "this":Ljava/util/AbstractCollection;, "Ljava/util/AbstractCollection<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 340
    .local p0, "this":Ljava/util/AbstractCollection;, "Ljava/util/AbstractCollection<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    const/4 v2, 0x0

    .line 341
    .local v2, "modified":Z
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "e$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 342
    .local v0, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 343
    const/4 v2, 0x1

    goto :goto_0

    .line 344
    .end local v0    # "e":Ljava/lang/Object;, "TE;"
    :cond_1
    return v2
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 429
    .local p0, "this":Ljava/util/AbstractCollection;, "Ljava/util/AbstractCollection<TE;>;"
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 430
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 431
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 432
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 428
    :cond_0
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Ljava/util/AbstractCollection;, "Ljava/util/AbstractCollection<TE;>;"
    const/4 v2, 0x1

    .line 99
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 100
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    if-nez p1, :cond_1

    .line 101
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 102
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 103
    return v2

    .line 105
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 106
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 107
    return v2

    .line 109
    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 315
    .local p0, "this":Ljava/util/AbstractCollection;, "Ljava/util/AbstractCollection<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "e$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 316
    .local v0, "e":Ljava/lang/Object;
    invoke-virtual {p0, v0}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 317
    const/4 v2, 0x0

    return v2

    .line 318
    .end local v0    # "e":Ljava/lang/Object;
    :cond_1
    const/4 v2, 0x1

    return v2
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .local p0, "this":Ljava/util/AbstractCollection;, "Ljava/util/AbstractCollection<TE;>;"
    const/4 v0, 0x0

    .line 86
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public abstract iterator()Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Ljava/util/AbstractCollection;, "Ljava/util/AbstractCollection<TE;>;"
    const/4 v2, 0x1

    .line 280
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 281
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    if-nez p1, :cond_1

    .line 282
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 283
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 284
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 285
    return v2

    .line 289
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 290
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 291
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 292
    return v2

    .line 296
    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 369
    .local p0, "this":Ljava/util/AbstractCollection;, "Ljava/util/AbstractCollection<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    const/4 v1, 0x0

    .line 370
    .local v1, "modified":Z
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 371
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 372
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 373
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 374
    const/4 v1, 0x1

    goto :goto_0

    .line 377
    :cond_1
    return v1
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 402
    .local p0, "this":Ljava/util/AbstractCollection;, "Ljava/util/AbstractCollection<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    const/4 v1, 0x0

    .line 403
    .local v1, "modified":Z
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 404
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 405
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 406
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 407
    const/4 v1, 0x1

    goto :goto_0

    .line 410
    :cond_1
    return v1
.end method

.method public abstract size()I
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 4

    .prologue
    .line 136
    .local p0, "this":Ljava/util/AbstractCollection;, "Ljava/util/AbstractCollection<TE;>;"
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    move-result v3

    new-array v2, v3, [Ljava/lang/Object;

    .line 137
    .local v2, "r":[Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 138
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 139
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 140
    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    return-object v3

    .line 141
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v0

    .line 138
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 143
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {v2, v1}, Ljava/util/AbstractCollection;->finishToArray([Ljava/lang/Object;Ljava/util/Iterator;)[Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "r":[Ljava/lang/Object;
    :cond_2
    return-object v2
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/AbstractCollection;, "Ljava/util/AbstractCollection<TE;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 175
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    move-result v3

    .line 176
    .local v3, "size":I
    array-length v4, p1

    if-lt v4, v3, :cond_1

    move-object v2, p1

    .line 179
    .local v2, "r":[Ljava/lang/Object;, "[TT;"
    :goto_0
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 181
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v4, v2

    if-ge v0, v4, :cond_5

    .line 182
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_4

    .line 183
    if-ne p1, v2, :cond_2

    .line 184
    aput-object v6, v2, v0

    .line 193
    :cond_0
    :goto_2
    return-object p1

    .line 178
    .end local v0    # "i":I
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    .end local v2    # "r":[Ljava/lang/Object;, "[TT;"
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v4

    .line 177
    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    .restart local v2    # "r":[Ljava/lang/Object;, "[TT;"
    goto :goto_0

    .line 185
    .restart local v0    # "i":I
    .restart local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    :cond_2
    array-length v4, p1

    if-ge v4, v0, :cond_3

    .line 186
    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    return-object v4

    .line 188
    :cond_3
    invoke-static {v2, v5, p1, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 189
    array-length v4, p1

    if-le v4, v0, :cond_0

    .line 190
    aput-object v6, p1, v0

    goto :goto_2

    .line 195
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v0

    .line 181
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 198
    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-static {v2, v1}, Ljava/util/AbstractCollection;->finishToArray([Ljava/lang/Object;Ljava/util/Iterator;)[Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "r":[Ljava/lang/Object;, "[TT;"
    :cond_6
    return-object v2
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 450
    .local p0, "this":Ljava/util/AbstractCollection;, "Ljava/util/AbstractCollection<TE;>;"
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 451
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 452
    const-string/jumbo v3, "[]"

    return-object v3

    .line 454
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 455
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/16 v3, 0x5b

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 457
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 458
    .local v0, "e":Ljava/lang/Object;, "TE;"
    if-ne v0, p0, :cond_1

    const-string/jumbo v0, "(this Collection)"

    .end local v0    # "e":Ljava/lang/Object;, "TE;"
    :cond_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 459
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 460
    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 461
    :cond_2
    const/16 v3, 0x2c

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
