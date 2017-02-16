.class abstract Ljava/util/TreeMap$PrivateEntryIterator;
.super Ljava/lang/Object;
.source "TreeMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/TreeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "PrivateEntryIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field expectedModCount:I

.field lastReturned:Ljava/util/TreeMap$TreeMapEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap$TreeMapEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field next:Ljava/util/TreeMap$TreeMapEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap$TreeMapEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Ljava/util/TreeMap;


# direct methods
.method constructor <init>(Ljava/util/TreeMap;Ljava/util/TreeMap$TreeMapEntry;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap$TreeMapEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1217
    .local p0, "this":Ljava/util/TreeMap$PrivateEntryIterator;, "Ljava/util/TreeMap<TK;TV;>.PrivateEntryIterator<TT;>;"
    .local p1, "this$0":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p2, "first":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    iput-object p1, p0, Ljava/util/TreeMap$PrivateEntryIterator;->this$0:Ljava/util/TreeMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1218
    invoke-static {p1}, Ljava/util/TreeMap;->-get2(Ljava/util/TreeMap;)I

    move-result v0

    iput v0, p0, Ljava/util/TreeMap$PrivateEntryIterator;->expectedModCount:I

    .line 1219
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/TreeMap$PrivateEntryIterator;->lastReturned:Ljava/util/TreeMap$TreeMapEntry;

    .line 1220
    iput-object p2, p0, Ljava/util/TreeMap$PrivateEntryIterator;->next:Ljava/util/TreeMap$TreeMapEntry;

    .line 1217
    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    .prologue
    .line 1224
    .local p0, "this":Ljava/util/TreeMap$PrivateEntryIterator;, "Ljava/util/TreeMap<TK;TV;>.PrivateEntryIterator<TT;>;"
    iget-object v0, p0, Ljava/util/TreeMap$PrivateEntryIterator;->next:Ljava/util/TreeMap$TreeMapEntry;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final nextEntry()Ljava/util/TreeMap$TreeMapEntry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/TreeMap$TreeMapEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1228
    .local p0, "this":Ljava/util/TreeMap$PrivateEntryIterator;, "Ljava/util/TreeMap<TK;TV;>.PrivateEntryIterator<TT;>;"
    iget-object v0, p0, Ljava/util/TreeMap$PrivateEntryIterator;->next:Ljava/util/TreeMap$TreeMapEntry;

    .line 1229
    .local v0, "e":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    if-nez v0, :cond_0

    .line 1230
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 1231
    :cond_0
    iget-object v1, p0, Ljava/util/TreeMap$PrivateEntryIterator;->this$0:Ljava/util/TreeMap;

    invoke-static {v1}, Ljava/util/TreeMap;->-get2(Ljava/util/TreeMap;)I

    move-result v1

    iget v2, p0, Ljava/util/TreeMap$PrivateEntryIterator;->expectedModCount:I

    if-eq v1, v2, :cond_1

    .line 1232
    new-instance v1, Ljava/util/ConcurrentModificationException;

    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v1

    .line 1233
    :cond_1
    invoke-static {v0}, Ljava/util/TreeMap;->successor(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v1

    iput-object v1, p0, Ljava/util/TreeMap$PrivateEntryIterator;->next:Ljava/util/TreeMap$TreeMapEntry;

    .line 1234
    iput-object v0, p0, Ljava/util/TreeMap$PrivateEntryIterator;->lastReturned:Ljava/util/TreeMap$TreeMapEntry;

    .line 1235
    return-object v0
.end method

.method final prevEntry()Ljava/util/TreeMap$TreeMapEntry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/TreeMap$TreeMapEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1239
    .local p0, "this":Ljava/util/TreeMap$PrivateEntryIterator;, "Ljava/util/TreeMap<TK;TV;>.PrivateEntryIterator<TT;>;"
    iget-object v0, p0, Ljava/util/TreeMap$PrivateEntryIterator;->next:Ljava/util/TreeMap$TreeMapEntry;

    .line 1240
    .local v0, "e":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    if-nez v0, :cond_0

    .line 1241
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 1242
    :cond_0
    iget-object v1, p0, Ljava/util/TreeMap$PrivateEntryIterator;->this$0:Ljava/util/TreeMap;

    invoke-static {v1}, Ljava/util/TreeMap;->-get2(Ljava/util/TreeMap;)I

    move-result v1

    iget v2, p0, Ljava/util/TreeMap$PrivateEntryIterator;->expectedModCount:I

    if-eq v1, v2, :cond_1

    .line 1243
    new-instance v1, Ljava/util/ConcurrentModificationException;

    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v1

    .line 1244
    :cond_1
    invoke-static {v0}, Ljava/util/TreeMap;->predecessor(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v1

    iput-object v1, p0, Ljava/util/TreeMap$PrivateEntryIterator;->next:Ljava/util/TreeMap$TreeMapEntry;

    .line 1245
    iput-object v0, p0, Ljava/util/TreeMap$PrivateEntryIterator;->lastReturned:Ljava/util/TreeMap$TreeMapEntry;

    .line 1246
    return-object v0
.end method

.method public remove()V
    .locals 3

    .prologue
    .local p0, "this":Ljava/util/TreeMap$PrivateEntryIterator;, "Ljava/util/TreeMap<TK;TV;>.PrivateEntryIterator<TT;>;"
    const/4 v2, 0x0

    .line 1250
    iget-object v0, p0, Ljava/util/TreeMap$PrivateEntryIterator;->lastReturned:Ljava/util/TreeMap$TreeMapEntry;

    if-nez v0, :cond_0

    .line 1251
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 1252
    :cond_0
    iget-object v0, p0, Ljava/util/TreeMap$PrivateEntryIterator;->this$0:Ljava/util/TreeMap;

    invoke-static {v0}, Ljava/util/TreeMap;->-get2(Ljava/util/TreeMap;)I

    move-result v0

    iget v1, p0, Ljava/util/TreeMap$PrivateEntryIterator;->expectedModCount:I

    if-eq v0, v1, :cond_1

    .line 1253
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 1255
    :cond_1
    iget-object v0, p0, Ljava/util/TreeMap$PrivateEntryIterator;->lastReturned:Ljava/util/TreeMap$TreeMapEntry;

    iget-object v0, v0, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    if-eqz v0, :cond_2

    iget-object v0, p0, Ljava/util/TreeMap$PrivateEntryIterator;->lastReturned:Ljava/util/TreeMap$TreeMapEntry;

    iget-object v0, v0, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    if-eqz v0, :cond_2

    .line 1256
    iget-object v0, p0, Ljava/util/TreeMap$PrivateEntryIterator;->lastReturned:Ljava/util/TreeMap$TreeMapEntry;

    iput-object v0, p0, Ljava/util/TreeMap$PrivateEntryIterator;->next:Ljava/util/TreeMap$TreeMapEntry;

    .line 1257
    :cond_2
    iget-object v0, p0, Ljava/util/TreeMap$PrivateEntryIterator;->this$0:Ljava/util/TreeMap;

    iget-object v1, p0, Ljava/util/TreeMap$PrivateEntryIterator;->lastReturned:Ljava/util/TreeMap$TreeMapEntry;

    invoke-static {v0, v1}, Ljava/util/TreeMap;->-wrap0(Ljava/util/TreeMap;Ljava/util/TreeMap$TreeMapEntry;)V

    .line 1258
    iget-object v0, p0, Ljava/util/TreeMap$PrivateEntryIterator;->this$0:Ljava/util/TreeMap;

    invoke-static {v0}, Ljava/util/TreeMap;->-get2(Ljava/util/TreeMap;)I

    move-result v0

    iput v0, p0, Ljava/util/TreeMap$PrivateEntryIterator;->expectedModCount:I

    .line 1259
    iput-object v2, p0, Ljava/util/TreeMap$PrivateEntryIterator;->lastReturned:Ljava/util/TreeMap$TreeMapEntry;

    .line 1249
    return-void
.end method
