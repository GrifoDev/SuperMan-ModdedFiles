.class public abstract Ljava/util/AbstractSet;
.super Ljava/util/AbstractCollection;
.source "AbstractSet.java"

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractCollection",
        "<TE;>;",
        "Ljava/util/Set",
        "<TE;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 63
    .local p0, "this":Ljava/util/AbstractSet;, "Ljava/util/AbstractSet<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Ljava/util/AbstractSet;, "Ljava/util/AbstractSet<TE;>;"
    const/4 v5, 0x0

    .line 86
    if-ne p1, p0, :cond_0

    .line 87
    const/4 v3, 0x1

    return v3

    .line 89
    :cond_0
    instance-of v3, p1, Ljava/util/Set;

    if-nez v3, :cond_1

    .line 90
    return v5

    :cond_1
    move-object v0, p1

    .line 91
    check-cast v0, Ljava/util/Collection;

    .line 92
    .local v0, "c":Ljava/util/Collection;
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-virtual {p0}, Ljava/util/AbstractSet;->size()I

    move-result v4

    if-eq v3, v4, :cond_2

    .line 93
    return v5

    .line 95
    :cond_2
    :try_start_0
    invoke-virtual {p0, v0}, Ljava/util/AbstractSet;->containsAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    .line 98
    :catch_0
    move-exception v2

    .line 99
    .local v2, "unused":Ljava/lang/NullPointerException;
    return v5

    .line 96
    .end local v2    # "unused":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v1

    .line 97
    .local v1, "unused":Ljava/lang/ClassCastException;
    return v5
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 121
    .local p0, "this":Ljava/util/AbstractSet;, "Ljava/util/AbstractSet<TE;>;"
    const/4 v0, 0x0

    .line 122
    .local v0, "h":I
    invoke-virtual {p0}, Ljava/util/AbstractSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 123
    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 124
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 125
    .local v2, "obj":Ljava/lang/Object;, "TE;"
    if-eqz v2, :cond_0

    .line 126
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v0, v3

    goto :goto_0

    .line 128
    .end local v2    # "obj":Ljava/lang/Object;, "TE;"
    :cond_1
    return v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 169
    .local p0, "this":Ljava/util/AbstractSet;, "Ljava/util/AbstractSet<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    const/4 v1, 0x0

    .line 171
    .local v1, "modified":Z
    invoke-virtual {p0}, Ljava/util/AbstractSet;->size()I

    move-result v2

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v3

    if-le v2, v3, :cond_0

    .line 172
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .end local v1    # "modified":Z
    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 173
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/AbstractSet;->remove(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v1, v2

    .local v1, "modified":Z
    goto :goto_0

    .line 175
    .end local v0    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .local v1, "modified":Z
    :cond_0
    invoke-virtual {p0}, Ljava/util/AbstractSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 176
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 177
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 178
    const/4 v1, 0x1

    goto :goto_1

    .line 182
    .end local v1    # "modified":Z
    :cond_2
    return v1
.end method
