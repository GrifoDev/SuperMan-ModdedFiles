.class final Ljava/util/WeakHashMap$ValueSpliterator;
.super Ljava/util/WeakHashMap$WeakHashMapSpliterator;
.source "WeakHashMap.java"

# interfaces
.implements Ljava/util/Spliterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/WeakHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ValueSpliterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/WeakHashMap$WeakHashMapSpliterator",
        "<TK;TV;>;",
        "Ljava/util/Spliterator",
        "<TV;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/util/WeakHashMap;IIII)V
    .locals 0
    .param p2, "origin"    # I
    .param p3, "fence"    # I
    .param p4, "est"    # I
    .param p5, "expectedModCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/WeakHashMap",
            "<TK;TV;>;IIII)V"
        }
    .end annotation

    .prologue
    .line 1158
    .local p0, "this":Ljava/util/WeakHashMap$ValueSpliterator;, "Ljava/util/WeakHashMap<TK;TV;>.ValueSpliterator<TK;TV;>;"
    .local p1, "m":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<TK;TV;>;"
    invoke-direct/range {p0 .. p5}, Ljava/util/WeakHashMap$WeakHashMapSpliterator;-><init>(Ljava/util/WeakHashMap;IIII)V

    .line 1157
    return-void
.end method


# virtual methods
.method public characteristics()I
    .locals 1

    .prologue
    .line 1226
    .local p0, "this":Ljava/util/WeakHashMap$ValueSpliterator;, "Ljava/util/WeakHashMap<TK;TV;>.ValueSpliterator<TK;TV;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public forEachRemaining(Ljava/util/function/Consumer;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-TV;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/WeakHashMap$ValueSpliterator;, "Ljava/util/WeakHashMap<TK;TV;>.ValueSpliterator<TK;TV;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TV;>;"
    const/4 v10, 0x0

    .line 1170
    if-nez p1, :cond_0

    .line 1171
    new-instance v9, Ljava/lang/NullPointerException;

    invoke-direct {v9}, Ljava/lang/NullPointerException;-><init>()V

    throw v9

    .line 1172
    :cond_0
    iget-object v3, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->map:Ljava/util/WeakHashMap;

    .line 1173
    .local v3, "m":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<TK;TV;>;"
    iget-object v6, v3, Ljava/util/WeakHashMap;->table:[Ljava/util/WeakHashMap$Entry;

    .line 1174
    .local v6, "tab":[Ljava/util/WeakHashMap$Entry;, "[Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    iget v0, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->fence:I

    .local v0, "hi":I
    if-gez v0, :cond_3

    .line 1175
    iget v4, v3, Ljava/util/WeakHashMap;->modCount:I

    iput v4, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->expectedModCount:I

    .line 1176
    .local v4, "mc":I
    array-length v0, v6

    .end local v0    # "hi":I
    iput v0, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->fence:I

    .line 1180
    .restart local v0    # "hi":I
    :goto_0
    array-length v9, v6

    if-lt v9, v0, :cond_5

    iget v1, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->index:I

    .local v1, "i":I
    if-ltz v1, :cond_5

    .line 1181
    iput v0, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->index:I

    if-lt v1, v0, :cond_1

    iget-object v9, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->current:Ljava/util/WeakHashMap$Entry;

    if-eqz v9, :cond_5

    .line 1182
    :cond_1
    iget-object v5, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->current:Ljava/util/WeakHashMap$Entry;

    .line 1183
    .local v5, "p":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    iput-object v10, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->current:Ljava/util/WeakHashMap$Entry;

    move v2, v1

    .line 1185
    .end local v1    # "i":I
    .local v2, "i":I
    :goto_1
    if-nez v5, :cond_4

    .line 1186
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    aget-object v5, v6, v2

    .line 1194
    :goto_2
    if-nez v5, :cond_2

    if-ge v1, v0, :cond_5

    :cond_2
    move v2, v1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_1

    .line 1179
    .end local v2    # "i":I
    .end local v4    # "mc":I
    .end local v5    # "p":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    :cond_3
    iget v4, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->expectedModCount:I

    .restart local v4    # "mc":I
    goto :goto_0

    .line 1188
    .restart local v2    # "i":I
    .restart local v5    # "p":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    :cond_4
    invoke-virtual {v5}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v8

    .line 1189
    .local v8, "x":Ljava/lang/Object;
    iget-object v7, v5, Ljava/util/WeakHashMap$Entry;->value:Ljava/lang/Object;

    .line 1190
    .local v7, "v":Ljava/lang/Object;, "TV;"
    iget-object v5, v5, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    .line 1191
    if-eqz v8, :cond_7

    .line 1192
    invoke-interface {p1, v7}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_2

    .line 1196
    .end local v1    # "i":I
    .end local v5    # "p":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    .end local v7    # "v":Ljava/lang/Object;, "TV;"
    .end local v8    # "x":Ljava/lang/Object;
    :cond_5
    iget v9, v3, Ljava/util/WeakHashMap;->modCount:I

    if-eq v9, v4, :cond_6

    .line 1197
    new-instance v9, Ljava/util/ConcurrentModificationException;

    invoke-direct {v9}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v9

    .line 1168
    :cond_6
    return-void

    .restart local v2    # "i":I
    .restart local v5    # "p":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    .restart local v7    # "v":Ljava/lang/Object;, "TV;"
    .restart local v8    # "x":Ljava/lang/Object;
    :cond_7
    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_2
.end method

.method public tryAdvance(Ljava/util/function/Consumer;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-TV;>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/WeakHashMap$ValueSpliterator;, "Ljava/util/WeakHashMap<TK;TV;>.ValueSpliterator<TK;TV;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TV;>;"
    const/4 v6, 0x0

    .line 1202
    if-nez p1, :cond_0

    .line 1203
    new-instance v4, Ljava/lang/NullPointerException;

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    throw v4

    .line 1204
    :cond_0
    iget-object v4, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->map:Ljava/util/WeakHashMap;

    iget-object v1, v4, Ljava/util/WeakHashMap;->table:[Ljava/util/WeakHashMap$Entry;

    .line 1205
    .local v1, "tab":[Ljava/util/WeakHashMap$Entry;, "[Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    array-length v4, v1

    invoke-virtual {p0}, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->getFence()I

    move-result v0

    .local v0, "hi":I
    if-lt v4, v0, :cond_5

    iget v4, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->index:I

    if-ltz v4, :cond_5

    .line 1206
    :cond_1
    :goto_0
    iget-object v4, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->current:Ljava/util/WeakHashMap$Entry;

    if-nez v4, :cond_2

    iget v4, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->index:I

    if-ge v4, v0, :cond_5

    .line 1207
    :cond_2
    iget-object v4, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->current:Ljava/util/WeakHashMap$Entry;

    if-nez v4, :cond_3

    .line 1208
    iget v4, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->index:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->index:I

    aget-object v4, v1, v4

    iput-object v4, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->current:Ljava/util/WeakHashMap$Entry;

    goto :goto_0

    .line 1210
    :cond_3
    iget-object v4, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->current:Ljava/util/WeakHashMap$Entry;

    invoke-virtual {v4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    .line 1211
    .local v3, "x":Ljava/lang/Object;
    iget-object v4, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->current:Ljava/util/WeakHashMap$Entry;

    iget-object v2, v4, Ljava/util/WeakHashMap$Entry;->value:Ljava/lang/Object;

    .line 1212
    .local v2, "v":Ljava/lang/Object;, "TV;"
    iget-object v4, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->current:Ljava/util/WeakHashMap$Entry;

    iget-object v4, v4, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    iput-object v4, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->current:Ljava/util/WeakHashMap$Entry;

    .line 1213
    if-eqz v3, :cond_1

    .line 1214
    invoke-interface {p1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1215
    iget-object v4, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->map:Ljava/util/WeakHashMap;

    iget v4, v4, Ljava/util/WeakHashMap;->modCount:I

    iget v5, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->expectedModCount:I

    if-eq v4, v5, :cond_4

    .line 1216
    new-instance v4, Ljava/util/ConcurrentModificationException;

    invoke-direct {v4}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v4

    .line 1217
    :cond_4
    const/4 v4, 0x1

    return v4

    .line 1222
    .end local v2    # "v":Ljava/lang/Object;, "TV;"
    .end local v3    # "x":Ljava/lang/Object;
    :cond_5
    return v6
.end method

.method public bridge synthetic trySplit()Ljava/util/Spliterator;
    .locals 1

    .prologue
    .line 1161
    .local p0, "this":Ljava/util/WeakHashMap$ValueSpliterator;, "Ljava/util/WeakHashMap<TK;TV;>.ValueSpliterator<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/WeakHashMap$ValueSpliterator;->trySplit()Ljava/util/WeakHashMap$ValueSpliterator;

    move-result-object v0

    return-object v0
.end method

.method public trySplit()Ljava/util/WeakHashMap$ValueSpliterator;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/WeakHashMap$ValueSpliterator",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1162
    .local p0, "this":Ljava/util/WeakHashMap$ValueSpliterator;, "Ljava/util/WeakHashMap<TK;TV;>.ValueSpliterator<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->getFence()I

    move-result v6

    .local v6, "hi":I
    iget v2, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->index:I

    .local v2, "lo":I
    add-int v0, v2, v6

    ushr-int/lit8 v3, v0, 0x1

    .line 1163
    .local v3, "mid":I
    if-lt v2, v3, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 1164
    :cond_0
    new-instance v0, Ljava/util/WeakHashMap$ValueSpliterator;

    iget-object v1, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->map:Ljava/util/WeakHashMap;

    iput v3, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->index:I

    iget v4, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->est:I

    ushr-int/lit8 v4, v4, 0x1

    iput v4, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->est:I

    .line 1165
    iget v5, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->expectedModCount:I

    .line 1164
    invoke-direct/range {v0 .. v5}, Ljava/util/WeakHashMap$ValueSpliterator;-><init>(Ljava/util/WeakHashMap;IIII)V

    goto :goto_0
.end method
