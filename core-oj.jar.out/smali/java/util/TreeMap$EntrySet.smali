.class Ljava/util/TreeMap$EntrySet;
.super Ljava/util/AbstractSet;
.source "TreeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/TreeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljava/util/TreeMap;


# direct methods
.method constructor <init>(Ljava/util/TreeMap;)V
    .locals 0

    .prologue
    .line 1082
    .local p0, "this":Ljava/util/TreeMap$EntrySet;, "Ljava/util/TreeMap<TK;TV;>.EntrySet;"
    .local p1, "this$0":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    iput-object p1, p0, Ljava/util/TreeMap$EntrySet;->this$0:Ljava/util/TreeMap;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 1114
    .local p0, "this":Ljava/util/TreeMap$EntrySet;, "Ljava/util/TreeMap<TK;TV;>.EntrySet;"
    iget-object v0, p0, Ljava/util/TreeMap$EntrySet;->this$0:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->clear()V

    .line 1113
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Ljava/util/TreeMap$EntrySet;, "Ljava/util/TreeMap<TK;TV;>.EntrySet;"
    const/4 v3, 0x0

    .line 1088
    instance-of v4, p1, Ljava/util/Map$Entry;

    if-nez v4, :cond_0

    .line 1089
    return v3

    :cond_0
    move-object v0, p1

    .line 1090
    check-cast v0, Ljava/util/Map$Entry;

    .line 1091
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 1092
    .local v2, "value":Ljava/lang/Object;, "TV;"
    iget-object v4, p0, Ljava/util/TreeMap$EntrySet;->this$0:Ljava/util/TreeMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/TreeMap;->getEntry(Ljava/lang/Object;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v1

    .line 1093
    .local v1, "p":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/TreeMap$TreeMapEntry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, v2}, Ljava/util/TreeMap;->valEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    :cond_1
    return v3
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 1084
    .local p0, "this":Ljava/util/TreeMap$EntrySet;, "Ljava/util/TreeMap<TK;TV;>.EntrySet;"
    new-instance v0, Ljava/util/TreeMap$EntryIterator;

    iget-object v1, p0, Ljava/util/TreeMap$EntrySet;->this$0:Ljava/util/TreeMap;

    iget-object v2, p0, Ljava/util/TreeMap$EntrySet;->this$0:Ljava/util/TreeMap;

    invoke-virtual {v2}, Ljava/util/TreeMap;->getFirstEntry()Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/TreeMap$EntryIterator;-><init>(Ljava/util/TreeMap;Ljava/util/TreeMap$TreeMapEntry;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Ljava/util/TreeMap$EntrySet;, "Ljava/util/TreeMap<TK;TV;>.EntrySet;"
    const/4 v5, 0x0

    .line 1097
    instance-of v3, p1, Ljava/util/Map$Entry;

    if-nez v3, :cond_0

    .line 1098
    return v5

    :cond_0
    move-object v0, p1

    .line 1099
    check-cast v0, Ljava/util/Map$Entry;

    .line 1100
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 1101
    .local v2, "value":Ljava/lang/Object;, "TV;"
    iget-object v3, p0, Ljava/util/TreeMap$EntrySet;->this$0:Ljava/util/TreeMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/TreeMap;->getEntry(Ljava/lang/Object;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v1

    .line 1102
    .local v1, "p":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/TreeMap$TreeMapEntry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, v2}, Ljava/util/TreeMap;->valEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1103
    iget-object v3, p0, Ljava/util/TreeMap$EntrySet;->this$0:Ljava/util/TreeMap;

    invoke-static {v3, v1}, Ljava/util/TreeMap;->-wrap0(Ljava/util/TreeMap;Ljava/util/TreeMap$TreeMapEntry;)V

    .line 1104
    const/4 v3, 0x1

    return v3

    .line 1106
    :cond_1
    return v5
.end method

.method public size()I
    .locals 1

    .prologue
    .line 1110
    .local p0, "this":Ljava/util/TreeMap$EntrySet;, "Ljava/util/TreeMap<TK;TV;>.EntrySet;"
    iget-object v0, p0, Ljava/util/TreeMap$EntrySet;->this$0:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v0

    return v0
.end method

.method public spliterator()Ljava/util/Spliterator;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/TreeMap$EntrySet;, "Ljava/util/TreeMap<TK;TV;>.EntrySet;"
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 1118
    new-instance v0, Ljava/util/TreeMap$EntrySpliterator;

    iget-object v1, p0, Ljava/util/TreeMap$EntrySet;->this$0:Ljava/util/TreeMap;

    const/4 v5, -0x1

    move-object v3, v2

    move v6, v4

    invoke-direct/range {v0 .. v6}, Ljava/util/TreeMap$EntrySpliterator;-><init>(Ljava/util/TreeMap;Ljava/util/TreeMap$TreeMapEntry;Ljava/util/TreeMap$TreeMapEntry;III)V

    return-object v0
.end method
