.class final Ljava/util/HashMap$Values;
.super Ljava/util/AbstractCollection;
.source "HashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/HashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Values"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractCollection",
        "<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljava/util/HashMap;


# direct methods
.method private constructor <init>(Ljava/util/HashMap;)V
    .locals 0

    .prologue
    .line 1244
    .local p0, "this":Ljava/util/HashMap$Values;, "Ljava/util/HashMap<TK;TV;>.Values;"
    .local p1, "this$0":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    iput-object p1, p0, Ljava/util/HashMap$Values;->this$0:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/HashMap;Ljava/util/HashMap$Values;)V
    .locals 0
    .param p1, "this$0"    # Ljava/util/HashMap;

    .prologue
    .local p0, "this":Ljava/util/HashMap$Values;, "Ljava/util/HashMap<TK;TV;>.Values;"
    invoke-direct {p0, p1}, Ljava/util/HashMap$Values;-><init>(Ljava/util/HashMap;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 1255
    .local p0, "this":Ljava/util/HashMap$Values;, "Ljava/util/HashMap<TK;TV;>.Values;"
    iget-object v0, p0, Ljava/util/HashMap$Values;->this$0:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1254
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 1252
    .local p0, "this":Ljava/util/HashMap$Values;, "Ljava/util/HashMap<TK;TV;>.Values;"
    iget-object v0, p0, Ljava/util/HashMap$Values;->this$0:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final forEach(Ljava/util/function/Consumer;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1262
    .local p0, "this":Ljava/util/HashMap$Values;, "Ljava/util/HashMap<TK;TV;>.Values;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TV;>;"
    if-nez p1, :cond_0

    .line 1263
    new-instance v4, Ljava/lang/NullPointerException;

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    throw v4

    .line 1264
    :cond_0
    iget-object v4, p0, Ljava/util/HashMap$Values;->this$0:Ljava/util/HashMap;

    iget v4, v4, Ljava/util/HashMap;->size:I

    if-lez v4, :cond_3

    iget-object v4, p0, Ljava/util/HashMap$Values;->this$0:Ljava/util/HashMap;

    iget-object v3, v4, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    .local v3, "tab":[Ljava/util/HashMap$HashMapEntry;, "[Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    if-eqz v3, :cond_3

    .line 1265
    iget-object v4, p0, Ljava/util/HashMap$Values;->this$0:Ljava/util/HashMap;

    iget v2, v4, Ljava/util/HashMap;->modCount:I

    .line 1266
    .local v2, "mc":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_3

    .line 1267
    aget-object v0, v3, v1

    .local v0, "e":Ljava/util/HashMap$HashMapEntry;, "Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    :goto_1
    if-eqz v0, :cond_2

    .line 1268
    iget-object v4, v0, Ljava/util/HashMap$HashMapEntry;->value:Ljava/lang/Object;

    invoke-interface {p1, v4}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1271
    iget-object v4, p0, Ljava/util/HashMap$Values;->this$0:Ljava/util/HashMap;

    iget v4, v4, Ljava/util/HashMap;->modCount:I

    if-eq v4, v2, :cond_1

    .line 1272
    new-instance v4, Ljava/util/ConcurrentModificationException;

    invoke-direct {v4}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v4

    .line 1267
    :cond_1
    iget-object v0, v0, Ljava/util/HashMap$HashMapEntry;->next:Ljava/util/HashMap$HashMapEntry;

    goto :goto_1

    .line 1266
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1260
    .end local v0    # "e":Ljava/util/HashMap$HashMapEntry;, "Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    .end local v1    # "i":I
    .end local v2    # "mc":I
    .end local v3    # "tab":[Ljava/util/HashMap$HashMapEntry;, "[Ljava/util/HashMap$HashMapEntry<TK;TV;>;"
    :cond_3
    return-void
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 1246
    .local p0, "this":Ljava/util/HashMap$Values;, "Ljava/util/HashMap<TK;TV;>.Values;"
    iget-object v0, p0, Ljava/util/HashMap$Values;->this$0:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->newValueIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 1249
    .local p0, "this":Ljava/util/HashMap$Values;, "Ljava/util/HashMap<TK;TV;>.Values;"
    iget-object v0, p0, Ljava/util/HashMap$Values;->this$0:Ljava/util/HashMap;

    iget v0, v0, Ljava/util/HashMap;->size:I

    return v0
.end method

.method public final spliterator()Ljava/util/Spliterator;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/HashMap$Values;, "Ljava/util/HashMap<TK;TV;>.Values;"
    const/4 v2, 0x0

    .line 1258
    new-instance v0, Ljava/util/HashMap$ValueSpliterator;

    iget-object v1, p0, Ljava/util/HashMap$Values;->this$0:Ljava/util/HashMap;

    const/4 v3, -0x1

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Ljava/util/HashMap$ValueSpliterator;-><init>(Ljava/util/HashMap;IIII)V

    return-object v0
.end method
