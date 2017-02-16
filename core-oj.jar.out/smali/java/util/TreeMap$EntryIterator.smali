.class final Ljava/util/TreeMap$EntryIterator;
.super Ljava/util/TreeMap$PrivateEntryIterator;
.source "TreeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/TreeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "EntryIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/TreeMap",
        "<TK;TV;>.PrivateEntryIterator<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljava/util/TreeMap;


# direct methods
.method constructor <init>(Ljava/util/TreeMap;Ljava/util/TreeMap$TreeMapEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap$TreeMapEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1264
    .local p0, "this":Ljava/util/TreeMap$EntryIterator;, "Ljava/util/TreeMap<TK;TV;>.EntryIterator;"
    .local p1, "this$0":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p2, "first":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    iput-object p1, p0, Ljava/util/TreeMap$EntryIterator;->this$0:Ljava/util/TreeMap;

    .line 1265
    invoke-direct {p0, p1, p2}, Ljava/util/TreeMap$PrivateEntryIterator;-><init>(Ljava/util/TreeMap;Ljava/util/TreeMap$TreeMapEntry;)V

    .line 1264
    return-void
.end method


# virtual methods
.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1267
    .local p0, "this":Ljava/util/TreeMap$EntryIterator;, "Ljava/util/TreeMap<TK;TV;>.EntryIterator;"
    invoke-virtual {p0}, Ljava/util/TreeMap$EntryIterator;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1268
    .local p0, "this":Ljava/util/TreeMap$EntryIterator;, "Ljava/util/TreeMap<TK;TV;>.EntryIterator;"
    invoke-virtual {p0}, Ljava/util/TreeMap$EntryIterator;->nextEntry()Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v0

    return-object v0
.end method
