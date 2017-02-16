.class Ljava/util/IdentityHashMap$EntryIterator;
.super Ljava/util/IdentityHashMap$IdentityHashMapIterator;
.source "IdentityHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/IdentityHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EntryIterator"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/IdentityHashMap$EntryIterator$Entry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/IdentityHashMap",
        "<TK;TV;>.IdentityHashMapIterator<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private lastReturnedEntry:Ljava/util/IdentityHashMap$EntryIterator$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/IdentityHashMap",
            "<TK;TV;>.EntryIterator.Entry;"
        }
    .end annotation
.end field

.field final synthetic this$0:Ljava/util/IdentityHashMap;


# direct methods
.method private constructor <init>(Ljava/util/IdentityHashMap;)V
    .locals 1

    .prologue
    .local p0, "this":Ljava/util/IdentityHashMap$EntryIterator;, "Ljava/util/IdentityHashMap<TK;TV;>.EntryIterator;"
    .local p1, "this$0":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<TK;TV;>;"
    const/4 v0, 0x0

    .line 842
    iput-object p1, p0, Ljava/util/IdentityHashMap$EntryIterator;->this$0:Ljava/util/IdentityHashMap;

    invoke-direct {p0, p1, v0}, Ljava/util/IdentityHashMap$IdentityHashMapIterator;-><init>(Ljava/util/IdentityHashMap;Ljava/util/IdentityHashMap$IdentityHashMapIterator;)V

    .line 845
    iput-object v0, p0, Ljava/util/IdentityHashMap$EntryIterator;->lastReturnedEntry:Ljava/util/IdentityHashMap$EntryIterator$Entry;

    .line 842
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/IdentityHashMap;Ljava/util/IdentityHashMap$EntryIterator;)V
    .locals 0
    .param p1, "this$0"    # Ljava/util/IdentityHashMap;

    .prologue
    .local p0, "this":Ljava/util/IdentityHashMap$EntryIterator;, "Ljava/util/IdentityHashMap<TK;TV;>.EntryIterator;"
    invoke-direct {p0, p1}, Ljava/util/IdentityHashMap$EntryIterator;-><init>(Ljava/util/IdentityHashMap;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 847
    .local p0, "this":Ljava/util/IdentityHashMap$EntryIterator;, "Ljava/util/IdentityHashMap<TK;TV;>.EntryIterator;"
    invoke-virtual {p0}, Ljava/util/IdentityHashMap$EntryIterator;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/Map$Entry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 848
    .local p0, "this":Ljava/util/IdentityHashMap$EntryIterator;, "Ljava/util/IdentityHashMap<TK;TV;>.EntryIterator;"
    new-instance v0, Ljava/util/IdentityHashMap$EntryIterator$Entry;

    invoke-virtual {p0}, Ljava/util/IdentityHashMap$EntryIterator;->nextIndex()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Ljava/util/IdentityHashMap$EntryIterator$Entry;-><init>(Ljava/util/IdentityHashMap$EntryIterator;ILjava/util/IdentityHashMap$EntryIterator$Entry;)V

    iput-object v0, p0, Ljava/util/IdentityHashMap$EntryIterator;->lastReturnedEntry:Ljava/util/IdentityHashMap$EntryIterator$Entry;

    .line 849
    iget-object v0, p0, Ljava/util/IdentityHashMap$EntryIterator;->lastReturnedEntry:Ljava/util/IdentityHashMap$EntryIterator$Entry;

    return-object v0
.end method

.method public remove()V
    .locals 3

    .prologue
    .local p0, "this":Ljava/util/IdentityHashMap$EntryIterator;, "Ljava/util/IdentityHashMap<TK;TV;>.EntryIterator;"
    const/4 v2, 0x0

    .line 854
    iget-object v0, p0, Ljava/util/IdentityHashMap$EntryIterator;->lastReturnedEntry:Ljava/util/IdentityHashMap$EntryIterator$Entry;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    .line 853
    :goto_0
    iput v0, p0, Ljava/util/IdentityHashMap$EntryIterator;->lastReturnedIndex:I

    .line 855
    invoke-super {p0}, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->remove()V

    .line 856
    iget-object v0, p0, Ljava/util/IdentityHashMap$EntryIterator;->lastReturnedEntry:Ljava/util/IdentityHashMap$EntryIterator$Entry;

    iget v1, p0, Ljava/util/IdentityHashMap$EntryIterator;->lastReturnedIndex:I

    invoke-static {v0, v1}, Ljava/util/IdentityHashMap$EntryIterator$Entry;->-set0(Ljava/util/IdentityHashMap$EntryIterator$Entry;I)I

    .line 857
    iput-object v2, p0, Ljava/util/IdentityHashMap$EntryIterator;->lastReturnedEntry:Ljava/util/IdentityHashMap$EntryIterator$Entry;

    .line 852
    return-void

    .line 854
    :cond_0
    iget-object v0, p0, Ljava/util/IdentityHashMap$EntryIterator;->lastReturnedEntry:Ljava/util/IdentityHashMap$EntryIterator$Entry;

    invoke-static {v0}, Ljava/util/IdentityHashMap$EntryIterator$Entry;->-get0(Ljava/util/IdentityHashMap$EntryIterator$Entry;)I

    move-result v0

    goto :goto_0
.end method
