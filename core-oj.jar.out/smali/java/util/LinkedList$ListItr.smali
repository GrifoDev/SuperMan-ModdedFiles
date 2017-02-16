.class Ljava/util/LinkedList$ListItr;
.super Ljava/lang/Object;
.source "LinkedList.java"

# interfaces
.implements Ljava/util/ListIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/LinkedList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListItr"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/ListIterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private expectedModCount:I

.field private lastReturned:Ljava/util/LinkedList$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList$Node",
            "<TE;>;"
        }
    .end annotation
.end field

.field private next:Ljava/util/LinkedList$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList$Node",
            "<TE;>;"
        }
    .end annotation
.end field

.field private nextIndex:I

.field final synthetic this$0:Ljava/util/LinkedList;


# direct methods
.method constructor <init>(Ljava/util/LinkedList;I)V
    .locals 2
    .param p2, "index"    # I

    .prologue
    .local p0, "this":Ljava/util/LinkedList$ListItr;, "Ljava/util/LinkedList<TE;>.ListItr;"
    .local p1, "this$0":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TE;>;"
    const/4 v0, 0x0

    .line 877
    iput-object p1, p0, Ljava/util/LinkedList$ListItr;->this$0:Ljava/util/LinkedList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 872
    iput-object v0, p0, Ljava/util/LinkedList$ListItr;->lastReturned:Ljava/util/LinkedList$Node;

    .line 875
    iget-object v1, p0, Ljava/util/LinkedList$ListItr;->this$0:Ljava/util/LinkedList;

    iget v1, v1, Ljava/util/LinkedList;->modCount:I

    iput v1, p0, Ljava/util/LinkedList$ListItr;->expectedModCount:I

    .line 879
    iget v1, p1, Ljava/util/LinkedList;->size:I

    if-ne p2, v1, :cond_0

    :goto_0
    iput-object v0, p0, Ljava/util/LinkedList$ListItr;->next:Ljava/util/LinkedList$Node;

    .line 880
    iput p2, p0, Ljava/util/LinkedList$ListItr;->nextIndex:I

    .line 877
    return-void

    .line 879
    :cond_0
    invoke-virtual {p1, p2}, Ljava/util/LinkedList;->node(I)Ljava/util/LinkedList$Node;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/LinkedList$ListItr;, "Ljava/util/LinkedList<TE;>.ListItr;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    const/4 v0, 0x0

    .line 943
    invoke-virtual {p0}, Ljava/util/LinkedList$ListItr;->checkForComodification()V

    .line 944
    iput-object v0, p0, Ljava/util/LinkedList$ListItr;->lastReturned:Ljava/util/LinkedList$Node;

    .line 945
    iget-object v0, p0, Ljava/util/LinkedList$ListItr;->next:Ljava/util/LinkedList$Node;

    if-nez v0, :cond_0

    .line 946
    iget-object v0, p0, Ljava/util/LinkedList$ListItr;->this$0:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->linkLast(Ljava/lang/Object;)V

    .line 949
    :goto_0
    iget v0, p0, Ljava/util/LinkedList$ListItr;->nextIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/LinkedList$ListItr;->nextIndex:I

    .line 950
    iget v0, p0, Ljava/util/LinkedList$ListItr;->expectedModCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/LinkedList$ListItr;->expectedModCount:I

    .line 942
    return-void

    .line 948
    :cond_0
    iget-object v0, p0, Ljava/util/LinkedList$ListItr;->this$0:Ljava/util/LinkedList;

    iget-object v1, p0, Ljava/util/LinkedList$ListItr;->next:Ljava/util/LinkedList$Node;

    invoke-virtual {v0, p1, v1}, Ljava/util/LinkedList;->linkBefore(Ljava/lang/Object;Ljava/util/LinkedList$Node;)V

    goto :goto_0
.end method

.method final checkForComodification()V
    .locals 2

    .prologue
    .line 966
    .local p0, "this":Ljava/util/LinkedList$ListItr;, "Ljava/util/LinkedList<TE;>.ListItr;"
    iget-object v0, p0, Ljava/util/LinkedList$ListItr;->this$0:Ljava/util/LinkedList;

    iget v0, v0, Ljava/util/LinkedList;->modCount:I

    iget v1, p0, Ljava/util/LinkedList$ListItr;->expectedModCount:I

    if-eq v0, v1, :cond_0

    .line 967
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 965
    :cond_0
    return-void
.end method

.method public forEachRemaining(Ljava/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-TE;>;)V"
        }
    .end annotation

    .prologue
    .line 955
    .local p0, "this":Ljava/util/LinkedList$ListItr;, "Ljava/util/LinkedList<TE;>.ListItr;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 956
    :goto_0
    iget-object v0, p0, Ljava/util/LinkedList$ListItr;->this$0:Ljava/util/LinkedList;

    iget v0, v0, Ljava/util/LinkedList;->modCount:I

    iget v1, p0, Ljava/util/LinkedList$ListItr;->expectedModCount:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Ljava/util/LinkedList$ListItr;->nextIndex:I

    iget-object v1, p0, Ljava/util/LinkedList$ListItr;->this$0:Ljava/util/LinkedList;

    iget v1, v1, Ljava/util/LinkedList;->size:I

    if-ge v0, v1, :cond_0

    .line 957
    iget-object v0, p0, Ljava/util/LinkedList$ListItr;->next:Ljava/util/LinkedList$Node;

    iget-object v0, v0, Ljava/util/LinkedList$Node;->item:Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 958
    iget-object v0, p0, Ljava/util/LinkedList$ListItr;->next:Ljava/util/LinkedList$Node;

    iput-object v0, p0, Ljava/util/LinkedList$ListItr;->lastReturned:Ljava/util/LinkedList$Node;

    .line 959
    iget-object v0, p0, Ljava/util/LinkedList$ListItr;->next:Ljava/util/LinkedList$Node;

    iget-object v0, v0, Ljava/util/LinkedList$Node;->next:Ljava/util/LinkedList$Node;

    iput-object v0, p0, Ljava/util/LinkedList$ListItr;->next:Ljava/util/LinkedList$Node;

    .line 960
    iget v0, p0, Ljava/util/LinkedList$ListItr;->nextIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/LinkedList$ListItr;->nextIndex:I

    goto :goto_0

    .line 962
    :cond_0
    invoke-virtual {p0}, Ljava/util/LinkedList$ListItr;->checkForComodification()V

    .line 954
    return-void
.end method

.method public hasNext()Z
    .locals 2

    .prologue
    .line 884
    .local p0, "this":Ljava/util/LinkedList$ListItr;, "Ljava/util/LinkedList<TE;>.ListItr;"
    iget v0, p0, Ljava/util/LinkedList$ListItr;->nextIndex:I

    iget-object v1, p0, Ljava/util/LinkedList$ListItr;->this$0:Ljava/util/LinkedList;

    iget v1, v1, Ljava/util/LinkedList;->size:I

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

    .prologue
    .local p0, "this":Ljava/util/LinkedList$ListItr;, "Ljava/util/LinkedList<TE;>.ListItr;"
    const/4 v0, 0x0

    .line 899
    iget v1, p0, Ljava/util/LinkedList$ListItr;->nextIndex:I

    if-lez v1, :cond_0

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

    .prologue
    .line 888
    .local p0, "this":Ljava/util/LinkedList$ListItr;, "Ljava/util/LinkedList<TE;>.ListItr;"
    invoke-virtual {p0}, Ljava/util/LinkedList$ListItr;->checkForComodification()V

    .line 889
    invoke-virtual {p0}, Ljava/util/LinkedList$ListItr;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 890
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 892
    :cond_0
    iget-object v0, p0, Ljava/util/LinkedList$ListItr;->next:Ljava/util/LinkedList$Node;

    iput-object v0, p0, Ljava/util/LinkedList$ListItr;->lastReturned:Ljava/util/LinkedList$Node;

    .line 893
    iget-object v0, p0, Ljava/util/LinkedList$ListItr;->next:Ljava/util/LinkedList$Node;

    iget-object v0, v0, Ljava/util/LinkedList$Node;->next:Ljava/util/LinkedList$Node;

    iput-object v0, p0, Ljava/util/LinkedList$ListItr;->next:Ljava/util/LinkedList$Node;

    .line 894
    iget v0, p0, Ljava/util/LinkedList$ListItr;->nextIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/LinkedList$ListItr;->nextIndex:I

    .line 895
    iget-object v0, p0, Ljava/util/LinkedList$ListItr;->lastReturned:Ljava/util/LinkedList$Node;

    iget-object v0, v0, Ljava/util/LinkedList$Node;->item:Ljava/lang/Object;

    return-object v0
.end method

.method public nextIndex()I
    .locals 1

    .prologue
    .line 913
    .local p0, "this":Ljava/util/LinkedList$ListItr;, "Ljava/util/LinkedList<TE;>.ListItr;"
    iget v0, p0, Ljava/util/LinkedList$ListItr;->nextIndex:I

    return v0
.end method

.method public previous()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 903
    .local p0, "this":Ljava/util/LinkedList$ListItr;, "Ljava/util/LinkedList<TE;>.ListItr;"
    invoke-virtual {p0}, Ljava/util/LinkedList$ListItr;->checkForComodification()V

    .line 904
    invoke-virtual {p0}, Ljava/util/LinkedList$ListItr;->hasPrevious()Z

    move-result v0

    if-nez v0, :cond_0

    .line 905
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 907
    :cond_0
    iget-object v0, p0, Ljava/util/LinkedList$ListItr;->next:Ljava/util/LinkedList$Node;

    if-nez v0, :cond_1

    iget-object v0, p0, Ljava/util/LinkedList$ListItr;->this$0:Ljava/util/LinkedList;

    iget-object v0, v0, Ljava/util/LinkedList;->last:Ljava/util/LinkedList$Node;

    :goto_0
    iput-object v0, p0, Ljava/util/LinkedList$ListItr;->next:Ljava/util/LinkedList$Node;

    iput-object v0, p0, Ljava/util/LinkedList$ListItr;->lastReturned:Ljava/util/LinkedList$Node;

    .line 908
    iget v0, p0, Ljava/util/LinkedList$ListItr;->nextIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Ljava/util/LinkedList$ListItr;->nextIndex:I

    .line 909
    iget-object v0, p0, Ljava/util/LinkedList$ListItr;->lastReturned:Ljava/util/LinkedList$Node;

    iget-object v0, v0, Ljava/util/LinkedList$Node;->item:Ljava/lang/Object;

    return-object v0

    .line 907
    :cond_1
    iget-object v0, p0, Ljava/util/LinkedList$ListItr;->next:Ljava/util/LinkedList$Node;

    iget-object v0, v0, Ljava/util/LinkedList$Node;->prev:Ljava/util/LinkedList$Node;

    goto :goto_0
.end method

.method public previousIndex()I
    .locals 1

    .prologue
    .line 917
    .local p0, "this":Ljava/util/LinkedList$ListItr;, "Ljava/util/LinkedList<TE;>.ListItr;"
    iget v0, p0, Ljava/util/LinkedList$ListItr;->nextIndex:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public remove()V
    .locals 4

    .prologue
    .local p0, "this":Ljava/util/LinkedList$ListItr;, "Ljava/util/LinkedList<TE;>.ListItr;"
    const/4 v3, 0x0

    .line 921
    invoke-virtual {p0}, Ljava/util/LinkedList$ListItr;->checkForComodification()V

    .line 922
    iget-object v1, p0, Ljava/util/LinkedList$ListItr;->lastReturned:Ljava/util/LinkedList$Node;

    if-nez v1, :cond_0

    .line 923
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 925
    :cond_0
    iget-object v1, p0, Ljava/util/LinkedList$ListItr;->lastReturned:Ljava/util/LinkedList$Node;

    iget-object v0, v1, Ljava/util/LinkedList$Node;->next:Ljava/util/LinkedList$Node;

    .line 926
    .local v0, "lastNext":Ljava/util/LinkedList$Node;, "Ljava/util/LinkedList$Node<TE;>;"
    iget-object v1, p0, Ljava/util/LinkedList$ListItr;->this$0:Ljava/util/LinkedList;

    iget-object v2, p0, Ljava/util/LinkedList$ListItr;->lastReturned:Ljava/util/LinkedList$Node;

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->unlink(Ljava/util/LinkedList$Node;)Ljava/lang/Object;

    .line 927
    iget-object v1, p0, Ljava/util/LinkedList$ListItr;->next:Ljava/util/LinkedList$Node;

    iget-object v2, p0, Ljava/util/LinkedList$ListItr;->lastReturned:Ljava/util/LinkedList$Node;

    if-ne v1, v2, :cond_1

    .line 928
    iput-object v0, p0, Ljava/util/LinkedList$ListItr;->next:Ljava/util/LinkedList$Node;

    .line 931
    :goto_0
    iput-object v3, p0, Ljava/util/LinkedList$ListItr;->lastReturned:Ljava/util/LinkedList$Node;

    .line 932
    iget v1, p0, Ljava/util/LinkedList$ListItr;->expectedModCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljava/util/LinkedList$ListItr;->expectedModCount:I

    .line 920
    return-void

    .line 930
    :cond_1
    iget v1, p0, Ljava/util/LinkedList$ListItr;->nextIndex:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Ljava/util/LinkedList$ListItr;->nextIndex:I

    goto :goto_0
.end method

.method public set(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 936
    .local p0, "this":Ljava/util/LinkedList$ListItr;, "Ljava/util/LinkedList<TE;>.ListItr;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Ljava/util/LinkedList$ListItr;->lastReturned:Ljava/util/LinkedList$Node;

    if-nez v0, :cond_0

    .line 937
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 938
    :cond_0
    invoke-virtual {p0}, Ljava/util/LinkedList$ListItr;->checkForComodification()V

    .line 939
    iget-object v0, p0, Ljava/util/LinkedList$ListItr;->lastReturned:Ljava/util/LinkedList$Node;

    iput-object p1, v0, Ljava/util/LinkedList$Node;->item:Ljava/lang/Object;

    .line 935
    return-void
.end method
