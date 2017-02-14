.class Ljava/util/EnumMap$EntrySet;
.super Ljava/util/AbstractSet;
.source "EnumMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/EnumMap;
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
.field final synthetic this$0:Ljava/util/EnumMap;


# direct methods
.method private constructor <init>(Ljava/util/EnumMap;)V
    .locals 0

    iput-object p1, p0, Ljava/util/EnumMap$EntrySet;->this$0:Ljava/util/EnumMap;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/EnumMap;Ljava/util/EnumMap$EntrySet;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/util/EnumMap$EntrySet;-><init>(Ljava/util/EnumMap;)V

    return-void
.end method

.method private fillEntryArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 7

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Ljava/util/EnumMap$EntrySet;->this$0:Ljava/util/EnumMap;

    invoke-static {v3}, Ljava/util/EnumMap;->-get2(Ljava/util/EnumMap;)[Ljava/lang/Object;

    move-result-object v3

    array-length v3, v3

    if-ge v0, v3, :cond_1

    iget-object v3, p0, Ljava/util/EnumMap$EntrySet;->this$0:Ljava/util/EnumMap;

    invoke-static {v3}, Ljava/util/EnumMap;->-get2(Ljava/util/EnumMap;)[Ljava/lang/Object;

    move-result-object v3

    aget-object v3, v3, v0

    if-eqz v3, :cond_0

    add-int/lit8 v2, v1, 0x1

    new-instance v3, Ljava/util/AbstractMap$SimpleEntry;

    iget-object v4, p0, Ljava/util/EnumMap$EntrySet;->this$0:Ljava/util/EnumMap;

    invoke-static {v4}, Ljava/util/EnumMap;->-get0(Ljava/util/EnumMap;)[Ljava/lang/Enum;

    move-result-object v4

    aget-object v4, v4, v0

    iget-object v5, p0, Ljava/util/EnumMap$EntrySet;->this$0:Ljava/util/EnumMap;

    iget-object v6, p0, Ljava/util/EnumMap$EntrySet;->this$0:Ljava/util/EnumMap;

    invoke-static {v6}, Ljava/util/EnumMap;->-get2(Ljava/util/EnumMap;)[Ljava/lang/Object;

    move-result-object v6

    aget-object v6, v6, v0

    invoke-static {v5, v6}, Ljava/util/EnumMap;->-wrap4(Ljava/util/EnumMap;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, p1, v1

    move v1, v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p1
.end method


# virtual methods
.method public clear()V
    .locals 1

    iget-object v0, p0, Ljava/util/EnumMap$EntrySet;->this$0:Ljava/util/EnumMap;

    invoke-virtual {v0}, Ljava/util/EnumMap;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 4

    instance-of v1, p1, Ljava/util/Map$Entry;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    move-object v0, p1

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v1, p0, Ljava/util/EnumMap$EntrySet;->this$0:Ljava/util/EnumMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v2, v3}, Ljava/util/EnumMap;->-wrap0(Ljava/util/EnumMap;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/EnumMap$EntryIterator;

    iget-object v1, p0, Ljava/util/EnumMap$EntrySet;->this$0:Ljava/util/EnumMap;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/EnumMap$EntryIterator;-><init>(Ljava/util/EnumMap;Ljava/util/EnumMap$EntryIterator;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 4

    instance-of v1, p1, Ljava/util/Map$Entry;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    move-object v0, p1

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v1, p0, Ljava/util/EnumMap$EntrySet;->this$0:Ljava/util/EnumMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v2, v3}, Ljava/util/EnumMap;->-wrap1(Ljava/util/EnumMap;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Ljava/util/EnumMap$EntrySet;->this$0:Ljava/util/EnumMap;

    invoke-static {v0}, Ljava/util/EnumMap;->-get1(Ljava/util/EnumMap;)I

    move-result v0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Ljava/util/EnumMap$EntrySet;->this$0:Ljava/util/EnumMap;

    invoke-static {v0}, Ljava/util/EnumMap;->-get1(Ljava/util/EnumMap;)I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-direct {p0, v0}, Ljava/util/EnumMap$EntrySet;->fillEntryArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/EnumMap$EntrySet;->size()I

    move-result v0

    array-length v1, p1

    if-ge v1, v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    :cond_0
    array-length v1, p1

    if-le v1, v0, :cond_1

    const/4 v1, 0x0

    aput-object v1, p1, v0

    :cond_1
    invoke-direct {p0, p1}, Ljava/util/EnumMap$EntrySet;->fillEntryArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method
