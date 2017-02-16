.class public Ljava/util/Hashtable;
.super Ljava/util/Dictionary;
.source "Hashtable.java"

# interfaces
.implements Ljava/util/Map;
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/Hashtable$EntrySet;,
        Ljava/util/Hashtable$Enumerator;,
        Ljava/util/Hashtable$HashtableEntry;,
        Ljava/util/Hashtable$KeySet;,
        Ljava/util/Hashtable$ValueCollection;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/Dictionary",
        "<TK;TV;>;",
        "Ljava/util/Map",
        "<TK;TV;>;",
        "Ljava/lang/Cloneable;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final ENTRIES:I = 0x2

.field private static final KEYS:I = 0x0

.field private static final MAX_ARRAY_SIZE:I = 0x7ffffff7

.field private static final VALUES:I = 0x1

.field private static final serialVersionUID:J = 0x13bb0f25214ae4b8L


# instance fields
.field private transient count:I

.field private volatile transient entrySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field private volatile transient keySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation
.end field

.field private loadFactor:F

.field private transient modCount:I

.field private transient table:[Ljava/util/Hashtable$HashtableEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/Hashtable$HashtableEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private threshold:I

.field private volatile transient values:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Ljava/util/Hashtable;)I
    .locals 1

    iget v0, p0, Ljava/util/Hashtable;->count:I

    return v0
.end method

.method static synthetic -get1(Ljava/util/Hashtable;)I
    .locals 1

    iget v0, p0, Ljava/util/Hashtable;->modCount:I

    return v0
.end method

.method static synthetic -get2(Ljava/util/Hashtable;)[Ljava/util/Hashtable$HashtableEntry;
    .locals 1

    iget-object v0, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    return-object v0
.end method

.method static synthetic -set0(Ljava/util/Hashtable;I)I
    .locals 0

    iput p1, p0, Ljava/util/Hashtable;->count:I

    return p1
.end method

.method static synthetic -set1(Ljava/util/Hashtable;I)I
    .locals 0

    iput p1, p0, Ljava/util/Hashtable;->modCount:I

    return p1
.end method

.method static synthetic -wrap0(Ljava/lang/Object;)I
    .locals 1
    .param p0, "k"    # Ljava/lang/Object;

    .prologue
    invoke-static {p0}, Ljava/util/Hashtable;->hash(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Ljava/util/Hashtable;I)Ljava/util/Iterator;
    .locals 1
    .param p1, "type"    # I

    .prologue
    invoke-direct {p0, p1}, Ljava/util/Hashtable;->getIterator(I)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 215
    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    const/16 v0, 0xb

    const/high16 v1, 0x3f400000    # 0.75f

    invoke-direct {p0, v0, v1}, Ljava/util/Hashtable;-><init>(IF)V

    .line 214
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "initialCapacity"    # I

    .prologue
    .line 207
    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    const/high16 v0, 0x3f400000    # 0.75f

    invoke-direct {p0, p1, v0}, Ljava/util/Hashtable;-><init>(IF)V

    .line 206
    return-void
.end method

.method public constructor <init>(IF)V
    .locals 3
    .param p1, "initialCapacity"    # I
    .param p2, "loadFactor"    # F

    .prologue
    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    const v0, 0x7ffffff8

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 184
    invoke-direct {p0}, Ljava/util/Dictionary;-><init>()V

    .line 166
    iput v1, p0, Ljava/util/Hashtable;->modCount:I

    .line 612
    iput-object v2, p0, Ljava/util/Hashtable;->keySet:Ljava/util/Set;

    .line 613
    iput-object v2, p0, Ljava/util/Hashtable;->entrySet:Ljava/util/Set;

    .line 614
    iput-object v2, p0, Ljava/util/Hashtable;->values:Ljava/util/Collection;

    .line 185
    if-gez p1, :cond_0

    .line 186
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Illegal Capacity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 188
    :cond_0
    const/4 v1, 0x0

    cmpg-float v1, p2, v1

    if-lez v1, :cond_1

    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 189
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Illegal Load: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 191
    :cond_2
    if-nez p1, :cond_3

    .line 192
    const/4 p1, 0x1

    .line 193
    :cond_3
    iput p2, p0, Ljava/util/Hashtable;->loadFactor:F

    .line 194
    new-array v1, p1, [Ljava/util/Hashtable$HashtableEntry;

    iput-object v1, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    .line 195
    if-gt p1, v0, :cond_4

    .end local p1    # "initialCapacity":I
    :goto_0
    iput p1, p0, Ljava/util/Hashtable;->threshold:I

    .line 184
    return-void

    .restart local p1    # "initialCapacity":I
    :cond_4
    move p1, v0

    .line 195
    goto :goto_0
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 228
    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    .local p1, "t":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    const/16 v1, 0xb

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/high16 v1, 0x3f400000    # 0.75f

    invoke-direct {p0, v0, v1}, Ljava/util/Hashtable;-><init>(IF)V

    .line 229
    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->putAll(Ljava/util/Map;)V

    .line 227
    return-void
.end method

.method private getEnumeration(I)Ljava/util/Enumeration;
    .locals 2
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I)",
            "Ljava/util/Enumeration",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    const/4 v1, 0x0

    .line 590
    iget v0, p0, Ljava/util/Hashtable;->count:I

    if-nez v0, :cond_0

    .line 591
    invoke-static {}, Ljava/util/Collections;->emptyEnumeration()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0

    .line 593
    :cond_0
    new-instance v0, Ljava/util/Hashtable$Enumerator;

    invoke-direct {v0, p0, p1, v1}, Ljava/util/Hashtable$Enumerator;-><init>(Ljava/util/Hashtable;IZ)V

    return-object v0
.end method

.method private getIterator(I)Ljava/util/Iterator;
    .locals 2
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I)",
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 598
    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    iget v0, p0, Ljava/util/Hashtable;->count:I

    if-nez v0, :cond_0

    .line 599
    invoke-static {}, Ljava/util/Collections;->emptyIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0

    .line 601
    :cond_0
    new-instance v0, Ljava/util/Hashtable$Enumerator;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Ljava/util/Hashtable$Enumerator;-><init>(Ljava/util/Hashtable;IZ)V

    return-object v0
.end method

.method private static hash(Ljava/lang/Object;)I
    .locals 1
    .param p0, "k"    # Ljava/lang/Object;

    .prologue
    .line 172
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 9
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    const/4 v8, 0x0

    .line 993
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 996
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v4

    .line 997
    .local v4, "origlength":I
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    .line 1003
    .local v0, "elements":I
    int-to-float v6, v0

    iget v7, p0, Ljava/util/Hashtable;->loadFactor:F

    mul-float/2addr v6, v7

    float-to-int v6, v6

    div-int/lit8 v7, v0, 0x14

    add-int/2addr v6, v7

    add-int/lit8 v2, v6, 0x3

    .line 1004
    .local v2, "length":I
    if-le v2, v0, :cond_0

    and-int/lit8 v6, v2, 0x1

    if-nez v6, :cond_0

    .line 1005
    add-int/lit8 v2, v2, -0x1

    .line 1006
    :cond_0
    if-lez v4, :cond_1

    if-le v2, v4, :cond_1

    .line 1007
    move v2, v4

    .line 1009
    :cond_1
    new-array v3, v2, [Ljava/util/Hashtable$HashtableEntry;

    .line 1010
    .local v3, "newTable":[Ljava/util/Hashtable$HashtableEntry;, "[Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    int-to-float v6, v2

    iget v7, p0, Ljava/util/Hashtable;->loadFactor:F

    mul-float/2addr v6, v7

    const/high16 v7, 0x4f000000

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v6

    float-to-int v6, v6

    iput v6, p0, Ljava/util/Hashtable;->threshold:I

    .line 1011
    iput v8, p0, Ljava/util/Hashtable;->count:I

    .line 1014
    :goto_0
    if-lez v0, :cond_2

    .line 1015
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    .line 1016
    .local v1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v5

    .line 1018
    .local v5, "value":Ljava/lang/Object;, "TV;"
    invoke-direct {p0, v3, v1, v5}, Ljava/util/Hashtable;->reconstitutionPut([Ljava/util/Hashtable$HashtableEntry;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1014
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1020
    .end local v1    # "key":Ljava/lang/Object;, "TK;"
    .end local v5    # "value":Ljava/lang/Object;, "TV;"
    :cond_2
    iput-object v3, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    .line 990
    return-void
.end method

.method private reconstitutionPut([Ljava/util/Hashtable$HashtableEntry;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/Hashtable$HashtableEntry",
            "<TK;TV;>;TK;TV;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/StreamCorruptedException;
        }
    .end annotation

    .prologue
    .line 1037
    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    .local p1, "tab":[Ljava/util/Hashtable$HashtableEntry;, "[Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    .local p3, "value":Ljava/lang/Object;, "TV;"
    if-nez p3, :cond_0

    .line 1038
    new-instance v3, Ljava/io/StreamCorruptedException;

    invoke-direct {v3}, Ljava/io/StreamCorruptedException;-><init>()V

    throw v3

    .line 1042
    :cond_0
    invoke-static {p2}, Ljava/util/Hashtable;->hash(Ljava/lang/Object;)I

    move-result v1

    .line 1043
    .local v1, "hash":I
    const v3, 0x7fffffff

    and-int/2addr v3, v1

    array-length v4, p1

    rem-int v2, v3, v4

    .line 1044
    .local v2, "index":I
    aget-object v0, p1, v2

    .local v0, "e":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    :goto_0
    if-eqz v0, :cond_2

    .line 1045
    iget v3, v0, Ljava/util/Hashtable$HashtableEntry;->hash:I

    if-ne v3, v1, :cond_1

    iget-object v3, v0, Ljava/util/Hashtable$HashtableEntry;->key:Ljava/lang/Object;

    invoke-virtual {v3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1046
    new-instance v3, Ljava/io/StreamCorruptedException;

    invoke-direct {v3}, Ljava/io/StreamCorruptedException;-><init>()V

    throw v3

    .line 1044
    :cond_1
    iget-object v0, v0, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;

    goto :goto_0

    .line 1050
    :cond_2
    aget-object v0, p1, v2

    .line 1051
    new-instance v3, Ljava/util/Hashtable$HashtableEntry;

    invoke-direct {v3, v1, p2, p3, v0}, Ljava/util/Hashtable$HashtableEntry;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/Hashtable$HashtableEntry;)V

    aput-object v3, p1, v2

    .line 1052
    iget v3, p0, Ljava/util/Hashtable;->count:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Ljava/util/Hashtable;->count:I

    .line 1035
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 7
    .param p1, "s"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 956
    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    const/4 v1, 0x0

    .line 958
    .local v1, "entryStack":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    monitor-enter p0

    .line 960
    :try_start_0
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 963
    iget-object v4, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    array-length v4, v4

    invoke-virtual {p1, v4}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 964
    iget v4, p0, Ljava/util/Hashtable;->count:I

    invoke-virtual {p1, v4}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 967
    const/4 v3, 0x0

    .end local v1    # "entryStack":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    .local v3, "index":I
    :goto_0
    iget-object v4, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    array-length v4, v4

    if-ge v3, v4, :cond_1

    .line 968
    iget-object v4, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    aget-object v0, v4, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v0, "entry":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    move-object v2, v1

    .line 970
    .local v2, "entryStack":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    :goto_1
    if-eqz v0, :cond_0

    .line 972
    :try_start_1
    new-instance v1, Ljava/util/Hashtable$HashtableEntry;

    iget-object v4, v0, Ljava/util/Hashtable$HashtableEntry;->key:Ljava/lang/Object;

    iget-object v5, v0, Ljava/util/Hashtable$HashtableEntry;->value:Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-direct {v1, v6, v4, v5, v2}, Ljava/util/Hashtable$HashtableEntry;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/Hashtable$HashtableEntry;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 973
    .end local v2    # "entryStack":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    .local v1, "entryStack":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    :try_start_2
    iget-object v0, v0, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v2, v1

    .end local v1    # "entryStack":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    .restart local v2    # "entryStack":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    goto :goto_1

    .line 967
    :cond_0
    add-int/lit8 v3, v3, 0x1

    move-object v1, v2

    .end local v2    # "entryStack":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    .restart local v1    # "entryStack":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    goto :goto_0

    .end local v0    # "entry":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    .end local v1    # "entryStack":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    :cond_1
    monitor-exit p0

    .line 979
    :goto_2
    if-eqz v1, :cond_2

    .line 980
    iget-object v4, v1, Ljava/util/Hashtable$HashtableEntry;->key:Ljava/lang/Object;

    invoke-virtual {p1, v4}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 981
    iget-object v4, v1, Ljava/util/Hashtable$HashtableEntry;->value:Ljava/lang/Object;

    invoke-virtual {p1, v4}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 982
    iget-object v1, v1, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;

    .restart local v1    # "entryStack":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    goto :goto_2

    .line 958
    .end local v1    # "entryStack":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    .end local v3    # "index":I
    :catchall_0
    move-exception v4

    :goto_3
    monitor-exit p0

    throw v4

    .line 955
    .restart local v3    # "index":I
    :cond_2
    return-void

    .line 958
    .restart local v0    # "entry":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    .restart local v2    # "entryStack":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    :catchall_1
    move-exception v4

    move-object v1, v2

    .end local v2    # "entryStack":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    .restart local v1    # "entryStack":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    goto :goto_3
.end method


# virtual methods
.method public declared-synchronized clear()V
    .locals 3

    .prologue
    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    monitor-enter p0

    .line 522
    :try_start_0
    iget-object v1, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    .line 523
    .local v1, "tab":[Ljava/util/Hashtable$HashtableEntry;
    iget v2, p0, Ljava/util/Hashtable;->modCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ljava/util/Hashtable;->modCount:I

    .line 524
    array-length v0, v1

    .local v0, "index":I
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_0

    .line 525
    const/4 v2, 0x0

    aput-object v2, v1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .end local v0    # "index":I
    .end local v1    # "tab":[Ljava/util/Hashtable$HashtableEntry;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 526
    .restart local v0    # "index":I
    .restart local v1    # "tab":[Ljava/util/Hashtable$HashtableEntry;
    :cond_0
    const/4 v2, 0x0

    :try_start_1
    iput v2, p0, Ljava/util/Hashtable;->count:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 521
    return-void
.end method

.method public declared-synchronized clone()Ljava/lang/Object;
    .locals 7

    .prologue
    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    const/4 v5, 0x0

    monitor-enter p0

    .line 538
    :try_start_0
    invoke-super {p0}, Ljava/util/Dictionary;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Hashtable;

    .line 539
    .local v3, "t":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    iget-object v4, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    array-length v4, v4

    new-array v4, v4, [Ljava/util/Hashtable$HashtableEntry;

    iput-object v4, v3, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    .line 540
    iget-object v4, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    array-length v1, v4

    .local v1, "i":I
    :goto_0
    add-int/lit8 v2, v1, -0x1

    .end local v1    # "i":I
    .local v2, "i":I
    if-lez v1, :cond_1

    .line 541
    iget-object v6, v3, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    iget-object v4, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    aget-object v4, v4, v2

    if-eqz v4, :cond_0

    .line 542
    iget-object v4, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Ljava/util/Hashtable$HashtableEntry;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Hashtable$HashtableEntry;

    .line 541
    :goto_1
    aput-object v4, v6, v2

    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_0

    .end local v1    # "i":I
    .restart local v2    # "i":I
    :cond_0
    move-object v4, v5

    .line 542
    goto :goto_1

    .line 544
    :cond_1
    const/4 v4, 0x0

    iput-object v4, v3, Ljava/util/Hashtable;->keySet:Ljava/util/Set;

    .line 545
    const/4 v4, 0x0

    iput-object v4, v3, Ljava/util/Hashtable;->entrySet:Ljava/util/Set;

    .line 546
    const/4 v4, 0x0

    iput-object v4, v3, Ljava/util/Hashtable;->values:Ljava/util/Collection;

    .line 547
    const/4 v4, 0x0

    iput v4, v3, Ljava/util/Hashtable;->modCount:I
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 548
    return-object v3

    .line 549
    .end local v2    # "i":I
    .end local v3    # "t":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    :catch_0
    move-exception v0

    .line 551
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    :try_start_1
    new-instance v4, Ljava/lang/InternalError;

    invoke-direct {v4}, Ljava/lang/InternalError;-><init>()V

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v0    # "e":Ljava/lang/CloneNotSupportedException;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized compute(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/function/BiFunction",
            "<-TK;-TV;+TV;>;)TV;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "remappingFunction":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TK;-TV;+TV;>;"
    monitor-enter p0

    .line 934
    :try_start_0
    invoke-super {p0, p1, p2}, Ljava/util/Map;->compute(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/function/Function",
            "<-TK;+TV;>;)TV;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "mappingFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<-TK;+TV;>;"
    monitor-enter p0

    .line 922
    :try_start_0
    invoke-super {p0, p1, p2}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized computeIfPresent(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/function/BiFunction",
            "<-TK;-TV;+TV;>;)TV;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "remappingFunction":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TK;-TV;+TV;>;"
    monitor-enter p0

    .line 928
    :try_start_0
    invoke-super {p0, p1, p2}, Ljava/util/Map;->computeIfPresent(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized contains(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    const/4 v5, 0x0

    monitor-enter p0

    .line 296
    if-nez p1, :cond_0

    .line 297
    :try_start_0
    new-instance v4, Ljava/lang/NullPointerException;

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 300
    :cond_0
    :try_start_1
    iget-object v3, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    .line 301
    .local v3, "tab":[Ljava/util/Hashtable$HashtableEntry;
    array-length v1, v3

    .local v1, "i":I
    :goto_0
    add-int/lit8 v2, v1, -0x1

    .end local v1    # "i":I
    .local v2, "i":I
    if-lez v1, :cond_3

    .line 302
    aget-object v0, v3, v2

    .local v0, "e":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    :goto_1
    if-eqz v0, :cond_2

    .line 303
    iget-object v4, v0, Ljava/util/Hashtable$HashtableEntry;->value:Ljava/lang/Object;

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    .line 304
    const/4 v4, 0x1

    monitor-exit p0

    return v4

    .line 302
    :cond_1
    :try_start_2
    iget-object v0, v0, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :cond_2
    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_0

    .end local v0    # "e":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    .end local v1    # "i":I
    .restart local v2    # "i":I
    :cond_3
    monitor-exit p0

    .line 308
    return v5
.end method

.method public declared-synchronized containsKey(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    monitor-enter p0

    .line 338
    :try_start_0
    iget-object v3, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    .line 339
    .local v3, "tab":[Ljava/util/Hashtable$HashtableEntry;
    invoke-static {p1}, Ljava/util/Hashtable;->hash(Ljava/lang/Object;)I

    move-result v1

    .line 340
    .local v1, "hash":I
    const v4, 0x7fffffff

    and-int/2addr v4, v1

    array-length v5, v3

    rem-int v2, v4, v5

    .line 341
    .local v2, "index":I
    aget-object v0, v3, v2

    .local v0, "e":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    :goto_0
    if-eqz v0, :cond_1

    .line 342
    iget v4, v0, Ljava/util/Hashtable$HashtableEntry;->hash:I

    if-ne v4, v1, :cond_0

    iget-object v4, v0, Ljava/util/Hashtable$HashtableEntry;->key:Ljava/lang/Object;

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_0

    .line 343
    const/4 v4, 0x1

    monitor-exit p0

    return v4

    .line 341
    :cond_0
    :try_start_1
    iget-object v0, v0, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 346
    :cond_1
    const/4 v4, 0x0

    monitor-exit p0

    return v4

    .end local v0    # "e":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    .end local v1    # "hash":I
    .end local v2    # "index":I
    .end local v3    # "tab":[Ljava/util/Hashtable$HashtableEntry;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 324
    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized elements()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    monitor-enter p0

    .line 276
    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, v0}, Ljava/util/Hashtable;->getEnumeration(I)Ljava/util/Enumeration;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 2
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
    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    const/4 v1, 0x0

    .line 672
    iget-object v0, p0, Ljava/util/Hashtable;->entrySet:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 673
    new-instance v0, Ljava/util/Hashtable$EntrySet;

    invoke-direct {v0, p0, v1}, Ljava/util/Hashtable$EntrySet;-><init>(Ljava/util/Hashtable;Ljava/util/Hashtable$EntrySet;)V

    invoke-static {v0, p0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Ljava/util/Hashtable;->entrySet:Ljava/util/Set;

    .line 674
    :cond_0
    iget-object v0, p0, Ljava/util/Hashtable;->entrySet:Ljava/util/Set;

    return-object v0
.end method

.method public declared-synchronized equals(Ljava/lang/Object;)Z
    .locals 12
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    const/4 v11, 0x1

    const/4 v9, 0x0

    monitor-enter p0

    .line 785
    if-ne p1, p0, :cond_0

    monitor-exit p0

    .line 786
    return v11

    .line 788
    :cond_0
    :try_start_0
    instance-of v8, p1, Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v8, :cond_1

    monitor-exit p0

    .line 789
    return v9

    .line 790
    :cond_1
    :try_start_1
    move-object v0, p1

    check-cast v0, Ljava/util/Map;

    move-object v4, v0

    .line 791
    .local v4, "t":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v8

    invoke-virtual {p0}, Ljava/util/Hashtable;->size()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v10

    if-eq v8, v10, :cond_2

    monitor-exit p0

    .line 792
    return v9

    .line 795
    :cond_2
    :try_start_2
    invoke-virtual {p0}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 796
    .local v2, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TV;>;>;"
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 797
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 798
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    .line 799
    .local v3, "key":Ljava/lang/Object;, "TK;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    .line 800
    .local v7, "value":Ljava/lang/Object;, "TV;"
    if-nez v7, :cond_5

    .line 801
    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_4

    invoke-interface {v4, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v8

    :goto_0
    if-nez v8, :cond_3

    monitor-exit p0

    .line 802
    return v9

    :cond_4
    move v8, v9

    .line 801
    goto :goto_0

    .line 804
    :cond_5
    :try_start_3
    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v8

    if-nez v8, :cond_3

    monitor-exit p0

    .line 805
    return v9

    .line 810
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    .end local v2    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TV;>;>;"
    .end local v3    # "key":Ljava/lang/Object;, "TK;"
    .end local v7    # "value":Ljava/lang/Object;, "TV;"
    :catch_0
    move-exception v6

    .local v6, "unused":Ljava/lang/NullPointerException;
    monitor-exit p0

    .line 811
    return v9

    .line 808
    .end local v6    # "unused":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v5

    .local v5, "unused":Ljava/lang/ClassCastException;
    monitor-exit p0

    .line 809
    return v9

    .end local v5    # "unused":Ljava/lang/ClassCastException;
    .restart local v2    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TV;>;>;"
    :cond_6
    monitor-exit p0

    .line 814
    return v11

    .end local v2    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TV;>;>;"
    .end local v4    # "t":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8
.end method

.method public declared-synchronized forEach(Ljava/util/function/BiConsumer;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiConsumer",
            "<-TK;-TV;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    .local p1, "action":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<-TK;-TV;>;"
    monitor-enter p0

    .line 854
    :try_start_0
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 856
    iget v1, p0, Ljava/util/Hashtable;->modCount:I

    .line 858
    .local v1, "expectedModCount":I
    iget-object v2, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    .line 859
    .local v2, "tab":[Ljava/util/Hashtable$HashtableEntry;, "[Ljava/util/Hashtable$HashtableEntry<**>;"
    const/4 v3, 0x0

    array-length v4, v2

    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v0, v2, v3

    .line 860
    .local v0, "entry":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<**>;"
    :cond_0
    if-eqz v0, :cond_1

    .line 861
    iget-object v5, v0, Ljava/util/Hashtable$HashtableEntry;->key:Ljava/lang/Object;

    iget-object v6, v0, Ljava/util/Hashtable$HashtableEntry;->value:Ljava/lang/Object;

    invoke-interface {p1, v5, v6}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 862
    iget-object v0, v0, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;

    .line 864
    iget v5, p0, Ljava/util/Hashtable;->modCount:I

    if-eq v1, v5, :cond_0

    .line 865
    new-instance v3, Ljava/util/ConcurrentModificationException;

    invoke-direct {v3}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "entry":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<**>;"
    .end local v1    # "expectedModCount":I
    .end local v2    # "tab":[Ljava/util/Hashtable$HashtableEntry;, "[Ljava/util/Hashtable$HashtableEntry<**>;"
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 859
    .restart local v0    # "entry":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<**>;"
    .restart local v1    # "expectedModCount":I
    .restart local v2    # "tab":[Ljava/util/Hashtable$HashtableEntry;, "[Ljava/util/Hashtable$HashtableEntry<**>;"
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v0    # "entry":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<**>;"
    :cond_2
    monitor-exit p0

    .line 853
    return-void
.end method

.method public declared-synchronized get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    const/4 v6, 0x0

    monitor-enter p0

    .line 365
    :try_start_0
    iget-object v3, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    .line 366
    .local v3, "tab":[Ljava/util/Hashtable$HashtableEntry;
    invoke-static {p1}, Ljava/util/Hashtable;->hash(Ljava/lang/Object;)I

    move-result v1

    .line 367
    .local v1, "hash":I
    const v4, 0x7fffffff

    and-int/2addr v4, v1

    array-length v5, v3

    rem-int v2, v4, v5

    .line 368
    .local v2, "index":I
    aget-object v0, v3, v2

    .local v0, "e":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    :goto_0
    if-eqz v0, :cond_1

    .line 369
    iget v4, v0, Ljava/util/Hashtable$HashtableEntry;->hash:I

    if-ne v4, v1, :cond_0

    iget-object v4, v0, Ljava/util/Hashtable$HashtableEntry;->key:Ljava/lang/Object;

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 370
    iget-object v4, v0, Ljava/util/Hashtable$HashtableEntry;->value:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v4

    .line 368
    :cond_0
    :try_start_1
    iget-object v0, v0, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_1
    monitor-exit p0

    .line 373
    return-object v6

    .end local v0    # "e":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    .end local v1    # "hash":I
    .end local v2    # "index":I
    .end local v3    # "tab":[Ljava/util/Hashtable$HashtableEntry;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "TV;)TV;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    .local p2, "defaultValue":Ljava/lang/Object;, "TV;"
    monitor-enter p0

    .line 896
    :try_start_0
    invoke-super {p0, p1, p2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized hashCode()I
    .locals 6

    .prologue
    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    const/4 v3, 0x0

    monitor-enter p0

    .line 835
    const/4 v1, 0x0

    .line 836
    .local v1, "h":I
    :try_start_0
    iget v4, p0, Ljava/util/Hashtable;->count:I

    if-eqz v4, :cond_0

    iget v4, p0, Ljava/util/Hashtable;->loadFactor:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v5, 0x0

    cmpg-float v4, v4, v5

    if-gez v4, :cond_1

    :cond_0
    monitor-exit p0

    .line 837
    return v3

    .line 839
    :cond_1
    :try_start_1
    iget v4, p0, Ljava/util/Hashtable;->loadFactor:F

    neg-float v4, v4

    iput v4, p0, Ljava/util/Hashtable;->loadFactor:F

    .line 840
    iget-object v2, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    .line 841
    .local v2, "tab":[Ljava/util/Hashtable$HashtableEntry;
    array-length v4, v2

    :goto_0
    if-ge v3, v4, :cond_3

    aget-object v0, v2, v3

    .line 842
    .local v0, "entry":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    :goto_1
    if-eqz v0, :cond_2

    .line 843
    invoke-virtual {v0}, Ljava/util/Hashtable$HashtableEntry;->hashCode()I

    move-result v5

    add-int/2addr v1, v5

    .line 844
    iget-object v0, v0, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;

    goto :goto_1

    .line 841
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 846
    .end local v0    # "entry":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    :cond_3
    iget v3, p0, Ljava/util/Hashtable;->loadFactor:F

    neg-float v3, v3

    iput v3, p0, Ljava/util/Hashtable;->loadFactor:F
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 848
    return v1

    .end local v2    # "tab":[Ljava/util/Hashtable$HashtableEntry;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized isEmpty()Z
    .locals 2

    .prologue
    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    const/4 v0, 0x0

    monitor-enter p0

    .line 248
    :try_start_0
    iget v1, p0, Ljava/util/Hashtable;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    const/4 v1, 0x0

    .line 632
    iget-object v0, p0, Ljava/util/Hashtable;->keySet:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 633
    new-instance v0, Ljava/util/Hashtable$KeySet;

    invoke-direct {v0, p0, v1}, Ljava/util/Hashtable$KeySet;-><init>(Ljava/util/Hashtable;Ljava/util/Hashtable$KeySet;)V

    invoke-static {v0, p0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Ljava/util/Hashtable;->keySet:Ljava/util/Set;

    .line 634
    :cond_0
    iget-object v0, p0, Ljava/util/Hashtable;->keySet:Ljava/util/Set;

    return-object v0
.end method

.method public declared-synchronized keys()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    monitor-enter p0

    .line 261
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, v0}, Ljava/util/Hashtable;->getEnumeration(I)Ljava/util/Enumeration;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized merge(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;",
            "Ljava/util/function/BiFunction",
            "<-TV;-TV;+TV;>;)TV;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    .local p3, "remappingFunction":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TV;-TV;+TV;>;"
    monitor-enter p0

    .line 940
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Ljava/util/Map;->merge(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    const v8, 0x7fffffff

    const/4 v7, 0x0

    monitor-enter p0

    .line 441
    if-nez p2, :cond_0

    .line 442
    :try_start_0
    new-instance v5, Ljava/lang/NullPointerException;

    invoke-direct {v5}, Ljava/lang/NullPointerException;-><init>()V

    throw v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 446
    :cond_0
    :try_start_1
    iget-object v4, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    .line 447
    .local v4, "tab":[Ljava/util/Hashtable$HashtableEntry;
    invoke-static {p1}, Ljava/util/Hashtable;->hash(Ljava/lang/Object;)I

    move-result v1

    .line 448
    .local v1, "hash":I
    and-int v5, v1, v8

    array-length v6, v4

    rem-int v2, v5, v6

    .line 449
    .local v2, "index":I
    aget-object v0, v4, v2

    .local v0, "e":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    :goto_0
    if-eqz v0, :cond_2

    .line 450
    iget v5, v0, Ljava/util/Hashtable$HashtableEntry;->hash:I

    if-ne v5, v1, :cond_1

    iget-object v5, v0, Ljava/util/Hashtable$HashtableEntry;->key:Ljava/lang/Object;

    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 451
    iget-object v3, v0, Ljava/util/Hashtable$HashtableEntry;->value:Ljava/lang/Object;

    .line 452
    .local v3, "old":Ljava/lang/Object;, "TV;"
    iput-object p2, v0, Ljava/util/Hashtable$HashtableEntry;->value:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 453
    return-object v3

    .line 449
    .end local v3    # "old":Ljava/lang/Object;, "TV;"
    :cond_1
    :try_start_2
    iget-object v0, v0, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;

    goto :goto_0

    .line 457
    :cond_2
    iget v5, p0, Ljava/util/Hashtable;->modCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Ljava/util/Hashtable;->modCount:I

    .line 458
    iget v5, p0, Ljava/util/Hashtable;->count:I

    iget v6, p0, Ljava/util/Hashtable;->threshold:I

    if-lt v5, v6, :cond_3

    .line 460
    invoke-virtual {p0}, Ljava/util/Hashtable;->rehash()V

    .line 462
    iget-object v4, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    .line 463
    invoke-static {p1}, Ljava/util/Hashtable;->hash(Ljava/lang/Object;)I

    move-result v1

    .line 464
    and-int v5, v1, v8

    array-length v6, v4

    rem-int v2, v5, v6

    .line 468
    :cond_3
    aget-object v0, v4, v2

    .line 469
    new-instance v5, Ljava/util/Hashtable$HashtableEntry;

    invoke-direct {v5, v1, p1, p2, v0}, Ljava/util/Hashtable$HashtableEntry;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/Hashtable$HashtableEntry;)V

    aput-object v5, v4, v2

    .line 470
    iget v5, p0, Ljava/util/Hashtable;->count:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Ljava/util/Hashtable;->count:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    .line 471
    return-object v7
.end method

.method public declared-synchronized putAll(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    .local p1, "t":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    monitor-enter p0

    .line 514
    :try_start_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "e$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 515
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    .end local v1    # "e$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .restart local v1    # "e$iterator":Ljava/util/Iterator;
    :cond_0
    monitor-exit p0

    .line 513
    return-void
.end method

.method public declared-synchronized putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    monitor-enter p0

    .line 901
    :try_start_0
    invoke-super {p0, p1, p2}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected rehash()V
    .locals 11

    .prologue
    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    const v10, 0x7ffffff7

    .line 392
    iget-object v9, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    array-length v7, v9

    .line 393
    .local v7, "oldCapacity":I
    iget-object v8, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    .line 396
    .local v8, "oldMap":[Ljava/util/Hashtable$HashtableEntry;, "[Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    shl-int/lit8 v9, v7, 0x1

    add-int/lit8 v4, v9, 0x1

    .line 397
    .local v4, "newCapacity":I
    sub-int v9, v4, v10

    if-lez v9, :cond_1

    .line 398
    if-ne v7, v10, :cond_0

    .line 400
    return-void

    .line 401
    :cond_0
    const v4, 0x7ffffff7

    .line 403
    :cond_1
    new-array v5, v4, [Ljava/util/Hashtable$HashtableEntry;

    .line 405
    .local v5, "newMap":[Ljava/util/Hashtable$HashtableEntry;, "[Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    iget v9, p0, Ljava/util/Hashtable;->modCount:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Ljava/util/Hashtable;->modCount:I

    .line 406
    int-to-float v9, v4

    iget v10, p0, Ljava/util/Hashtable;->loadFactor:F

    mul-float/2addr v9, v10

    const/high16 v10, 0x4f000000

    invoke-static {v9, v10}, Ljava/lang/Math;->min(FF)F

    move-result v9

    float-to-int v9, v9

    iput v9, p0, Ljava/util/Hashtable;->threshold:I

    .line 408
    iput-object v5, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    .line 410
    move v1, v7

    .local v1, "i":I
    move v2, v1

    .end local v1    # "i":I
    .local v2, "i":I
    :goto_0
    add-int/lit8 v1, v2, -0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    if-lez v2, :cond_3

    .line 411
    aget-object v6, v8, v1

    .local v6, "old":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    :goto_1
    if-eqz v6, :cond_2

    .line 412
    move-object v0, v6

    .line 413
    .local v0, "e":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    iget-object v6, v6, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;

    .line 415
    iget v9, v0, Ljava/util/Hashtable$HashtableEntry;->hash:I

    const v10, 0x7fffffff

    and-int/2addr v9, v10

    rem-int v3, v9, v4

    .line 416
    .local v3, "index":I
    aget-object v9, v5, v3

    iput-object v9, v0, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;

    .line 417
    aput-object v0, v5, v3

    goto :goto_1

    .end local v0    # "e":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    .end local v3    # "index":I
    :cond_2
    move v2, v1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_0

    .line 391
    .end local v2    # "i":I
    .end local v6    # "old":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    .restart local v1    # "i":I
    :cond_3
    return-void
.end method

.method public declared-synchronized remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    const/4 v8, 0x0

    monitor-enter p0

    .line 484
    :try_start_0
    iget-object v5, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    .line 485
    .local v5, "tab":[Ljava/util/Hashtable$HashtableEntry;
    invoke-static {p1}, Ljava/util/Hashtable;->hash(Ljava/lang/Object;)I

    move-result v1

    .line 486
    .local v1, "hash":I
    const v6, 0x7fffffff

    and-int/2addr v6, v1

    array-length v7, v5

    rem-int v2, v6, v7

    .line 487
    .local v2, "index":I
    aget-object v0, v5, v2

    .local v0, "e":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    const/4 v4, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 488
    iget v6, v0, Ljava/util/Hashtable$HashtableEntry;->hash:I

    if-ne v6, v1, :cond_1

    iget-object v6, v0, Ljava/util/Hashtable$HashtableEntry;->key:Ljava/lang/Object;

    invoke-virtual {v6, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 489
    iget v6, p0, Ljava/util/Hashtable;->modCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Ljava/util/Hashtable;->modCount:I

    .line 490
    if-eqz v4, :cond_0

    .line 491
    iget-object v6, v0, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;

    iput-object v6, v4, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;

    .line 495
    :goto_1
    iget v6, p0, Ljava/util/Hashtable;->count:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Ljava/util/Hashtable;->count:I

    .line 496
    iget-object v3, v0, Ljava/util/Hashtable$HashtableEntry;->value:Ljava/lang/Object;

    .line 497
    .local v3, "oldValue":Ljava/lang/Object;, "TV;"
    const/4 v6, 0x0

    iput-object v6, v0, Ljava/util/Hashtable$HashtableEntry;->value:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 498
    return-object v3

    .line 493
    .end local v3    # "oldValue":Ljava/lang/Object;, "TV;"
    :cond_0
    :try_start_1
    iget-object v6, v0, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;

    aput-object v6, v5, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .end local v0    # "e":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    .end local v1    # "hash":I
    .end local v2    # "index":I
    .end local v5    # "tab":[Ljava/util/Hashtable$HashtableEntry;
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 487
    .restart local v0    # "e":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    .restart local v1    # "hash":I
    .restart local v2    # "index":I
    .restart local v5    # "tab":[Ljava/util/Hashtable$HashtableEntry;
    :cond_1
    move-object v4, v0

    .local v4, "prev":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    :try_start_2
    iget-object v0, v0, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .end local v4    # "prev":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    :cond_2
    monitor-exit p0

    .line 501
    return-object v8
.end method

.method public declared-synchronized remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    monitor-enter p0

    .line 906
    :try_start_0
    invoke-super {p0, p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    monitor-enter p0

    .line 916
    :try_start_0
    invoke-super {p0, p1, p2}, Ljava/util/Map;->replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;TV;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "oldValue":Ljava/lang/Object;, "TV;"
    .local p3, "newValue":Ljava/lang/Object;, "TV;"
    monitor-enter p0

    .line 911
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Ljava/util/Map;->replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized replaceAll(Ljava/util/function/BiFunction;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiFunction",
            "<-TK;-TV;+TV;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    .local p1, "function":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TK;-TV;+TV;>;"
    monitor-enter p0

    .line 873
    :try_start_0
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 875
    iget v1, p0, Ljava/util/Hashtable;->modCount:I

    .line 877
    .local v1, "expectedModCount":I
    iget-object v2, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    .line 878
    .local v2, "tab":[Ljava/util/Hashtable$HashtableEntry;, "[Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    const/4 v3, 0x0

    array-length v4, v2

    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v0, v2, v3

    .line 879
    .local v0, "entry":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    :cond_0
    if-eqz v0, :cond_1

    .line 881
    iget-object v5, v0, Ljava/util/Hashtable$HashtableEntry;->key:Ljava/lang/Object;

    iget-object v6, v0, Ljava/util/Hashtable$HashtableEntry;->value:Ljava/lang/Object;

    invoke-interface {p1, v5, v6}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 880
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v0, Ljava/util/Hashtable$HashtableEntry;->value:Ljava/lang/Object;

    .line 882
    iget-object v0, v0, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;

    .line 884
    iget v5, p0, Ljava/util/Hashtable;->modCount:I

    if-eq v1, v5, :cond_0

    .line 885
    new-instance v3, Ljava/util/ConcurrentModificationException;

    invoke-direct {v3}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "entry":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    .end local v1    # "expectedModCount":I
    .end local v2    # "tab":[Ljava/util/Hashtable$HashtableEntry;, "[Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 878
    .restart local v0    # "entry":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    .restart local v1    # "expectedModCount":I
    .restart local v2    # "tab":[Ljava/util/Hashtable$HashtableEntry;, "[Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v0    # "entry":Ljava/util/Hashtable$HashtableEntry;, "Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    :cond_2
    monitor-exit p0

    .line 872
    return-void
.end method

.method public declared-synchronized size()I
    .locals 1

    .prologue
    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    monitor-enter p0

    .line 238
    :try_start_0
    iget v0, p0, Ljava/util/Hashtable;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .locals 8

    .prologue
    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    monitor-enter p0

    .line 566
    :try_start_0
    invoke-virtual {p0}, Ljava/util/Hashtable;->size()I

    move-result v7

    add-int/lit8 v4, v7, -0x1

    .line 567
    .local v4, "max":I
    const/4 v7, -0x1

    if-ne v4, v7, :cond_0

    .line 568
    const-string/jumbo v7, "{}"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v7

    .line 570
    :cond_0
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 571
    .local v5, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 573
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TV;>;>;"
    const/16 v7, 0x7b

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 574
    const/4 v1, 0x0

    .line 575
    .local v1, "i":I
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 576
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    .line 577
    .local v3, "key":Ljava/lang/Object;, "TK;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    .line 578
    .local v6, "value":Ljava/lang/Object;, "TV;"
    if-ne v3, p0, :cond_1

    const-string/jumbo v7, "(this Map)"

    :goto_1
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 579
    const/16 v7, 0x3d

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 580
    if-ne v6, p0, :cond_2

    const-string/jumbo v7, "(this Map)"

    :goto_2
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 582
    if-ne v1, v4, :cond_3

    .line 583
    const/16 v7, 0x7d

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v7

    monitor-exit p0

    return-object v7

    .line 578
    :cond_1
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    .line 580
    :cond_2
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    .line 584
    :cond_3
    const-string/jumbo v7, ", "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 574
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    .end local v1    # "i":I
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TV;>;>;"
    .end local v3    # "key":Ljava/lang/Object;, "TK;"
    .end local v4    # "max":I
    .end local v5    # "sb":Ljava/lang/StringBuilder;
    .end local v6    # "value":Ljava/lang/Object;, "TV;"
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7
.end method

.method public values()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/Hashtable;, "Ljava/util/Hashtable<TK;TV;>;"
    const/4 v1, 0x0

    .line 752
    iget-object v0, p0, Ljava/util/Hashtable;->values:Ljava/util/Collection;

    if-nez v0, :cond_0

    .line 753
    new-instance v0, Ljava/util/Hashtable$ValueCollection;

    invoke-direct {v0, p0, v1}, Ljava/util/Hashtable$ValueCollection;-><init>(Ljava/util/Hashtable;Ljava/util/Hashtable$ValueCollection;)V

    invoke-static {v0, p0}, Ljava/util/Collections;->synchronizedCollection(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Ljava/util/Hashtable;->values:Ljava/util/Collection;

    .line 755
    :cond_0
    iget-object v0, p0, Ljava/util/Hashtable;->values:Ljava/util/Collection;

    return-object v0
.end method
