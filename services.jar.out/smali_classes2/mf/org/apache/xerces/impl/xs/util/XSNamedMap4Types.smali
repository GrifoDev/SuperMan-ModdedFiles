.class public final Lmf/org/apache/xerces/impl/xs/util/XSNamedMap4Types;
.super Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;
.source "XSNamedMap4Types.java"


# instance fields
.field private final fType:S


# direct methods
.method public constructor <init>(Ljava/lang/String;Lmf/org/apache/xerces/util/SymbolHash;S)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;-><init>(Ljava/lang/String;Lmf/org/apache/xerces/util/SymbolHash;)V

    int-to-short v0, p3

    iput-short v0, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMap4Types;->fType:S

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;[Lmf/org/apache/xerces/util/SymbolHash;IS)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;-><init>([Ljava/lang/String;[Lmf/org/apache/xerces/util/SymbolHash;I)V

    int-to-short v0, p4

    iput-short v0, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMap4Types;->fType:S

    return-void
.end method


# virtual methods
.method public declared-synchronized getLength()I
    .locals 7

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    iget v1, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMap4Types;->fLength:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    :cond_0
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMap4Types;->fLength:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :cond_1
    move v1, v0

    move v3, v0

    :goto_0
    :try_start_1
    iget v2, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMap4Types;->fNSNum:I

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMap4Types;->fMaps:[Lmf/org/apache/xerces/util/SymbolHash;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lmf/org/apache/xerces/util/SymbolHash;->getLength()I

    move-result v2

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    move v3, v2

    goto :goto_0

    :cond_2
    new-array v4, v3, [Lmf/org/apache/xerces/xs/XSObject;

    move v1, v0

    move v2, v0

    :goto_1
    iget v5, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMap4Types;->fNSNum:I

    if-ge v1, v5, :cond_3

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMap4Types;->fMaps:[Lmf/org/apache/xerces/util/SymbolHash;

    aget-object v5, v5, v1

    invoke-virtual {v5, v4, v2}, Lmf/org/apache/xerces/util/SymbolHash;->getValues([Ljava/lang/Object;I)I

    move-result v5

    add-int/2addr v2, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    iput v1, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMap4Types;->fLength:I

    new-array v1, v3, [Lmf/org/apache/xerces/xs/XSObject;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMap4Types;->fArray:[Lmf/org/apache/xerces/xs/XSObject;

    move v1, v0

    :goto_2
    if-ge v1, v3, :cond_0

    aget-object v0, v4, v1

    check-cast v0, Lmf/org/apache/xerces/xs/XSTypeDefinition;

    invoke-interface {v0}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getTypeCategory()S

    move-result v2

    iget-short v5, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMap4Types;->fType:S

    if-eq v2, v5, :cond_4

    :goto_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_4
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMap4Types;->fArray:[Lmf/org/apache/xerces/xs/XSObject;

    iget v5, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMap4Types;->fLength:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMap4Types;->fLength:I

    aput-object v0, v2, v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized item(I)Lmf/org/apache/xerces/xs/XSObject;
    .locals 2

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMap4Types;->fArray:[Lmf/org/apache/xerces/xs/XSObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    :goto_0
    if-gez p1, :cond_2

    :cond_0
    monitor-exit p0

    return-object v1

    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xs/util/XSNamedMap4Types;->getLength()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    :try_start_2
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMap4Types;->fLength:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMap4Types;->fArray:[Lmf/org/apache/xerces/xs/XSObject;

    aget-object v0, v0, p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0
.end method

.method public itemByName(Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSObject;
    .locals 4

    const/4 v0, 0x0

    const/4 v3, 0x0

    :goto_0
    iget v1, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMap4Types;->fNSNum:I

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMap4Types;->fNamespaces:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-static {p1, v1}, Lmf/org/apache/xerces/impl/xs/util/XSNamedMap4Types;->isEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMap4Types;->fMaps:[Lmf/org/apache/xerces/util/SymbolHash;

    aget-object v0, v1, v0

    invoke-virtual {v0, p2}, Lmf/org/apache/xerces/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/xs/XSTypeDefinition;

    if-nez v0, :cond_2

    :cond_1
    return-object v3

    :cond_2
    invoke-interface {v0}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getTypeCategory()S

    move-result v1

    iget-short v2, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMap4Types;->fType:S

    if-ne v1, v2, :cond_1

    return-object v0

    :cond_3
    return-object v3
.end method
