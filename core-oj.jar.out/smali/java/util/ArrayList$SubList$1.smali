.class Ljava/util/ArrayList$SubList$1;
.super Ljava/lang/Object;
.source "ArrayList.java"

# interfaces
.implements Ljava/util/ListIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/ArrayList$SubList;->listIterator(I)Ljava/util/ListIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/ListIterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field cursor:I

.field expectedModCount:I

.field lastRet:I

.field final synthetic this$1:Ljava/util/ArrayList$SubList;

.field final synthetic val$index:I

.field final synthetic val$offset:I


# direct methods
.method constructor <init>(Ljava/util/ArrayList$SubList;II)V
    .locals 1

    iput-object p1, p0, Ljava/util/ArrayList$SubList$1;->this$1:Ljava/util/ArrayList$SubList;

    iput p2, p0, Ljava/util/ArrayList$SubList$1;->val$index:I

    iput p3, p0, Ljava/util/ArrayList$SubList$1;->val$offset:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p0, Ljava/util/ArrayList$SubList$1;->val$index:I

    iput v0, p0, Ljava/util/ArrayList$SubList$1;->cursor:I

    const/4 v0, -0x1

    iput v0, p0, Ljava/util/ArrayList$SubList$1;->lastRet:I

    iget-object v0, p0, Ljava/util/ArrayList$SubList$1;->this$1:Ljava/util/ArrayList$SubList;

    iget-object v0, v0, Ljava/util/ArrayList$SubList;->this$0:Ljava/util/ArrayList;

    iget v0, v0, Ljava/util/ArrayList;->modCount:I

    iput v0, p0, Ljava/util/ArrayList$SubList$1;->expectedModCount:I

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    iget v2, p0, Ljava/util/ArrayList$SubList$1;->expectedModCount:I

    iget-object v3, p0, Ljava/util/ArrayList$SubList$1;->this$1:Ljava/util/ArrayList$SubList;

    iget-object v3, v3, Ljava/util/ArrayList$SubList;->this$0:Ljava/util/ArrayList;

    iget v3, v3, Ljava/util/ArrayList;->modCount:I

    if-eq v2, v3, :cond_0

    new-instance v2, Ljava/util/ConcurrentModificationException;

    invoke-direct {v2}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v2

    :cond_0
    :try_start_0
    iget v1, p0, Ljava/util/ArrayList$SubList$1;->cursor:I

    iget-object v2, p0, Ljava/util/ArrayList$SubList$1;->this$1:Ljava/util/ArrayList$SubList;

    invoke-virtual {v2, v1, p1}, Ljava/util/ArrayList$SubList;->add(ILjava/lang/Object;)V

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/util/ArrayList$SubList$1;->cursor:I

    const/4 v2, -0x1

    iput v2, p0, Ljava/util/ArrayList$SubList$1;->lastRet:I

    iget-object v2, p0, Ljava/util/ArrayList$SubList$1;->this$1:Ljava/util/ArrayList$SubList;

    iget-object v2, v2, Ljava/util/ArrayList$SubList;->this$0:Ljava/util/ArrayList;

    iget v2, v2, Ljava/util/ArrayList;->modCount:I

    iput v2, p0, Ljava/util/ArrayList$SubList$1;->expectedModCount:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v2, Ljava/util/ConcurrentModificationException;

    invoke-direct {v2}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v2
.end method

.method public forEachRemaining(Ljava/util/function/Consumer;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-TE;>;)V"
        }
    .end annotation

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Ljava/util/ArrayList$SubList$1;->this$1:Ljava/util/ArrayList$SubList;

    iget v3, v4, Ljava/util/ArrayList$SubList;->size:I

    iget v1, p0, Ljava/util/ArrayList$SubList$1;->cursor:I

    if-lt v1, v3, :cond_0

    return-void

    :cond_0
    iget-object v4, p0, Ljava/util/ArrayList$SubList$1;->this$1:Ljava/util/ArrayList$SubList;

    iget-object v4, v4, Ljava/util/ArrayList$SubList;->this$0:Ljava/util/ArrayList;

    iget-object v0, v4, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    iget v4, p0, Ljava/util/ArrayList$SubList$1;->val$offset:I

    add-int/2addr v4, v1

    array-length v5, v0

    if-lt v4, v5, :cond_1

    new-instance v4, Ljava/util/ConcurrentModificationException;

    invoke-direct {v4}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v4

    :goto_0
    if-eq v2, v3, :cond_2

    iget-object v4, p0, Ljava/util/ArrayList$SubList$1;->this$1:Ljava/util/ArrayList$SubList;

    iget v4, v4, Ljava/util/ArrayList$SubList;->modCount:I

    iget v5, p0, Ljava/util/ArrayList$SubList$1;->expectedModCount:I

    if-ne v4, v5, :cond_2

    iget v4, p0, Ljava/util/ArrayList$SubList$1;->val$offset:I

    add-int/lit8 v1, v2, 0x1

    add-int/2addr v4, v2

    aget-object v4, v0, v4

    invoke-interface {p1, v4}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_1
    move v2, v1

    goto :goto_0

    :cond_2
    iput v2, p0, Ljava/util/ArrayList$SubList$1;->cursor:I

    iput v2, p0, Ljava/util/ArrayList$SubList$1;->lastRet:I

    iget v4, p0, Ljava/util/ArrayList$SubList$1;->expectedModCount:I

    iget-object v5, p0, Ljava/util/ArrayList$SubList$1;->this$1:Ljava/util/ArrayList$SubList;

    iget-object v5, v5, Ljava/util/ArrayList$SubList;->this$0:Ljava/util/ArrayList;

    iget v5, v5, Ljava/util/ArrayList;->modCount:I

    if-eq v4, v5, :cond_3

    new-instance v4, Ljava/util/ConcurrentModificationException;

    invoke-direct {v4}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v4

    :cond_3
    return-void
.end method

.method public hasNext()Z
    .locals 2

    iget v0, p0, Ljava/util/ArrayList$SubList$1;->cursor:I

    iget-object v1, p0, Ljava/util/ArrayList$SubList$1;->this$1:Ljava/util/ArrayList$SubList;

    iget v1, v1, Ljava/util/ArrayList$SubList;->size:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPrevious()Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Ljava/util/ArrayList$SubList$1;->cursor:I

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    iget v2, p0, Ljava/util/ArrayList$SubList$1;->expectedModCount:I

    iget-object v3, p0, Ljava/util/ArrayList$SubList$1;->this$1:Ljava/util/ArrayList$SubList;

    iget-object v3, v3, Ljava/util/ArrayList$SubList;->this$0:Ljava/util/ArrayList;

    iget v3, v3, Ljava/util/ArrayList;->modCount:I

    if-eq v2, v3, :cond_0

    new-instance v2, Ljava/util/ConcurrentModificationException;

    invoke-direct {v2}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v2

    :cond_0
    iget v1, p0, Ljava/util/ArrayList$SubList$1;->cursor:I

    iget-object v2, p0, Ljava/util/ArrayList$SubList$1;->this$1:Ljava/util/ArrayList$SubList;

    iget v2, v2, Ljava/util/ArrayList$SubList;->size:I

    if-lt v1, v2, :cond_1

    new-instance v2, Ljava/util/NoSuchElementException;

    invoke-direct {v2}, Ljava/util/NoSuchElementException;-><init>()V

    throw v2

    :cond_1
    iget-object v2, p0, Ljava/util/ArrayList$SubList$1;->this$1:Ljava/util/ArrayList$SubList;

    iget-object v2, v2, Ljava/util/ArrayList$SubList;->this$0:Ljava/util/ArrayList;

    iget-object v0, v2, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    iget v2, p0, Ljava/util/ArrayList$SubList$1;->val$offset:I

    add-int/2addr v2, v1

    array-length v3, v0

    if-lt v2, v3, :cond_2

    new-instance v2, Ljava/util/ConcurrentModificationException;

    invoke-direct {v2}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v2

    :cond_2
    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/util/ArrayList$SubList$1;->cursor:I

    iget v2, p0, Ljava/util/ArrayList$SubList$1;->val$offset:I

    iput v1, p0, Ljava/util/ArrayList$SubList$1;->lastRet:I

    add-int/2addr v2, v1

    aget-object v2, v0, v2

    return-object v2
.end method

.method public nextIndex()I
    .locals 1

    iget v0, p0, Ljava/util/ArrayList$SubList$1;->cursor:I

    return v0
.end method

.method public previous()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    iget v2, p0, Ljava/util/ArrayList$SubList$1;->expectedModCount:I

    iget-object v3, p0, Ljava/util/ArrayList$SubList$1;->this$1:Ljava/util/ArrayList$SubList;

    iget-object v3, v3, Ljava/util/ArrayList$SubList;->this$0:Ljava/util/ArrayList;

    iget v3, v3, Ljava/util/ArrayList;->modCount:I

    if-eq v2, v3, :cond_0

    new-instance v2, Ljava/util/ConcurrentModificationException;

    invoke-direct {v2}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v2

    :cond_0
    iget v2, p0, Ljava/util/ArrayList$SubList$1;->cursor:I

    add-int/lit8 v1, v2, -0x1

    if-gez v1, :cond_1

    new-instance v2, Ljava/util/NoSuchElementException;

    invoke-direct {v2}, Ljava/util/NoSuchElementException;-><init>()V

    throw v2

    :cond_1
    iget-object v2, p0, Ljava/util/ArrayList$SubList$1;->this$1:Ljava/util/ArrayList$SubList;

    iget-object v2, v2, Ljava/util/ArrayList$SubList;->this$0:Ljava/util/ArrayList;

    iget-object v0, v2, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    iget v2, p0, Ljava/util/ArrayList$SubList$1;->val$offset:I

    add-int/2addr v2, v1

    array-length v3, v0

    if-lt v2, v3, :cond_2

    new-instance v2, Ljava/util/ConcurrentModificationException;

    invoke-direct {v2}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v2

    :cond_2
    iput v1, p0, Ljava/util/ArrayList$SubList$1;->cursor:I

    iget v2, p0, Ljava/util/ArrayList$SubList$1;->val$offset:I

    iput v1, p0, Ljava/util/ArrayList$SubList$1;->lastRet:I

    add-int/2addr v2, v1

    aget-object v2, v0, v2

    return-object v2
.end method

.method public previousIndex()I
    .locals 1

    iget v0, p0, Ljava/util/ArrayList$SubList$1;->cursor:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public remove()V
    .locals 3

    iget v1, p0, Ljava/util/ArrayList$SubList$1;->lastRet:I

    if-gez v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    :cond_0
    iget v1, p0, Ljava/util/ArrayList$SubList$1;->expectedModCount:I

    iget-object v2, p0, Ljava/util/ArrayList$SubList$1;->this$1:Ljava/util/ArrayList$SubList;

    iget-object v2, v2, Ljava/util/ArrayList$SubList;->this$0:Ljava/util/ArrayList;

    iget v2, v2, Ljava/util/ArrayList;->modCount:I

    if-eq v1, v2, :cond_1

    new-instance v1, Ljava/util/ConcurrentModificationException;

    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v1

    :cond_1
    :try_start_0
    iget-object v1, p0, Ljava/util/ArrayList$SubList$1;->this$1:Ljava/util/ArrayList$SubList;

    iget v2, p0, Ljava/util/ArrayList$SubList$1;->lastRet:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList$SubList;->remove(I)Ljava/lang/Object;

    iget v1, p0, Ljava/util/ArrayList$SubList$1;->lastRet:I

    iput v1, p0, Ljava/util/ArrayList$SubList$1;->cursor:I

    const/4 v1, -0x1

    iput v1, p0, Ljava/util/ArrayList$SubList$1;->lastRet:I

    iget-object v1, p0, Ljava/util/ArrayList$SubList$1;->this$1:Ljava/util/ArrayList$SubList;

    iget-object v1, v1, Ljava/util/ArrayList$SubList;->this$0:Ljava/util/ArrayList;

    iget v1, v1, Ljava/util/ArrayList;->modCount:I

    iput v1, p0, Ljava/util/ArrayList$SubList$1;->expectedModCount:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/util/ConcurrentModificationException;

    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v1
.end method

.method public set(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    iget v1, p0, Ljava/util/ArrayList$SubList$1;->lastRet:I

    if-gez v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    :cond_0
    iget v1, p0, Ljava/util/ArrayList$SubList$1;->expectedModCount:I

    iget-object v2, p0, Ljava/util/ArrayList$SubList$1;->this$1:Ljava/util/ArrayList$SubList;

    iget-object v2, v2, Ljava/util/ArrayList$SubList;->this$0:Ljava/util/ArrayList;

    iget v2, v2, Ljava/util/ArrayList;->modCount:I

    if-eq v1, v2, :cond_1

    new-instance v1, Ljava/util/ConcurrentModificationException;

    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v1

    :cond_1
    :try_start_0
    iget-object v1, p0, Ljava/util/ArrayList$SubList$1;->this$1:Ljava/util/ArrayList$SubList;

    iget-object v1, v1, Ljava/util/ArrayList$SubList;->this$0:Ljava/util/ArrayList;

    iget v2, p0, Ljava/util/ArrayList$SubList$1;->val$offset:I

    iget v3, p0, Ljava/util/ArrayList$SubList$1;->lastRet:I

    add-int/2addr v2, v3

    invoke-virtual {v1, v2, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/util/ConcurrentModificationException;

    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v1
.end method
