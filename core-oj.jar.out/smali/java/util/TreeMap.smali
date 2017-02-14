.class public Ljava/util/TreeMap;
.super Ljava/util/AbstractMap;
.source "TreeMap.java"

# interfaces
.implements Ljava/util/NavigableMap;
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/TreeMap$AscendingSubMap;,
        Ljava/util/TreeMap$DescendingKeyIterator;,
        Ljava/util/TreeMap$DescendingKeySpliterator;,
        Ljava/util/TreeMap$DescendingSubMap;,
        Ljava/util/TreeMap$EntryIterator;,
        Ljava/util/TreeMap$EntrySet;,
        Ljava/util/TreeMap$EntrySpliterator;,
        Ljava/util/TreeMap$KeyIterator;,
        Ljava/util/TreeMap$KeySet;,
        Ljava/util/TreeMap$KeySpliterator;,
        Ljava/util/TreeMap$NavigableSubMap;,
        Ljava/util/TreeMap$PrivateEntryIterator;,
        Ljava/util/TreeMap$SubMap;,
        Ljava/util/TreeMap$TreeMapEntry;,
        Ljava/util/TreeMap$TreeMapSpliterator;,
        Ljava/util/TreeMap$ValueIterator;,
        Ljava/util/TreeMap$ValueSpliterator;,
        Ljava/util/TreeMap$Values;
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
        "Ljava/util/NavigableMap",
        "<TK;TV;>;",
        "Ljava/lang/Cloneable;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final BLACK:Z = true

.field private static final RED:Z = false

.field private static final UNBOUNDED:Ljava/lang/Object;

.field private static final serialVersionUID:J = 0xcc1f63e2d256ae6L


# instance fields
.field private final comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<-TK;>;"
        }
    .end annotation
.end field

.field private transient descendingMap:Ljava/util/NavigableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/NavigableMap",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private transient entrySet:Ljava/util/TreeMap$EntrySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<TK;TV;>.EntrySet;"
        }
    .end annotation
.end field

.field private transient modCount:I

.field private transient navigableKeySet:Ljava/util/TreeMap$KeySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap$KeySet",
            "<TK;>;"
        }
    .end annotation
.end field

.field private transient root:Ljava/util/TreeMap$TreeMapEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap$TreeMapEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private transient size:I


# direct methods
.method static synthetic -get0()Ljava/lang/Object;
    .locals 1

    sget-object v0, Ljava/util/TreeMap;->UNBOUNDED:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get1(Ljava/util/TreeMap;)Ljava/util/Comparator;
    .locals 1

    iget-object v0, p0, Ljava/util/TreeMap;->comparator:Ljava/util/Comparator;

    return-object v0
.end method

.method static synthetic -get2(Ljava/util/TreeMap;)I
    .locals 1

    iget v0, p0, Ljava/util/TreeMap;->modCount:I

    return v0
.end method

.method static synthetic -get3(Ljava/util/TreeMap;)Ljava/util/TreeMap$TreeMapEntry;
    .locals 1

    iget-object v0, p0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$TreeMapEntry;

    return-object v0
.end method

.method static synthetic -get4(Ljava/util/TreeMap;)I
    .locals 1

    iget v0, p0, Ljava/util/TreeMap;->size:I

    return v0
.end method

.method static synthetic -wrap0(Ljava/util/TreeMap;Ljava/util/TreeMap$TreeMapEntry;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/util/TreeMap;->deleteEntry(Ljava/util/TreeMap$TreeMapEntry;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ljava/util/TreeMap;->UNBOUNDED:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    iput-object v0, p0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$TreeMapEntry;

    iput v1, p0, Ljava/util/TreeMap;->size:I

    iput v1, p0, Ljava/util/TreeMap;->modCount:I

    iput-object v0, p0, Ljava/util/TreeMap;->entrySet:Ljava/util/TreeMap$EntrySet;

    iput-object v0, p0, Ljava/util/TreeMap;->navigableKeySet:Ljava/util/TreeMap$KeySet;

    iput-object v0, p0, Ljava/util/TreeMap;->descendingMap:Ljava/util/NavigableMap;

    iput-object v0, p0, Ljava/util/TreeMap;->comparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Ljava/util/Comparator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<-TK;>;)V"
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    iput-object v0, p0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$TreeMapEntry;

    iput v1, p0, Ljava/util/TreeMap;->size:I

    iput v1, p0, Ljava/util/TreeMap;->modCount:I

    iput-object v0, p0, Ljava/util/TreeMap;->entrySet:Ljava/util/TreeMap$EntrySet;

    iput-object v0, p0, Ljava/util/TreeMap;->navigableKeySet:Ljava/util/TreeMap$KeySet;

    iput-object v0, p0, Ljava/util/TreeMap;->descendingMap:Ljava/util/NavigableMap;

    iput-object p1, p0, Ljava/util/TreeMap;->comparator:Ljava/util/Comparator;

    return-void
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

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    iput-object v0, p0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$TreeMapEntry;

    iput v1, p0, Ljava/util/TreeMap;->size:I

    iput v1, p0, Ljava/util/TreeMap;->modCount:I

    iput-object v0, p0, Ljava/util/TreeMap;->entrySet:Ljava/util/TreeMap$EntrySet;

    iput-object v0, p0, Ljava/util/TreeMap;->navigableKeySet:Ljava/util/TreeMap$KeySet;

    iput-object v0, p0, Ljava/util/TreeMap;->descendingMap:Ljava/util/NavigableMap;

    iput-object v0, p0, Ljava/util/TreeMap;->comparator:Ljava/util/Comparator;

    invoke-virtual {p0, p1}, Ljava/util/TreeMap;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/SortedMap;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedMap",
            "<TK;+TV;>;)V"
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    iput-object v2, p0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$TreeMapEntry;

    iput v3, p0, Ljava/util/TreeMap;->size:I

    iput v3, p0, Ljava/util/TreeMap;->modCount:I

    iput-object v2, p0, Ljava/util/TreeMap;->entrySet:Ljava/util/TreeMap$EntrySet;

    iput-object v2, p0, Ljava/util/TreeMap;->navigableKeySet:Ljava/util/TreeMap$KeySet;

    iput-object v2, p0, Ljava/util/TreeMap;->descendingMap:Ljava/util/NavigableMap;

    invoke-interface {p1}, Ljava/util/SortedMap;->comparator()Ljava/util/Comparator;

    move-result-object v2

    iput-object v2, p0, Ljava/util/TreeMap;->comparator:Ljava/util/Comparator;

    :try_start_0
    invoke-interface {p1}, Ljava/util/SortedMap;->size()I

    move-result v2

    invoke-interface {p1}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {p0, v2, v3, v4, v5}, Ljava/util/TreeMap;->buildFromSorted(ILjava/util/Iterator;Ljava/io/ObjectInputStream;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private final buildFromSorted(IIIILjava/util/Iterator;Ljava/io/ObjectInputStream;Ljava/lang/Object;)Ljava/util/TreeMap$TreeMapEntry;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII",
            "Ljava/util/Iterator",
            "<*>;",
            "Ljava/io/ObjectInputStream;",
            "TV;)",
            "Ljava/util/TreeMap$TreeMapEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    move/from16 v0, p3

    move/from16 v1, p2

    if-ge v0, v1, :cond_0

    const/4 v2, 0x0

    return-object v2

    :cond_0
    add-int v2, p2, p3

    ushr-int/lit8 v13, v2, 0x1

    const/4 v12, 0x0

    move/from16 v0, p2

    if-ge v0, v13, :cond_1

    add-int/lit8 v3, p1, 0x1

    add-int/lit8 v5, v13, -0x1

    move-object/from16 v2, p0

    move/from16 v4, p2

    move/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v2 .. v9}, Ljava/util/TreeMap;->buildFromSorted(IIIILjava/util/Iterator;Ljava/io/ObjectInputStream;Ljava/lang/Object;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v12

    :cond_1
    if-eqz p5, :cond_6

    if-nez p7, :cond_5

    invoke-interface/range {p5 .. p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v16

    :goto_0
    new-instance v14, Ljava/util/TreeMap$TreeMapEntry;

    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-direct {v14, v11, v0, v2}, Ljava/util/TreeMap$TreeMapEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/TreeMap$TreeMapEntry;)V

    move/from16 v0, p1

    move/from16 v1, p4

    if-ne v0, v1, :cond_2

    const/4 v2, 0x0

    iput-boolean v2, v14, Ljava/util/TreeMap$TreeMapEntry;->color:Z

    :cond_2
    if-eqz v12, :cond_3

    iput-object v12, v14, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    iput-object v14, v12, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    :cond_3
    move/from16 v0, p3

    if-ge v13, v0, :cond_4

    add-int/lit8 v3, p1, 0x1

    add-int/lit8 v4, v13, 0x1

    move-object/from16 v2, p0

    move/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v2 .. v9}, Ljava/util/TreeMap;->buildFromSorted(IIIILjava/util/Iterator;Ljava/io/ObjectInputStream;Ljava/lang/Object;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v15

    iput-object v15, v14, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    iput-object v14, v15, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    :cond_4
    return-object v14

    :cond_5
    invoke-interface/range {p5 .. p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    move-object/from16 v16, p7

    goto :goto_0

    :cond_6
    invoke-virtual/range {p6 .. p6}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v11

    if-eqz p7, :cond_7

    move-object/from16 v16, p7

    goto :goto_0

    :cond_7
    invoke-virtual/range {p6 .. p6}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v16

    goto :goto_0
.end method

.method private buildFromSorted(ILjava/util/Iterator;Ljava/io/ObjectInputStream;Ljava/lang/Object;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Iterator",
            "<*>;",
            "Ljava/io/ObjectInputStream;",
            "TV;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    const/4 v1, 0x0

    iput p1, p0, Ljava/util/TreeMap;->size:I

    add-int/lit8 v3, p1, -0x1

    invoke-static {p1}, Ljava/util/TreeMap;->computeRedLevel(I)I

    move-result v4

    move-object v0, p0

    move v2, v1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Ljava/util/TreeMap;->buildFromSorted(IIIILjava/util/Iterator;Ljava/io/ObjectInputStream;Ljava/lang/Object;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v0

    iput-object v0, p0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$TreeMapEntry;

    return-void
.end method

.method private static colorOf(Ljava/util/TreeMap$TreeMapEntry;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/TreeMap$TreeMapEntry",
            "<TK;TV;>;)Z"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Ljava/util/TreeMap$TreeMapEntry;->color:Z

    goto :goto_0
.end method

.method private static computeRedLevel(I)I
    .locals 3

    const/4 v0, 0x0

    add-int/lit8 v1, p0, -0x1

    :goto_0
    if-ltz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    div-int/lit8 v2, v1, 0x2

    add-int/lit8 v1, v2, -0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method private deleteEntry(Ljava/util/TreeMap$TreeMapEntry;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap$TreeMapEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    const/4 v3, 0x0

    iget v2, p0, Ljava/util/TreeMap;->modCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ljava/util/TreeMap;->modCount:I

    iget v2, p0, Ljava/util/TreeMap;->size:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Ljava/util/TreeMap;->size:I

    iget-object v2, p1, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    if-eqz v2, :cond_0

    iget-object v2, p1, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    if-eqz v2, :cond_0

    invoke-static {p1}, Ljava/util/TreeMap;->successor(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v1

    iget-object v2, v1, Ljava/util/TreeMap$TreeMapEntry;->key:Ljava/lang/Object;

    iput-object v2, p1, Ljava/util/TreeMap$TreeMapEntry;->key:Ljava/lang/Object;

    iget-object v2, v1, Ljava/util/TreeMap$TreeMapEntry;->value:Ljava/lang/Object;

    iput-object v2, p1, Ljava/util/TreeMap$TreeMapEntry;->value:Ljava/lang/Object;

    move-object p1, v1

    :cond_0
    iget-object v2, p1, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    if-eqz v2, :cond_2

    iget-object v0, p1, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    :goto_0
    if-eqz v0, :cond_5

    iget-object v2, p1, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    iput-object v2, v0, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    iget-object v2, p1, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    if-nez v2, :cond_3

    iput-object v0, p0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$TreeMapEntry;

    :goto_1
    iput-object v3, p1, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    iput-object v3, p1, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    iput-object v3, p1, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    iget-boolean v2, p1, Ljava/util/TreeMap$TreeMapEntry;->color:Z

    if-eqz v2, :cond_1

    invoke-direct {p0, v0}, Ljava/util/TreeMap;->fixAfterDeletion(Ljava/util/TreeMap$TreeMapEntry;)V

    :cond_1
    :goto_2
    return-void

    :cond_2
    iget-object v0, p1, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    goto :goto_0

    :cond_3
    iget-object v2, p1, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    iget-object v2, v2, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    if-ne p1, v2, :cond_4

    iget-object v2, p1, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    iput-object v0, v2, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    goto :goto_1

    :cond_4
    iget-object v2, p1, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    iput-object v0, v2, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    goto :goto_1

    :cond_5
    iget-object v2, p1, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    if-nez v2, :cond_6

    iput-object v3, p0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$TreeMapEntry;

    goto :goto_2

    :cond_6
    iget-boolean v2, p1, Ljava/util/TreeMap$TreeMapEntry;->color:Z

    if-eqz v2, :cond_7

    invoke-direct {p0, p1}, Ljava/util/TreeMap;->fixAfterDeletion(Ljava/util/TreeMap$TreeMapEntry;)V

    :cond_7
    iget-object v2, p1, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    if-eqz v2, :cond_1

    iget-object v2, p1, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    iget-object v2, v2, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    if-ne p1, v2, :cond_9

    iget-object v2, p1, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    iput-object v3, v2, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    :cond_8
    :goto_3
    iput-object v3, p1, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    goto :goto_2

    :cond_9
    iget-object v2, p1, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    iget-object v2, v2, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    if-ne p1, v2, :cond_8

    iget-object v2, p1, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    iput-object v3, v2, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    goto :goto_3
.end method

.method static exportEntry(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/TreeMap$TreeMapEntry",
            "<TK;TV;>;)",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/AbstractMap$SimpleImmutableEntry;

    invoke-direct {v0, p0}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/util/Map$Entry;)V

    goto :goto_0
.end method

.method private fixAfterDeletion(Ljava/util/TreeMap$TreeMapEntry;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap$TreeMapEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v2, 0x1

    :goto_0
    iget-object v1, p0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$TreeMapEntry;

    if-eq p1, v1, :cond_7

    invoke-static {p1}, Ljava/util/TreeMap;->colorOf(Ljava/util/TreeMap$TreeMapEntry;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static {p1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v1

    invoke-static {v1}, Ljava/util/TreeMap;->leftOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v1

    if-ne p1, v1, :cond_3

    invoke-static {p1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v1

    invoke-static {v1}, Ljava/util/TreeMap;->rightOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v0

    invoke-static {v0}, Ljava/util/TreeMap;->colorOf(Ljava/util/TreeMap$TreeMapEntry;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0, v2}, Ljava/util/TreeMap;->setColor(Ljava/util/TreeMap$TreeMapEntry;Z)V

    invoke-static {p1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v1

    invoke-static {v1, v3}, Ljava/util/TreeMap;->setColor(Ljava/util/TreeMap$TreeMapEntry;Z)V

    invoke-static {p1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v1

    invoke-direct {p0, v1}, Ljava/util/TreeMap;->rotateLeft(Ljava/util/TreeMap$TreeMapEntry;)V

    invoke-static {p1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v1

    invoke-static {v1}, Ljava/util/TreeMap;->rightOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v0

    :cond_0
    invoke-static {v0}, Ljava/util/TreeMap;->leftOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v1

    invoke-static {v1}, Ljava/util/TreeMap;->colorOf(Ljava/util/TreeMap$TreeMapEntry;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Ljava/util/TreeMap;->rightOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v1

    invoke-static {v1}, Ljava/util/TreeMap;->colorOf(Ljava/util/TreeMap$TreeMapEntry;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0, v3}, Ljava/util/TreeMap;->setColor(Ljava/util/TreeMap$TreeMapEntry;Z)V

    invoke-static {p1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-static {v0}, Ljava/util/TreeMap;->rightOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v1

    invoke-static {v1}, Ljava/util/TreeMap;->colorOf(Ljava/util/TreeMap$TreeMapEntry;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v0}, Ljava/util/TreeMap;->leftOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v1

    invoke-static {v1, v2}, Ljava/util/TreeMap;->setColor(Ljava/util/TreeMap$TreeMapEntry;Z)V

    invoke-static {v0, v3}, Ljava/util/TreeMap;->setColor(Ljava/util/TreeMap$TreeMapEntry;Z)V

    invoke-direct {p0, v0}, Ljava/util/TreeMap;->rotateRight(Ljava/util/TreeMap$TreeMapEntry;)V

    invoke-static {p1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v1

    invoke-static {v1}, Ljava/util/TreeMap;->rightOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v0

    :cond_2
    invoke-static {p1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v1

    invoke-static {v1}, Ljava/util/TreeMap;->colorOf(Ljava/util/TreeMap$TreeMapEntry;)Z

    move-result v1

    invoke-static {v0, v1}, Ljava/util/TreeMap;->setColor(Ljava/util/TreeMap$TreeMapEntry;Z)V

    invoke-static {p1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v1

    invoke-static {v1, v2}, Ljava/util/TreeMap;->setColor(Ljava/util/TreeMap$TreeMapEntry;Z)V

    invoke-static {v0}, Ljava/util/TreeMap;->rightOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v1

    invoke-static {v1, v2}, Ljava/util/TreeMap;->setColor(Ljava/util/TreeMap$TreeMapEntry;Z)V

    invoke-static {p1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v1

    invoke-direct {p0, v1}, Ljava/util/TreeMap;->rotateLeft(Ljava/util/TreeMap$TreeMapEntry;)V

    iget-object p1, p0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$TreeMapEntry;

    goto/16 :goto_0

    :cond_3
    invoke-static {p1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v1

    invoke-static {v1}, Ljava/util/TreeMap;->leftOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v0

    invoke-static {v0}, Ljava/util/TreeMap;->colorOf(Ljava/util/TreeMap$TreeMapEntry;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {v0, v2}, Ljava/util/TreeMap;->setColor(Ljava/util/TreeMap$TreeMapEntry;Z)V

    invoke-static {p1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v1

    invoke-static {v1, v3}, Ljava/util/TreeMap;->setColor(Ljava/util/TreeMap$TreeMapEntry;Z)V

    invoke-static {p1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v1

    invoke-direct {p0, v1}, Ljava/util/TreeMap;->rotateRight(Ljava/util/TreeMap$TreeMapEntry;)V

    invoke-static {p1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v1

    invoke-static {v1}, Ljava/util/TreeMap;->leftOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v0

    :cond_4
    invoke-static {v0}, Ljava/util/TreeMap;->rightOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v1

    invoke-static {v1}, Ljava/util/TreeMap;->colorOf(Ljava/util/TreeMap$TreeMapEntry;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {v0}, Ljava/util/TreeMap;->leftOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v1

    invoke-static {v1}, Ljava/util/TreeMap;->colorOf(Ljava/util/TreeMap$TreeMapEntry;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {v0, v3}, Ljava/util/TreeMap;->setColor(Ljava/util/TreeMap$TreeMapEntry;Z)V

    invoke-static {p1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object p1

    goto/16 :goto_0

    :cond_5
    invoke-static {v0}, Ljava/util/TreeMap;->leftOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v1

    invoke-static {v1}, Ljava/util/TreeMap;->colorOf(Ljava/util/TreeMap$TreeMapEntry;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {v0}, Ljava/util/TreeMap;->rightOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v1

    invoke-static {v1, v2}, Ljava/util/TreeMap;->setColor(Ljava/util/TreeMap$TreeMapEntry;Z)V

    invoke-static {v0, v3}, Ljava/util/TreeMap;->setColor(Ljava/util/TreeMap$TreeMapEntry;Z)V

    invoke-direct {p0, v0}, Ljava/util/TreeMap;->rotateLeft(Ljava/util/TreeMap$TreeMapEntry;)V

    invoke-static {p1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v1

    invoke-static {v1}, Ljava/util/TreeMap;->leftOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v0

    :cond_6
    invoke-static {p1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v1

    invoke-static {v1}, Ljava/util/TreeMap;->colorOf(Ljava/util/TreeMap$TreeMapEntry;)Z

    move-result v1

    invoke-static {v0, v1}, Ljava/util/TreeMap;->setColor(Ljava/util/TreeMap$TreeMapEntry;Z)V

    invoke-static {p1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v1

    invoke-static {v1, v2}, Ljava/util/TreeMap;->setColor(Ljava/util/TreeMap$TreeMapEntry;Z)V

    invoke-static {v0}, Ljava/util/TreeMap;->leftOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v1

    invoke-static {v1, v2}, Ljava/util/TreeMap;->setColor(Ljava/util/TreeMap$TreeMapEntry;Z)V

    invoke-static {p1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v1

    invoke-direct {p0, v1}, Ljava/util/TreeMap;->rotateRight(Ljava/util/TreeMap$TreeMapEntry;)V

    iget-object p1, p0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$TreeMapEntry;

    goto/16 :goto_0

    :cond_7
    invoke-static {p1, v2}, Ljava/util/TreeMap;->setColor(Ljava/util/TreeMap$TreeMapEntry;Z)V

    return-void
.end method

.method private fixAfterInsertion(Ljava/util/TreeMap$TreeMapEntry;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap$TreeMapEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v3, 0x1

    iput-boolean v4, p1, Ljava/util/TreeMap$TreeMapEntry;->color:Z

    :goto_0
    if-eqz p1, :cond_5

    iget-object v1, p0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$TreeMapEntry;

    if-eq p1, v1, :cond_5

    iget-object v1, p1, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    iget-boolean v1, v1, Ljava/util/TreeMap$TreeMapEntry;->color:Z

    if-nez v1, :cond_5

    invoke-static {p1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v1

    invoke-static {p1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v2

    invoke-static {v2}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v2

    invoke-static {v2}, Ljava/util/TreeMap;->leftOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v2

    if-ne v1, v2, :cond_2

    invoke-static {p1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v1

    invoke-static {v1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v1

    invoke-static {v1}, Ljava/util/TreeMap;->rightOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v0

    invoke-static {v0}, Ljava/util/TreeMap;->colorOf(Ljava/util/TreeMap$TreeMapEntry;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v1

    invoke-static {v1, v3}, Ljava/util/TreeMap;->setColor(Ljava/util/TreeMap$TreeMapEntry;Z)V

    invoke-static {v0, v3}, Ljava/util/TreeMap;->setColor(Ljava/util/TreeMap$TreeMapEntry;Z)V

    invoke-static {p1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v1

    invoke-static {v1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v1

    invoke-static {v1, v4}, Ljava/util/TreeMap;->setColor(Ljava/util/TreeMap$TreeMapEntry;Z)V

    invoke-static {p1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v1

    invoke-static {v1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v1

    invoke-static {v1}, Ljava/util/TreeMap;->rightOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v1

    if-ne p1, v1, :cond_1

    invoke-static {p1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/util/TreeMap;->rotateLeft(Ljava/util/TreeMap$TreeMapEntry;)V

    :cond_1
    invoke-static {p1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v1

    invoke-static {v1, v3}, Ljava/util/TreeMap;->setColor(Ljava/util/TreeMap$TreeMapEntry;Z)V

    invoke-static {p1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v1

    invoke-static {v1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v1

    invoke-static {v1, v4}, Ljava/util/TreeMap;->setColor(Ljava/util/TreeMap$TreeMapEntry;Z)V

    invoke-static {p1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v1

    invoke-static {v1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v1

    invoke-direct {p0, v1}, Ljava/util/TreeMap;->rotateRight(Ljava/util/TreeMap$TreeMapEntry;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v1

    invoke-static {v1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v1

    invoke-static {v1}, Ljava/util/TreeMap;->leftOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v0

    invoke-static {v0}, Ljava/util/TreeMap;->colorOf(Ljava/util/TreeMap$TreeMapEntry;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {p1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v1

    invoke-static {v1, v3}, Ljava/util/TreeMap;->setColor(Ljava/util/TreeMap$TreeMapEntry;Z)V

    invoke-static {v0, v3}, Ljava/util/TreeMap;->setColor(Ljava/util/TreeMap$TreeMapEntry;Z)V

    invoke-static {p1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v1

    invoke-static {v1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v1

    invoke-static {v1, v4}, Ljava/util/TreeMap;->setColor(Ljava/util/TreeMap$TreeMapEntry;Z)V

    invoke-static {p1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v1

    invoke-static {v1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object p1

    goto/16 :goto_0

    :cond_3
    invoke-static {p1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v1

    invoke-static {v1}, Ljava/util/TreeMap;->leftOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v1

    if-ne p1, v1, :cond_4

    invoke-static {p1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/util/TreeMap;->rotateRight(Ljava/util/TreeMap$TreeMapEntry;)V

    :cond_4
    invoke-static {p1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v1

    invoke-static {v1, v3}, Ljava/util/TreeMap;->setColor(Ljava/util/TreeMap$TreeMapEntry;Z)V

    invoke-static {p1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v1

    invoke-static {v1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v1

    invoke-static {v1, v4}, Ljava/util/TreeMap;->setColor(Ljava/util/TreeMap$TreeMapEntry;Z)V

    invoke-static {p1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v1

    invoke-static {v1}, Ljava/util/TreeMap;->parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v1

    invoke-direct {p0, v1}, Ljava/util/TreeMap;->rotateLeft(Ljava/util/TreeMap$TreeMapEntry;)V

    goto/16 :goto_0

    :cond_5
    iget-object v1, p0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$TreeMapEntry;

    iput-boolean v3, v1, Ljava/util/TreeMap$TreeMapEntry;->color:Z

    return-void
.end method

.method static key(Ljava/util/TreeMap$TreeMapEntry;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/TreeMap$TreeMapEntry",
            "<TK;*>;)TK;"
        }
    .end annotation

    if-nez p0, :cond_0

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Ljava/util/TreeMap$TreeMapEntry;->key:Ljava/lang/Object;

    return-object v0
.end method

.method static keyOrNull(Ljava/util/TreeMap$TreeMapEntry;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/TreeMap$TreeMapEntry",
            "<TK;TV;>;)TK;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ljava/util/TreeMap$TreeMapEntry;->key:Ljava/lang/Object;

    goto :goto_0
.end method

.method static keySpliteratorFor(Ljava/util/NavigableMap;)Ljava/util/Spliterator;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/NavigableMap",
            "<TK;*>;)",
            "Ljava/util/Spliterator",
            "<TK;>;"
        }
    .end annotation

    instance-of v4, p0, Ljava/util/TreeMap;

    if-eqz v4, :cond_0

    move-object v2, p0

    check-cast v2, Ljava/util/TreeMap;

    invoke-virtual {v2}, Ljava/util/TreeMap;->keySpliterator()Ljava/util/Spliterator;

    move-result-object v4

    return-object v4

    :cond_0
    instance-of v4, p0, Ljava/util/TreeMap$DescendingSubMap;

    if-eqz v4, :cond_1

    move-object v0, p0

    check-cast v0, Ljava/util/TreeMap$DescendingSubMap;

    iget-object v3, v0, Ljava/util/TreeMap$DescendingSubMap;->m:Ljava/util/TreeMap;

    iget-object v4, v3, Ljava/util/TreeMap;->descendingMap:Ljava/util/NavigableMap;

    if-ne v0, v4, :cond_1

    move-object v2, v3

    invoke-virtual {v3}, Ljava/util/TreeMap;->descendingKeySpliterator()Ljava/util/Spliterator;

    move-result-object v4

    return-object v4

    :cond_1
    move-object v1, p0

    check-cast v1, Ljava/util/TreeMap$NavigableSubMap;

    invoke-virtual {v1}, Ljava/util/TreeMap$NavigableSubMap;->keySpliterator()Ljava/util/Spliterator;

    move-result-object v4

    return-object v4
.end method

.method private static leftOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/TreeMap$TreeMapEntry",
            "<TK;TV;>;)",
            "Ljava/util/TreeMap$TreeMapEntry",
            "<TK;TV;>;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    goto :goto_0
.end method

.method private static parentOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/TreeMap$TreeMapEntry",
            "<TK;TV;>;)",
            "Ljava/util/TreeMap$TreeMapEntry",
            "<TK;TV;>;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    goto :goto_0
.end method

.method static predecessor(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/TreeMap$TreeMapEntry",
            "<TK;TV;>;)",
            "Ljava/util/TreeMap$TreeMapEntry",
            "<TK;TV;>;"
        }
    .end annotation

    const/4 v2, 0x0

    if-nez p0, :cond_0

    return-object v2

    :cond_0
    iget-object v2, p0, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    if-eqz v2, :cond_2

    iget-object v1, p0, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    :goto_0
    iget-object v2, v1, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    if-eqz v2, :cond_1

    iget-object v1, v1, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    goto :goto_0

    :cond_1
    return-object v1

    :cond_2
    iget-object v1, p0, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    move-object v0, p0

    :goto_1
    if-eqz v1, :cond_3

    iget-object v2, v1, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    if-ne v0, v2, :cond_3

    move-object v0, v1

    iget-object v1, v1, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    goto :goto_1

    :cond_3
    return-object v1
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    invoke-direct {p0, v0, v1, p1, v1}, Ljava/util/TreeMap;->buildFromSorted(ILjava/util/Iterator;Ljava/io/ObjectInputStream;Ljava/lang/Object;)V

    return-void
.end method

.method private static rightOf(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/TreeMap$TreeMapEntry",
            "<TK;TV;>;)",
            "Ljava/util/TreeMap$TreeMapEntry",
            "<TK;TV;>;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    goto :goto_0
.end method

.method private rotateLeft(Ljava/util/TreeMap$TreeMapEntry;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap$TreeMapEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    iget-object v0, p1, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    iget-object v1, v0, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    iput-object v1, p1, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    iget-object v1, v0, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    if-eqz v1, :cond_0

    iget-object v1, v0, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    iput-object p1, v1, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    :cond_0
    iget-object v1, p1, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    iput-object v1, v0, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    iget-object v1, p1, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    if-nez v1, :cond_2

    iput-object v0, p0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$TreeMapEntry;

    :goto_0
    iput-object p1, v0, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    iput-object v0, p1, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    :cond_1
    return-void

    :cond_2
    iget-object v1, p1, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    iget-object v1, v1, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    if-ne v1, p1, :cond_3

    iget-object v1, p1, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    iput-object v0, v1, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    goto :goto_0

    :cond_3
    iget-object v1, p1, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    iput-object v0, v1, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    goto :goto_0
.end method

.method private rotateRight(Ljava/util/TreeMap$TreeMapEntry;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap$TreeMapEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    iget-object v0, p1, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    iget-object v1, v0, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    iput-object v1, p1, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    iget-object v1, v0, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    if-eqz v1, :cond_0

    iget-object v1, v0, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    iput-object p1, v1, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    :cond_0
    iget-object v1, p1, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    iput-object v1, v0, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    iget-object v1, p1, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    if-nez v1, :cond_2

    iput-object v0, p0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$TreeMapEntry;

    :goto_0
    iput-object p1, v0, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    iput-object v0, p1, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    :cond_1
    return-void

    :cond_2
    iget-object v1, p1, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    iget-object v1, v1, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    if-ne v1, p1, :cond_3

    iget-object v1, p1, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    iput-object v0, v1, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    goto :goto_0

    :cond_3
    iget-object v1, p1, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    iput-object v0, v1, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    goto :goto_0
.end method

.method private static setColor(Ljava/util/TreeMap$TreeMapEntry;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/TreeMap$TreeMapEntry",
            "<TK;TV;>;Z)V"
        }
    .end annotation

    if-eqz p0, :cond_0

    iput-boolean p1, p0, Ljava/util/TreeMap$TreeMapEntry;->color:Z

    :cond_0
    return-void
.end method

.method static successor(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/TreeMap$TreeMapEntry",
            "<TK;TV;>;)",
            "Ljava/util/TreeMap$TreeMapEntry",
            "<TK;TV;>;"
        }
    .end annotation

    const/4 v2, 0x0

    if-nez p0, :cond_0

    return-object v2

    :cond_0
    iget-object v2, p0, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    if-eqz v2, :cond_2

    iget-object v1, p0, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    :goto_0
    iget-object v2, v1, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    if-eqz v2, :cond_1

    iget-object v1, v1, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    goto :goto_0

    :cond_1
    return-object v1

    :cond_2
    iget-object v1, p0, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    move-object v0, p0

    :goto_1
    if-eqz v1, :cond_3

    iget-object v2, v1, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    if-ne v0, v2, :cond_3

    move-object v0, v1

    iget-object v1, v1, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    goto :goto_1

    :cond_3
    return-object v1
.end method

.method static final valEquals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    if-nez p0, :cond_1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    iget v2, p0, Ljava/util/TreeMap;->size:I

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    invoke-virtual {p0}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method addAllForTreeSet(Ljava/util/SortedSet;Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedSet",
            "<+TK;>;TV;)V"
        }
    .end annotation

    :try_start_0
    invoke-interface {p1}, Ljava/util/SortedSet;->size()I

    move-result v2

    invoke-interface {p1}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {p0, v2, v3, v4, p2}, Ljava/util/TreeMap;->buildFromSorted(ILjava/util/Iterator;Ljava/io/ObjectInputStream;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public ceilingEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Ljava/util/TreeMap;->getCeilingEntry(Ljava/lang/Object;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v0

    invoke-static {v0}, Ljava/util/TreeMap;->exportEntry(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public ceilingKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Ljava/util/TreeMap;->getCeilingEntry(Ljava/lang/Object;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v0

    invoke-static {v0}, Ljava/util/TreeMap;->keyOrNull(Ljava/util/TreeMap$TreeMapEntry;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public clear()V
    .locals 1

    iget v0, p0, Ljava/util/TreeMap;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/TreeMap;->modCount:I

    const/4 v0, 0x0

    iput v0, p0, Ljava/util/TreeMap;->size:I

    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$TreeMapEntry;

    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 8

    const/4 v5, 0x0

    const/4 v4, 0x0

    :try_start_0
    invoke-super {p0}, Ljava/util/AbstractMap;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/TreeMap;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    iput-object v4, v2, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$TreeMapEntry;

    iput v5, v2, Ljava/util/TreeMap;->size:I

    iput v5, v2, Ljava/util/TreeMap;->modCount:I

    iput-object v4, v2, Ljava/util/TreeMap;->entrySet:Ljava/util/TreeMap$EntrySet;

    iput-object v4, v2, Ljava/util/TreeMap;->navigableKeySet:Ljava/util/TreeMap$KeySet;

    iput-object v4, v2, Ljava/util/TreeMap;->descendingMap:Ljava/util/NavigableMap;

    :try_start_1
    iget v4, p0, Ljava/util/TreeMap;->size:I

    invoke-virtual {p0}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {v2, v4, v5, v6, v7}, Ljava/util/TreeMap;->buildFromSorted(ILjava/util/Iterator;Ljava/io/ObjectInputStream;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    :goto_0
    return-object v2

    :catch_0
    move-exception v3

    new-instance v4, Ljava/lang/InternalError;

    invoke-direct {v4, v3}, Ljava/lang/InternalError;-><init>(Ljava/lang/Throwable;)V

    throw v4

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v1

    goto :goto_0
.end method

.method public comparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<-TK;>;"
        }
    .end annotation

    iget-object v0, p0, Ljava/util/TreeMap;->comparator:Ljava/util/Comparator;

    return-object v0
.end method

.method final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Ljava/util/TreeMap;->comparator:Ljava/util/Comparator;

    if-nez v0, :cond_0

    check-cast p1, Ljava/lang/Comparable;

    invoke-interface {p1, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Ljava/util/TreeMap;->comparator:Ljava/util/Comparator;

    invoke-interface {v0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    goto :goto_0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1

    invoke-virtual {p0, p1}, Ljava/util/TreeMap;->getEntry(Ljava/lang/Object;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 2

    invoke-virtual {p0}, Ljava/util/TreeMap;->getFirstEntry()Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, v0, Ljava/util/TreeMap$TreeMapEntry;->value:Ljava/lang/Object;

    invoke-static {p1, v1}, Ljava/util/TreeMap;->valEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    invoke-static {v0}, Ljava/util/TreeMap;->successor(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method descendingKeyIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TK;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/TreeMap$DescendingKeyIterator;

    invoke-virtual {p0}, Ljava/util/TreeMap;->getLastEntry()Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/util/TreeMap$DescendingKeyIterator;-><init>(Ljava/util/TreeMap;Ljava/util/TreeMap$TreeMapEntry;)V

    return-object v0
.end method

.method public descendingKeySet()Ljava/util/NavigableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet",
            "<TK;>;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/TreeMap;->descendingMap()Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableMap;->navigableKeySet()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method final descendingKeySpliterator()Ljava/util/Spliterator;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator",
            "<TK;>;"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v4, 0x0

    new-instance v0, Ljava/util/TreeMap$DescendingKeySpliterator;

    const/4 v5, -0x2

    move-object v1, p0

    move-object v3, v2

    move v6, v4

    invoke-direct/range {v0 .. v6}, Ljava/util/TreeMap$DescendingKeySpliterator;-><init>(Ljava/util/TreeMap;Ljava/util/TreeMap$TreeMapEntry;Ljava/util/TreeMap$TreeMapEntry;III)V

    return-object v0
.end method

.method public descendingMap()Ljava/util/NavigableMap;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableMap",
            "<TK;TV;>;"
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-object v8, p0, Ljava/util/TreeMap;->descendingMap:Ljava/util/NavigableMap;

    if-eqz v8, :cond_0

    :goto_0
    return-object v8

    :cond_0
    new-instance v0, Ljava/util/TreeMap$DescendingSubMap;

    move-object v1, p0

    move v4, v2

    move v5, v2

    move-object v6, v3

    move v7, v2

    invoke-direct/range {v0 .. v7}, Ljava/util/TreeMap$DescendingSubMap;-><init>(Ljava/util/TreeMap;ZLjava/lang/Object;ZZLjava/lang/Object;Z)V

    iput-object v0, p0, Ljava/util/TreeMap;->descendingMap:Ljava/util/NavigableMap;

    move-object v8, v0

    goto :goto_0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    iget-object v0, p0, Ljava/util/TreeMap;->entrySet:Ljava/util/TreeMap$EntrySet;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/TreeMap$EntrySet;

    invoke-direct {v0, p0}, Ljava/util/TreeMap$EntrySet;-><init>(Ljava/util/TreeMap;)V

    iput-object v0, p0, Ljava/util/TreeMap;->entrySet:Ljava/util/TreeMap$EntrySet;

    goto :goto_0
.end method

.method public firstEntry()Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/TreeMap;->getFirstEntry()Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v0

    invoke-static {v0}, Ljava/util/TreeMap;->exportEntry(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public firstKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/TreeMap;->getFirstEntry()Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v0

    invoke-static {v0}, Ljava/util/TreeMap;->key(Ljava/util/TreeMap$TreeMapEntry;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Ljava/util/TreeMap;->getFloorEntry(Ljava/lang/Object;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v0

    invoke-static {v0}, Ljava/util/TreeMap;->exportEntry(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public floorKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Ljava/util/TreeMap;->getFloorEntry(Ljava/lang/Object;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v0

    invoke-static {v0}, Ljava/util/TreeMap;->keyOrNull(Ljava/util/TreeMap$TreeMapEntry;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public forEach(Ljava/util/function/BiConsumer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiConsumer",
            "<-TK;-TV;>;)V"
        }
    .end annotation

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Ljava/util/TreeMap;->modCount:I

    invoke-virtual {p0}, Ljava/util/TreeMap;->getFirstEntry()Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    iget-object v2, v0, Ljava/util/TreeMap$TreeMapEntry;->key:Ljava/lang/Object;

    iget-object v3, v0, Ljava/util/TreeMap$TreeMapEntry;->value:Ljava/lang/Object;

    invoke-interface {p1, v2, v3}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    iget v2, p0, Ljava/util/TreeMap;->modCount:I

    if-eq v1, v2, :cond_0

    new-instance v2, Ljava/util/ConcurrentModificationException;

    invoke-direct {v2}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v2

    :cond_0
    invoke-static {v0}, Ljava/util/TreeMap;->successor(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v0

    goto :goto_0

    :cond_1
    return-void
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

    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Ljava/util/TreeMap;->getEntry(Ljava/lang/Object;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, v0, Ljava/util/TreeMap$TreeMapEntry;->value:Ljava/lang/Object;

    goto :goto_0
.end method

.method final getCeilingEntry(Ljava/lang/Object;)Ljava/util/TreeMap$TreeMapEntry;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/TreeMap$TreeMapEntry",
            "<TK;TV;>;"
        }
    .end annotation

    const/4 v5, 0x0

    iget-object v2, p0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$TreeMapEntry;

    :goto_0
    if-eqz v2, :cond_5

    iget-object v4, v2, Ljava/util/TreeMap$TreeMapEntry;->key:Ljava/lang/Object;

    invoke-virtual {p0, p1, v4}, Ljava/util/TreeMap;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    if-gez v1, :cond_1

    iget-object v4, v2, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    if-eqz v4, :cond_0

    iget-object v2, v2, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    goto :goto_0

    :cond_0
    return-object v2

    :cond_1
    if-lez v1, :cond_4

    iget-object v4, v2, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    if-eqz v4, :cond_2

    iget-object v2, v2, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    goto :goto_0

    :cond_2
    iget-object v3, v2, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    move-object v0, v2

    :goto_1
    if-eqz v3, :cond_3

    iget-object v4, v3, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    if-ne v0, v4, :cond_3

    move-object v0, v3

    iget-object v3, v3, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    goto :goto_1

    :cond_3
    return-object v3

    :cond_4
    return-object v2

    :cond_5
    return-object v5
.end method

.method final getEntry(Ljava/lang/Object;)Ljava/util/TreeMap$TreeMapEntry;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/TreeMap$TreeMapEntry",
            "<TK;TV;>;"
        }
    .end annotation

    const/4 v4, 0x0

    iget-object v3, p0, Ljava/util/TreeMap;->comparator:Ljava/util/Comparator;

    if-eqz v3, :cond_0

    invoke-virtual {p0, p1}, Ljava/util/TreeMap;->getEntryUsingComparator(Ljava/lang/Object;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v3

    return-object v3

    :cond_0
    if-nez p1, :cond_1

    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    :cond_1
    move-object v1, p1

    check-cast v1, Ljava/lang/Comparable;

    iget-object v2, p0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$TreeMapEntry;

    :goto_0
    if-eqz v2, :cond_4

    iget-object v3, v2, Ljava/util/TreeMap$TreeMapEntry;->key:Ljava/lang/Object;

    invoke-interface {v1, v3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_2

    iget-object v2, v2, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    goto :goto_0

    :cond_2
    if-lez v0, :cond_3

    iget-object v2, v2, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    goto :goto_0

    :cond_3
    return-object v2

    :cond_4
    return-object v4
.end method

.method final getEntryUsingComparator(Ljava/lang/Object;)Ljava/util/TreeMap$TreeMapEntry;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/TreeMap$TreeMapEntry",
            "<TK;TV;>;"
        }
    .end annotation

    const/4 v5, 0x0

    move-object v2, p1

    iget-object v1, p0, Ljava/util/TreeMap;->comparator:Ljava/util/Comparator;

    if-eqz v1, :cond_2

    iget-object v3, p0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$TreeMapEntry;

    :goto_0
    if-eqz v3, :cond_2

    iget-object v4, v3, Ljava/util/TreeMap$TreeMapEntry;->key:Ljava/lang/Object;

    invoke-interface {v1, p1, v4}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_0

    iget-object v3, v3, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    goto :goto_0

    :cond_0
    if-lez v0, :cond_1

    iget-object v3, v3, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    goto :goto_0

    :cond_1
    return-object v3

    :cond_2
    return-object v5
.end method

.method final getFirstEntry()Ljava/util/TreeMap$TreeMapEntry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/TreeMap$TreeMapEntry",
            "<TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$TreeMapEntry;

    if-eqz v0, :cond_0

    :goto_0
    iget-object v1, v0, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    if-eqz v1, :cond_0

    iget-object v0, v0, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method final getFloorEntry(Ljava/lang/Object;)Ljava/util/TreeMap$TreeMapEntry;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/TreeMap$TreeMapEntry",
            "<TK;TV;>;"
        }
    .end annotation

    const/4 v5, 0x0

    iget-object v2, p0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$TreeMapEntry;

    :goto_0
    if-eqz v2, :cond_5

    iget-object v4, v2, Ljava/util/TreeMap$TreeMapEntry;->key:Ljava/lang/Object;

    invoke-virtual {p0, p1, v4}, Ljava/util/TreeMap;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    if-lez v1, :cond_1

    iget-object v4, v2, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    if-eqz v4, :cond_0

    iget-object v2, v2, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    goto :goto_0

    :cond_0
    return-object v2

    :cond_1
    if-gez v1, :cond_4

    iget-object v4, v2, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    if-eqz v4, :cond_2

    iget-object v2, v2, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    goto :goto_0

    :cond_2
    iget-object v3, v2, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    move-object v0, v2

    :goto_1
    if-eqz v3, :cond_3

    iget-object v4, v3, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    if-ne v0, v4, :cond_3

    move-object v0, v3

    iget-object v3, v3, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    goto :goto_1

    :cond_3
    return-object v3

    :cond_4
    return-object v2

    :cond_5
    return-object v5
.end method

.method final getHigherEntry(Ljava/lang/Object;)Ljava/util/TreeMap$TreeMapEntry;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/TreeMap$TreeMapEntry",
            "<TK;TV;>;"
        }
    .end annotation

    const/4 v5, 0x0

    iget-object v2, p0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$TreeMapEntry;

    :goto_0
    if-eqz v2, :cond_4

    iget-object v4, v2, Ljava/util/TreeMap$TreeMapEntry;->key:Ljava/lang/Object;

    invoke-virtual {p0, p1, v4}, Ljava/util/TreeMap;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    if-gez v1, :cond_1

    iget-object v4, v2, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    if-eqz v4, :cond_0

    iget-object v2, v2, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    goto :goto_0

    :cond_0
    return-object v2

    :cond_1
    iget-object v4, v2, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    if-eqz v4, :cond_2

    iget-object v2, v2, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    goto :goto_0

    :cond_2
    iget-object v3, v2, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    move-object v0, v2

    :goto_1
    if-eqz v3, :cond_3

    iget-object v4, v3, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    if-ne v0, v4, :cond_3

    move-object v0, v3

    iget-object v3, v3, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    goto :goto_1

    :cond_3
    return-object v3

    :cond_4
    return-object v5
.end method

.method final getLastEntry()Ljava/util/TreeMap$TreeMapEntry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/TreeMap$TreeMapEntry",
            "<TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$TreeMapEntry;

    if-eqz v0, :cond_0

    :goto_0
    iget-object v1, v0, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    if-eqz v1, :cond_0

    iget-object v0, v0, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method final getLowerEntry(Ljava/lang/Object;)Ljava/util/TreeMap$TreeMapEntry;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/TreeMap$TreeMapEntry",
            "<TK;TV;>;"
        }
    .end annotation

    const/4 v5, 0x0

    iget-object v2, p0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$TreeMapEntry;

    :goto_0
    if-eqz v2, :cond_4

    iget-object v4, v2, Ljava/util/TreeMap$TreeMapEntry;->key:Ljava/lang/Object;

    invoke-virtual {p0, p1, v4}, Ljava/util/TreeMap;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    if-lez v1, :cond_1

    iget-object v4, v2, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    if-eqz v4, :cond_0

    iget-object v2, v2, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    goto :goto_0

    :cond_0
    return-object v2

    :cond_1
    iget-object v4, v2, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    if-eqz v4, :cond_2

    iget-object v2, v2, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    goto :goto_0

    :cond_2
    iget-object v3, v2, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    move-object v0, v2

    :goto_1
    if-eqz v3, :cond_3

    iget-object v4, v3, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    if-ne v0, v4, :cond_3

    move-object v0, v3

    iget-object v3, v3, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    goto :goto_1

    :cond_3
    return-object v3

    :cond_4
    return-object v5
.end method

.method public headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Ljava/util/NavigableMap",
            "<TK;TV;>;"
        }
    .end annotation

    const/4 v2, 0x1

    new-instance v0, Ljava/util/TreeMap$AscendingSubMap;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move v4, v2

    move-object v6, p1

    move v7, p2

    invoke-direct/range {v0 .. v7}, Ljava/util/TreeMap$AscendingSubMap;-><init>(Ljava/util/TreeMap;ZLjava/lang/Object;ZZLjava/lang/Object;Z)V

    return-object v0
.end method

.method public headMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/SortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljava/util/TreeMap;->headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public higherEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Ljava/util/TreeMap;->getHigherEntry(Ljava/lang/Object;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v0

    invoke-static {v0}, Ljava/util/TreeMap;->exportEntry(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public higherKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Ljava/util/TreeMap;->getHigherEntry(Ljava/lang/Object;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v0

    invoke-static {v0}, Ljava/util/TreeMap;->keyOrNull(Ljava/util/TreeMap$TreeMapEntry;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method keyIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TK;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/TreeMap$KeyIterator;

    invoke-virtual {p0}, Ljava/util/TreeMap;->getFirstEntry()Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/util/TreeMap$KeyIterator;-><init>(Ljava/util/TreeMap;Ljava/util/TreeMap$TreeMapEntry;)V

    return-object v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/TreeMap;->navigableKeySet()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method final keySpliterator()Ljava/util/Spliterator;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator",
            "<TK;>;"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v4, 0x0

    new-instance v0, Ljava/util/TreeMap$KeySpliterator;

    const/4 v5, -0x1

    move-object v1, p0

    move-object v3, v2

    move v6, v4

    invoke-direct/range {v0 .. v6}, Ljava/util/TreeMap$KeySpliterator;-><init>(Ljava/util/TreeMap;Ljava/util/TreeMap$TreeMapEntry;Ljava/util/TreeMap$TreeMapEntry;III)V

    return-object v0
.end method

.method public lastEntry()Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/TreeMap;->getLastEntry()Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v0

    invoke-static {v0}, Ljava/util/TreeMap;->exportEntry(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public lastKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/TreeMap;->getLastEntry()Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v0

    invoke-static {v0}, Ljava/util/TreeMap;->key(Ljava/util/TreeMap$TreeMapEntry;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public lowerEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Ljava/util/TreeMap;->getLowerEntry(Ljava/lang/Object;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v0

    invoke-static {v0}, Ljava/util/TreeMap;->exportEntry(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public lowerKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Ljava/util/TreeMap;->getLowerEntry(Ljava/lang/Object;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v0

    invoke-static {v0}, Ljava/util/TreeMap;->keyOrNull(Ljava/util/TreeMap$TreeMapEntry;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public navigableKeySet()Ljava/util/NavigableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet",
            "<TK;>;"
        }
    .end annotation

    iget-object v0, p0, Ljava/util/TreeMap;->navigableKeySet:Ljava/util/TreeMap$KeySet;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/TreeMap$KeySet;

    invoke-direct {v0, p0}, Ljava/util/TreeMap$KeySet;-><init>(Ljava/util/NavigableMap;)V

    iput-object v0, p0, Ljava/util/TreeMap;->navigableKeySet:Ljava/util/TreeMap$KeySet;

    goto :goto_0
.end method

.method public pollFirstEntry()Ljava/util/Map$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/TreeMap;->getFirstEntry()Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v0

    invoke-static {v0}, Ljava/util/TreeMap;->exportEntry(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/Map$Entry;

    move-result-object v1

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Ljava/util/TreeMap;->deleteEntry(Ljava/util/TreeMap$TreeMapEntry;)V

    :cond_0
    return-object v1
.end method

.method public pollLastEntry()Ljava/util/Map$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/TreeMap;->getLastEntry()Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v0

    invoke-static {v0}, Ljava/util/TreeMap;->exportEntry(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/Map$Entry;

    move-result-object v1

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Ljava/util/TreeMap;->deleteEntry(Ljava/util/TreeMap$TreeMapEntry;)V

    :cond_0
    return-object v1
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    const/4 v7, 0x0

    iget-object v5, p0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$TreeMapEntry;

    if-nez v5, :cond_3

    iget-object v6, p0, Ljava/util/TreeMap;->comparator:Ljava/util/Comparator;

    if-eqz v6, :cond_1

    if-nez p1, :cond_0

    iget-object v6, p0, Ljava/util/TreeMap;->comparator:Ljava/util/Comparator;

    invoke-interface {v6, p1, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    :cond_0
    new-instance v6, Ljava/util/TreeMap$TreeMapEntry;

    invoke-direct {v6, p1, p2, v7}, Ljava/util/TreeMap$TreeMapEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/TreeMap$TreeMapEntry;)V

    iput-object v6, p0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$TreeMapEntry;

    const/4 v6, 0x1

    iput v6, p0, Ljava/util/TreeMap;->size:I

    iget v6, p0, Ljava/util/TreeMap;->modCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Ljava/util/TreeMap;->modCount:I

    return-object v7

    :cond_1
    if-nez p1, :cond_2

    new-instance v6, Ljava/lang/NullPointerException;

    const-string/jumbo v7, "key == null"

    invoke-direct {v6, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_2
    instance-of v6, p1, Ljava/lang/Comparable;

    if-nez v6, :cond_0

    new-instance v6, Ljava/lang/ClassCastException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Cannot cast"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " to Comparable."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_3
    iget-object v1, p0, Ljava/util/TreeMap;->comparator:Ljava/util/Comparator;

    if-eqz v1, :cond_8

    :cond_4
    move-object v4, v5

    iget-object v6, v5, Ljava/util/TreeMap$TreeMapEntry;->key:Ljava/lang/Object;

    invoke-interface {v1, p1, v6}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_6

    iget-object v5, v5, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    :goto_0
    if-nez v5, :cond_4

    :cond_5
    new-instance v2, Ljava/util/TreeMap$TreeMapEntry;

    invoke-direct {v2, p1, p2, v4}, Ljava/util/TreeMap$TreeMapEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/TreeMap$TreeMapEntry;)V

    if-gez v0, :cond_c

    iput-object v2, v4, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    :goto_1
    invoke-direct {p0, v2}, Ljava/util/TreeMap;->fixAfterInsertion(Ljava/util/TreeMap$TreeMapEntry;)V

    iget v6, p0, Ljava/util/TreeMap;->size:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Ljava/util/TreeMap;->size:I

    iget v6, p0, Ljava/util/TreeMap;->modCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Ljava/util/TreeMap;->modCount:I

    return-object v7

    :cond_6
    if-lez v0, :cond_7

    iget-object v5, v5, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    goto :goto_0

    :cond_7
    invoke-virtual {v5, p2}, Ljava/util/TreeMap$TreeMapEntry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    return-object v6

    :cond_8
    if-nez p1, :cond_9

    new-instance v6, Ljava/lang/NullPointerException;

    invoke-direct {v6}, Ljava/lang/NullPointerException;-><init>()V

    throw v6

    :cond_9
    move-object v3, p1

    check-cast v3, Ljava/lang/Comparable;

    :goto_2
    move-object v4, v5

    iget-object v6, v5, Ljava/util/TreeMap$TreeMapEntry;->key:Ljava/lang/Object;

    invoke-interface {v3, v6}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_a

    iget-object v5, v5, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    :goto_3
    if-eqz v5, :cond_5

    goto :goto_2

    :cond_a
    if-lez v0, :cond_b

    iget-object v5, v5, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    goto :goto_3

    :cond_b
    invoke-virtual {v5, p2}, Ljava/util/TreeMap$TreeMapEntry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    return-object v6

    :cond_c
    iput-object v2, v4, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    goto :goto_1
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v3

    iget v4, p0, Ljava/util/TreeMap;->size:I

    if-nez v4, :cond_1

    if-eqz v3, :cond_1

    instance-of v4, p1, Ljava/util/SortedMap;

    if-eqz v4, :cond_1

    move-object v4, p1

    check-cast v4, Ljava/util/SortedMap;

    invoke-interface {v4}, Ljava/util/SortedMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    iget-object v4, p0, Ljava/util/TreeMap;->comparator:Ljava/util/Comparator;

    if-eq v0, v4, :cond_0

    if-eqz v0, :cond_1

    iget-object v4, p0, Ljava/util/TreeMap;->comparator:Ljava/util/Comparator;

    invoke-interface {v0, v4}, Ljava/util/Comparator;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    iget v4, p0, Ljava/util/TreeMap;->modCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Ljava/util/TreeMap;->modCount:I

    :try_start_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {p0, v3, v4, v5, v6}, Ljava/util/TreeMap;->buildFromSorted(ILjava/util/Iterator;Ljava/io/ObjectInputStream;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :cond_1
    invoke-super {p0, p1}, Ljava/util/AbstractMap;->putAll(Ljava/util/Map;)V

    return-void

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method readTreeSet(ILjava/io/ObjectInputStream;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/io/ObjectInputStream;",
            "TV;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Ljava/util/TreeMap;->buildFromSorted(ILjava/util/Iterator;Ljava/io/ObjectInputStream;Ljava/lang/Object;)V

    return-void
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    const/4 v2, 0x0

    invoke-virtual {p0, p1}, Ljava/util/TreeMap;->getEntry(Ljava/lang/Object;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    iget-object v0, v1, Ljava/util/TreeMap$TreeMapEntry;->value:Ljava/lang/Object;

    invoke-direct {p0, v1}, Ljava/util/TreeMap;->deleteEntry(Ljava/util/TreeMap$TreeMapEntry;)V

    return-object v0
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    const/4 v2, 0x0

    invoke-virtual {p0, p1}, Ljava/util/TreeMap;->getEntry(Ljava/lang/Object;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, v1, Ljava/util/TreeMap$TreeMapEntry;->value:Ljava/lang/Object;

    iput-object p2, v1, Ljava/util/TreeMap$TreeMapEntry;->value:Ljava/lang/Object;

    return-object v0

    :cond_0
    return-object v2
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;TV;)Z"
        }
    .end annotation

    invoke-virtual {p0, p1}, Ljava/util/TreeMap;->getEntry(Ljava/lang/Object;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Ljava/util/TreeMap$TreeMapEntry;->value:Ljava/lang/Object;

    invoke-static {p2, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object p3, v0, Ljava/util/TreeMap$TreeMapEntry;->value:Ljava/lang/Object;

    const/4 v1, 0x1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public replaceAll(Ljava/util/function/BiFunction;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiFunction",
            "<-TK;-TV;+TV;>;)V"
        }
    .end annotation

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Ljava/util/TreeMap;->modCount:I

    invoke-virtual {p0}, Ljava/util/TreeMap;->getFirstEntry()Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    iget-object v2, v0, Ljava/util/TreeMap$TreeMapEntry;->key:Ljava/lang/Object;

    iget-object v3, v0, Ljava/util/TreeMap$TreeMapEntry;->value:Ljava/lang/Object;

    invoke-interface {p1, v2, v3}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v0, Ljava/util/TreeMap$TreeMapEntry;->value:Ljava/lang/Object;

    iget v2, p0, Ljava/util/TreeMap;->modCount:I

    if-eq v1, v2, :cond_0

    new-instance v2, Ljava/util/ConcurrentModificationException;

    invoke-direct {v2}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v2

    :cond_0
    invoke-static {v0}, Ljava/util/TreeMap;->successor(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method public size()I
    .locals 1

    iget v0, p0, Ljava/util/TreeMap;->size:I

    return v0
.end method

.method public subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ZTK;Z)",
            "Ljava/util/NavigableMap",
            "<TK;TV;>;"
        }
    .end annotation

    const/4 v2, 0x0

    new-instance v0, Ljava/util/TreeMap$AscendingSubMap;

    move-object v1, p0

    move-object v3, p1

    move v4, p2

    move v5, v2

    move-object v6, p3

    move v7, p4

    invoke-direct/range {v0 .. v7}, Ljava/util/TreeMap$AscendingSubMap;-><init>(Ljava/util/TreeMap;ZLjava/lang/Object;ZZLjava/lang/Object;Z)V

    return-object v0
.end method

.method public subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TK;)",
            "Ljava/util/SortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, p2, v1}, Ljava/util/TreeMap;->subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Ljava/util/NavigableMap",
            "<TK;TV;>;"
        }
    .end annotation

    const/4 v5, 0x1

    new-instance v0, Ljava/util/TreeMap$AscendingSubMap;

    const/4 v2, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v3, p1

    move v4, p2

    move v7, v5

    invoke-direct/range {v0 .. v7}, Ljava/util/TreeMap$AscendingSubMap;-><init>(Ljava/util/TreeMap;ZLjava/lang/Object;ZZLjava/lang/Object;Z)V

    return-object v0
.end method

.method public tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/SortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Ljava/util/TreeMap;->tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    iget-object v0, p0, Ljava/util/TreeMap;->values:Ljava/util/Collection;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/TreeMap$Values;

    invoke-direct {v0, p0}, Ljava/util/TreeMap$Values;-><init>(Ljava/util/TreeMap;)V

    iput-object v0, p0, Ljava/util/TreeMap;->values:Ljava/util/Collection;

    goto :goto_0
.end method
