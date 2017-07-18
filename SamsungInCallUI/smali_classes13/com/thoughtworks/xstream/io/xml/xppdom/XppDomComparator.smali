.class public Lcom/thoughtworks/xstream/io/xml/xppdom/XppDomComparator;
.super Ljava/lang/Object;
.source "XppDomComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field private final xpath:Ljava/lang/ThreadLocal;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDomComparator;-><init>(Ljava/lang/ThreadLocal;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/ThreadLocal;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDomComparator;->xpath:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private compareInternal(Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;Ljava/lang/StringBuffer;I)I
    .locals 22

    invoke-virtual/range {p3 .. p3}, Ljava/lang/StringBuffer;->length()I

    move-result v14

    invoke-virtual/range {p1 .. p1}, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p2 .. p2}, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;->getName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-ltz p4, :cond_0

    const/16 v18, 0x5b

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v18

    const/16 v19, 0x5d

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_0
    if-eqz v15, :cond_1

    const/16 v18, 0x3f

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move/from16 v18, v15

    :goto_0
    return v18

    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;->getAttributeNames()[Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;->getAttributeNames()[Ljava/lang/String;

    move-result-object v5

    array-length v11, v4

    array-length v0, v5

    move/from16 v18, v0

    sub-int v15, v18, v11

    if-eqz v15, :cond_3

    const-string v18, "::count(@*)"

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-gez v15, :cond_2

    const/16 v18, 0x1

    goto :goto_0

    :cond_2
    const/16 v18, -0x1

    goto :goto_0

    :cond_3
    invoke-static {v4}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    invoke-static {v5}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    const/4 v10, 0x0

    :goto_1
    if-ge v10, v11, :cond_6

    aget-object v3, v4, v10

    aget-object v18, v5, v10

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v15

    if-eqz v15, :cond_4

    const-string v18, "[@"

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v18

    const-string v19, "?]"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move/from16 v18, v15

    goto :goto_0

    :cond_4
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v15

    if-eqz v15, :cond_5

    const-string v18, "[@"

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v18

    const/16 v19, 0x5d

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move/from16 v18, v15

    goto :goto_0

    :cond_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;->getChildCount()I

    move-result v9

    invoke-virtual/range {p2 .. p2}, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;->getChildCount()I

    move-result v18

    sub-int v15, v18, v9

    if-eqz v15, :cond_8

    const-string v18, "::count(*)"

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-gez v15, :cond_7

    const/16 v18, 0x1

    goto/16 :goto_0

    :cond_7
    const/16 v18, -0x1

    goto/16 :goto_0

    :cond_8
    if-lez v9, :cond_d

    invoke-virtual/range {p1 .. p1}, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;->getValue()Ljava/lang/String;

    move-result-object v18

    if-nez v18, :cond_9

    invoke-virtual/range {p2 .. p2}, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;->getValue()Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_a

    :cond_9
    new-instance v18, Ljava/lang/IllegalArgumentException;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "XppDom cannot handle mixed mode at "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "::text()"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v18

    :cond_a
    const/16 v18, 0x2f

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    const/4 v10, 0x0

    :goto_2
    if-ge v10, v9, :cond_11

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;->getChild(I)Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;

    move-result-object v7

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;->getChild(I)Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;

    move-result-object v8

    invoke-virtual {v7}, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v13, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_b

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [I

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v13, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    invoke-interface {v13, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, [I

    check-cast v18, [I

    const/16 v19, 0x0

    aget v20, v18, v19

    add-int/lit8 v21, v20, 0x1

    aput v21, v18, v19

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, v20

    invoke-direct {v0, v7, v8, v1, v2}, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDomComparator;->compareInternal(Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;Ljava/lang/StringBuffer;I)I

    move-result v15

    if-eqz v15, :cond_c

    move/from16 v18, v15

    goto/16 :goto_0

    :cond_c
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_d
    invoke-virtual/range {p2 .. p2}, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;->getValue()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {p1 .. p1}, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;->getValue()Ljava/lang/String;

    move-result-object v16

    if-nez v16, :cond_f

    if-nez v17, :cond_e

    const/4 v15, 0x0

    :goto_3
    if-eqz v15, :cond_11

    const-string v18, "::text()"

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move/from16 v18, v15

    goto/16 :goto_0

    :cond_e
    const/4 v15, -0x1

    goto :goto_3

    :cond_f
    if-nez v17, :cond_10

    const/4 v15, 0x1

    :goto_4
    goto :goto_3

    :cond_10
    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v15

    goto :goto_4

    :cond_11
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Ljava/lang/StringBuffer;->setLength(I)V

    move/from16 v18, v15

    goto/16 :goto_0
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    check-cast p1, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;

    check-cast p2, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;

    const/4 v2, -0x1

    invoke-direct {p0, p1, p2, v1, v2}, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDomComparator;->compareInternal(Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;Ljava/lang/StringBuffer;I)I

    move-result v0

    iget-object v2, p0, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDomComparator;->xpath:Ljava/lang/ThreadLocal;

    if-eqz v2, :cond_0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDomComparator;->xpath:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDomComparator;->xpath:Ljava/lang/ThreadLocal;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto :goto_0
.end method
