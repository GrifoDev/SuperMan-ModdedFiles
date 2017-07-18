.class Ljava/util/ArrayList$ListItr;
.super Ljava/util/ArrayList$Itr;
.source "ArrayList.java"

# interfaces
.implements Ljava/util/ListIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListItr"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<TE;>.Itr;",
        "Ljava/util/ListIterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Ljava/util/ArrayList;I)V
    .locals 1

    iput-object p1, p0, Ljava/util/ArrayList$ListItr;->this$0:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/util/ArrayList$Itr;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList$Itr;)V

    iput p2, p0, Ljava/util/ArrayList$ListItr;->cursor:I

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

    iget-object v2, p0, Ljava/util/ArrayList$ListItr;->this$0:Ljava/util/ArrayList;

    iget v2, v2, Ljava/util/ArrayList;->modCount:I

    iget v3, p0, Ljava/util/ArrayList$ListItr;->expectedModCount:I

    if-eq v2, v3, :cond_0

    new-instance v2, Ljava/util/ConcurrentModificationException;

    invoke-direct {v2}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v2

    :cond_0
    :try_start_0
    iget v1, p0, Ljava/util/ArrayList$ListItr;->cursor:I

    iget-object v2, p0, Ljava/util/ArrayList$ListItr;->this$0:Ljava/util/ArrayList;

    invoke-virtual {v2, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/util/ArrayList$ListItr;->cursor:I

    const/4 v2, -0x1

    iput v2, p0, Ljava/util/ArrayList$ListItr;->lastRet:I

    iget-object v2, p0, Ljava/util/ArrayList$ListItr;->this$0:Ljava/util/ArrayList;

    iget v2, v2, Ljava/util/ArrayList;->modCount:I

    iput v2, p0, Ljava/util/ArrayList$ListItr;->expectedModCount:I

    iget v2, p0, Ljava/util/ArrayList$ListItr;->limit:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ljava/util/ArrayList$ListItr;->limit:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v2, Ljava/util/ConcurrentModificationException;

    invoke-direct {v2}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v2
.end method

.method public hasPrevious()Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Ljava/util/ArrayList$ListItr;->cursor:I

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public nextIndex()I
    .locals 1

    iget v0, p0, Ljava/util/ArrayList$ListItr;->cursor:I

    return v0
.end method

.method public previous()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    iget-object v2, p0, Ljava/util/ArrayList$ListItr;->this$0:Ljava/util/ArrayList;

    iget v2, v2, Ljava/util/ArrayList;->modCount:I

    iget v3, p0, Ljava/util/ArrayList$ListItr;->expectedModCount:I

    if-eq v2, v3, :cond_0

    new-instance v2, Ljava/util/ConcurrentModificationException;

    invoke-direct {v2}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v2

    :cond_0
    iget v2, p0, Ljava/util/ArrayList$ListItr;->cursor:I

    add-int/lit8 v1, v2, -0x1

    if-gez v1, :cond_1

    new-instance v2, Ljava/util/NoSuchElementException;

    invoke-direct {v2}, Ljava/util/NoSuchElementException;-><init>()V

    throw v2

    :cond_1
    iget-object v2, p0, Ljava/util/ArrayList$ListItr;->this$0:Ljava/util/ArrayList;

    iget-object v0, v2, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    array-length v2, v0

    if-lt v1, v2, :cond_2

    new-instance v2, Ljava/util/ConcurrentModificationException;

    invoke-direct {v2}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v2

    :cond_2
    iput v1, p0, Ljava/util/ArrayList$ListItr;->cursor:I

    iput v1, p0, Ljava/util/ArrayList$ListItr;->lastRet:I

    aget-object v2, v0, v1

    return-object v2
.end method

.method public previousIndex()I
    .locals 1

    iget v0, p0, Ljava/util/ArrayList$ListItr;->cursor:I

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

    iget v1, p0, Ljava/util/ArrayList$ListItr;->lastRet:I

    if-gez v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    :cond_0
    iget-object v1, p0, Ljava/util/ArrayList$ListItr;->this$0:Ljava/util/ArrayList;

    iget v1, v1, Ljava/util/ArrayList;->modCount:I

    iget v2, p0, Ljava/util/ArrayList$ListItr;->expectedModCount:I

    if-eq v1, v2, :cond_1

    new-instance v1, Ljava/util/ConcurrentModificationException;

    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v1

    :cond_1
    :try_start_0
    iget-object v1, p0, Ljava/util/ArrayList$ListItr;->this$0:Ljava/util/ArrayList;

    iget v2, p0, Ljava/util/ArrayList$ListItr;->lastRet:I

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
