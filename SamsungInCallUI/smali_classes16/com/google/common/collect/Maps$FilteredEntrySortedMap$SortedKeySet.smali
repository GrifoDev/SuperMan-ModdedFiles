.class Lcom/google/common/collect/Maps$FilteredEntrySortedMap$SortedKeySet;
.super Lcom/google/common/collect/Maps$FilteredEntryMap$KeySet;
.source "Maps.java"

# interfaces
.implements Ljava/util/SortedSet;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Maps$FilteredEntrySortedMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SortedKeySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Maps$FilteredEntryMap",
        "<TK;TV;>.KeySet;",
        "Ljava/util/SortedSet",
        "<TK;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/Maps$FilteredEntrySortedMap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/Maps$FilteredEntrySortedMap;)V
    .locals 0

    .prologue
    .line 2911
    .local p0, "this":Lcom/google/common/collect/Maps$FilteredEntrySortedMap$SortedKeySet;, "Lcom/google/common/collect/Maps$FilteredEntrySortedMap<TK;TV;>.SortedKeySet;"
    iput-object p1, p0, Lcom/google/common/collect/Maps$FilteredEntrySortedMap$SortedKeySet;->this$0:Lcom/google/common/collect/Maps$FilteredEntrySortedMap;

    invoke-direct {p0, p1}, Lcom/google/common/collect/Maps$FilteredEntryMap$KeySet;-><init>(Lcom/google/common/collect/Maps$FilteredEntryMap;)V

    return-void
.end method


# virtual methods
.method public comparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<-TK;>;"
        }
    .end annotation

    .prologue
    .line 2914
    .local p0, "this":Lcom/google/common/collect/Maps$FilteredEntrySortedMap$SortedKeySet;, "Lcom/google/common/collect/Maps$FilteredEntrySortedMap<TK;TV;>.SortedKeySet;"
    iget-object v0, p0, Lcom/google/common/collect/Maps$FilteredEntrySortedMap$SortedKeySet;->this$0:Lcom/google/common/collect/Maps$FilteredEntrySortedMap;

    invoke-virtual {v0}, Lcom/google/common/collect/Maps$FilteredEntrySortedMap;->sortedMap()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public first()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 2934
    .local p0, "this":Lcom/google/common/collect/Maps$FilteredEntrySortedMap$SortedKeySet;, "Lcom/google/common/collect/Maps$FilteredEntrySortedMap<TK;TV;>.SortedKeySet;"
    iget-object v0, p0, Lcom/google/common/collect/Maps$FilteredEntrySortedMap$SortedKeySet;->this$0:Lcom/google/common/collect/Maps$FilteredEntrySortedMap;

    invoke-virtual {v0}, Lcom/google/common/collect/Maps$FilteredEntrySortedMap;->firstKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public headSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/SortedSet",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 2924
    .local p0, "this":Lcom/google/common/collect/Maps$FilteredEntrySortedMap$SortedKeySet;, "Lcom/google/common/collect/Maps$FilteredEntrySortedMap<TK;TV;>.SortedKeySet;"
    .local p1, "toElement":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lcom/google/common/collect/Maps$FilteredEntrySortedMap$SortedKeySet;->this$0:Lcom/google/common/collect/Maps$FilteredEntrySortedMap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/Maps$FilteredEntrySortedMap;->headMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->keySet()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/util/SortedSet;

    return-object v0
.end method

.method public last()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 2939
    .local p0, "this":Lcom/google/common/collect/Maps$FilteredEntrySortedMap$SortedKeySet;, "Lcom/google/common/collect/Maps$FilteredEntrySortedMap<TK;TV;>.SortedKeySet;"
    iget-object v0, p0, Lcom/google/common/collect/Maps$FilteredEntrySortedMap$SortedKeySet;->this$0:Lcom/google/common/collect/Maps$FilteredEntrySortedMap;

    invoke-virtual {v0}, Lcom/google/common/collect/Maps$FilteredEntrySortedMap;->lastKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TK;)",
            "Ljava/util/SortedSet",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 2919
    .local p0, "this":Lcom/google/common/collect/Maps$FilteredEntrySortedMap$SortedKeySet;, "Lcom/google/common/collect/Maps$FilteredEntrySortedMap<TK;TV;>.SortedKeySet;"
    .local p1, "fromElement":Ljava/lang/Object;, "TK;"
    .local p2, "toElement":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lcom/google/common/collect/Maps$FilteredEntrySortedMap$SortedKeySet;->this$0:Lcom/google/common/collect/Maps$FilteredEntrySortedMap;

    invoke-virtual {v0, p1, p2}, Lcom/google/common/collect/Maps$FilteredEntrySortedMap;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->keySet()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/util/SortedSet;

    return-object v0
.end method

.method public tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/SortedSet",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 2929
    .local p0, "this":Lcom/google/common/collect/Maps$FilteredEntrySortedMap$SortedKeySet;, "Lcom/google/common/collect/Maps$FilteredEntrySortedMap<TK;TV;>.SortedKeySet;"
    .local p1, "fromElement":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lcom/google/common/collect/Maps$FilteredEntrySortedMap$SortedKeySet;->this$0:Lcom/google/common/collect/Maps$FilteredEntrySortedMap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/Maps$FilteredEntrySortedMap;->tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->keySet()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/util/SortedSet;

    return-object v0
.end method
