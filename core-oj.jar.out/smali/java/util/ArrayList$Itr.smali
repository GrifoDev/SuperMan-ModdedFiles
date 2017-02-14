.class Ljava/util/ArrayList$Itr;
.super Ljava/lang/Object;
.source "ArrayList.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/ArrayList;
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

.field protected limit:I

.field final synthetic this$0:Ljava/util/ArrayList;


# direct methods
.method private constructor <init>(Ljava/util/ArrayList;)V
    .locals 1

    iput-object p1, p0, Ljava/util/ArrayList$Itr;->this$0:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p0, Ljava/util/ArrayList$Itr;->this$0:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/ArrayList;->-get0(Ljava/util/ArrayList;)I

    move-result v0

    iput v0, p0, Ljava/util/ArrayList$Itr;->limit:I

    const/4 v0, -0x1

    iput v0, p0, Ljava/util/ArrayList$Itr;->lastRet:I

    iget-object v0, p0, Ljava/util/ArrayList$Itr;->this$0:Ljava/util/ArrayList;

    iget v0, v0, Ljava/util/ArrayList;->modCount:I

    iput v0, p0, Ljava/util/ArrayList$Itr;->expectedModCount:I

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/ArrayList;Ljava/util/ArrayList$Itr;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/util/ArrayList$Itr;-><init>(Ljava/util/ArrayList;)V

    return-void
.end method


# virtual methods
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

    iget-object v4, p0, Ljava/util/ArrayList$Itr;->this$0:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/util/ArrayList;->-get0(Ljava/util/ArrayList;)I

    move-result v3

    iget v1, p0, Ljava/util/ArrayList$Itr;->cursor:I

    if-lt v1, v3, :cond_0

    return-void

    :cond_0
    iget-object v4, p0, Ljava/util/ArrayList$Itr;->this$0:Ljava/util/ArrayList;

    iget-object v0, v4, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    array-length v4, v0

    if-lt v1, v4, :cond_1

    new-instance v4, Ljava/util/ConcurrentModificationException;

    invoke-direct {v4}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v4

    :goto_0
    if-eq v2, v3, :cond_2

    iget-object v4, p0, Ljava/util/ArrayList$Itr;->this$0:Ljava/util/ArrayList;

    iget v4, v4, Ljava/util/ArrayList;->modCount:I

    iget v5, p0, Ljava/util/ArrayList$Itr;->expectedModCount:I

    if-ne v4, v5, :cond_2

    add-int/lit8 v1, v2, 0x1

    aget-object v4, v0, v2

    invoke-interface {p1, v4}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_1
    move v2, v1

    goto :goto_0

    :cond_2
    iput v2, p0, Ljava/util/ArrayList$Itr;->cursor:I

    add-int/lit8 v4, v2, -0x1

    iput v4, p0, Ljava/util/ArrayList$Itr;->lastRet:I

    iget-object v4, p0, Ljava/util/ArrayList$Itr;->this$0:Ljava/util/ArrayList;

    iget v4, v4, Ljava/util/ArrayList;->modCount:I

    iget v5, p0, Ljava/util/ArrayList$Itr;->expectedModCount:I

    if-eq v4, v5, :cond_3

    new-instance v4, Ljava/util/ConcurrentModificationException;

    invoke-direct {v4}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v4

    :cond_3
    return-void
.end method

.method public hasNext()Z
    .locals 2

    iget v0, p0, Ljava/util/ArrayList$Itr;->cursor:I

    iget v1, p0, Ljava/util/ArrayList$Itr;->limit:I

    if-ge v0, v1, :cond_0

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

    iget-object v2, p0, Ljava/util/ArrayList$Itr;->this$0:Ljava/util/ArrayList;

    iget v2, v2, Ljava/util/ArrayList;->modCount:I

    iget v3, p0, Ljava/util/ArrayList$Itr;->expectedModCount:I

    if-eq v2, v3, :cond_0

    new-instance v2, Ljava/util/ConcurrentModificationException;

    invoke-direct {v2}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v2

    :cond_0
    iget v1, p0, Ljava/util/ArrayList$Itr;->cursor:I

    iget v2, p0, Ljava/util/ArrayList$Itr;->limit:I

    if-lt v1, v2, :cond_1

    new-instance v2, Ljava/util/NoSuchElementException;

    invoke-direct {v2}, Ljava/util/NoSuchElementException;-><init>()V

    throw v2

    :cond_1
    iget-object v2, p0, Ljava/util/ArrayList$Itr;->this$0:Ljava/util/ArrayList;

    iget-object v0, v2, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    array-length v2, v0

    if-lt v1, v2, :cond_2

    new-instance v2, Ljava/util/ConcurrentModificationException;

    invoke-direct {v2}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v2

    :cond_2
    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/util/ArrayList$Itr;->cursor:I

    iput v1, p0, Ljava/util/ArrayList$Itr;->lastRet:I

    aget-object v2, v0, v1

    return-object v2
.end method

.method public remove()V
    .locals 3

    iget v1, p0, Ljava/util/ArrayList$Itr;->lastRet:I

    if-gez v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    :cond_0
    iget-object v1, p0, Ljava/util/ArrayList$Itr;->this$0:Ljava/util/ArrayList;

    iget v1, v1, Ljava/util/ArrayList;->modCount:I

    iget v2, p0, Ljava/util/ArrayList$Itr;->expectedModCount:I

    if-eq v1, v2, :cond_1

    new-instance v1, Ljava/util/ConcurrentModificationException;

    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v1

    :cond_1
    :try_start_0
    iget-object v1, p0, Ljava/util/ArrayList$Itr;->this$0:Ljava/util/ArrayList;

    iget v2, p0, Ljava/util/ArrayList$Itr;->lastRet:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget v1, p0, Ljava/util/ArrayList$Itr;->lastRet:I

    iput v1, p0, Ljava/util/ArrayList$Itr;->cursor:I

    const/4 v1, -0x1

    iput v1, p0, Ljava/util/ArrayList$Itr;->lastRet:I

    iget-object v1, p0, Ljava/util/ArrayList$Itr;->this$0:Ljava/util/ArrayList;

    iget v1, v1, Ljava/util/ArrayList;->modCount:I

    iput v1, p0, Ljava/util/ArrayList$Itr;->expectedModCount:I

    iget v1, p0, Ljava/util/ArrayList$Itr;->limit:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Ljava/util/ArrayList$Itr;->limit:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/util/ConcurrentModificationException;

    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v1
.end method
