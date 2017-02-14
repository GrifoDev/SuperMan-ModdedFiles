.class Ljava/util/Hashtable$EntrySet;
.super Ljava/util/AbstractSet;
.source "Hashtable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Hashtable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljava/util/Hashtable;


# direct methods
.method private constructor <init>(Ljava/util/Hashtable;)V
    .locals 0

    iput-object p1, p0, Ljava/util/Hashtable$EntrySet;->this$0:Ljava/util/Hashtable;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Hashtable;Ljava/util/Hashtable$EntrySet;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/util/Hashtable$EntrySet;-><init>(Ljava/util/Hashtable;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 1

    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {p0, p1}, Ljava/util/Hashtable$EntrySet;->add(Ljava/util/Map$Entry;)Z

    move-result v0

    return v0
.end method

.method public add(Ljava/util/Map$Entry;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;)Z"
        }
    .end annotation

    invoke-super {p0, p1}, Ljava/util/AbstractSet;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public clear()V
    .locals 1

    iget-object v0, p0, Ljava/util/Hashtable$EntrySet;->this$0:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 9

    const/4 v8, 0x0

    instance-of v6, p1, Ljava/util/Map$Entry;

    if-nez v6, :cond_0

    return v8

    :cond_0
    move-object v1, p1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    iget-object v6, p0, Ljava/util/Hashtable$EntrySet;->this$0:Ljava/util/Hashtable;

    invoke-static {v6}, Ljava/util/Hashtable;->-get2(Ljava/util/Hashtable;)[Ljava/util/Hashtable$HashtableEntry;

    move-result-object v5

    invoke-static {v4}, Ljava/util/Hashtable;->-wrap0(Ljava/lang/Object;)I

    move-result v2

    const v6, 0x7fffffff

    and-int/2addr v6, v2

    array-length v7, v5

    rem-int v3, v6, v7

    aget-object v0, v5, v3

    :goto_0
    if-eqz v0, :cond_2

    iget v6, v0, Ljava/util/Hashtable$HashtableEntry;->hash:I

    if-ne v6, v2, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable$HashtableEntry;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x1

    return v6

    :cond_1
    iget-object v0, v0, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;

    goto :goto_0

    :cond_2
    return v8
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    iget-object v0, p0, Ljava/util/Hashtable$EntrySet;->this$0:Ljava/util/Hashtable;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Hashtable;->-wrap1(Ljava/util/Hashtable;I)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 11

    const/4 v10, 0x0

    const/4 v9, 0x0

    instance-of v7, p1, Ljava/util/Map$Entry;

    if-nez v7, :cond_0

    return v10

    :cond_0
    move-object v1, p1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    iget-object v7, p0, Ljava/util/Hashtable$EntrySet;->this$0:Ljava/util/Hashtable;

    invoke-static {v7}, Ljava/util/Hashtable;->-get2(Ljava/util/Hashtable;)[Ljava/util/Hashtable$HashtableEntry;

    move-result-object v6

    invoke-static {v4}, Ljava/util/Hashtable;->-wrap0(Ljava/lang/Object;)I

    move-result v2

    const v7, 0x7fffffff

    and-int/2addr v7, v2

    array-length v8, v6

    rem-int v3, v7, v8

    aget-object v0, v6, v3

    const/4 v5, 0x0

    :goto_0
    if-eqz v0, :cond_3

    iget v7, v0, Ljava/util/Hashtable$HashtableEntry;->hash:I

    if-ne v7, v2, :cond_2

    invoke-virtual {v0, v1}, Ljava/util/Hashtable$HashtableEntry;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Ljava/util/Hashtable$EntrySet;->this$0:Ljava/util/Hashtable;

    invoke-static {v7}, Ljava/util/Hashtable;->-get1(Ljava/util/Hashtable;)I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-static {v7, v8}, Ljava/util/Hashtable;->-set1(Ljava/util/Hashtable;I)I

    if-eqz v5, :cond_1

    iget-object v7, v0, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;

    iput-object v7, v5, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;

    :goto_1
    iget-object v7, p0, Ljava/util/Hashtable$EntrySet;->this$0:Ljava/util/Hashtable;

    invoke-static {v7}, Ljava/util/Hashtable;->-get0(Ljava/util/Hashtable;)I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-static {v7, v8}, Ljava/util/Hashtable;->-set0(Ljava/util/Hashtable;I)I

    iput-object v9, v0, Ljava/util/Hashtable$HashtableEntry;->value:Ljava/lang/Object;

    const/4 v7, 0x1

    return v7

    :cond_1
    iget-object v7, v0, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;

    aput-object v7, v6, v3

    goto :goto_1

    :cond_2
    move-object v5, v0

    iget-object v0, v0, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;

    goto :goto_0

    :cond_3
    return v10
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Ljava/util/Hashtable$EntrySet;->this$0:Ljava/util/Hashtable;

    invoke-static {v0}, Ljava/util/Hashtable;->-get0(Ljava/util/Hashtable;)I

    move-result v0

    return v0
.end method
