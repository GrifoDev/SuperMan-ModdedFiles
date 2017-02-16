.class public abstract Ljava/util/AbstractQueue;
.super Ljava/util/AbstractCollection;
.source "AbstractQueue.java"

# interfaces
.implements Ljava/util/Queue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractCollection",
        "<TE;>;",
        "Ljava/util/Queue",
        "<TE;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 70
    .local p0, "this":Ljava/util/AbstractQueue;, "Ljava/util/AbstractQueue<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 94
    .local p0, "this":Ljava/util/AbstractQueue;, "Ljava/util/AbstractQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1}, Ljava/util/AbstractQueue;->offer(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    const/4 v0, 0x1

    return v0

    .line 97
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Queue full"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

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
    .line 180
    .local p0, "this":Ljava/util/AbstractQueue;, "Ljava/util/AbstractQueue<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    if-nez p1, :cond_0

    .line 181
    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    .line 182
    :cond_0
    if-ne p1, p0, :cond_1

    .line 183
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 184
    :cond_1
    const/4 v2, 0x0

    .line 185
    .local v2, "modified":Z
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "e$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 186
    .local v0, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, v0}, Ljava/util/AbstractQueue;->add(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 187
    const/4 v2, 0x1

    goto :goto_0

    .line 188
    .end local v0    # "e":Ljava/lang/Object;, "TE;"
    :cond_3
    return v2
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 146
    .local p0, "this":Ljava/util/AbstractQueue;, "Ljava/util/AbstractQueue<TE;>;"
    :cond_0
    invoke-virtual {p0}, Ljava/util/AbstractQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 145
    return-void
.end method

.method public element()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 131
    .local p0, "this":Ljava/util/AbstractQueue;, "Ljava/util/AbstractQueue<TE;>;"
    invoke-virtual {p0}, Ljava/util/AbstractQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    .line 132
    .local v0, "x":Ljava/lang/Object;, "TE;"
    if-eqz v0, :cond_0

    .line 133
    return-object v0

    .line 135
    :cond_0
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1
.end method

.method public remove()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 112
    .local p0, "this":Ljava/util/AbstractQueue;, "Ljava/util/AbstractQueue<TE;>;"
    invoke-virtual {p0}, Ljava/util/AbstractQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    .line 113
    .local v0, "x":Ljava/lang/Object;, "TE;"
    if-eqz v0, :cond_0

    .line 114
    return-object v0

    .line 116
    :cond_0
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1
.end method
