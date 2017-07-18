.class public Lcom/thoughtworks/xstream/persistence/XmlArrayList;
.super Ljava/util/AbstractList;
.source "XmlArrayList.java"


# instance fields
.field private final map:Lcom/thoughtworks/xstream/persistence/XmlMap;


# direct methods
.method public constructor <init>(Lcom/thoughtworks/xstream/persistence/PersistenceStrategy;)V
    .locals 1

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    new-instance v0, Lcom/thoughtworks/xstream/persistence/XmlMap;

    invoke-direct {v0, p1}, Lcom/thoughtworks/xstream/persistence/XmlMap;-><init>(Lcom/thoughtworks/xstream/persistence/PersistenceStrategy;)V

    iput-object v0, p0, Lcom/thoughtworks/xstream/persistence/XmlArrayList;->map:Lcom/thoughtworks/xstream/persistence/XmlMap;

    return-void
.end method

.method private rangeCheck(I)V
    .locals 4

    invoke-virtual {p0}, Lcom/thoughtworks/xstream/persistence/XmlArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    if-gez p1, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Index: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    return-void
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 7

    invoke-virtual {p0}, Lcom/thoughtworks/xstream/persistence/XmlArrayList;->size()I

    move-result v1

    add-int/lit8 v3, v1, 0x1

    if-ge p1, v3, :cond_0

    if-gez p1, :cond_1

    :cond_0
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Index: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", Size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    if-eq p1, v1, :cond_2

    add-int/lit8 v2, p1, -0x1

    :goto_0
    move v0, v1

    :goto_1
    if-le v0, v2, :cond_3

    iget-object v3, p0, Lcom/thoughtworks/xstream/persistence/XmlArrayList;->map:Lcom/thoughtworks/xstream/persistence/XmlMap;

    new-instance v4, Ljava/lang/Integer;

    add-int/lit8 v5, v0, 0x1

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    iget-object v5, p0, Lcom/thoughtworks/xstream/persistence/XmlArrayList;->map:Lcom/thoughtworks/xstream/persistence/XmlMap;

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v5, v6}, Lcom/thoughtworks/xstream/persistence/XmlMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/thoughtworks/xstream/persistence/XmlMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_2
    move v2, p1

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/thoughtworks/xstream/persistence/XmlArrayList;->map:Lcom/thoughtworks/xstream/persistence/XmlMap;

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v4, p2}, Lcom/thoughtworks/xstream/persistence/XmlMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public get(I)Ljava/lang/Object;
    .locals 2

    invoke-direct {p0, p1}, Lcom/thoughtworks/xstream/persistence/XmlArrayList;->rangeCheck(I)V

    iget-object v0, p0, Lcom/thoughtworks/xstream/persistence/XmlArrayList;->map:Lcom/thoughtworks/xstream/persistence/XmlMap;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/thoughtworks/xstream/persistence/XmlMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 8

    invoke-virtual {p0}, Lcom/thoughtworks/xstream/persistence/XmlArrayList;->size()I

    move-result v1

    invoke-direct {p0, p1}, Lcom/thoughtworks/xstream/persistence/XmlArrayList;->rangeCheck(I)V

    iget-object v3, p0, Lcom/thoughtworks/xstream/persistence/XmlArrayList;->map:Lcom/thoughtworks/xstream/persistence/XmlMap;

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v4}, Lcom/thoughtworks/xstream/persistence/XmlMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move v0, p1

    :goto_0
    add-int/lit8 v3, v1, -0x1

    if-ge v0, v3, :cond_0

    iget-object v3, p0, Lcom/thoughtworks/xstream/persistence/XmlArrayList;->map:Lcom/thoughtworks/xstream/persistence/XmlMap;

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v0}, Ljava/lang/Integer;-><init>(I)V

    iget-object v5, p0, Lcom/thoughtworks/xstream/persistence/XmlArrayList;->map:Lcom/thoughtworks/xstream/persistence/XmlMap;

    new-instance v6, Ljava/lang/Integer;

    add-int/lit8 v7, v0, 0x1

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v5, v6}, Lcom/thoughtworks/xstream/persistence/XmlMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/thoughtworks/xstream/persistence/XmlMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/thoughtworks/xstream/persistence/XmlArrayList;->map:Lcom/thoughtworks/xstream/persistence/XmlMap;

    new-instance v4, Ljava/lang/Integer;

    add-int/lit8 v5, v1, -0x1

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v4}, Lcom/thoughtworks/xstream/persistence/XmlMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v2
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-direct {p0, p1}, Lcom/thoughtworks/xstream/persistence/XmlArrayList;->rangeCheck(I)V

    invoke-virtual {p0, p1}, Lcom/thoughtworks/xstream/persistence/XmlArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/thoughtworks/xstream/persistence/XmlArrayList;->map:Lcom/thoughtworks/xstream/persistence/XmlMap;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2, p2}, Lcom/thoughtworks/xstream/persistence/XmlMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/thoughtworks/xstream/persistence/XmlArrayList;->map:Lcom/thoughtworks/xstream/persistence/XmlMap;

    invoke-virtual {v0}, Lcom/thoughtworks/xstream/persistence/XmlMap;->size()I

    move-result v0

    return v0
.end method
