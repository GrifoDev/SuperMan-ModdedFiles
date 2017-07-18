.class public Ljava/util/EnumMap;
.super Ljava/util/AbstractMap;
.source "EnumMap.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/EnumMap$1;,
        Ljava/util/EnumMap$EntryIterator;,
        Ljava/util/EnumMap$EntrySet;,
        Ljava/util/EnumMap$EnumMapIterator;,
        Ljava/util/EnumMap$KeyIterator;,
        Ljava/util/EnumMap$KeySet;,
        Ljava/util/EnumMap$ValueIterator;,
        Ljava/util/EnumMap$Values;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Enum",
        "<TK;>;V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap",
        "<TK;TV;>;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final NULL:Ljava/lang/Object;

.field private static final ZERO_LENGTH_ENUM_ARRAY:[Ljava/lang/Enum;

.field private static final serialVersionUID:J = 0x65d7df7be907ca1L


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

.field private final keyType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TK;>;"
        }
    .end annotation
.end field

.field private transient keyUniverse:[Ljava/lang/Enum;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TK;"
        }
    .end annotation
.end field

.field private transient size:I

.field private transient vals:[Ljava/lang/Object;


# direct methods
.method static synthetic -get0(Ljava/util/EnumMap;)[Ljava/lang/Enum;
    .locals 1

    iget-object v0, p0, Ljava/util/EnumMap;->keyUniverse:[Ljava/lang/Enum;

    return-object v0
.end method

.method static synthetic -get1(Ljava/util/EnumMap;)I
    .locals 1

    iget v0, p0, Ljava/util/EnumMap;->size:I

    return v0
.end method

.method static synthetic -get2(Ljava/util/EnumMap;)[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Ljava/util/EnumMap;->vals:[Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -set0(Ljava/util/EnumMap;I)I
    .locals 0

    iput p1, p0, Ljava/util/EnumMap;->size:I

    return p1
.end method

.method static synthetic -wrap0(Ljava/util/EnumMap;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Ljava/util/EnumMap;->containsMapping(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Ljava/util/EnumMap;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Ljava/util/EnumMap;->removeMapping(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Ljava/util/EnumMap;I)I
    .locals 1

    invoke-direct {p0, p1}, Ljava/util/EnumMap;->entryHashCode(I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Ljava/util/EnumMap;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0, p1}, Ljava/util/EnumMap;->maskNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap4(Ljava/util/EnumMap;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0, p1}, Ljava/util/EnumMap;->unmaskNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/EnumMap$1;

    invoke-direct {v0}, Ljava/util/EnumMap$1;-><init>()V

    sput-object v0, Ljava/util/EnumMap;->NULL:Ljava/lang/Object;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Enum;

    sput-object v0, Ljava/util/EnumMap;->ZERO_LENGTH_ENUM_ARRAY:[Ljava/lang/Enum;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TK;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Ljava/util/EnumMap;->size:I

    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/EnumMap;->entrySet:Ljava/util/Set;

    iput-object p1, p0, Ljava/util/EnumMap;->keyType:Ljava/lang/Class;

    invoke-static {p1}, Ljava/util/EnumMap;->getKeyUniverse(Ljava/lang/Class;)[Ljava/lang/Enum;

    move-result-object v0

    iput-object v0, p0, Ljava/util/EnumMap;->keyUniverse:[Ljava/lang/Enum;

    iget-object v0, p0, Ljava/util/EnumMap;->keyUniverse:[Ljava/lang/Enum;

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Ljava/util/EnumMap;->vals:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/util/EnumMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumMap",
            "<TK;+TV;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Ljava/util/EnumMap;->size:I

    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/EnumMap;->entrySet:Ljava/util/Set;

    iget-object v0, p1, Ljava/util/EnumMap;->keyType:Ljava/lang/Class;

    iput-object v0, p0, Ljava/util/EnumMap;->keyType:Ljava/lang/Class;

    iget-object v0, p1, Ljava/util/EnumMap;->keyUniverse:[Ljava/lang/Enum;

    iput-object v0, p0, Ljava/util/EnumMap;->keyUniverse:[Ljava/lang/Enum;

    iget-object v0, p1, Ljava/util/EnumMap;->vals:[Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Ljava/util/EnumMap;->vals:[Ljava/lang/Object;

    iget v0, p1, Ljava/util/EnumMap;->size:I

    iput v0, p0, Ljava/util/EnumMap;->size:I

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<TK;+TV;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    const/4 v1, 0x0

    iput v1, p0, Ljava/util/EnumMap;->size:I

    const/4 v1, 0x0

    iput-object v1, p0, Ljava/util/EnumMap;->entrySet:Ljava/util/Set;

    instance-of v1, p1, Ljava/util/EnumMap;

    if-eqz v1, :cond_0

    move-object v0, p1

    check-cast v0, Ljava/util/EnumMap;

    iget-object v1, v0, Ljava/util/EnumMap;->keyType:Ljava/lang/Class;

    iput-object v1, p0, Ljava/util/EnumMap;->keyType:Ljava/lang/Class;

    iget-object v1, v0, Ljava/util/EnumMap;->keyUniverse:[Ljava/lang/Enum;

    iput-object v1, p0, Ljava/util/EnumMap;->keyUniverse:[Ljava/lang/Enum;

    iget-object v1, v0, Ljava/util/EnumMap;->vals:[Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    iput-object v1, p0, Ljava/util/EnumMap;->vals:[Ljava/lang/Object;

    iget v1, v0, Ljava/util/EnumMap;->size:I

    iput v1, p0, Ljava/util/EnumMap;->size:I

    :goto_0
    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Specified map is empty"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Enum;

    invoke-virtual {v1}, Ljava/lang/Enum;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    iput-object v1, p0, Ljava/util/EnumMap;->keyType:Ljava/lang/Class;

    iget-object v1, p0, Ljava/util/EnumMap;->keyType:Ljava/lang/Class;

    invoke-static {v1}, Ljava/util/EnumMap;->getKeyUniverse(Ljava/lang/Class;)[Ljava/lang/Enum;

    move-result-object v1

    iput-object v1, p0, Ljava/util/EnumMap;->keyUniverse:[Ljava/lang/Enum;

    iget-object v1, p0, Ljava/util/EnumMap;->keyUniverse:[Ljava/lang/Enum;

    array-length v1, v1

    new-array v1, v1, [Ljava/lang/Object;

    iput-object v1, p0, Ljava/util/EnumMap;->vals:[Ljava/lang/Object;

    invoke-virtual {p0, p1}, Ljava/util/EnumMap;->putAll(Ljava/util/Map;)V

    goto :goto_0
.end method

.method private containsMapping(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 3

    invoke-direct {p0, p1}, Ljava/util/EnumMap;->isValidKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p2}, Ljava/util/EnumMap;->maskNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Ljava/util/EnumMap;->vals:[Ljava/lang/Object;

    check-cast p1, Ljava/lang/Enum;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private entryHashCode(I)I
    .locals 2

    iget-object v0, p0, Ljava/util/EnumMap;->keyUniverse:[Ljava/lang/Enum;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Ljava/lang/Enum;->hashCode()I

    move-result v0

    iget-object v1, p0, Ljava/util/EnumMap;->vals:[Ljava/lang/Object;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method private equals(Ljava/util/EnumMap;)Z
    .locals 7

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v5, p1, Ljava/util/EnumMap;->keyType:Ljava/lang/Class;

    iget-object v6, p0, Ljava/util/EnumMap;->keyType:Ljava/lang/Class;

    if-eq v5, v6, :cond_1

    iget v5, p0, Ljava/util/EnumMap;->size:I

    if-nez v5, :cond_0

    iget v5, p1, Ljava/util/EnumMap;->size:I

    if-nez v5, :cond_0

    :goto_0
    return v3

    :cond_0
    move v3, v4

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_1
    iget-object v5, p0, Ljava/util/EnumMap;->keyUniverse:[Ljava/lang/Enum;

    array-length v5, v5

    if-ge v1, v5, :cond_4

    iget-object v5, p0, Ljava/util/EnumMap;->vals:[Ljava/lang/Object;

    aget-object v2, v5, v1

    iget-object v5, p1, Ljava/util/EnumMap;->vals:[Ljava/lang/Object;

    aget-object v0, v5, v1

    if-eq v0, v2, :cond_2

    if-eqz v0, :cond_3

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return v4

    :cond_4
    return v3
.end method

.method private static getKeyUniverse(Ljava/lang/Class;)[Ljava/lang/Enum;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Enum",
            "<TK;>;>(",
            "Ljava/lang/Class",
            "<TK;>;)[TK;"
        }
    .end annotation

    invoke-static {p0}, Ljava/lang/JavaLangAccess;->getEnumConstantsShared(Ljava/lang/Class;)[Ljava/lang/Enum;

    move-result-object v0

    return-object v0
.end method

.method private isValidKey(Ljava/lang/Object;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_0

    return v2

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v3, p0, Ljava/util/EnumMap;->keyType:Ljava/lang/Class;

    if-eq v0, v3, :cond_1

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v3

    iget-object v4, p0, Ljava/util/EnumMap;->keyType:Ljava/lang/Class;

    if-ne v3, v4, :cond_2

    :cond_1
    :goto_0
    return v1

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method private maskNull(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    if-nez p1, :cond_0

    sget-object p1, Ljava/util/EnumMap;->NULL:Ljava/lang/Object;

    :cond_0
    return-object p1
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

    iget-object v4, p0, Ljava/util/EnumMap;->keyType:Ljava/lang/Class;

    invoke-static {v4}, Ljava/util/EnumMap;->getKeyUniverse(Ljava/lang/Class;)[Ljava/lang/Enum;

    move-result-object v4

    iput-object v4, p0, Ljava/util/EnumMap;->keyUniverse:[Ljava/lang/Enum;

    iget-object v4, p0, Ljava/util/EnumMap;->keyUniverse:[Ljava/lang/Enum;

    array-length v4, v4

    new-array v4, v4, [Ljava/lang/Object;

    iput-object v4, p0, Ljava/util/EnumMap;->vals:[Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Enum;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private removeMapping(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Ljava/util/EnumMap;->isValidKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    return v3

    :cond_0
    check-cast p1, Ljava/lang/Enum;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-direct {p0, p2}, Ljava/util/EnumMap;->maskNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Ljava/util/EnumMap;->vals:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Ljava/util/EnumMap;->vals:[Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    iget v1, p0, Ljava/util/EnumMap;->size:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Ljava/util/EnumMap;->size:I

    const/4 v1, 0x1

    return v1

    :cond_1
    return v3
.end method

.method private typeCheck(Ljava/lang/Enum;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Enum;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Ljava/util/EnumMap;->keyType:Ljava/lang/Class;

    if-eq v0, v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    iget-object v2, p0, Ljava/util/EnumMap;->keyType:Ljava/lang/Class;

    if-eq v1, v2, :cond_0

    new-instance v1, Ljava/lang/ClassCastException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " != "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ljava/util/EnumMap;->keyType:Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    return-void
.end method

.method private unmaskNull(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    sget-object v0, Ljava/util/EnumMap;->NULL:Ljava/lang/Object;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    return-object p1
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    iget v2, p0, Ljava/util/EnumMap;->size:I

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    iget v0, p0, Ljava/util/EnumMap;->size:I

    const/4 v1, 0x0

    :goto_0
    if-lez v0, :cond_1

    iget-object v2, p0, Ljava/util/EnumMap;->vals:[Ljava/lang/Object;

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    iget-object v2, p0, Ljava/util/EnumMap;->keyUniverse:[Ljava/lang/Enum;

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    iget-object v2, p0, Ljava/util/EnumMap;->vals:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-direct {p0, v2}, Ljava/util/EnumMap;->unmaskNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, -0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    iget-object v0, p0, Ljava/util/EnumMap;->vals:[Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput v0, p0, Ljava/util/EnumMap;->size:I

    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/EnumMap;->clone()Ljava/util/EnumMap;

    move-result-object v0

    return-object v0
.end method

.method public clone()Ljava/util/EnumMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumMap",
            "<TK;TV;>;"
        }
    .end annotation

    const/4 v1, 0x0

    :try_start_0
    invoke-super {p0}, Ljava/util/AbstractMap;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/EnumMap;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v2, v1, Ljava/util/EnumMap;->vals:[Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    iput-object v2, v1, Ljava/util/EnumMap;->vals:[Ljava/lang/Object;

    const/4 v2, 0x0

    iput-object v2, v1, Ljava/util/EnumMap;->entrySet:Ljava/util/Set;

    return-object v1

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Ljava/util/EnumMap;->isValidKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Ljava/util/EnumMap;->vals:[Ljava/lang/Object;

    check-cast p1, Ljava/lang/Enum;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget-object v1, v1, v2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 6

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Ljava/util/EnumMap;->maskNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iget-object v3, p0, Ljava/util/EnumMap;->vals:[Ljava/lang/Object;

    array-length v4, v3

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v0, v3, v1

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
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

    iget-object v0, p0, Ljava/util/EnumMap;->entrySet:Ljava/util/Set;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Ljava/util/EnumMap$EntrySet;

    invoke-direct {v1, p0, v2}, Ljava/util/EnumMap$EntrySet;-><init>(Ljava/util/EnumMap;Ljava/util/EnumMap$EntrySet;)V

    iput-object v1, p0, Ljava/util/EnumMap;->entrySet:Ljava/util/Set;

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8

    const/4 v7, 0x1

    const/4 v5, 0x0

    if-ne p0, p1, :cond_0

    return v7

    :cond_0
    instance-of v4, p1, Ljava/util/EnumMap;

    if-eqz v4, :cond_1

    check-cast p1, Ljava/util/EnumMap;

    invoke-direct {p0, p1}, Ljava/util/EnumMap;->equals(Ljava/util/EnumMap;)Z

    move-result v4

    return v4

    :cond_1
    instance-of v4, p1, Ljava/util/Map;

    if-nez v4, :cond_2

    return v5

    :cond_2
    move-object v2, p1

    check-cast v2, Ljava/util/Map;

    iget v4, p0, Ljava/util/EnumMap;->size:I

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v6

    if-eq v4, v6, :cond_3

    return v5

    :cond_3
    const/4 v0, 0x0

    :goto_0
    iget-object v4, p0, Ljava/util/EnumMap;->keyUniverse:[Ljava/lang/Enum;

    array-length v4, v4

    if-ge v0, v4, :cond_7

    iget-object v4, p0, Ljava/util/EnumMap;->vals:[Ljava/lang/Object;

    aget-object v4, v4, v0

    if-eqz v4, :cond_6

    iget-object v4, p0, Ljava/util/EnumMap;->keyUniverse:[Ljava/lang/Enum;

    aget-object v1, v4, v0

    iget-object v4, p0, Ljava/util/EnumMap;->vals:[Ljava/lang/Object;

    aget-object v4, v4, v0

    invoke-direct {p0, v4}, Ljava/util/EnumMap;->unmaskNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_5

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_4

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    :goto_1
    if-nez v4, :cond_6

    return v5

    :cond_4
    move v4, v5

    goto :goto_1

    :cond_5
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    return v5

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_7
    return v7
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    invoke-direct {p0, p1}, Ljava/util/EnumMap;->isValidKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava/util/EnumMap;->vals:[Ljava/lang/Object;

    check-cast p1, Ljava/lang/Enum;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    invoke-direct {p0, v0}, Ljava/util/EnumMap;->unmaskNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Ljava/util/EnumMap;->keyUniverse:[Ljava/lang/Enum;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Ljava/util/EnumMap;->vals:[Ljava/lang/Object;

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    invoke-direct {p0, v1}, Ljava/util/EnumMap;->entryHashCode(I)I

    move-result v2

    add-int/2addr v0, v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
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

    iget-object v0, p0, Ljava/util/EnumMap;->keySet:Ljava/util/Set;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Ljava/util/EnumMap$KeySet;

    invoke-direct {v1, p0, v2}, Ljava/util/EnumMap$KeySet;-><init>(Ljava/util/EnumMap;Ljava/util/EnumMap$KeySet;)V

    iput-object v1, p0, Ljava/util/EnumMap;->keySet:Ljava/util/Set;

    return-object v1
.end method

.method public put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    invoke-direct {p0, p1}, Ljava/util/EnumMap;->typeCheck(Ljava/lang/Enum;)V

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    iget-object v2, p0, Ljava/util/EnumMap;->vals:[Ljava/lang/Object;

    aget-object v1, v2, v0

    iget-object v2, p0, Ljava/util/EnumMap;->vals:[Ljava/lang/Object;

    invoke-direct {p0, p2}, Ljava/util/EnumMap;->maskNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v0

    if-nez v1, :cond_0

    iget v2, p0, Ljava/util/EnumMap;->size:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ljava/util/EnumMap;->size:I

    :cond_0
    invoke-direct {p0, v1}, Ljava/util/EnumMap;->unmaskNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/lang/Enum;

    invoke-virtual {p0, p1, p2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    instance-of v3, p1, Ljava/util/EnumMap;

    if-eqz v3, :cond_4

    move-object v0, p1

    check-cast v0, Ljava/util/EnumMap;

    iget-object v3, v0, Ljava/util/EnumMap;->keyType:Ljava/lang/Class;

    iget-object v4, p0, Ljava/util/EnumMap;->keyType:Ljava/lang/Class;

    if-eq v3, v4, :cond_1

    invoke-virtual {v0}, Ljava/util/EnumMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    return-void

    :cond_0
    new-instance v3, Ljava/lang/ClassCastException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v0, Ljava/util/EnumMap;->keyType:Ljava/lang/Class;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " != "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Ljava/util/EnumMap;->keyType:Ljava/lang/Class;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Ljava/util/EnumMap;->keyUniverse:[Ljava/lang/Enum;

    array-length v3, v3

    if-ge v2, v3, :cond_5

    iget-object v3, v0, Ljava/util/EnumMap;->vals:[Ljava/lang/Object;

    aget-object v1, v3, v2

    if-eqz v1, :cond_3

    iget-object v3, p0, Ljava/util/EnumMap;->vals:[Ljava/lang/Object;

    aget-object v3, v3, v2

    if-nez v3, :cond_2

    iget v3, p0, Ljava/util/EnumMap;->size:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Ljava/util/EnumMap;->size:I

    :cond_2
    iget-object v3, p0, Ljava/util/EnumMap;->vals:[Ljava/lang/Object;

    aput-object v1, v3, v2

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    invoke-super {p0, p1}, Ljava/util/AbstractMap;->putAll(Ljava/util/Map;)V

    :cond_5
    return-void
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Ljava/util/EnumMap;->isValidKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    return-object v3

    :cond_0
    check-cast p1, Ljava/lang/Enum;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    iget-object v2, p0, Ljava/util/EnumMap;->vals:[Ljava/lang/Object;

    aget-object v1, v2, v0

    iget-object v2, p0, Ljava/util/EnumMap;->vals:[Ljava/lang/Object;

    aput-object v3, v2, v0

    if-eqz v1, :cond_1

    iget v2, p0, Ljava/util/EnumMap;->size:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Ljava/util/EnumMap;->size:I

    :cond_1
    invoke-direct {p0, v1}, Ljava/util/EnumMap;->unmaskNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method public size()I
    .locals 1

    iget v0, p0, Ljava/util/EnumMap;->size:I

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

    iget-object v0, p0, Ljava/util/EnumMap;->values:Ljava/util/Collection;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Ljava/util/EnumMap$Values;

    invoke-direct {v1, p0, v2}, Ljava/util/EnumMap$Values;-><init>(Ljava/util/EnumMap;Ljava/util/EnumMap$Values;)V

    iput-object v1, p0, Ljava/util/EnumMap;->values:Ljava/util/Collection;

    return-object v1
.end method
