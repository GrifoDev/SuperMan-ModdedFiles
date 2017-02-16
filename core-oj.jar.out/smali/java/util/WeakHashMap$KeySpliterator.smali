.class final Ljava/util/WeakHashMap$KeySpliterator;
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
    name = "KeySpliterator"
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
        "<TK;>;"
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
    .line 1078
    .local p0, "this":Ljava/util/WeakHashMap$KeySpliterator;, "Ljava/util/WeakHashMap<TK;TV;>.KeySpliterator<TK;TV;>;"
    .local p1, "m":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<TK;TV;>;"
    invoke-direct/range {p0 .. p5}, Ljava/util/WeakHashMap$WeakHashMapSpliterator;-><init>(Ljava/util/WeakHashMap;IIII)V

    .line 1077
    return-void
.end method


# virtual methods
.method public characteristics()I
    .locals 1

    .prologue
    .line 1149
    .local p0, "this":Ljava/util/WeakHashMap$KeySpliterator;, "Ljava/util/WeakHashMap<TK;TV;>.KeySpliterator<TK;TV;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public forEachRemaining(Ljava/util/function/Consumer;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-TK;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/WeakHashMap$KeySpliterator;, "Ljava/util/WeakHashMap<TK;TV;>.KeySpliterator<TK;TV;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TK;>;"
    const/4 v10, 0x0

    .line 1090
    if-nez p1, :cond_0

    .line 1091
    new-instance v9, Ljava/lang/NullPointerException;

    invoke-direct {v9}, Ljava/lang/NullPointerException;-><init>()V

    throw v9

    .line 1092
    :cond_0
    iget-object v4, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->map:Ljava/util/WeakHashMap;

    .line 1093
    .local v4, "m":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<TK;TV;>;"
    iget-object v7, v4, Ljava/util/WeakHashMap;->table:[Ljava/util/WeakHashMap$Entry;

    .line 1094
    .local v7, "tab":[Ljava/util/WeakHashMap$Entry;, "[Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    iget v0, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->fence:I

    .local v0, "hi":I
    if-gez v0, :cond_3

    .line 1095
    iget v5, v4, Ljava/util/WeakHashMap;->modCount:I

    iput v5, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->expectedModCount:I

    .line 1096
    .local v5, "mc":I
    array-length v0, v7

    .end local v0    # "hi":I
    iput v0, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->fence:I

    .line 1100
    .restart local v0    # "hi":I
    :goto_0
    array-length v9, v7

    if-lt v9, v0, :cond_5

    iget v1, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->index:I

    .local v1, "i":I
    if-ltz v1, :cond_5

    .line 1101
    iput v0, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->index:I

    if-lt v1, v0, :cond_1

    iget-object v9, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->current:Ljava/util/WeakHashMap$Entry;

    if-eqz v9, :cond_5

    .line 1102
    :cond_1
    iget-object v6, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->current:Ljava/util/WeakHashMap$Entry;

    .line 1103
    .local v6, "p":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    iput-object v10, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->current:Ljava/util/WeakHashMap$Entry;

    move v2, v1

    .line 1105
    .end local v1    # "i":I
    .local v2, "i":I
    :goto_1
    if-nez v6, :cond_4

    .line 1106
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    aget-object v6, v7, v2

    .line 1116
    :goto_2
    if-nez v6, :cond_2

    if-ge v1, v0, :cond_5

    :cond_2
    move v2, v1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_1

    .line 1099
    .end local v2    # "i":I
    .end local v5    # "mc":I
    .end local v6    # "p":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    :cond_3
    iget v5, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->expectedModCount:I

    .restart local v5    # "mc":I
    goto :goto_0

    .line 1108
    .restart local v2    # "i":I
    .restart local v6    # "p":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    :cond_4
    invoke-virtual {v6}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v8

    .line 1109
    .local v8, "x":Ljava/lang/Object;
    iget-object v6, v6, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    .line 1110
    if-eqz v8, :cond_7

    .line 1112
    invoke-static {v8}, Ljava/util/WeakHashMap;->unmaskNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 1113
    .local v3, "k":Ljava/lang/Object;, "TK;"
    invoke-interface {p1, v3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_2

    .line 1118
    .end local v1    # "i":I
    .end local v3    # "k":Ljava/lang/Object;, "TK;"
    .end local v6    # "p":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    .end local v8    # "x":Ljava/lang/Object;
    :cond_5
    iget v9, v4, Ljava/util/WeakHashMap;->modCount:I

    if-eq v9, v5, :cond_6

    .line 1119
    new-instance v9, Ljava/util/ConcurrentModificationException;

    invoke-direct {v9}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v9

    .line 1088
    :cond_6
    return-void

    .restart local v2    # "i":I
    .restart local v6    # "p":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
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
            "<-TK;>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/WeakHashMap$KeySpliterator;, "Ljava/util/WeakHashMap<TK;TV;>.KeySpliterator<TK;TV;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TK;>;"
    const/4 v6, 0x0

    .line 1124
    if-nez p1, :cond_0

    .line 1125
    new-instance v4, Ljava/lang/NullPointerException;

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    throw v4

    .line 1126
    :cond_0
    iget-object v4, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->map:Ljava/util/WeakHashMap;

    iget-object v2, v4, Ljava/util/WeakHashMap;->table:[Ljava/util/WeakHashMap$Entry;

    .line 1127
    .local v2, "tab":[Ljava/util/WeakHashMap$Entry;, "[Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    array-length v4, v2

    invoke-virtual {p0}, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->getFence()I

    move-result v0

    .local v0, "hi":I
    if-lt v4, v0, :cond_5

    iget v4, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->index:I

    if-ltz v4, :cond_5

    .line 1128
    :cond_1
    :goto_0
    iget-object v4, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->current:Ljava/util/WeakHashMap$Entry;

    if-nez v4, :cond_2

    iget v4, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->index:I

    if-ge v4, v0, :cond_5

    .line 1129
    :cond_2
    iget-object v4, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->current:Ljava/util/WeakHashMap$Entry;

    if-nez v4, :cond_3

    .line 1130
    iget v4, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->index:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->index:I

    aget-object v4, v2, v4

    iput-object v4, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->current:Ljava/util/WeakHashMap$Entry;

    goto :goto_0

    .line 1132
    :cond_3
    iget-object v4, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->current:Ljava/util/WeakHashMap$Entry;

    invoke-virtual {v4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    .line 1133
    .local v3, "x":Ljava/lang/Object;
    iget-object v4, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->current:Ljava/util/WeakHashMap$Entry;

    iget-object v4, v4, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    iput-object v4, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->current:Ljava/util/WeakHashMap$Entry;

    .line 1134
    if-eqz v3, :cond_1

    .line 1136
    invoke-static {v3}, Ljava/util/WeakHashMap;->unmaskNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1137
    .local v1, "k":Ljava/lang/Object;, "TK;"
    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1138
    iget-object v4, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->map:Ljava/util/WeakHashMap;

    iget v4, v4, Ljava/util/WeakHashMap;->modCount:I

    iget v5, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->expectedModCount:I

    if-eq v4, v5, :cond_4

    .line 1139
    new-instance v4, Ljava/util/ConcurrentModificationException;

    invoke-direct {v4}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v4

    .line 1140
    :cond_4
    const/4 v4, 0x1

    return v4

    .line 1145
    .end local v1    # "k":Ljava/lang/Object;, "TK;"
    .end local v3    # "x":Ljava/lang/Object;
    :cond_5
    return v6
.end method

.method public bridge synthetic trySplit()Ljava/util/Spliterator;
    .locals 1

    .prologue
    .line 1081
    .local p0, "this":Ljava/util/WeakHashMap$KeySpliterator;, "Ljava/util/WeakHashMap<TK;TV;>.KeySpliterator<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/WeakHashMap$KeySpliterator;->trySplit()Ljava/util/WeakHashMap$KeySpliterator;

    move-result-object v0

    return-object v0
.end method

.method public trySplit()Ljava/util/WeakHashMap$KeySpliterator;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/WeakHashMap$KeySpliterator",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1082
    .local p0, "this":Ljava/util/WeakHashMap$KeySpliterator;, "Ljava/util/WeakHashMap<TK;TV;>.KeySpliterator<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->getFence()I

    move-result v6

    .local v6, "hi":I
    iget v2, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->index:I

    .local v2, "lo":I
    add-int v0, v2, v6

    ushr-int/lit8 v3, v0, 0x1

    .line 1083
    .local v3, "mid":I
    if-lt v2, v3, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 1084
    :cond_0
    new-instance v0, Ljava/util/WeakHashMap$KeySpliterator;

    iget-object v1, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->map:Ljava/util/WeakHashMap;

    iput v3, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->index:I

    iget v4, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->est:I

    ushr-int/lit8 v4, v4, 0x1

    iput v4, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->est:I

    .line 1085
    iget v5, p0, Ljava/util/WeakHashMap$WeakHashMapSpliterator;->expectedModCount:I

    .line 1084
    invoke-direct/range {v0 .. v5}, Ljava/util/WeakHashMap$KeySpliterator;-><init>(Ljava/util/WeakHashMap;IIII)V

    goto :goto_0
.end method
