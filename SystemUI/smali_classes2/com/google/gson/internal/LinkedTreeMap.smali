.class public final Lcom/google/gson/internal/LinkedTreeMap;
.super Ljava/util/AbstractMap;
.source "LinkedTreeMap.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gson/internal/LinkedTreeMap$EntrySet;,
        Lcom/google/gson/internal/LinkedTreeMap$KeySet;,
        Lcom/google/gson/internal/LinkedTreeMap$LinkedTreeMapIterator;,
        Lcom/google/gson/internal/LinkedTreeMap$Node;
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
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final NATURAL_ORDER:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/Comparable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<-TK;>;"
        }
    .end annotation
.end field

.field private entrySet:Lcom/google/gson/internal/LinkedTreeMap$EntrySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/internal/LinkedTreeMap",
            "<TK;TV;>.EntrySet;"
        }
    .end annotation
.end field

.field final header:Lcom/google/gson/internal/LinkedTreeMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/internal/LinkedTreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private keySet:Lcom/google/gson/internal/LinkedTreeMap$KeySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/internal/LinkedTreeMap",
            "<TK;TV;>.KeySet;"
        }
    .end annotation
.end field

.field modCount:I

.field root:Lcom/google/gson/internal/LinkedTreeMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/internal/LinkedTreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field size:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    const-class v1, Lcom/google/gson/internal/LinkedTreeMap;

    invoke-virtual {v1}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    sput-boolean v0, Lcom/google/gson/internal/LinkedTreeMap;->$assertionsDisabled:Z

    new-instance v0, Lcom/google/gson/internal/LinkedTreeMap$1;

    invoke-direct {v0}, Lcom/google/gson/internal/LinkedTreeMap$1;-><init>()V

    sput-object v0, Lcom/google/gson/internal/LinkedTreeMap;->NATURAL_ORDER:Ljava/util/Comparator;

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    sget-object v0, Lcom/google/gson/internal/LinkedTreeMap;->NATURAL_ORDER:Ljava/util/Comparator;

    invoke-direct {p0, v0}, Lcom/google/gson/internal/LinkedTreeMap;-><init>(Ljava/util/Comparator;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Comparator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<-TK;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    iput v0, p0, Lcom/google/gson/internal/LinkedTreeMap;->size:I

    iput v0, p0, Lcom/google/gson/internal/LinkedTreeMap;->modCount:I

    new-instance v0, Lcom/google/gson/internal/LinkedTreeMap$Node;

    invoke-direct {v0}, Lcom/google/gson/internal/LinkedTreeMap$Node;-><init>()V

    iput-object v0, p0, Lcom/google/gson/internal/LinkedTreeMap;->header:Lcom/google/gson/internal/LinkedTreeMap$Node;

    if-nez p1, :cond_0

    sget-object p1, Lcom/google/gson/internal/LinkedTreeMap;->NATURAL_ORDER:Ljava/util/Comparator;

    :cond_0
    iput-object p1, p0, Lcom/google/gson/internal/LinkedTreeMap;->comparator:Ljava/util/Comparator;

    return-void
.end method

.method private equal(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    if-ne p1, p2, :cond_2

    :cond_0
    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0

    :cond_2
    if-eqz p1, :cond_1

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0
.end method

.method private rebalance(Lcom/google/gson/internal/LinkedTreeMap$Node;Z)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/internal/LinkedTreeMap$Node",
            "<TK;TV;>;Z)V"
        }
    .end annotation

    move-object/from16 v9, p1

    :goto_0
    if-nez v9, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v2, v9, Lcom/google/gson/internal/LinkedTreeMap$Node;->left:Lcom/google/gson/internal/LinkedTreeMap$Node;

    iget-object v10, v9, Lcom/google/gson/internal/LinkedTreeMap$Node;->right:Lcom/google/gson/internal/LinkedTreeMap$Node;

    if-nez v2, :cond_3

    const/4 v4, 0x0

    :goto_1
    if-nez v10, :cond_4

    const/4 v12, 0x0

    :goto_2
    sub-int v1, v4, v12

    const/16 v17, -0x2

    move/from16 v0, v17

    if-eq v1, v0, :cond_5

    const/16 v17, 0x2

    move/from16 v0, v17

    if-eq v1, v0, :cond_d

    if-eqz v1, :cond_15

    sget-boolean v17, Lcom/google/gson/internal/LinkedTreeMap;->$assertionsDisabled:Z

    if-eqz v17, :cond_16

    :cond_2
    invoke-static {v4, v12}, Ljava/lang/Math;->max(II)I

    move-result v17

    add-int/lit8 v17, v17, 0x1

    move/from16 v0, v17

    iput v0, v9, Lcom/google/gson/internal/LinkedTreeMap$Node;->height:I

    if-eqz p2, :cond_0

    :goto_3
    iget-object v9, v9, Lcom/google/gson/internal/LinkedTreeMap$Node;->parent:Lcom/google/gson/internal/LinkedTreeMap$Node;

    goto :goto_0

    :cond_3
    iget v4, v2, Lcom/google/gson/internal/LinkedTreeMap$Node;->height:I

    goto :goto_1

    :cond_4
    iget v12, v10, Lcom/google/gson/internal/LinkedTreeMap$Node;->height:I

    goto :goto_2

    :cond_5
    iget-object v13, v10, Lcom/google/gson/internal/LinkedTreeMap$Node;->left:Lcom/google/gson/internal/LinkedTreeMap$Node;

    iget-object v15, v10, Lcom/google/gson/internal/LinkedTreeMap$Node;->right:Lcom/google/gson/internal/LinkedTreeMap$Node;

    if-nez v15, :cond_7

    const/16 v16, 0x0

    :goto_4
    if-nez v13, :cond_8

    const/4 v14, 0x0

    :goto_5
    sub-int v11, v14, v16

    const/16 v17, -0x1

    move/from16 v0, v17

    if-ne v11, v0, :cond_9

    :cond_6
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/google/gson/internal/LinkedTreeMap;->rotateLeft(Lcom/google/gson/internal/LinkedTreeMap$Node;)V

    :goto_6
    if-nez p2, :cond_0

    goto :goto_3

    :cond_7
    iget v0, v15, Lcom/google/gson/internal/LinkedTreeMap$Node;->height:I

    move/from16 v16, v0

    goto :goto_4

    :cond_8
    iget v14, v13, Lcom/google/gson/internal/LinkedTreeMap$Node;->height:I

    goto :goto_5

    :cond_9
    if-eqz v11, :cond_b

    :goto_7
    sget-boolean v17, Lcom/google/gson/internal/LinkedTreeMap;->$assertionsDisabled:Z

    if-eqz v17, :cond_c

    :cond_a
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/google/gson/internal/LinkedTreeMap;->rotateRight(Lcom/google/gson/internal/LinkedTreeMap$Node;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/google/gson/internal/LinkedTreeMap;->rotateLeft(Lcom/google/gson/internal/LinkedTreeMap$Node;)V

    goto :goto_6

    :cond_b
    if-eqz p2, :cond_6

    goto :goto_7

    :cond_c
    const/16 v17, 0x1

    move/from16 v0, v17

    if-eq v11, v0, :cond_a

    new-instance v17, Ljava/lang/AssertionError;

    invoke-direct/range {v17 .. v17}, Ljava/lang/AssertionError;-><init>()V

    throw v17

    :cond_d
    iget-object v5, v2, Lcom/google/gson/internal/LinkedTreeMap$Node;->left:Lcom/google/gson/internal/LinkedTreeMap$Node;

    iget-object v7, v2, Lcom/google/gson/internal/LinkedTreeMap$Node;->right:Lcom/google/gson/internal/LinkedTreeMap$Node;

    if-nez v7, :cond_f

    const/4 v8, 0x0

    :goto_8
    if-nez v5, :cond_10

    const/4 v6, 0x0

    :goto_9
    sub-int v3, v6, v8

    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v3, v0, :cond_11

    :cond_e
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/google/gson/internal/LinkedTreeMap;->rotateRight(Lcom/google/gson/internal/LinkedTreeMap$Node;)V

    :goto_a
    if-nez p2, :cond_0

    goto :goto_3

    :cond_f
    iget v8, v7, Lcom/google/gson/internal/LinkedTreeMap$Node;->height:I

    goto :goto_8

    :cond_10
    iget v6, v5, Lcom/google/gson/internal/LinkedTreeMap$Node;->height:I

    goto :goto_9

    :cond_11
    if-eqz v3, :cond_13

    :goto_b
    sget-boolean v17, Lcom/google/gson/internal/LinkedTreeMap;->$assertionsDisabled:Z

    if-eqz v17, :cond_14

    :cond_12
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/gson/internal/LinkedTreeMap;->rotateLeft(Lcom/google/gson/internal/LinkedTreeMap$Node;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/google/gson/internal/LinkedTreeMap;->rotateRight(Lcom/google/gson/internal/LinkedTreeMap$Node;)V

    goto :goto_a

    :cond_13
    if-eqz p2, :cond_e

    goto :goto_b

    :cond_14
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v3, v0, :cond_12

    new-instance v17, Ljava/lang/AssertionError;

    invoke-direct/range {v17 .. v17}, Ljava/lang/AssertionError;-><init>()V

    throw v17

    :cond_15
    add-int/lit8 v17, v4, 0x1

    move/from16 v0, v17

    iput v0, v9, Lcom/google/gson/internal/LinkedTreeMap$Node;->height:I

    if-nez p2, :cond_0

    goto/16 :goto_3

    :cond_16
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v1, v0, :cond_2

    const/16 v17, 0x1

    move/from16 v0, v17

    if-eq v1, v0, :cond_2

    new-instance v17, Ljava/lang/AssertionError;

    invoke-direct/range {v17 .. v17}, Ljava/lang/AssertionError;-><init>()V

    throw v17
.end method

.method private replaceInParent(Lcom/google/gson/internal/LinkedTreeMap$Node;Lcom/google/gson/internal/LinkedTreeMap$Node;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/internal/LinkedTreeMap$Node",
            "<TK;TV;>;",
            "Lcom/google/gson/internal/LinkedTreeMap$Node",
            "<TK;TV;>;)V"
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p1, Lcom/google/gson/internal/LinkedTreeMap$Node;->parent:Lcom/google/gson/internal/LinkedTreeMap$Node;

    iput-object v1, p1, Lcom/google/gson/internal/LinkedTreeMap$Node;->parent:Lcom/google/gson/internal/LinkedTreeMap$Node;

    if-nez p2, :cond_0

    :goto_0
    if-nez v0, :cond_1

    iput-object p2, p0, Lcom/google/gson/internal/LinkedTreeMap;->root:Lcom/google/gson/internal/LinkedTreeMap$Node;

    :goto_1
    return-void

    :cond_0
    iput-object v0, p2, Lcom/google/gson/internal/LinkedTreeMap$Node;->parent:Lcom/google/gson/internal/LinkedTreeMap$Node;

    goto :goto_0

    :cond_1
    iget-object v1, v0, Lcom/google/gson/internal/LinkedTreeMap$Node;->left:Lcom/google/gson/internal/LinkedTreeMap$Node;

    if-eq v1, p1, :cond_3

    sget-boolean v1, Lcom/google/gson/internal/LinkedTreeMap;->$assertionsDisabled:Z

    if-eqz v1, :cond_4

    :cond_2
    iput-object p2, v0, Lcom/google/gson/internal/LinkedTreeMap$Node;->right:Lcom/google/gson/internal/LinkedTreeMap$Node;

    goto :goto_1

    :cond_3
    iput-object p2, v0, Lcom/google/gson/internal/LinkedTreeMap$Node;->left:Lcom/google/gson/internal/LinkedTreeMap$Node;

    goto :goto_1

    :cond_4
    iget-object v1, v0, Lcom/google/gson/internal/LinkedTreeMap$Node;->right:Lcom/google/gson/internal/LinkedTreeMap$Node;

    if-eq v1, p1, :cond_2

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method

.method private rotateLeft(Lcom/google/gson/internal/LinkedTreeMap$Node;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/internal/LinkedTreeMap$Node",
            "<TK;TV;>;)V"
        }
    .end annotation

    const/4 v5, 0x0

    iget-object v0, p1, Lcom/google/gson/internal/LinkedTreeMap$Node;->left:Lcom/google/gson/internal/LinkedTreeMap$Node;

    iget-object v1, p1, Lcom/google/gson/internal/LinkedTreeMap$Node;->right:Lcom/google/gson/internal/LinkedTreeMap$Node;

    iget-object v2, v1, Lcom/google/gson/internal/LinkedTreeMap$Node;->left:Lcom/google/gson/internal/LinkedTreeMap$Node;

    iget-object v3, v1, Lcom/google/gson/internal/LinkedTreeMap$Node;->right:Lcom/google/gson/internal/LinkedTreeMap$Node;

    iput-object v2, p1, Lcom/google/gson/internal/LinkedTreeMap$Node;->right:Lcom/google/gson/internal/LinkedTreeMap$Node;

    if-nez v2, :cond_0

    :goto_0
    invoke-direct {p0, p1, v1}, Lcom/google/gson/internal/LinkedTreeMap;->replaceInParent(Lcom/google/gson/internal/LinkedTreeMap$Node;Lcom/google/gson/internal/LinkedTreeMap$Node;)V

    iput-object p1, v1, Lcom/google/gson/internal/LinkedTreeMap$Node;->left:Lcom/google/gson/internal/LinkedTreeMap$Node;

    iput-object v1, p1, Lcom/google/gson/internal/LinkedTreeMap$Node;->parent:Lcom/google/gson/internal/LinkedTreeMap$Node;

    if-nez v0, :cond_1

    move v6, v5

    :goto_1
    if-nez v2, :cond_2

    move v4, v5

    :goto_2
    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    iput v4, p1, Lcom/google/gson/internal/LinkedTreeMap$Node;->height:I

    iget v4, p1, Lcom/google/gson/internal/LinkedTreeMap$Node;->height:I

    if-nez v3, :cond_3

    :goto_3
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    iput v4, v1, Lcom/google/gson/internal/LinkedTreeMap$Node;->height:I

    return-void

    :cond_0
    iput-object p1, v2, Lcom/google/gson/internal/LinkedTreeMap$Node;->parent:Lcom/google/gson/internal/LinkedTreeMap$Node;

    goto :goto_0

    :cond_1
    iget v4, v0, Lcom/google/gson/internal/LinkedTreeMap$Node;->height:I

    move v6, v4

    goto :goto_1

    :cond_2
    iget v4, v2, Lcom/google/gson/internal/LinkedTreeMap$Node;->height:I

    goto :goto_2

    :cond_3
    iget v5, v3, Lcom/google/gson/internal/LinkedTreeMap$Node;->height:I

    goto :goto_3
.end method

.method private rotateRight(Lcom/google/gson/internal/LinkedTreeMap$Node;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/internal/LinkedTreeMap$Node",
            "<TK;TV;>;)V"
        }
    .end annotation

    const/4 v5, 0x0

    iget-object v0, p1, Lcom/google/gson/internal/LinkedTreeMap$Node;->left:Lcom/google/gson/internal/LinkedTreeMap$Node;

    iget-object v3, p1, Lcom/google/gson/internal/LinkedTreeMap$Node;->right:Lcom/google/gson/internal/LinkedTreeMap$Node;

    iget-object v1, v0, Lcom/google/gson/internal/LinkedTreeMap$Node;->left:Lcom/google/gson/internal/LinkedTreeMap$Node;

    iget-object v2, v0, Lcom/google/gson/internal/LinkedTreeMap$Node;->right:Lcom/google/gson/internal/LinkedTreeMap$Node;

    iput-object v2, p1, Lcom/google/gson/internal/LinkedTreeMap$Node;->left:Lcom/google/gson/internal/LinkedTreeMap$Node;

    if-nez v2, :cond_0

    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/google/gson/internal/LinkedTreeMap;->replaceInParent(Lcom/google/gson/internal/LinkedTreeMap$Node;Lcom/google/gson/internal/LinkedTreeMap$Node;)V

    iput-object p1, v0, Lcom/google/gson/internal/LinkedTreeMap$Node;->right:Lcom/google/gson/internal/LinkedTreeMap$Node;

    iput-object v0, p1, Lcom/google/gson/internal/LinkedTreeMap$Node;->parent:Lcom/google/gson/internal/LinkedTreeMap$Node;

    if-nez v3, :cond_1

    move v6, v5

    :goto_1
    if-nez v2, :cond_2

    move v4, v5

    :goto_2
    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    iput v4, p1, Lcom/google/gson/internal/LinkedTreeMap$Node;->height:I

    iget v4, p1, Lcom/google/gson/internal/LinkedTreeMap$Node;->height:I

    if-nez v1, :cond_3

    :goto_3
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    iput v4, v0, Lcom/google/gson/internal/LinkedTreeMap$Node;->height:I

    return-void

    :cond_0
    iput-object p1, v2, Lcom/google/gson/internal/LinkedTreeMap$Node;->parent:Lcom/google/gson/internal/LinkedTreeMap$Node;

    goto :goto_0

    :cond_1
    iget v4, v3, Lcom/google/gson/internal/LinkedTreeMap$Node;->height:I

    move v6, v4

    goto :goto_1

    :cond_2
    iget v4, v2, Lcom/google/gson/internal/LinkedTreeMap$Node;->height:I

    goto :goto_2

    :cond_3
    iget v5, v1, Lcom/google/gson/internal/LinkedTreeMap$Node;->height:I

    goto :goto_3
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0, p0}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 2

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/gson/internal/LinkedTreeMap;->root:Lcom/google/gson/internal/LinkedTreeMap$Node;

    const/4 v1, 0x0

    iput v1, p0, Lcom/google/gson/internal/LinkedTreeMap;->size:I

    iget v1, p0, Lcom/google/gson/internal/LinkedTreeMap;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/gson/internal/LinkedTreeMap;->modCount:I

    iget-object v0, p0, Lcom/google/gson/internal/LinkedTreeMap;->header:Lcom/google/gson/internal/LinkedTreeMap$Node;

    iput-object v0, v0, Lcom/google/gson/internal/LinkedTreeMap$Node;->prev:Lcom/google/gson/internal/LinkedTreeMap$Node;

    iput-object v0, v0, Lcom/google/gson/internal/LinkedTreeMap$Node;->next:Lcom/google/gson/internal/LinkedTreeMap$Node;

    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/gson/internal/LinkedTreeMap;->findByObject(Ljava/lang/Object;)Lcom/google/gson/internal/LinkedTreeMap$Node;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

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

    iget-object v0, p0, Lcom/google/gson/internal/LinkedTreeMap;->entrySet:Lcom/google/gson/internal/LinkedTreeMap$EntrySet;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/gson/internal/LinkedTreeMap$EntrySet;

    invoke-direct {v0, p0}, Lcom/google/gson/internal/LinkedTreeMap$EntrySet;-><init>(Lcom/google/gson/internal/LinkedTreeMap;)V

    iput-object v0, p0, Lcom/google/gson/internal/LinkedTreeMap;->entrySet:Lcom/google/gson/internal/LinkedTreeMap$EntrySet;

    :cond_0
    return-object v0
.end method

.method find(Ljava/lang/Object;Z)Lcom/google/gson/internal/LinkedTreeMap$Node;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Lcom/google/gson/internal/LinkedTreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    const/4 v8, 0x0

    iget-object v2, p0, Lcom/google/gson/internal/LinkedTreeMap;->comparator:Ljava/util/Comparator;

    iget-object v6, p0, Lcom/google/gson/internal/LinkedTreeMap;->root:Lcom/google/gson/internal/LinkedTreeMap$Node;

    const/4 v3, 0x0

    if-nez v6, :cond_1

    :cond_0
    if-eqz p2, :cond_6

    iget-object v5, p0, Lcom/google/gson/internal/LinkedTreeMap;->header:Lcom/google/gson/internal/LinkedTreeMap$Node;

    if-eqz v6, :cond_7

    new-instance v4, Lcom/google/gson/internal/LinkedTreeMap$Node;

    iget-object v7, v5, Lcom/google/gson/internal/LinkedTreeMap$Node;->prev:Lcom/google/gson/internal/LinkedTreeMap$Node;

    invoke-direct {v4, v6, p1, v5, v7}, Lcom/google/gson/internal/LinkedTreeMap$Node;-><init>(Lcom/google/gson/internal/LinkedTreeMap$Node;Ljava/lang/Object;Lcom/google/gson/internal/LinkedTreeMap$Node;Lcom/google/gson/internal/LinkedTreeMap$Node;)V

    if-ltz v3, :cond_a

    iput-object v4, v6, Lcom/google/gson/internal/LinkedTreeMap$Node;->right:Lcom/google/gson/internal/LinkedTreeMap$Node;

    :goto_0
    const/4 v7, 0x1

    invoke-direct {p0, v6, v7}, Lcom/google/gson/internal/LinkedTreeMap;->rebalance(Lcom/google/gson/internal/LinkedTreeMap$Node;Z)V

    :goto_1
    iget v7, p0, Lcom/google/gson/internal/LinkedTreeMap;->size:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/google/gson/internal/LinkedTreeMap;->size:I

    iget v7, p0, Lcom/google/gson/internal/LinkedTreeMap;->modCount:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/google/gson/internal/LinkedTreeMap;->modCount:I

    return-object v4

    :cond_1
    sget-object v7, Lcom/google/gson/internal/LinkedTreeMap;->NATURAL_ORDER:Ljava/util/Comparator;

    if-eq v2, v7, :cond_2

    move-object v1, v8

    :goto_2
    if-nez v1, :cond_3

    iget-object v7, v6, Lcom/google/gson/internal/LinkedTreeMap$Node;->key:Ljava/lang/Object;

    invoke-interface {v2, p1, v7}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    :goto_3
    if-eqz v3, :cond_4

    if-ltz v3, :cond_5

    iget-object v0, v6, Lcom/google/gson/internal/LinkedTreeMap$Node;->right:Lcom/google/gson/internal/LinkedTreeMap$Node;

    :goto_4
    if-eqz v0, :cond_0

    move-object v6, v0

    goto :goto_2

    :cond_2
    move-object v7, p1

    check-cast v7, Ljava/lang/Comparable;

    move-object v1, v7

    goto :goto_2

    :cond_3
    iget-object v7, v6, Lcom/google/gson/internal/LinkedTreeMap$Node;->key:Ljava/lang/Object;

    invoke-interface {v1, v7}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v3

    goto :goto_3

    :cond_4
    return-object v6

    :cond_5
    iget-object v0, v6, Lcom/google/gson/internal/LinkedTreeMap$Node;->left:Lcom/google/gson/internal/LinkedTreeMap$Node;

    goto :goto_4

    :cond_6
    return-object v8

    :cond_7
    sget-object v7, Lcom/google/gson/internal/LinkedTreeMap;->NATURAL_ORDER:Ljava/util/Comparator;

    if-eq v2, v7, :cond_9

    :cond_8
    new-instance v4, Lcom/google/gson/internal/LinkedTreeMap$Node;

    iget-object v7, v5, Lcom/google/gson/internal/LinkedTreeMap$Node;->prev:Lcom/google/gson/internal/LinkedTreeMap$Node;

    invoke-direct {v4, v6, p1, v5, v7}, Lcom/google/gson/internal/LinkedTreeMap$Node;-><init>(Lcom/google/gson/internal/LinkedTreeMap$Node;Ljava/lang/Object;Lcom/google/gson/internal/LinkedTreeMap$Node;Lcom/google/gson/internal/LinkedTreeMap$Node;)V

    iput-object v4, p0, Lcom/google/gson/internal/LinkedTreeMap;->root:Lcom/google/gson/internal/LinkedTreeMap$Node;

    goto :goto_1

    :cond_9
    instance-of v7, p1, Ljava/lang/Comparable;

    if-nez v7, :cond_8

    new-instance v7, Ljava/lang/ClassCastException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " is not Comparable"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_a
    iput-object v4, v6, Lcom/google/gson/internal/LinkedTreeMap$Node;->left:Lcom/google/gson/internal/LinkedTreeMap$Node;

    goto :goto_0
.end method

.method findByEntry(Ljava/util/Map$Entry;)Lcom/google/gson/internal/LinkedTreeMap$Node;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<**>;)",
            "Lcom/google/gson/internal/LinkedTreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/google/gson/internal/LinkedTreeMap;->findByObject(Ljava/lang/Object;)Lcom/google/gson/internal/LinkedTreeMap$Node;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_0
    :goto_0
    if-nez v1, :cond_1

    move-object v0, v2

    :cond_1
    return-object v0

    :cond_2
    iget-object v3, v0, Lcom/google/gson/internal/LinkedTreeMap$Node;->value:Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/google/gson/internal/LinkedTreeMap;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method findByObject(Ljava/lang/Object;)Lcom/google/gson/internal/LinkedTreeMap$Node;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/gson/internal/LinkedTreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    const/4 v1, 0x0

    if-nez p1, :cond_0

    :goto_0
    return-object v1

    :cond_0
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v2}, Lcom/google/gson/internal/LinkedTreeMap;->find(Ljava/lang/Object;Z)Lcom/google/gson/internal/LinkedTreeMap$Node;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception v0

    return-object v1
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

    invoke-virtual {p0, p1}, Lcom/google/gson/internal/LinkedTreeMap;->findByObject(Ljava/lang/Object;)Lcom/google/gson/internal/LinkedTreeMap$Node;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, v0, Lcom/google/gson/internal/LinkedTreeMap$Node;->value:Ljava/lang/Object;

    goto :goto_0
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

    iget-object v0, p0, Lcom/google/gson/internal/LinkedTreeMap;->keySet:Lcom/google/gson/internal/LinkedTreeMap$KeySet;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/gson/internal/LinkedTreeMap$KeySet;

    invoke-direct {v0, p0}, Lcom/google/gson/internal/LinkedTreeMap$KeySet;-><init>(Lcom/google/gson/internal/LinkedTreeMap;)V

    iput-object v0, p0, Lcom/google/gson/internal/LinkedTreeMap;->keySet:Lcom/google/gson/internal/LinkedTreeMap$KeySet;

    :cond_0
    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v2}, Lcom/google/gson/internal/LinkedTreeMap;->find(Ljava/lang/Object;Z)Lcom/google/gson/internal/LinkedTreeMap$Node;

    move-result-object v0

    iget-object v1, v0, Lcom/google/gson/internal/LinkedTreeMap$Node;->value:Ljava/lang/Object;

    iput-object p2, v0, Lcom/google/gson/internal/LinkedTreeMap$Node;->value:Ljava/lang/Object;

    return-object v1

    :cond_0
    new-instance v2, Ljava/lang/NullPointerException;

    const-string/jumbo v3, "key == null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Lcom/google/gson/internal/LinkedTreeMap;->removeInternalByKey(Ljava/lang/Object;)Lcom/google/gson/internal/LinkedTreeMap$Node;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, v0, Lcom/google/gson/internal/LinkedTreeMap$Node;->value:Ljava/lang/Object;

    goto :goto_0
.end method

.method removeInternal(Lcom/google/gson/internal/LinkedTreeMap$Node;Z)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/internal/LinkedTreeMap$Node",
            "<TK;TV;>;Z)V"
        }
    .end annotation

    const/4 v9, 0x0

    const/4 v8, 0x0

    if-nez p2, :cond_1

    :goto_0
    iget-object v1, p1, Lcom/google/gson/internal/LinkedTreeMap$Node;->left:Lcom/google/gson/internal/LinkedTreeMap$Node;

    iget-object v4, p1, Lcom/google/gson/internal/LinkedTreeMap$Node;->right:Lcom/google/gson/internal/LinkedTreeMap$Node;

    iget-object v3, p1, Lcom/google/gson/internal/LinkedTreeMap$Node;->parent:Lcom/google/gson/internal/LinkedTreeMap$Node;

    if-nez v1, :cond_2

    :cond_0
    if-nez v1, :cond_6

    if-nez v4, :cond_7

    invoke-direct {p0, p1, v8}, Lcom/google/gson/internal/LinkedTreeMap;->replaceInParent(Lcom/google/gson/internal/LinkedTreeMap$Node;Lcom/google/gson/internal/LinkedTreeMap$Node;)V

    :goto_1
    invoke-direct {p0, v3, v9}, Lcom/google/gson/internal/LinkedTreeMap;->rebalance(Lcom/google/gson/internal/LinkedTreeMap$Node;Z)V

    iget v6, p0, Lcom/google/gson/internal/LinkedTreeMap;->size:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Lcom/google/gson/internal/LinkedTreeMap;->size:I

    iget v6, p0, Lcom/google/gson/internal/LinkedTreeMap;->modCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/google/gson/internal/LinkedTreeMap;->modCount:I

    return-void

    :cond_1
    iget-object v6, p1, Lcom/google/gson/internal/LinkedTreeMap$Node;->prev:Lcom/google/gson/internal/LinkedTreeMap$Node;

    iget-object v7, p1, Lcom/google/gson/internal/LinkedTreeMap$Node;->next:Lcom/google/gson/internal/LinkedTreeMap$Node;

    iput-object v7, v6, Lcom/google/gson/internal/LinkedTreeMap$Node;->next:Lcom/google/gson/internal/LinkedTreeMap$Node;

    iget-object v6, p1, Lcom/google/gson/internal/LinkedTreeMap$Node;->next:Lcom/google/gson/internal/LinkedTreeMap$Node;

    iget-object v7, p1, Lcom/google/gson/internal/LinkedTreeMap$Node;->prev:Lcom/google/gson/internal/LinkedTreeMap$Node;

    iput-object v7, v6, Lcom/google/gson/internal/LinkedTreeMap$Node;->prev:Lcom/google/gson/internal/LinkedTreeMap$Node;

    goto :goto_0

    :cond_2
    if-eqz v4, :cond_0

    iget v6, v1, Lcom/google/gson/internal/LinkedTreeMap$Node;->height:I

    iget v7, v4, Lcom/google/gson/internal/LinkedTreeMap$Node;->height:I

    if-gt v6, v7, :cond_3

    invoke-virtual {v4}, Lcom/google/gson/internal/LinkedTreeMap$Node;->first()Lcom/google/gson/internal/LinkedTreeMap$Node;

    move-result-object v0

    :goto_2
    invoke-virtual {p0, v0, v9}, Lcom/google/gson/internal/LinkedTreeMap;->removeInternal(Lcom/google/gson/internal/LinkedTreeMap$Node;Z)V

    const/4 v2, 0x0

    iget-object v1, p1, Lcom/google/gson/internal/LinkedTreeMap$Node;->left:Lcom/google/gson/internal/LinkedTreeMap$Node;

    if-nez v1, :cond_4

    :goto_3
    const/4 v5, 0x0

    iget-object v4, p1, Lcom/google/gson/internal/LinkedTreeMap$Node;->right:Lcom/google/gson/internal/LinkedTreeMap$Node;

    if-nez v4, :cond_5

    :goto_4
    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    iput v6, v0, Lcom/google/gson/internal/LinkedTreeMap$Node;->height:I

    invoke-direct {p0, p1, v0}, Lcom/google/gson/internal/LinkedTreeMap;->replaceInParent(Lcom/google/gson/internal/LinkedTreeMap$Node;Lcom/google/gson/internal/LinkedTreeMap$Node;)V

    return-void

    :cond_3
    invoke-virtual {v1}, Lcom/google/gson/internal/LinkedTreeMap$Node;->last()Lcom/google/gson/internal/LinkedTreeMap$Node;

    move-result-object v0

    goto :goto_2

    :cond_4
    iget v2, v1, Lcom/google/gson/internal/LinkedTreeMap$Node;->height:I

    iput-object v1, v0, Lcom/google/gson/internal/LinkedTreeMap$Node;->left:Lcom/google/gson/internal/LinkedTreeMap$Node;

    iput-object v0, v1, Lcom/google/gson/internal/LinkedTreeMap$Node;->parent:Lcom/google/gson/internal/LinkedTreeMap$Node;

    iput-object v8, p1, Lcom/google/gson/internal/LinkedTreeMap$Node;->left:Lcom/google/gson/internal/LinkedTreeMap$Node;

    goto :goto_3

    :cond_5
    iget v5, v4, Lcom/google/gson/internal/LinkedTreeMap$Node;->height:I

    iput-object v4, v0, Lcom/google/gson/internal/LinkedTreeMap$Node;->right:Lcom/google/gson/internal/LinkedTreeMap$Node;

    iput-object v0, v4, Lcom/google/gson/internal/LinkedTreeMap$Node;->parent:Lcom/google/gson/internal/LinkedTreeMap$Node;

    iput-object v8, p1, Lcom/google/gson/internal/LinkedTreeMap$Node;->right:Lcom/google/gson/internal/LinkedTreeMap$Node;

    goto :goto_4

    :cond_6
    invoke-direct {p0, p1, v1}, Lcom/google/gson/internal/LinkedTreeMap;->replaceInParent(Lcom/google/gson/internal/LinkedTreeMap$Node;Lcom/google/gson/internal/LinkedTreeMap$Node;)V

    iput-object v8, p1, Lcom/google/gson/internal/LinkedTreeMap$Node;->left:Lcom/google/gson/internal/LinkedTreeMap$Node;

    goto :goto_1

    :cond_7
    invoke-direct {p0, p1, v4}, Lcom/google/gson/internal/LinkedTreeMap;->replaceInParent(Lcom/google/gson/internal/LinkedTreeMap$Node;Lcom/google/gson/internal/LinkedTreeMap$Node;)V

    iput-object v8, p1, Lcom/google/gson/internal/LinkedTreeMap$Node;->right:Lcom/google/gson/internal/LinkedTreeMap$Node;

    goto :goto_1
.end method

.method removeInternalByKey(Ljava/lang/Object;)Lcom/google/gson/internal/LinkedTreeMap$Node;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/gson/internal/LinkedTreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/gson/internal/LinkedTreeMap;->findByObject(Ljava/lang/Object;)Lcom/google/gson/internal/LinkedTreeMap$Node;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/gson/internal/LinkedTreeMap;->removeInternal(Lcom/google/gson/internal/LinkedTreeMap$Node;Z)V

    goto :goto_0
.end method

.method public size()I
    .locals 1

    iget v0, p0, Lcom/google/gson/internal/LinkedTreeMap;->size:I

    return v0
.end method
