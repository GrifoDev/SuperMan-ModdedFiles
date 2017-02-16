.class public abstract Ljava/util/AbstractSequentialList;
.super Ljava/util/AbstractList;
.source "AbstractSequentialList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractList",
        "<TE;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 74
    .local p0, "this":Ljava/util/AbstractSequentialList;, "Ljava/util/AbstractSequentialList<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    return-void
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .prologue
    .line 146
    .local p0, "this":Ljava/util/AbstractSequentialList;, "Ljava/util/AbstractSequentialList<TE;>;"
    .local p2, "element":Ljava/lang/Object;, "TE;"
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/util/AbstractSequentialList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    return-void

    .line 147
    :catch_0
    move-exception v0

    .line 148
    .local v0, "exc":Ljava/util/NoSuchElementException;
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Index: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 7
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 214
    .local p0, "this":Ljava/util/AbstractSequentialList;, "Ljava/util/AbstractSequentialList<TE;>;"
    .local p2, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    const/4 v3, 0x0

    .line 215
    .local v3, "modified":Z
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/util/AbstractSequentialList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    .line 216
    .local v0, "e1":Ljava/util/ListIterator;, "Ljava/util/ListIterator<TE;>;"
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 217
    .local v1, "e2":Ljava/util/Iterator;, "Ljava/util/Iterator<+TE;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 218
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    const/4 v3, 0x1

    goto :goto_0

    .line 221
    :cond_0
    return v3

    .line 222
    .end local v0    # "e1":Ljava/util/ListIterator;, "Ljava/util/ListIterator<TE;>;"
    .end local v1    # "e2":Ljava/util/Iterator;, "Ljava/util/Iterator<+TE;>;"
    :catch_0
    move-exception v2

    .line 223
    .local v2, "exc":Ljava/util/NoSuchElementException;
    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Index: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public get(I)Ljava/lang/Object;
    .locals 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 88
    .local p0, "this":Ljava/util/AbstractSequentialList;, "Ljava/util/AbstractSequentialList<TE;>;"
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/util/AbstractSequentialList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 89
    :catch_0
    move-exception v0

    .line 90
    .local v0, "exc":Ljava/util/NoSuchElementException;
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Index: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
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
    .line 239
    .local p0, "this":Ljava/util/AbstractSequentialList;, "Ljava/util/AbstractSequentialList<TE;>;"
    invoke-virtual {p0}, Ljava/util/AbstractSequentialList;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public abstract listIterator(I)Ljava/util/ListIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator",
            "<TE;>;"
        }
    .end annotation
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 6
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 171
    .local p0, "this":Ljava/util/AbstractSequentialList;, "Ljava/util/AbstractSequentialList<TE;>;"
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/util/AbstractSequentialList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    .line 172
    .local v0, "e":Ljava/util/ListIterator;, "Ljava/util/ListIterator<TE;>;"
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 173
    .local v2, "outCast":Ljava/lang/Object;, "TE;"
    invoke-interface {v0}, Ljava/util/ListIterator;->remove()V
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    return-object v2

    .line 175
    .end local v0    # "e":Ljava/util/ListIterator;, "Ljava/util/ListIterator<TE;>;"
    .end local v2    # "outCast":Ljava/lang/Object;, "TE;"
    :catch_0
    move-exception v1

    .line 176
    .local v1, "exc":Ljava/util/NoSuchElementException;
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Index: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .prologue
    .line 115
    .local p0, "this":Ljava/util/AbstractSequentialList;, "Ljava/util/AbstractSequentialList<TE;>;"
    .local p2, "element":Ljava/lang/Object;, "TE;"
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/util/AbstractSequentialList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    .line 116
    .local v0, "e":Ljava/util/ListIterator;, "Ljava/util/ListIterator<TE;>;"
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 117
    .local v2, "oldVal":Ljava/lang/Object;, "TE;"
    invoke-interface {v0, p2}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    return-object v2

    .line 119
    .end local v0    # "e":Ljava/util/ListIterator;, "Ljava/util/ListIterator<TE;>;"
    .end local v2    # "oldVal":Ljava/lang/Object;, "TE;"
    :catch_0
    move-exception v1

    .line 120
    .local v1, "exc":Ljava/util/NoSuchElementException;
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Index: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3
.end method
