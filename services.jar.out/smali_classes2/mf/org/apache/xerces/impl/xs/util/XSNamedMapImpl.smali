.class public Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;
.super Ljava/util/AbstractMap;
.source "XSNamedMapImpl.java"

# interfaces
.implements Lmf/org/apache/xerces/xs/XSNamedMap;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl$XSNamedMapEntry;
    }
.end annotation


# static fields
.field public static final EMPTY_MAP:Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;


# instance fields
.field fArray:[Lmf/org/apache/xerces/xs/XSObject;

.field private fEntrySet:Ljava/util/Set;

.field fLength:I

.field final fMaps:[Lmf/org/apache/xerces/util/SymbolHash;

.field final fNSNum:I

.field final fNamespaces:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;

    new-array v1, v2, [Lmf/org/apache/xerces/xs/XSObject;

    invoke-direct {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;-><init>([Lmf/org/apache/xerces/xs/XSObject;I)V

    sput-object v0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->EMPTY_MAP:Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lmf/org/apache/xerces/util/SymbolHash;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    iput-object v3, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->fArray:[Lmf/org/apache/xerces/xs/XSObject;

    const/4 v0, -0x1

    iput v0, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->fLength:I

    iput-object v3, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->fEntrySet:Ljava/util/Set;

    new-array v0, v1, [Ljava/lang/String;

    aput-object p1, v0, v2

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->fNamespaces:[Ljava/lang/String;

    new-array v0, v1, [Lmf/org/apache/xerces/util/SymbolHash;

    aput-object p2, v0, v2

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->fMaps:[Lmf/org/apache/xerces/util/SymbolHash;

    iput v1, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->fNSNum:I

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;[Lmf/org/apache/xerces/util/SymbolHash;I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->fArray:[Lmf/org/apache/xerces/xs/XSObject;

    const/4 v0, -0x1

    iput v0, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->fLength:I

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->fEntrySet:Ljava/util/Set;

    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->fNamespaces:[Ljava/lang/String;

    iput-object p2, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->fMaps:[Lmf/org/apache/xerces/util/SymbolHash;

    iput p3, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->fNSNum:I

    return-void
.end method

.method public constructor <init>([Lmf/org/apache/xerces/xs/XSObject;I)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    iput-object v3, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->fArray:[Lmf/org/apache/xerces/xs/XSObject;

    const/4 v0, -0x1

    iput v0, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->fLength:I

    iput-object v3, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->fEntrySet:Ljava/util/Set;

    if-eqz p2, :cond_0

    new-array v0, v4, [Ljava/lang/String;

    aget-object v1, p1, v2

    invoke-interface {v1}, Lmf/org/apache/xerces/xs/XSObject;->getNamespace()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->fNamespaces:[Ljava/lang/String;

    iput-object v3, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->fMaps:[Lmf/org/apache/xerces/util/SymbolHash;

    iput v4, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->fNSNum:I

    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->fArray:[Lmf/org/apache/xerces/xs/XSObject;

    iput p2, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->fLength:I

    return-void

    :cond_0
    iput-object v3, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->fNamespaces:[Ljava/lang/String;

    iput-object v3, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->fMaps:[Lmf/org/apache/xerces/util/SymbolHash;

    iput v2, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->fNSNum:I

    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->fArray:[Lmf/org/apache/xerces/xs/XSObject;

    iput v2, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->fLength:I

    return-void
.end method

.method static isEqual(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    if-nez p0, :cond_0

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public containsKey(Ljava/lang/Object;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public declared-synchronized entrySet()Ljava/util/Set;
    .locals 8

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->fEntrySet:Ljava/util/Set;

    if-eqz v0, :cond_0

    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->fEntrySet:Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->getLength()I

    move-result v1

    new-array v2, v1, [Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl$XSNamedMapEntry;

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->item(I)Lmf/org/apache/xerces/xs/XSObject;

    move-result-object v3

    new-instance v4, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl$XSNamedMapEntry;

    new-instance v5, Lmf/javax/xml/namespace/QName;

    invoke-interface {v3}, Lmf/org/apache/xerces/xs/XSObject;->getNamespace()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3}, Lmf/org/apache/xerces/xs/XSObject;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lmf/javax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v4, v5, v3}, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl$XSNamedMapEntry;-><init>(Lmf/javax/xml/namespace/QName;Lmf/org/apache/xerces/xs/XSObject;)V

    aput-object v4, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    new-instance v0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl$1;

    invoke-direct {v0, p0, v1, v2}, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl$1;-><init>(Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;I[Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl$XSNamedMapEntry;)V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->fEntrySet:Ljava/util/Set;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    const/4 v1, 0x0

    instance-of v0, p1, Lmf/javax/xml/namespace/QName;

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    check-cast p1, Lmf/javax/xml/namespace/QName;

    invoke-virtual {p1}, Lmf/javax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :goto_0
    invoke-virtual {p1}, Lmf/javax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->itemByName(Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSObject;

    move-result-object v0

    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public declared-synchronized getLength()I
    .locals 3

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    iget v1, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->fLength:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    :cond_0
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->fLength:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :cond_1
    const/4 v1, 0x0

    :try_start_1
    iput v1, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->fLength:I

    :goto_0
    iget v1, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->fNSNum:I

    if-ge v0, v1, :cond_0

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->fLength:I

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->fMaps:[Lmf/org/apache/xerces/util/SymbolHash;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lmf/org/apache/xerces/util/SymbolHash;->getLength()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->fLength:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized item(I)Lmf/org/apache/xerces/xs/XSObject;
    .locals 5

    const/4 v4, 0x0

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->fArray:[Lmf/org/apache/xerces/xs/XSObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    :cond_0
    if-gez p1, :cond_3

    :cond_1
    monitor-exit p0

    return-object v4

    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->getLength()I

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->fLength:I

    new-array v1, v1, [Lmf/org/apache/xerces/xs/XSObject;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->fArray:[Lmf/org/apache/xerces/xs/XSObject;

    move v1, v0

    :goto_0
    iget v2, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->fNSNum:I

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->fMaps:[Lmf/org/apache/xerces/util/SymbolHash;

    aget-object v2, v2, v0

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->fArray:[Lmf/org/apache/xerces/xs/XSObject;

    invoke-virtual {v2, v3, v1}, Lmf/org/apache/xerces/util/SymbolHash;->getValues([Ljava/lang/Object;I)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->fLength:I

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->fArray:[Lmf/org/apache/xerces/xs/XSObject;

    aget-object v0, v0, p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public itemByName(Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSObject;
    .locals 4

    const/4 v3, 0x0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->fNSNum:I

    if-ge v1, v2, :cond_4

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->fNamespaces:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-static {p1, v2}, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->isEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->fMaps:[Lmf/org/apache/xerces/util/SymbolHash;

    if-nez v2, :cond_1

    :goto_1
    iget v1, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->fLength:I

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->fArray:[Lmf/org/apache/xerces/xs/XSObject;

    aget-object v1, v1, v0

    invoke-interface {v1}, Lmf/org/apache/xerces/xs/XSObject;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->fMaps:[Lmf/org/apache/xerces/util/SymbolHash;

    aget-object v0, v0, v1

    invoke-virtual {v0, p2}, Lmf/org/apache/xerces/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/xs/XSObject;

    return-object v0

    :cond_2
    return-object v1

    :cond_3
    return-object v3

    :cond_4
    return-object v3
.end method

.method public size()I
    .locals 1

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->getLength()I

    move-result v0

    return v0
.end method
