.class Lcom/sun/org/apache/xml/internal/security/c14n/implementations/SymbMap;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field entries:[Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbEntry;

.field free:I

.field keys:[Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x17

    iput v0, p0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/SymbMap;->free:I

    iget v0, p0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/SymbMap;->free:I

    new-array v0, v0, [Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbEntry;

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/SymbMap;->entries:[Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbEntry;

    iget v0, p0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/SymbMap;->free:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/SymbMap;->keys:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected clone()Ljava/lang/Object;
    .locals 6

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/SymbMap;

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/SymbMap;->entries:[Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbEntry;

    array-length v1, v1

    new-array v1, v1, [Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbEntry;

    iput-object v1, v0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/SymbMap;->entries:[Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbEntry;

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/SymbMap;->entries:[Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbEntry;

    const/4 v2, 0x0

    iget-object v3, v0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/SymbMap;->entries:[Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbEntry;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/SymbMap;->entries:[Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbEntry;

    array-length v5, v5

    invoke-static {v1, v2, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/SymbMap;->keys:[Ljava/lang/String;

    array-length v1, v1

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, v0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/SymbMap;->keys:[Ljava/lang/String;

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/SymbMap;->keys:[Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, v0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/SymbMap;->keys:[Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/SymbMap;->keys:[Ljava/lang/String;

    array-length v5, v5

    invoke-static {v1, v2, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method entrySet()Ljava/util/List;
    .locals 4

    const/4 v0, 0x0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/SymbMap;->entries:[Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbEntry;

    array-length v2, v2

    if-lt v0, v2, :cond_0

    return-object v1

    :cond_0
    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/SymbMap;->entries:[Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbEntry;

    aget-object v2, v2, v0

    if-nez v2, :cond_2

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const-string/jumbo v2, ""

    iget-object v3, p0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/SymbMap;->entries:[Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbEntry;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/SymbMap;->entries:[Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbEntry;

    aget-object v2, v2, v0

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method get(Ljava/lang/String;)Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbEntry;
    .locals 2

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/SymbMap;->entries:[Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbEntry;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/SymbMap;->index(Ljava/lang/Object;)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method protected index(Ljava/lang/Object;)I
    .locals 5

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/SymbMap;->keys:[Ljava/lang/String;

    array-length v3, v2

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const v4, 0x7fffffff

    and-int/2addr v0, v4

    rem-int/2addr v0, v3

    aget-object v4, v2, v0

    if-nez v4, :cond_1

    :cond_0
    return v0

    :cond_1
    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    :goto_0
    if-eq v0, v3, :cond_3

    add-int/lit8 v0, v0, 0x1

    :goto_1
    aget-object v4, v2, v0

    if-nez v4, :cond_4

    :cond_2
    return v0

    :cond_3
    move v0, v1

    goto :goto_1

    :cond_4
    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_0
.end method

.method put(Ljava/lang/String;Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbEntry;)V
    .locals 3

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/SymbMap;->index(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/SymbMap;->keys:[Ljava/lang/String;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/SymbMap;->keys:[Ljava/lang/String;

    aput-object p1, v2, v0

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/SymbMap;->entries:[Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbEntry;

    aput-object p2, v2, v0

    if-nez v1, :cond_1

    :cond_0
    iget v0, p0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/SymbMap;->free:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/SymbMap;->free:I

    if-eqz v0, :cond_2

    :goto_0
    return-void

    :cond_1
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/SymbMap;->entries:[Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbEntry;

    array-length v0, v0

    iput v0, p0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/SymbMap;->free:I

    iget v0, p0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/SymbMap;->free:I

    shl-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/SymbMap;->rehash(I)V

    goto :goto_0
.end method

.method protected rehash(I)V
    .locals 6

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/SymbMap;->keys:[Ljava/lang/String;

    array-length v0, v0

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/SymbMap;->keys:[Ljava/lang/String;

    iget-object v3, p0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/SymbMap;->entries:[Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbEntry;

    new-array v1, p1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/SymbMap;->keys:[Ljava/lang/String;

    new-array v1, p1, [Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbEntry;

    iput-object v1, p0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/SymbMap;->entries:[Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbEntry;

    :goto_0
    add-int/lit8 v1, v0, -0x1

    if-gtz v0, :cond_0

    return-void

    :cond_0
    aget-object v0, v2, v1

    if-nez v0, :cond_1

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_1
    aget-object v0, v2, v1

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/SymbMap;->index(Ljava/lang/Object;)I

    move-result v4

    iget-object v5, p0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/SymbMap;->keys:[Ljava/lang/String;

    aput-object v0, v5, v4

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/SymbMap;->entries:[Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbEntry;

    aget-object v5, v3, v1

    aput-object v5, v0, v4

    goto :goto_1
.end method
