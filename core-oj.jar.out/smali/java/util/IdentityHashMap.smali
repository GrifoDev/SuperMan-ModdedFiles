.class public Ljava/util/IdentityHashMap;
.super Ljava/util/AbstractMap;
.source "IdentityHashMap.java"

# interfaces
.implements Ljava/util/Map;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/IdentityHashMap$EntryIterator;,
        Ljava/util/IdentityHashMap$EntrySet;,
        Ljava/util/IdentityHashMap$EntrySpliterator;,
        Ljava/util/IdentityHashMap$IdentityHashMapIterator;,
        Ljava/util/IdentityHashMap$IdentityHashMapSpliterator;,
        Ljava/util/IdentityHashMap$KeyIterator;,
        Ljava/util/IdentityHashMap$KeySet;,
        Ljava/util/IdentityHashMap$KeySpliterator;,
        Ljava/util/IdentityHashMap$ValueIterator;,
        Ljava/util/IdentityHashMap$ValueSpliterator;,
        Ljava/util/IdentityHashMap$Values;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap",
        "<TK;TV;>;",
        "Ljava/util/Map",
        "<TK;TV;>;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final DEFAULT_CAPACITY:I = 0x20

.field private static final MAXIMUM_CAPACITY:I = 0x20000000

.field private static final MINIMUM_CAPACITY:I = 0x4

.field private static final NULL_KEY:Ljava/lang/Object;

.field private static final serialVersionUID:J = 0x71a2650133f2e980L


# instance fields
.field private transient entrySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field private transient modCount:I

.field private size:I

.field private transient table:[Ljava/lang/Object;

.field private transient threshold:I


# direct methods
.method static synthetic -get0(Ljava/util/IdentityHashMap;)I
    .locals 1

    iget v0, p0, Ljava/util/IdentityHashMap;->modCount:I

    return v0
.end method

.method static synthetic -get1(Ljava/util/IdentityHashMap;)I
    .locals 1

    iget v0, p0, Ljava/util/IdentityHashMap;->size:I

    return v0
.end method

.method static synthetic -get2(Ljava/util/IdentityHashMap;)[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Ljava/util/IdentityHashMap;->table:[Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -set0(Ljava/util/IdentityHashMap;I)I
    .locals 0

    iput p1, p0, Ljava/util/IdentityHashMap;->modCount:I

    return p1
.end method

.method static synthetic -set1(Ljava/util/IdentityHashMap;I)I
    .locals 0

    iput p1, p0, Ljava/util/IdentityHashMap;->size:I

    return p1
.end method

.method static synthetic -wrap0(Ljava/util/IdentityHashMap;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Ljava/util/IdentityHashMap;->containsMapping(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Ljava/util/IdentityHashMap;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Ljava/util/IdentityHashMap;->removeMapping(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Ljava/lang/Object;I)I
    .locals 1

    invoke-static {p0, p1}, Ljava/util/IdentityHashMap;->hash(Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(II)I
    .locals 1

    invoke-static {p0, p1}, Ljava/util/IdentityHashMap;->nextKeyIndex(II)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap4(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-static {p0}, Ljava/util/IdentityHashMap;->unmaskNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ljava/util/IdentityHashMap;->NULL_KEY:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/IdentityHashMap;->entrySet:Ljava/util/Set;

    const/16 v0, 0x20

    invoke-direct {p0, v0}, Ljava/util/IdentityHashMap;->init(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/IdentityHashMap;->entrySet:Ljava/util/Set;

    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "expectedMaxSize is negative: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-direct {p0, p1}, Ljava/util/IdentityHashMap;->capacity(I)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/util/IdentityHashMap;->init(I)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    int-to-double v0, v0

    const-wide v2, 0x3ff199999999999aL    # 1.1

    mul-double/2addr v0, v2

    double-to-int v0, v0

    invoke-direct {p0, v0}, Ljava/util/IdentityHashMap;-><init>(I)V

    invoke-virtual {p0, p1}, Ljava/util/IdentityHashMap;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method private capacity(I)I
    .locals 3

    mul-int/lit8 v2, p1, 0x3

    div-int/lit8 v0, v2, 0x2

    const/high16 v2, 0x20000000

    if-gt v0, v2, :cond_0

    if-gez v0, :cond_2

    :cond_0
    const/high16 v1, 0x20000000

    :cond_1
    return v1

    :cond_2
    const/4 v1, 0x4

    :goto_0
    if-ge v1, v0, :cond_1

    shl-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private closeDeletion(I)V
    .locals 8

    const/4 v7, 0x0

    iget-object v4, p0, Ljava/util/IdentityHashMap;->table:[Ljava/lang/Object;

    array-length v2, v4

    invoke-static {p1, v2}, Ljava/util/IdentityHashMap;->nextKeyIndex(II)I

    move-result v0

    :goto_0
    aget-object v1, v4, v0

    if-eqz v1, :cond_3

    invoke-static {v1, v2}, Ljava/util/IdentityHashMap;->hash(Ljava/lang/Object;I)I

    move-result v3

    if-ge v0, v3, :cond_2

    if-le v3, p1, :cond_0

    if-gt p1, v0, :cond_2

    :cond_0
    :goto_1
    aput-object v1, v4, p1

    add-int/lit8 v5, p1, 0x1

    add-int/lit8 v6, v0, 0x1

    aget-object v6, v4, v6

    aput-object v6, v4, v5

    aput-object v7, v4, v0

    add-int/lit8 v5, v0, 0x1

    aput-object v7, v4, v5

    move p1, v0

    :cond_1
    invoke-static {v0, v2}, Ljava/util/IdentityHashMap;->nextKeyIndex(II)I

    move-result v0

    goto :goto_0

    :cond_2
    if-gt v3, p1, :cond_1

    if-gt p1, v0, :cond_1

    goto :goto_1

    :cond_3
    return-void
.end method

.method private containsMapping(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 7

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/util/IdentityHashMap;->maskNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iget-object v4, p0, Ljava/util/IdentityHashMap;->table:[Ljava/lang/Object;

    array-length v3, v4

    invoke-static {v2, v3}, Ljava/util/IdentityHashMap;->hash(Ljava/lang/Object;I)I

    move-result v0

    :goto_0
    aget-object v1, v4, v0

    if-ne v1, v2, :cond_1

    add-int/lit8 v6, v0, 0x1

    aget-object v6, v4, v6

    if-ne v6, p2, :cond_0

    const/4 v5, 0x1

    :cond_0
    return v5

    :cond_1
    if-nez v1, :cond_2

    return v5

    :cond_2
    invoke-static {v0, v3}, Ljava/util/IdentityHashMap;->nextKeyIndex(II)I

    move-result v0

    goto :goto_0
.end method

.method private static hash(Ljava/lang/Object;I)I
    .locals 3

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    shl-int/lit8 v1, v0, 0x1

    shl-int/lit8 v2, v0, 0x8

    sub-int/2addr v1, v2

    add-int/lit8 v2, p1, -0x1

    and-int/2addr v1, v2

    return v1
.end method

.method private init(I)V
    .locals 1

    mul-int/lit8 v0, p1, 0x2

    div-int/lit8 v0, v0, 0x3

    iput v0, p0, Ljava/util/IdentityHashMap;->threshold:I

    mul-int/lit8 v0, p1, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Ljava/util/IdentityHashMap;->table:[Ljava/lang/Object;

    return-void
.end method

.method private static maskNull(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    if-nez p0, :cond_0

    sget-object p0, Ljava/util/IdentityHashMap;->NULL_KEY:Ljava/lang/Object;

    :cond_0
    return-object p0
.end method

.method private static nextKeyIndex(II)I
    .locals 1

    add-int/lit8 v0, p0, 0x2

    if-ge v0, p1, :cond_0

    add-int/lit8 v0, p0, 0x2

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private putForCreate(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Ljava/util/IdentityHashMap;->maskNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iget-object v4, p0, Ljava/util/IdentityHashMap;->table:[Ljava/lang/Object;

    array-length v3, v4

    invoke-static {v2, v3}, Ljava/util/IdentityHashMap;->hash(Ljava/lang/Object;I)I

    move-result v0

    :goto_0
    aget-object v1, v4, v0

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    new-instance v5, Ljava/io/StreamCorruptedException;

    invoke-direct {v5}, Ljava/io/StreamCorruptedException;-><init>()V

    throw v5

    :cond_0
    invoke-static {v0, v3}, Ljava/util/IdentityHashMap;->nextKeyIndex(II)I

    move-result v0

    goto :goto_0

    :cond_1
    aput-object v2, v4, v0

    add-int/lit8 v5, v0, 0x1

    aput-object p2, v4, v5

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v2

    mul-int/lit8 v4, v2, 0x4

    div-int/lit8 v4, v4, 0x3

    invoke-direct {p0, v4}, Ljava/util/IdentityHashMap;->capacity(I)I

    move-result v4

    invoke-direct {p0, v4}, Ljava/util/IdentityHashMap;->init(I)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Ljava/util/IdentityHashMap;->putForCreate(Ljava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private removeMapping(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x0

    invoke-static {p1}, Ljava/util/IdentityHashMap;->maskNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iget-object v4, p0, Ljava/util/IdentityHashMap;->table:[Ljava/lang/Object;

    array-length v3, v4

    invoke-static {v2, v3}, Ljava/util/IdentityHashMap;->hash(Ljava/lang/Object;I)I

    move-result v0

    :goto_0
    aget-object v1, v4, v0

    if-ne v1, v2, :cond_1

    add-int/lit8 v5, v0, 0x1

    aget-object v5, v4, v5

    if-eq v5, p2, :cond_0

    return v7

    :cond_0
    iget v5, p0, Ljava/util/IdentityHashMap;->modCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Ljava/util/IdentityHashMap;->modCount:I

    iget v5, p0, Ljava/util/IdentityHashMap;->size:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Ljava/util/IdentityHashMap;->size:I

    aput-object v6, v4, v0

    add-int/lit8 v5, v0, 0x1

    aput-object v6, v4, v5

    invoke-direct {p0, v0}, Ljava/util/IdentityHashMap;->closeDeletion(I)V

    const/4 v5, 0x1

    return v5

    :cond_1
    if-nez v1, :cond_2

    return v7

    :cond_2
    invoke-static {v0, v3}, Ljava/util/IdentityHashMap;->nextKeyIndex(II)I

    move-result v0

    goto :goto_0
.end method

.method private resize(I)V
    .locals 11

    const v10, 0x1fffffff

    const/4 v9, 0x0

    mul-int/lit8 v3, p1, 0x2

    iget-object v6, p0, Ljava/util/IdentityHashMap;->table:[Ljava/lang/Object;

    array-length v5, v6

    const/high16 v8, 0x40000000    # 2.0f

    if-ne v5, v8, :cond_1

    iget v8, p0, Ljava/util/IdentityHashMap;->threshold:I

    if-ne v8, v10, :cond_0

    new-instance v8, Ljava/lang/IllegalStateException;

    const-string/jumbo v9, "Capacity exhausted."

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_0
    iput v10, p0, Ljava/util/IdentityHashMap;->threshold:I

    return-void

    :cond_1
    if-lt v5, v3, :cond_2

    return-void

    :cond_2
    new-array v4, v3, [Ljava/lang/Object;

    div-int/lit8 v8, v3, 0x3

    iput v8, p0, Ljava/util/IdentityHashMap;->threshold:I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v5, :cond_5

    aget-object v2, v6, v1

    if-eqz v2, :cond_4

    add-int/lit8 v8, v1, 0x1

    aget-object v7, v6, v8

    aput-object v9, v6, v1

    add-int/lit8 v8, v1, 0x1

    aput-object v9, v6, v8

    invoke-static {v2, v3}, Ljava/util/IdentityHashMap;->hash(Ljava/lang/Object;I)I

    move-result v0

    :goto_1
    aget-object v8, v4, v0

    if-eqz v8, :cond_3

    invoke-static {v0, v3}, Ljava/util/IdentityHashMap;->nextKeyIndex(II)I

    move-result v0

    goto :goto_1

    :cond_3
    aput-object v2, v4, v0

    add-int/lit8 v8, v0, 0x1

    aput-object v7, v4, v8

    :cond_4
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_5
    iput-object v4, p0, Ljava/util/IdentityHashMap;->table:[Ljava/lang/Object;

    return-void
.end method

.method private static unmaskNull(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object v0, Ljava/util/IdentityHashMap;->NULL_KEY:Ljava/lang/Object;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x0

    :cond_0
    return-object p0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    iget v3, p0, Ljava/util/IdentityHashMap;->size:I

    invoke-virtual {p1, v3}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    iget-object v2, p0, Ljava/util/IdentityHashMap;->table:[Ljava/lang/Object;

    const/4 v0, 0x0

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_1

    aget-object v1, v2, v0

    if-eqz v1, :cond_0

    invoke-static {v1}, Ljava/util/IdentityHashMap;->unmaskNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    add-int/lit8 v3, v0, 0x1

    aget-object v3, v2, v3

    invoke-virtual {p1, v3}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 3

    iget v2, p0, Ljava/util/IdentityHashMap;->modCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ljava/util/IdentityHashMap;->modCount:I

    iget-object v1, p0, Ljava/util/IdentityHashMap;->table:[Ljava/lang/Object;

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    const/4 v2, 0x0

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    iput v2, p0, Ljava/util/IdentityHashMap;->size:I

    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 3

    :try_start_0
    invoke-super {p0}, Ljava/util/AbstractMap;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/IdentityHashMap;

    const/4 v2, 0x0

    iput-object v2, v1, Ljava/util/IdentityHashMap;->entrySet:Ljava/util/Set;

    iget-object v2, p0, Ljava/util/IdentityHashMap;->table:[Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    iput-object v2, v1, Ljava/util/IdentityHashMap;->table:[Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/InternalError;

    invoke-direct {v2, v0}, Ljava/lang/InternalError;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 6

    invoke-static {p1}, Ljava/util/IdentityHashMap;->maskNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iget-object v4, p0, Ljava/util/IdentityHashMap;->table:[Ljava/lang/Object;

    array-length v3, v4

    invoke-static {v2, v3}, Ljava/util/IdentityHashMap;->hash(Ljava/lang/Object;I)I

    move-result v0

    :goto_0
    aget-object v1, v4, v0

    if-ne v1, v2, :cond_0

    const/4 v5, 0x1

    return v5

    :cond_0
    if-nez v1, :cond_1

    const/4 v5, 0x0

    return v5

    :cond_1
    invoke-static {v0, v3}, Ljava/util/IdentityHashMap;->nextKeyIndex(II)I

    move-result v0

    goto :goto_0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 3

    iget-object v1, p0, Ljava/util/IdentityHashMap;->table:[Ljava/lang/Object;

    const/4 v0, 0x1

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    aget-object v2, v1, v0

    if-ne v2, p1, :cond_0

    add-int/lit8 v2, v0, -0x1

    aget-object v2, v1, v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    return v2

    :cond_0
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method public entrySet()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v0, p0, Ljava/util/IdentityHashMap;->entrySet:Ljava/util/Set;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Ljava/util/IdentityHashMap$EntrySet;

    invoke-direct {v1, p0, v2}, Ljava/util/IdentityHashMap$EntrySet;-><init>(Ljava/util/IdentityHashMap;Ljava/util/IdentityHashMap$EntrySet;)V

    iput-object v1, p0, Ljava/util/IdentityHashMap;->entrySet:Ljava/util/Set;

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    if-ne p1, p0, :cond_0

    return v8

    :cond_0
    instance-of v5, p1, Ljava/util/IdentityHashMap;

    if-eqz v5, :cond_5

    move-object v2, p1

    check-cast v2, Ljava/util/IdentityHashMap;

    invoke-virtual {v2}, Ljava/util/IdentityHashMap;->size()I

    move-result v5

    iget v6, p0, Ljava/util/IdentityHashMap;->size:I

    if-eq v5, v6, :cond_1

    return v7

    :cond_1
    iget-object v4, v2, Ljava/util/IdentityHashMap;->table:[Ljava/lang/Object;

    const/4 v0, 0x0

    :goto_0
    array-length v5, v4

    if-ge v0, v5, :cond_4

    aget-object v1, v4, v0

    if-eqz v1, :cond_2

    add-int/lit8 v5, v0, 0x1

    aget-object v5, v4, v5

    invoke-direct {p0, v1, v5}, Ljava/util/IdentityHashMap;->containsMapping(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_2
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_3
    return v7

    :cond_4
    return v8

    :cond_5
    instance-of v5, p1, Ljava/util/Map;

    if-eqz v5, :cond_6

    move-object v3, p1

    check-cast v3, Ljava/util/Map;

    invoke-virtual {p0}, Ljava/util/IdentityHashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v5

    return v5

    :cond_6
    return v7
.end method

.method public forEach(Ljava/util/function/BiConsumer;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiConsumer",
            "<-TK;-TV;>;)V"
        }
    .end annotation

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Ljava/util/IdentityHashMap;->modCount:I

    iget-object v3, p0, Ljava/util/IdentityHashMap;->table:[Ljava/lang/Object;

    const/4 v1, 0x0

    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_2

    aget-object v2, v3, v1

    if-eqz v2, :cond_0

    invoke-static {v2}, Ljava/util/IdentityHashMap;->unmaskNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v5, v1, 0x1

    aget-object v5, v3, v5

    invoke-interface {p1, v4, v5}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget v4, p0, Ljava/util/IdentityHashMap;->modCount:I

    if-eq v4, v0, :cond_1

    new-instance v4, Ljava/util/ConcurrentModificationException;

    invoke-direct {v4}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v4

    :cond_1
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_2
    return-void
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/util/IdentityHashMap;->maskNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iget-object v4, p0, Ljava/util/IdentityHashMap;->table:[Ljava/lang/Object;

    array-length v3, v4

    invoke-static {v2, v3}, Ljava/util/IdentityHashMap;->hash(Ljava/lang/Object;I)I

    move-result v0

    :goto_0
    aget-object v1, v4, v0

    if-ne v1, v2, :cond_0

    add-int/lit8 v5, v0, 0x1

    aget-object v5, v4, v5

    return-object v5

    :cond_0
    if-nez v1, :cond_1

    return-object v5

    :cond_1
    invoke-static {v0, v3}, Ljava/util/IdentityHashMap;->nextKeyIndex(II)I

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 7

    const/4 v3, 0x0

    iget-object v4, p0, Ljava/util/IdentityHashMap;->table:[Ljava/lang/Object;

    const/4 v0, 0x0

    :goto_0
    array-length v5, v4

    if-ge v0, v5, :cond_1

    aget-object v2, v4, v0

    if-eqz v2, :cond_0

    invoke-static {v2}, Ljava/util/IdentityHashMap;->unmaskNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    add-int/lit8 v6, v0, 0x1

    aget-object v6, v4, v6

    invoke-static {v6}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v6

    xor-int/2addr v5, v6

    add-int/2addr v3, v5

    :cond_0
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_1
    return v3
.end method

.method public isEmpty()Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Ljava/util/IdentityHashMap;->size:I

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v0, p0, Ljava/util/IdentityHashMap;->keySet:Ljava/util/Set;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Ljava/util/IdentityHashMap$KeySet;

    invoke-direct {v1, p0, v2}, Ljava/util/IdentityHashMap$KeySet;-><init>(Ljava/util/IdentityHashMap;Ljava/util/IdentityHashMap$KeySet;)V

    iput-object v1, p0, Ljava/util/IdentityHashMap;->keySet:Ljava/util/Set;

    return-object v1
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    const/4 v8, 0x0

    invoke-static {p1}, Ljava/util/IdentityHashMap;->maskNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iget-object v5, p0, Ljava/util/IdentityHashMap;->table:[Ljava/lang/Object;

    array-length v3, v5

    invoke-static {v2, v3}, Ljava/util/IdentityHashMap;->hash(Ljava/lang/Object;I)I

    move-result v0

    :goto_0
    aget-object v1, v5, v0

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    add-int/lit8 v6, v0, 0x1

    aget-object v4, v5, v6

    add-int/lit8 v6, v0, 0x1

    aput-object p2, v5, v6

    return-object v4

    :cond_0
    invoke-static {v0, v3}, Ljava/util/IdentityHashMap;->nextKeyIndex(II)I

    move-result v0

    goto :goto_0

    :cond_1
    iget v6, p0, Ljava/util/IdentityHashMap;->modCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Ljava/util/IdentityHashMap;->modCount:I

    aput-object v2, v5, v0

    add-int/lit8 v6, v0, 0x1

    aput-object p2, v5, v6

    iget v6, p0, Ljava/util/IdentityHashMap;->size:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Ljava/util/IdentityHashMap;->size:I

    iget v7, p0, Ljava/util/IdentityHashMap;->threshold:I

    if-lt v6, v7, :cond_2

    invoke-direct {p0, v3}, Ljava/util/IdentityHashMap;->resize(I)V

    :cond_2
    return-object v8
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget v3, p0, Ljava/util/IdentityHashMap;->threshold:I

    if-le v2, v3, :cond_1

    invoke-direct {p0, v2}, Ljava/util/IdentityHashMap;->capacity(I)I

    move-result v3

    invoke-direct {p0, v3}, Ljava/util/IdentityHashMap;->resize(I)V

    :cond_1
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-void
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    const/4 v7, 0x0

    invoke-static {p1}, Ljava/util/IdentityHashMap;->maskNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iget-object v5, p0, Ljava/util/IdentityHashMap;->table:[Ljava/lang/Object;

    array-length v3, v5

    invoke-static {v2, v3}, Ljava/util/IdentityHashMap;->hash(Ljava/lang/Object;I)I

    move-result v0

    :goto_0
    aget-object v1, v5, v0

    if-ne v1, v2, :cond_0

    iget v6, p0, Ljava/util/IdentityHashMap;->modCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Ljava/util/IdentityHashMap;->modCount:I

    iget v6, p0, Ljava/util/IdentityHashMap;->size:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Ljava/util/IdentityHashMap;->size:I

    add-int/lit8 v6, v0, 0x1

    aget-object v4, v5, v6

    add-int/lit8 v6, v0, 0x1

    aput-object v7, v5, v6

    aput-object v7, v5, v0

    invoke-direct {p0, v0}, Ljava/util/IdentityHashMap;->closeDeletion(I)V

    return-object v4

    :cond_0
    if-nez v1, :cond_1

    return-object v7

    :cond_1
    invoke-static {v0, v3}, Ljava/util/IdentityHashMap;->nextKeyIndex(II)I

    move-result v0

    goto :goto_0
.end method

.method public replaceAll(Ljava/util/function/BiFunction;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiFunction",
            "<-TK;-TV;+TV;>;)V"
        }
    .end annotation

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Ljava/util/IdentityHashMap;->modCount:I

    iget-object v3, p0, Ljava/util/IdentityHashMap;->table:[Ljava/lang/Object;

    const/4 v1, 0x0

    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_2

    aget-object v2, v3, v1

    if-eqz v2, :cond_0

    add-int/lit8 v4, v1, 0x1

    invoke-static {v2}, Ljava/util/IdentityHashMap;->unmaskNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v6, v1, 0x1

    aget-object v6, v3, v6

    invoke-interface {p1, v5, v6}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v3, v4

    :cond_0
    iget v4, p0, Ljava/util/IdentityHashMap;->modCount:I

    if-eq v4, v0, :cond_1

    new-instance v4, Ljava/util/ConcurrentModificationException;

    invoke-direct {v4}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v4

    :cond_1
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_2
    return-void
.end method

.method public size()I
    .locals 1

    iget v0, p0, Ljava/util/IdentityHashMap;->size:I

    return v0
.end method

.method public values()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v0, p0, Ljava/util/IdentityHashMap;->values:Ljava/util/Collection;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Ljava/util/IdentityHashMap$Values;

    invoke-direct {v1, p0, v2}, Ljava/util/IdentityHashMap$Values;-><init>(Ljava/util/IdentityHashMap;Ljava/util/IdentityHashMap$Values;)V

    iput-object v1, p0, Ljava/util/IdentityHashMap;->values:Ljava/util/Collection;

    return-object v1
.end method
