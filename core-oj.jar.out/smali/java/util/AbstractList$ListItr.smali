.class Ljava/util/AbstractList$ListItr;
.super Ljava/util/AbstractList$Itr;
.source "AbstractList.java"

# interfaces
.implements Ljava/util/ListIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/AbstractList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListItr"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList",
        "<TE;>.Itr;",
        "Ljava/util/ListIterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljava/util/AbstractList;


# direct methods
.method constructor <init>(Ljava/util/AbstractList;I)V
    .locals 1
    .param p2, "index"    # I

    .prologue
    .line 391
    .local p0, "this":Ljava/util/AbstractList$ListItr;, "Ljava/util/AbstractList<TE;>.ListItr;"
    .local p1, "this$0":Ljava/util/AbstractList;, "Ljava/util/AbstractList<TE;>;"
    iput-object p1, p0, Ljava/util/AbstractList$ListItr;->this$0:Ljava/util/AbstractList;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/util/AbstractList$Itr;-><init>(Ljava/util/AbstractList;Ljava/util/AbstractList$Itr;)V

    .line 392
    iput p2, p0, Ljava/util/AbstractList$ListItr;->cursor:I

    .line 391
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 434
    .local p0, "this":Ljava/util/AbstractList$ListItr;, "Ljava/util/AbstractList<TE;>.ListItr;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Ljava/util/AbstractList$ListItr;->checkForComodification()V

    .line 437
    :try_start_0
    iget v1, p0, Ljava/util/AbstractList$ListItr;->cursor:I

    .line 438
    .local v1, "i":I
    iget-object v2, p0, Ljava/util/AbstractList$ListItr;->this$0:Ljava/util/AbstractList;

    invoke-virtual {v2, v1, p1}, Ljava/util/AbstractList;->add(ILjava/lang/Object;)V

    .line 439
    const/4 v2, -0x1

    iput v2, p0, Ljava/util/AbstractList$ListItr;->lastRet:I

    .line 440
    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/util/AbstractList$ListItr;->cursor:I

    .line 441
    iget-object v2, p0, Ljava/util/AbstractList$ListItr;->this$0:Ljava/util/AbstractList;

    iget v2, v2, Ljava/util/AbstractList;->modCount:I

    iput v2, p0, Ljava/util/AbstractList$ListItr;->expectedModCount:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 433
    return-void

    .line 442
    .end local v1    # "i":I
    :catch_0
    move-exception v0

    .line 443
    .local v0, "ex":Ljava/lang/IndexOutOfBoundsException;
    new-instance v2, Ljava/util/ConcurrentModificationException;

    invoke-direct {v2}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v2
.end method

.method public hasPrevious()Z
    .locals 2

    .prologue
    .local p0, "this":Ljava/util/AbstractList$ListItr;, "Ljava/util/AbstractList<TE;>.ListItr;"
    const/4 v0, 0x0

    .line 396
    iget v1, p0, Ljava/util/AbstractList$ListItr;->cursor:I

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public nextIndex()I
    .locals 1

    .prologue
    .line 413
    .local p0, "this":Ljava/util/AbstractList$ListItr;, "Ljava/util/AbstractList<TE;>.ListItr;"
    iget v0, p0, Ljava/util/AbstractList$ListItr;->cursor:I

    return v0
.end method

.method public previous()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 400
    .local p0, "this":Ljava/util/AbstractList$ListItr;, "Ljava/util/AbstractList<TE;>.ListItr;"
    invoke-virtual {p0}, Ljava/util/AbstractList$ListItr;->checkForComodification()V

    .line 402
    :try_start_0
    iget v3, p0, Ljava/util/AbstractList$ListItr;->cursor:I

    add-int/lit8 v1, v3, -0x1

    .line 403
    .local v1, "i":I
    iget-object v3, p0, Ljava/util/AbstractList$ListItr;->this$0:Ljava/util/AbstractList;

    invoke-virtual {v3, v1}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 404
    .local v2, "previous":Ljava/lang/Object;, "TE;"
    iput v1, p0, Ljava/util/AbstractList$ListItr;->cursor:I

    iput v1, p0, Ljava/util/AbstractList$ListItr;->lastRet:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 405
    return-object v2

    .line 406
    .end local v1    # "i":I
    .end local v2    # "previous":Ljava/lang/Object;, "TE;"
    :catch_0
    move-exception v0

    .line 407
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    invoke-virtual {p0}, Ljava/util/AbstractList$ListItr;->checkForComodification()V

    .line 408
    new-instance v3, Ljava/util/NoSuchElementException;

    invoke-direct {v3}, Ljava/util/NoSuchElementException;-><init>()V

    throw v3
.end method

.method public previousIndex()I
    .locals 1

    .prologue
    .line 417
    .local p0, "this":Ljava/util/AbstractList$ListItr;, "Ljava/util/AbstractList<TE;>.ListItr;"
    iget v0, p0, Ljava/util/AbstractList$ListItr;->cursor:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public set(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 421
    .local p0, "this":Ljava/util/AbstractList$ListItr;, "Ljava/util/AbstractList<TE;>.ListItr;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget v1, p0, Ljava/util/AbstractList$ListItr;->lastRet:I

    if-gez v1, :cond_0

    .line 422
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 423
    :cond_0
    invoke-virtual {p0}, Ljava/util/AbstractList$ListItr;->checkForComodification()V

    .line 426
    :try_start_0
    iget-object v1, p0, Ljava/util/AbstractList$ListItr;->this$0:Ljava/util/AbstractList;

    iget v2, p0, Ljava/util/AbstractList$ListItr;->lastRet:I

    invoke-virtual {v1, v2, p1}, Ljava/util/AbstractList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 427
    iget-object v1, p0, Ljava/util/AbstractList$ListItr;->this$0:Ljava/util/AbstractList;

    iget v1, v1, Ljava/util/AbstractList;->modCount:I

    iput v1, p0, Ljava/util/AbstractList$ListItr;->expectedModCount:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 420
    return-void

    .line 428
    :catch_0
    move-exception v0

    .line 429
    .local v0, "ex":Ljava/lang/IndexOutOfBoundsException;
    new-instance v1, Ljava/util/ConcurrentModificationException;

    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v1
.end method
