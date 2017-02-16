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
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    invoke-direct {p0, p1, p2}, Ljava/util/EnumMap;->containsMapping(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Ljava/util/EnumMap;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    invoke-direct {p0, p1, p2}, Ljava/util/EnumMap;->removeMapping(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Ljava/util/EnumMap;I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    invoke-direct {p0, p1}, Ljava/util/EnumMap;->entryHashCode(I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Ljava/util/EnumMap;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    invoke-direct {p0, p1}, Ljava/util/EnumMap;->maskNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap4(Ljava/util/EnumMap;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    invoke-direct {p0, p1}, Ljava/util/EnumMap;->unmaskNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 109
    new-instance v0, Ljava/util/EnumMap$1;

    invoke-direct {v0}, Ljava/util/EnumMap$1;-><init>()V

    sput-object v0, Ljava/util/EnumMap;->NULL:Ljava/lang/Object;

    .line 127
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Enum;

    sput-object v0, Ljava/util/EnumMap;->ZERO_LENGTH_ENUM_ARRAY:[Ljava/lang/Enum;

    .line 79
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

    .prologue
    .line 135
    .local p0, "this":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;TV;>;"
    .local p1, "keyType":Ljava/lang/Class;, "Ljava/lang/Class<TK;>;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 104
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/EnumMap;->size:I

    .line 370
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/EnumMap;->entrySet:Ljava/util/Set;

    .line 136
    iput-object p1, p0, Ljava/util/EnumMap;->keyType:Ljava/lang/Class;

    .line 137
    invoke-static {p1}, Ljava/util/EnumMap;->getKeyUniverse(Ljava/lang/Class;)[Ljava/lang/Enum;

    move-result-object v0

    iput-object v0, p0, Ljava/util/EnumMap;->keyUniverse:[Ljava/lang/Enum;

    .line 138
    iget-object v0, p0, Ljava/util/EnumMap;->keyUniverse:[Ljava/lang/Enum;

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Ljava/util/EnumMap;->vals:[Ljava/lang/Object;

    .line 135
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

    .prologue
    .line 148
    .local p0, "this":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;TV;>;"
    .local p1, "m":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;+TV;>;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 104
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/EnumMap;->size:I

    .line 370
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/EnumMap;->entrySet:Ljava/util/Set;

    .line 149
    iget-object v0, p1, Ljava/util/EnumMap;->keyType:Ljava/lang/Class;

    iput-object v0, p0, Ljava/util/EnumMap;->keyType:Ljava/lang/Class;

    .line 150
    iget-object v0, p1, Ljava/util/EnumMap;->keyUniverse:[Ljava/lang/Enum;

    iput-object v0, p0, Ljava/util/EnumMap;->keyUniverse:[Ljava/lang/Enum;

    .line 151
    iget-object v0, p1, Ljava/util/EnumMap;->vals:[Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Ljava/util/EnumMap;->vals:[Ljava/lang/Object;

    .line 152
    iget v0, p1, Ljava/util/EnumMap;->size:I

    iput v0, p0, Ljava/util/EnumMap;->size:I

    .line 148
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

    .prologue
    .line 167
    .local p0, "this":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;TV;>;"
    .local p1, "m":Ljava/util/Map;, "Ljava/util/Map<TK;+TV;>;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 104
    const/4 v1, 0x0

    iput v1, p0, Ljava/util/EnumMap;->size:I

    .line 370
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/util/EnumMap;->entrySet:Ljava/util/Set;

    .line 168
    instance-of v1, p1, Ljava/util/EnumMap;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 169
    check-cast v0, Ljava/util/EnumMap;

    .line 170
    .local v0, "em":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;+TV;>;"
    iget-object v1, v0, Ljava/util/EnumMap;->keyType:Ljava/lang/Class;

    iput-object v1, p0, Ljava/util/EnumMap;->keyType:Ljava/lang/Class;

    .line 171
    iget-object v1, v0, Ljava/util/EnumMap;->keyUniverse:[Ljava/lang/Enum;

    iput-object v1, p0, Ljava/util/EnumMap;->keyUniverse:[Ljava/lang/Enum;

    .line 172
    iget-object v1, v0, Ljava/util/EnumMap;->vals:[Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    iput-object v1, p0, Ljava/util/EnumMap;->vals:[Ljava/lang/Object;

    .line 173
    iget v1, v0, Ljava/util/EnumMap;->size:I

    iput v1, p0, Ljava/util/EnumMap;->size:I

    .line 167
    .end local v0    # "em":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;+TV;>;"
    :goto_0
    return-void

    .line 175
    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 176
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Specified map is empty"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 177
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

    .line 178
    iget-object v1, p0, Ljava/util/EnumMap;->keyType:Ljava/lang/Class;

    invoke-static {v1}, Ljava/util/EnumMap;->getKeyUniverse(Ljava/lang/Class;)[Ljava/lang/Enum;

    move-result-object v1

    iput-object v1, p0, Ljava/util/EnumMap;->keyUniverse:[Ljava/lang/Enum;

    .line 179
    iget-object v1, p0, Ljava/util/EnumMap;->keyUniverse:[Ljava/lang/Enum;

    array-length v1, v1

    new-array v1, v1, [Ljava/lang/Object;

    iput-object v1, p0, Ljava/util/EnumMap;->vals:[Ljava/lang/Object;

    .line 180
    invoke-virtual {p0, p1}, Ljava/util/EnumMap;->putAll(Ljava/util/Map;)V

    goto :goto_0
.end method

.method private containsMapping(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 225
    .local p0, "this":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;TV;>;"
    invoke-direct {p0, p1}, Ljava/util/EnumMap;->isValidKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    invoke-direct {p0, p2}, Ljava/util/EnumMap;->maskNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Ljava/util/EnumMap;->vals:[Ljava/lang/Object;

    check-cast p1, Ljava/lang/Enum;

    .end local p1    # "key":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 225
    :goto_0
    return v0

    .restart local p1    # "key":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private entryHashCode(I)I
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 715
    .local p0, "this":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;TV;>;"
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
    .param p1, "em"    # Ljava/util/EnumMap;

    .prologue
    .local p0, "this":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;TV;>;"
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 684
    iget-object v5, p1, Ljava/util/EnumMap;->keyType:Ljava/lang/Class;

    iget-object v6, p0, Ljava/util/EnumMap;->keyType:Ljava/lang/Class;

    if-eq v5, v6, :cond_1

    .line 685
    iget v5, p0, Ljava/util/EnumMap;->size:I

    if-nez v5, :cond_0

    iget v5, p1, Ljava/util/EnumMap;->size:I

    if-nez v5, :cond_0

    :goto_0
    return v3

    :cond_0
    move v3, v4

    goto :goto_0

    .line 688
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v5, p0, Ljava/util/EnumMap;->keyUniverse:[Ljava/lang/Enum;

    array-length v5, v5

    if-ge v1, v5, :cond_4

    .line 689
    iget-object v5, p0, Ljava/util/EnumMap;->vals:[Ljava/lang/Object;

    aget-object v2, v5, v1

    .line 690
    .local v2, "ourValue":Ljava/lang/Object;
    iget-object v5, p1, Ljava/util/EnumMap;->vals:[Ljava/lang/Object;

    aget-object v0, v5, v1

    .line 691
    .local v0, "hisValue":Ljava/lang/Object;
    if-eq v0, v2, :cond_2

    .line 692
    if-eqz v0, :cond_3

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 688
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 693
    :cond_3
    return v4

    .line 695
    .end local v0    # "hisValue":Ljava/lang/Object;
    .end local v2    # "ourValue":Ljava/lang/Object;
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

    .prologue
    .line 752
    .local p0, "keyType":Ljava/lang/Class;, "Ljava/lang/Class<TK;>;"
    invoke-static {p0}, Ljava/lang/JavaLangAccess;->getEnumConstantsShared(Ljava/lang/Class;)[Ljava/lang/Enum;

    move-result-object v0

    return-object v0
.end method

.method private isValidKey(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;TV;>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 313
    if-nez p1, :cond_0

    .line 314
    return v2

    .line 317
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 318
    .local v0, "keyClass":Ljava/lang/Class;
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
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 120
    .local p0, "this":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;TV;>;"
    if-nez p1, :cond_0

    sget-object p1, Ljava/util/EnumMap;->NULL:Ljava/lang/Object;

    .end local p1    # "value":Ljava/lang/Object;
    :cond_0
    return-object p1
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 5
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 794
    .local p0, "this":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 796
    iget-object v4, p0, Ljava/util/EnumMap;->keyType:Ljava/lang/Class;

    invoke-static {v4}, Ljava/util/EnumMap;->getKeyUniverse(Ljava/lang/Class;)[Ljava/lang/Enum;

    move-result-object v4

    iput-object v4, p0, Ljava/util/EnumMap;->keyUniverse:[Ljava/lang/Enum;

    .line 797
    iget-object v4, p0, Ljava/util/EnumMap;->keyUniverse:[Ljava/lang/Enum;

    array-length v4, v4

    new-array v4, v4, [Ljava/lang/Object;

    iput-object v4, p0, Ljava/util/EnumMap;->vals:[Ljava/lang/Object;

    .line 800
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v2

    .line 803
    .local v2, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 804
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Enum;

    .line 805
    .local v1, "key":Ljava/lang/Enum;, "TK;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    .line 806
    .local v3, "value":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 803
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 791
    .end local v1    # "key":Ljava/lang/Enum;, "TK;"
    .end local v3    # "value":Ljava/lang/Object;, "TV;"
    :cond_0
    return-void
.end method

.method private removeMapping(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 4
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;TV;>;"
    const/4 v3, 0x0

    .line 297
    invoke-direct {p0, p1}, Ljava/util/EnumMap;->isValidKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 298
    return v3

    .line 299
    :cond_0
    check-cast p1, Ljava/lang/Enum;

    .end local p1    # "key":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    .line 300
    .local v0, "index":I
    invoke-direct {p0, p2}, Ljava/util/EnumMap;->maskNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Ljava/util/EnumMap;->vals:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 301
    iget-object v1, p0, Ljava/util/EnumMap;->vals:[Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 302
    iget v1, p0, Ljava/util/EnumMap;->size:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Ljava/util/EnumMap;->size:I

    .line 303
    const/4 v1, 0x1

    return v1

    .line 305
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

    .prologue
    .line 740
    .local p0, "this":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Enum;, "TK;"
    invoke-virtual {p1}, Ljava/lang/Enum;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 741
    .local v0, "keyClass":Ljava/lang/Class;
    iget-object v1, p0, Ljava/util/EnumMap;->keyType:Ljava/lang/Class;

    if-eq v0, v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    iget-object v2, p0, Ljava/util/EnumMap;->keyType:Ljava/lang/Class;

    if-eq v1, v2, :cond_0

    .line 742
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

    .line 739
    :cond_0
    return-void
.end method

.method private unmaskNull(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 124
    .local p0, "this":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;TV;>;"
    sget-object v0, Ljava/util/EnumMap;->NULL:Ljava/lang/Object;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .end local p1    # "value":Ljava/lang/Object;
    :cond_0
    return-object p1
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 3
    .param p1, "s"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 770
    .local p0, "this":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 773
    iget v2, p0, Ljava/util/EnumMap;->size:I

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 776
    iget v0, p0, Ljava/util/EnumMap;->size:I

    .line 777
    .local v0, "entriesToBeWritten":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lez v0, :cond_1

    .line 778
    iget-object v2, p0, Ljava/util/EnumMap;->vals:[Ljava/lang/Object;

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    .line 779
    iget-object v2, p0, Ljava/util/EnumMap;->keyUniverse:[Ljava/lang/Enum;

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 780
    iget-object v2, p0, Ljava/util/EnumMap;->vals:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-direct {p0, v2}, Ljava/util/EnumMap;->unmaskNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 781
    add-int/lit8 v0, v0, -0x1

    .line 777
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 767
    :cond_1
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    .line 359
    .local p0, "this":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/EnumMap;->vals:[Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 360
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/EnumMap;->size:I

    .line 358
    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 724
    .local p0, "this":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;TV;>;"
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

    .prologue
    .line 725
    .local p0, "this":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;TV;>;"
    const/4 v1, 0x0

    .line 727
    .local v1, "result":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;TV;>;"
    :try_start_0
    invoke-super {p0}, Ljava/util/AbstractMap;->clone()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "result":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;TV;>;"
    check-cast v1, Ljava/util/EnumMap;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 731
    .local v1, "result":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;TV;>;"
    iget-object v2, v1, Ljava/util/EnumMap;->vals:[Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    iput-object v2, v1, Ljava/util/EnumMap;->vals:[Ljava/lang/Object;

    .line 732
    const/4 v2, 0x0

    iput-object v2, v1, Ljava/util/EnumMap;->entrySet:Ljava/util/Set;

    .line 733
    return-object v1

    .line 728
    .end local v1    # "result":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;TV;>;"
    :catch_0
    move-exception v0

    .line 729
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;TV;>;"
    const/4 v0, 0x0

    .line 221
    invoke-direct {p0, p1}, Ljava/util/EnumMap;->isValidKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Ljava/util/EnumMap;->vals:[Ljava/lang/Object;

    check-cast p1, Ljava/lang/Enum;

    .end local p1    # "key":Ljava/lang/Object;
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
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;TV;>;"
    const/4 v2, 0x0

    .line 203
    invoke-direct {p0, p1}, Ljava/util/EnumMap;->maskNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 205
    iget-object v3, p0, Ljava/util/EnumMap;->vals:[Ljava/lang/Object;

    array-length v4, v3

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v0, v3, v1

    .line 206
    .local v0, "val":Ljava/lang/Object;
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 207
    const/4 v1, 0x1

    return v1

    .line 205
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 209
    .end local v0    # "val":Ljava/lang/Object;
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

    .prologue
    .local p0, "this":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;TV;>;"
    const/4 v2, 0x0

    .line 464
    iget-object v0, p0, Ljava/util/EnumMap;->entrySet:Ljava/util/Set;

    .line 465
    .local v0, "es":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<TK;TV;>;>;"
    if-eqz v0, :cond_0

    .line 466
    return-object v0

    .line 468
    :cond_0
    new-instance v1, Ljava/util/EnumMap$EntrySet;

    invoke-direct {v1, p0, v2}, Ljava/util/EnumMap$EntrySet;-><init>(Ljava/util/EnumMap;Ljava/util/EnumMap$EntrySet;)V

    iput-object v1, p0, Ljava/util/EnumMap;->entrySet:Ljava/util/Set;

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;TV;>;"
    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 655
    if-ne p0, p1, :cond_0

    .line 656
    return v7

    .line 657
    :cond_0
    instance-of v4, p1, Ljava/util/EnumMap;

    if-eqz v4, :cond_1

    .line 658
    check-cast p1, Ljava/util/EnumMap;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-direct {p0, p1}, Ljava/util/EnumMap;->equals(Ljava/util/EnumMap;)Z

    move-result v4

    return v4

    .line 659
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_1
    instance-of v4, p1, Ljava/util/Map;

    if-nez v4, :cond_2

    .line 660
    return v5

    :cond_2
    move-object v2, p1

    .line 662
    check-cast v2, Ljava/util/Map;

    .line 663
    .local v2, "m":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    iget v4, p0, Ljava/util/EnumMap;->size:I

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v6

    if-eq v4, v6, :cond_3

    .line 664
    return v5

    .line 666
    :cond_3
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Ljava/util/EnumMap;->keyUniverse:[Ljava/lang/Enum;

    array-length v4, v4

    if-ge v0, v4, :cond_7

    .line 667
    iget-object v4, p0, Ljava/util/EnumMap;->vals:[Ljava/lang/Object;

    aget-object v4, v4, v0

    if-eqz v4, :cond_6

    .line 668
    iget-object v4, p0, Ljava/util/EnumMap;->keyUniverse:[Ljava/lang/Enum;

    aget-object v1, v4, v0

    .line 669
    .local v1, "key":Ljava/lang/Enum;, "TK;"
    iget-object v4, p0, Ljava/util/EnumMap;->vals:[Ljava/lang/Object;

    aget-object v4, v4, v0

    invoke-direct {p0, v4}, Ljava/util/EnumMap;->unmaskNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 670
    .local v3, "value":Ljava/lang/Object;, "TV;"
    if-nez v3, :cond_5

    .line 671
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_4

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    :goto_1
    if-nez v4, :cond_6

    .line 672
    return v5

    :cond_4
    move v4, v5

    .line 671
    goto :goto_1

    .line 674
    :cond_5
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 675
    return v5

    .line 666
    .end local v1    # "key":Ljava/lang/Enum;, "TK;"
    .end local v3    # "value":Ljava/lang/Object;, "TV;"
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 680
    :cond_7
    return v7
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 245
    .local p0, "this":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;TV;>;"
    invoke-direct {p0, p1}, Ljava/util/EnumMap;->isValidKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Ljava/util/EnumMap;->vals:[Ljava/lang/Object;

    check-cast p1, Ljava/lang/Enum;

    .end local p1    # "key":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    invoke-direct {p0, v0}, Ljava/util/EnumMap;->unmaskNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 245
    :goto_0
    return-object v0

    .line 246
    .restart local p1    # "key":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 703
    .local p0, "this":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;TV;>;"
    const/4 v0, 0x0

    .line 705
    .local v0, "h":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Ljava/util/EnumMap;->keyUniverse:[Ljava/lang/Enum;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 706
    iget-object v2, p0, Ljava/util/EnumMap;->vals:[Ljava/lang/Object;

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    .line 707
    invoke-direct {p0, v1}, Ljava/util/EnumMap;->entryHashCode(I)I

    move-result v2

    add-int/2addr v0, v2

    .line 705
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 711
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

    .prologue
    .local p0, "this":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;TV;>;"
    const/4 v2, 0x0

    .line 382
    iget-object v0, p0, Ljava/util/EnumMap;->keySet:Ljava/util/Set;

    .line 383
    .local v0, "ks":Ljava/util/Set;, "Ljava/util/Set<TK;>;"
    if-eqz v0, :cond_0

    .line 384
    return-object v0

    .line 386
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

    .prologue
    .line 266
    .local p0, "this":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Enum;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-direct {p0, p1}, Ljava/util/EnumMap;->typeCheck(Ljava/lang/Enum;)V

    .line 268
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    .line 269
    .local v0, "index":I
    iget-object v2, p0, Ljava/util/EnumMap;->vals:[Ljava/lang/Object;

    aget-object v1, v2, v0

    .line 270
    .local v1, "oldValue":Ljava/lang/Object;
    iget-object v2, p0, Ljava/util/EnumMap;->vals:[Ljava/lang/Object;

    invoke-direct {p0, p2}, Ljava/util/EnumMap;->maskNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v0

    .line 271
    if-nez v1, :cond_0

    .line 272
    iget v2, p0, Ljava/util/EnumMap;->size:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ljava/util/EnumMap;->size:I

    .line 273
    :cond_0
    invoke-direct {p0, v1}, Ljava/util/EnumMap;->unmaskNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 265
    .local p0, "this":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;TV;>;"
    check-cast p1, Ljava/lang/Enum;

    .end local p1    # "key":Ljava/lang/Object;
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

    .prologue
    .line 333
    .local p0, "this":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;TV;>;"
    .local p1, "m":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    instance-of v3, p1, Ljava/util/EnumMap;

    if-eqz v3, :cond_4

    move-object v0, p1

    .line 335
    check-cast v0, Ljava/util/EnumMap;

    .line 336
    .local v0, "em":Ljava/util/EnumMap;, "Ljava/util/EnumMap<+TK;+TV;>;"
    iget-object v3, v0, Ljava/util/EnumMap;->keyType:Ljava/lang/Class;

    iget-object v4, p0, Ljava/util/EnumMap;->keyType:Ljava/lang/Class;

    if-eq v3, v4, :cond_1

    .line 337
    invoke-virtual {v0}, Ljava/util/EnumMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 338
    return-void

    .line 339
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

    .line 342
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Ljava/util/EnumMap;->keyUniverse:[Ljava/lang/Enum;

    array-length v3, v3

    if-ge v2, v3, :cond_5

    .line 343
    iget-object v3, v0, Ljava/util/EnumMap;->vals:[Ljava/lang/Object;

    aget-object v1, v3, v2

    .line 344
    .local v1, "emValue":Ljava/lang/Object;
    if-eqz v1, :cond_3

    .line 345
    iget-object v3, p0, Ljava/util/EnumMap;->vals:[Ljava/lang/Object;

    aget-object v3, v3, v2

    if-nez v3, :cond_2

    .line 346
    iget v3, p0, Ljava/util/EnumMap;->size:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Ljava/util/EnumMap;->size:I

    .line 347
    :cond_2
    iget-object v3, p0, Ljava/util/EnumMap;->vals:[Ljava/lang/Object;

    aput-object v1, v3, v2

    .line 342
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 351
    .end local v0    # "em":Ljava/util/EnumMap;, "Ljava/util/EnumMap<+TK;+TV;>;"
    .end local v1    # "emValue":Ljava/lang/Object;
    .end local v2    # "i":I
    :cond_4
    invoke-super {p0, p1}, Ljava/util/AbstractMap;->putAll(Ljava/util/Map;)V

    .line 332
    :cond_5
    return-void
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;TV;>;"
    const/4 v3, 0x0

    .line 286
    invoke-direct {p0, p1}, Ljava/util/EnumMap;->isValidKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 287
    return-object v3

    .line 288
    :cond_0
    check-cast p1, Ljava/lang/Enum;

    .end local p1    # "key":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    .line 289
    .local v0, "index":I
    iget-object v2, p0, Ljava/util/EnumMap;->vals:[Ljava/lang/Object;

    aget-object v1, v2, v0

    .line 290
    .local v1, "oldValue":Ljava/lang/Object;
    iget-object v2, p0, Ljava/util/EnumMap;->vals:[Ljava/lang/Object;

    aput-object v3, v2, v0

    .line 291
    if-eqz v1, :cond_1

    .line 292
    iget v2, p0, Ljava/util/EnumMap;->size:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Ljava/util/EnumMap;->size:I

    .line 293
    :cond_1
    invoke-direct {p0, v1}, Ljava/util/EnumMap;->unmaskNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method public size()I
    .locals 1

    .prologue
    .line 192
    .local p0, "this":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;TV;>;"
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

    .prologue
    .local p0, "this":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TK;TV;>;"
    const/4 v2, 0x0

    .line 420
    iget-object v0, p0, Ljava/util/EnumMap;->values:Ljava/util/Collection;

    .line 421
    .local v0, "vs":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    if-eqz v0, :cond_0

    .line 422
    return-object v0

    .line 424
    :cond_0
    new-instance v1, Ljava/util/EnumMap$Values;

    invoke-direct {v1, p0, v2}, Ljava/util/EnumMap$Values;-><init>(Ljava/util/EnumMap;Ljava/util/EnumMap$Values;)V

    iput-object v1, p0, Ljava/util/EnumMap;->values:Ljava/util/Collection;

    return-object v1
.end method
