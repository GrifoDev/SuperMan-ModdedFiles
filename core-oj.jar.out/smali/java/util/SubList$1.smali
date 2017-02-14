.class Ljava/util/SubList$1;
.super Ljava/lang/Object;
.source "AbstractList.java"

# interfaces
.implements Ljava/util/ListIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/SubList;->listIterator(I)Ljava/util/ListIterator;
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
.field private final i:Ljava/util/ListIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ListIterator",
            "<TE;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Ljava/util/SubList;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Ljava/util/SubList;I)V
    .locals 3

    iput-object p1, p0, Ljava/util/SubList$1;->this$0:Ljava/util/SubList;

    iput p2, p0, Ljava/util/SubList$1;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p0, Ljava/util/SubList$1;->this$0:Ljava/util/SubList;

    invoke-static {v0}, Ljava/util/SubList;->-get0(Ljava/util/SubList;)Ljava/util/AbstractList;

    move-result-object v0

    iget v1, p0, Ljava/util/SubList$1;->val$index:I

    iget-object v2, p0, Ljava/util/SubList$1;->this$0:Ljava/util/SubList;

    invoke-static {v2}, Ljava/util/SubList;->-get1(Ljava/util/SubList;)I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/AbstractList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    iput-object v0, p0, Ljava/util/SubList$1;->i:Ljava/util/ListIterator;

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    iget-object v0, p0, Ljava/util/SubList$1;->i:Ljava/util/ListIterator;

    invoke-interface {v0, p1}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    iget-object v0, p0, Ljava/util/SubList$1;->this$0:Ljava/util/SubList;

    iget-object v1, p0, Ljava/util/SubList$1;->this$0:Ljava/util/SubList;

    invoke-static {v1}, Ljava/util/SubList;->-get0(Ljava/util/SubList;)Ljava/util/AbstractList;

    move-result-object v1

    iget v1, v1, Ljava/util/AbstractList;->modCount:I

    iput v1, v0, Ljava/util/SubList;->modCount:I

    iget-object v0, p0, Ljava/util/SubList$1;->this$0:Ljava/util/SubList;

    invoke-static {v0}, Ljava/util/SubList;->-get2(Ljava/util/SubList;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Ljava/util/SubList;->-set0(Ljava/util/SubList;I)I

    return-void
.end method

.method public hasNext()Z
    .locals 2

    invoke-virtual {p0}, Ljava/util/SubList$1;->nextIndex()I

    move-result v0

    iget-object v1, p0, Ljava/util/SubList$1;->this$0:Ljava/util/SubList;

    invoke-static {v1}, Ljava/util/SubList;->-get2(Ljava/util/SubList;)I

    move-result v1

    if-ge v0, v1, :cond_0

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

    invoke-virtual {p0}, Ljava/util/SubList$1;->previousIndex()I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/SubList$1;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava/util/SubList$1;->i:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public nextIndex()I
    .locals 2

    iget-object v0, p0, Ljava/util/SubList$1;->i:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->nextIndex()I

    move-result v0

    iget-object v1, p0, Ljava/util/SubList$1;->this$0:Ljava/util/SubList;

    invoke-static {v1}, Ljava/util/SubList;->-get1(Ljava/util/SubList;)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public previous()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/SubList$1;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava/util/SubList$1;->i:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public previousIndex()I
    .locals 2

    iget-object v0, p0, Ljava/util/SubList$1;->i:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->previousIndex()I

    move-result v0

    iget-object v1, p0, Ljava/util/SubList$1;->this$0:Ljava/util/SubList;

    invoke-static {v1}, Ljava/util/SubList;->-get1(Ljava/util/SubList;)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public remove()V
    .locals 2

    iget-object v0, p0, Ljava/util/SubList$1;->i:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->remove()V

    iget-object v0, p0, Ljava/util/SubList$1;->this$0:Ljava/util/SubList;

    iget-object v1, p0, Ljava/util/SubList$1;->this$0:Ljava/util/SubList;

    invoke-static {v1}, Ljava/util/SubList;->-get0(Ljava/util/SubList;)Ljava/util/AbstractList;

    move-result-object v1

    iget v1, v1, Ljava/util/AbstractList;->modCount:I

    iput v1, v0, Ljava/util/SubList;->modCount:I

    iget-object v0, p0, Ljava/util/SubList$1;->this$0:Ljava/util/SubList;

    invoke-static {v0}, Ljava/util/SubList;->-get2(Ljava/util/SubList;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/util/SubList;->-set0(Ljava/util/SubList;I)I

    return-void
.end method

.method public set(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    iget-object v0, p0, Ljava/util/SubList$1;->i:Ljava/util/ListIterator;

    invoke-interface {v0, p1}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    return-void
.end method
