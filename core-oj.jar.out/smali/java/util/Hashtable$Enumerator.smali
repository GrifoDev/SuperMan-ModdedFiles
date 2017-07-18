.class Ljava/util/Hashtable$Enumerator;
.super Ljava/lang/Object;
.source "Hashtable.java"

# interfaces
.implements Ljava/util/Enumeration;
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Hashtable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Enumerator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Enumeration",
        "<TT;>;",
        "Ljava/util/Iterator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field entry:Ljava/util/Hashtable$HashtableEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable$HashtableEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field protected expectedModCount:I

.field index:I

.field iterator:Z

.field lastReturned:Ljava/util/Hashtable$HashtableEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable$HashtableEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field table:[Ljava/util/Hashtable$HashtableEntry;

.field final synthetic this$0:Ljava/util/Hashtable;

.field type:I


# direct methods
.method constructor <init>(Ljava/util/Hashtable;IZ)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Ljava/util/Hashtable$Enumerator;->this$0:Ljava/util/Hashtable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p0, Ljava/util/Hashtable$Enumerator;->this$0:Ljava/util/Hashtable;

    invoke-static {v0}, Ljava/util/Hashtable;->-get2(Ljava/util/Hashtable;)[Ljava/util/Hashtable$HashtableEntry;

    move-result-object v0

    iput-object v0, p0, Ljava/util/Hashtable$Enumerator;->table:[Ljava/util/Hashtable$HashtableEntry;

    iget-object v0, p0, Ljava/util/Hashtable$Enumerator;->table:[Ljava/util/Hashtable$HashtableEntry;

    array-length v0, v0

    iput v0, p0, Ljava/util/Hashtable$Enumerator;->index:I

    iput-object v1, p0, Ljava/util/Hashtable$Enumerator;->entry:Ljava/util/Hashtable$HashtableEntry;

    iput-object v1, p0, Ljava/util/Hashtable$Enumerator;->lastReturned:Ljava/util/Hashtable$HashtableEntry;

    iget-object v0, p0, Ljava/util/Hashtable$Enumerator;->this$0:Ljava/util/Hashtable;

    invoke-static {v0}, Ljava/util/Hashtable;->-get1(Ljava/util/Hashtable;)I

    move-result v0

    iput v0, p0, Ljava/util/Hashtable$Enumerator;->expectedModCount:I

    iput p2, p0, Ljava/util/Hashtable$Enumerator;->type:I

    iput-boolean p3, p0, Ljava/util/Hashtable$Enumerator;->iterator:Z

    return-void
.end method


# virtual methods
.method public hasMoreElements()Z
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Ljava/util/Hashtable$Enumerator;->entry:Ljava/util/Hashtable$HashtableEntry;

    iget v1, p0, Ljava/util/Hashtable$Enumerator;->index:I

    iget-object v2, p0, Ljava/util/Hashtable$Enumerator;->table:[Ljava/util/Hashtable$HashtableEntry;

    :goto_0
    if-nez v0, :cond_0

    if-lez v1, :cond_0

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v2, v1

    goto :goto_0

    :cond_0
    iput-object v0, p0, Ljava/util/Hashtable$Enumerator;->entry:Ljava/util/Hashtable$HashtableEntry;

    iput v1, p0, Ljava/util/Hashtable$Enumerator;->index:I

    if-eqz v0, :cond_1

    const/4 v3, 0x1

    :cond_1
    return v3
.end method

.method public hasNext()Z
    .locals 1

    invoke-virtual {p0}, Ljava/util/Hashtable$Enumerator;->hasMoreElements()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Ljava/util/Hashtable$Enumerator;->this$0:Ljava/util/Hashtable;

    invoke-static {v0}, Ljava/util/Hashtable;->-get1(Ljava/util/Hashtable;)I

    move-result v0

    iget v1, p0, Ljava/util/Hashtable$Enumerator;->expectedModCount:I

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    :cond_0
    invoke-virtual {p0}, Ljava/util/Hashtable$Enumerator;->nextElement()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public nextElement()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v1, p0, Ljava/util/Hashtable$Enumerator;->entry:Ljava/util/Hashtable$HashtableEntry;

    iget v2, p0, Ljava/util/Hashtable$Enumerator;->index:I

    iget-object v3, p0, Ljava/util/Hashtable$Enumerator;->table:[Ljava/util/Hashtable$HashtableEntry;

    :goto_0
    if-nez v1, :cond_0

    if-lez v2, :cond_0

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v3, v2

    goto :goto_0

    :cond_0
    iput-object v1, p0, Ljava/util/Hashtable$Enumerator;->entry:Ljava/util/Hashtable$HashtableEntry;

    iput v2, p0, Ljava/util/Hashtable$Enumerator;->index:I

    if-eqz v1, :cond_3

    iget-object v0, p0, Ljava/util/Hashtable$Enumerator;->entry:Ljava/util/Hashtable$HashtableEntry;

    iput-object v0, p0, Ljava/util/Hashtable$Enumerator;->lastReturned:Ljava/util/Hashtable$HashtableEntry;

    iget-object v4, v0, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;

    iput-object v4, p0, Ljava/util/Hashtable$Enumerator;->entry:Ljava/util/Hashtable$HashtableEntry;

    iget v4, p0, Ljava/util/Hashtable$Enumerator;->type:I

    if-nez v4, :cond_2

    iget-object v0, v0, Ljava/util/Hashtable$HashtableEntry;->key:Ljava/lang/Object;

    :cond_1
    :goto_1
    return-object v0

    :cond_2
    iget v4, p0, Ljava/util/Hashtable$Enumerator;->type:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    iget-object v0, v0, Ljava/util/Hashtable$HashtableEntry;->value:Ljava/lang/Object;

    goto :goto_1

    :cond_3
    new-instance v4, Ljava/util/NoSuchElementException;

    const-string/jumbo v5, "Hashtable Enumerator"

    invoke-direct {v4, v5}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public remove()V
    .locals 7

    iget-boolean v4, p0, Ljava/util/Hashtable$Enumerator;->iterator:Z

    if-nez v4, :cond_0

    new-instance v4, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v4}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v4

    :cond_0
    iget-object v4, p0, Ljava/util/Hashtable$Enumerator;->lastReturned:Ljava/util/Hashtable$HashtableEntry;

    if-nez v4, :cond_1

    new-instance v4, Ljava/lang/IllegalStateException;

    const-string/jumbo v5, "Hashtable Enumerator"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    iget-object v4, p0, Ljava/util/Hashtable$Enumerator;->this$0:Ljava/util/Hashtable;

    invoke-static {v4}, Ljava/util/Hashtable;->-get1(Ljava/util/Hashtable;)I

    move-result v4

    iget v5, p0, Ljava/util/Hashtable$Enumerator;->expectedModCount:I

    if-eq v4, v5, :cond_2

    new-instance v4, Ljava/util/ConcurrentModificationException;

    invoke-direct {v4}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v4

    :cond_2
    iget-object v5, p0, Ljava/util/Hashtable$Enumerator;->this$0:Ljava/util/Hashtable;

    monitor-enter v5

    :try_start_0
    iget-object v4, p0, Ljava/util/Hashtable$Enumerator;->this$0:Ljava/util/Hashtable;

    invoke-static {v4}, Ljava/util/Hashtable;->-get2(Ljava/util/Hashtable;)[Ljava/util/Hashtable$HashtableEntry;

    move-result-object v3

    iget-object v4, p0, Ljava/util/Hashtable$Enumerator;->lastReturned:Ljava/util/Hashtable$HashtableEntry;

    iget v4, v4, Ljava/util/Hashtable$HashtableEntry;->hash:I

    const v6, 0x7fffffff

    and-int/2addr v4, v6

    array-length v6, v3

    rem-int v1, v4, v6

    aget-object v0, v3, v1

    const/4 v2, 0x0

    :goto_0
    if-eqz v0, :cond_5

    iget-object v4, p0, Ljava/util/Hashtable$Enumerator;->lastReturned:Ljava/util/Hashtable$HashtableEntry;

    if-ne v0, v4, :cond_4

    iget-object v4, p0, Ljava/util/Hashtable$Enumerator;->this$0:Ljava/util/Hashtable;

    invoke-static {v4}, Ljava/util/Hashtable;->-get1(Ljava/util/Hashtable;)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-static {v4, v6}, Ljava/util/Hashtable;->-set1(Ljava/util/Hashtable;I)I

    iget v4, p0, Ljava/util/Hashtable$Enumerator;->expectedModCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Ljava/util/Hashtable$Enumerator;->expectedModCount:I

    if-nez v2, :cond_3

    iget-object v4, v0, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;

    aput-object v4, v3, v1

    :goto_1
    iget-object v4, p0, Ljava/util/Hashtable$Enumerator;->this$0:Ljava/util/Hashtable;

    invoke-static {v4}, Ljava/util/Hashtable;->-get0(Ljava/util/Hashtable;)I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-static {v4, v6}, Ljava/util/Hashtable;->-set0(Ljava/util/Hashtable;I)I

    const/4 v4, 0x0

    iput-object v4, p0, Ljava/util/Hashtable$Enumerator;->lastReturned:Ljava/util/Hashtable$HashtableEntry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v5

    return-void

    :cond_3
    :try_start_1
    iget-object v4, v0, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;

    iput-object v4, v2, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    :cond_4
    move-object v2, v0

    :try_start_2
    iget-object v0, v0, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;

    goto :goto_0

    :cond_5
    new-instance v4, Ljava/util/ConcurrentModificationException;

    invoke-direct {v4}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method
