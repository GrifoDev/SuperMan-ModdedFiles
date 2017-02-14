.class Ljava/util/AbstractList$Itr;
.super Ljava/lang/Object;
.source "AbstractList.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/AbstractList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Itr"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field cursor:I

.field expectedModCount:I

.field lastRet:I

.field final synthetic this$0:Ljava/util/AbstractList;


# direct methods
.method private constructor <init>(Ljava/util/AbstractList;)V
    .locals 1

    iput-object p1, p0, Ljava/util/AbstractList$Itr;->this$0:Ljava/util/AbstractList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Ljava/util/AbstractList$Itr;->cursor:I

    const/4 v0, -0x1

    iput v0, p0, Ljava/util/AbstractList$Itr;->lastRet:I

    iget-object v0, p0, Ljava/util/AbstractList$Itr;->this$0:Ljava/util/AbstractList;

    iget v0, v0, Ljava/util/AbstractList;->modCount:I

    iput v0, p0, Ljava/util/AbstractList$Itr;->expectedModCount:I

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/AbstractList;Ljava/util/AbstractList$Itr;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/util/AbstractList$Itr;-><init>(Ljava/util/AbstractList;)V

    return-void
.end method


# virtual methods
.method final checkForComodification()V
    .locals 2

    iget-object v0, p0, Ljava/util/AbstractList$Itr;->this$0:Ljava/util/AbstractList;

    iget v0, v0, Ljava/util/AbstractList;->modCount:I

    iget v1, p0, Ljava/util/AbstractList$Itr;->expectedModCount:I

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    :cond_0
    return-void
.end method

.method public hasNext()Z
    .locals 2

    iget v0, p0, Ljava/util/AbstractList$Itr;->cursor:I

    iget-object v1, p0, Ljava/util/AbstractList$Itr;->this$0:Ljava/util/AbstractList;

    invoke-virtual {v1}, Ljava/util/AbstractList;->size()I

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/AbstractList$Itr;->checkForComodification()V

    :try_start_0
    iget v1, p0, Ljava/util/AbstractList$Itr;->cursor:I

    iget-object v3, p0, Ljava/util/AbstractList$Itr;->this$0:Ljava/util/AbstractList;

    invoke-virtual {v3, v1}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v2

    iput v1, p0, Ljava/util/AbstractList$Itr;->lastRet:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Ljava/util/AbstractList$Itr;->cursor:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Ljava/util/AbstractList$Itr;->checkForComodification()V

    new-instance v3, Ljava/util/NoSuchElementException;

    invoke-direct {v3}, Ljava/util/NoSuchElementException;-><init>()V

    throw v3
.end method

.method public remove()V
    .locals 3

    iget v1, p0, Ljava/util/AbstractList$Itr;->lastRet:I

    if-gez v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    :cond_0
    invoke-virtual {p0}, Ljava/util/AbstractList$Itr;->checkForComodification()V

    :try_start_0
    iget-object v1, p0, Ljava/util/AbstractList$Itr;->this$0:Ljava/util/AbstractList;

    iget v2, p0, Ljava/util/AbstractList$Itr;->lastRet:I

    invoke-virtual {v1, v2}, Ljava/util/AbstractList;->remove(I)Ljava/lang/Object;

    iget v1, p0, Ljava/util/AbstractList$Itr;->lastRet:I

    iget v2, p0, Ljava/util/AbstractList$Itr;->cursor:I

    if-ge v1, v2, :cond_1

    iget v1, p0, Ljava/util/AbstractList$Itr;->cursor:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Ljava/util/AbstractList$Itr;->cursor:I

    :cond_1
    const/4 v1, -0x1

    iput v1, p0, Ljava/util/AbstractList$Itr;->lastRet:I

    iget-object v1, p0, Ljava/util/AbstractList$Itr;->this$0:Ljava/util/AbstractList;

    iget v1, v1, Ljava/util/AbstractList;->modCount:I

    iput v1, p0, Ljava/util/AbstractList$Itr;->expectedModCount:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/util/ConcurrentModificationException;

    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v1
.end method
