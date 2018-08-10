.class public final Lcom/google/protobuf/nano/MessageNanoPrinter;
.super Ljava/lang/Object;
.source "MessageNanoPrinter.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static appendQuotedBytes([BLjava/lang/StringBuffer;)V
    .locals 8

    const/16 v7, 0x5c

    const/16 v6, 0x22

    if-nez p0, :cond_0

    const-string/jumbo v2, "\"\""

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void

    :cond_0
    invoke-virtual {p1, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_4

    aget-byte v2, p0, v1

    and-int/lit16 v0, v2, 0xff

    if-eq v0, v7, :cond_1

    if-ne v0, v6, :cond_2

    :cond_1
    invoke-virtual {p1, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v2

    int-to-char v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/16 v2, 0x20

    if-lt v0, v2, :cond_3

    const/16 v2, 0x7f

    if-ge v0, v2, :cond_3

    int-to-char v2, v0

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_3
    const-string/jumbo v2, "\\%03o"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_4
    invoke-virtual {p1, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    return-void
.end method

.method private static deCamelCaseify(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-nez v1, :cond_0

    invoke-static {v0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v3, 0x5f

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static escapeString(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v4, 0x20

    if-lt v2, v4, :cond_0

    const/16 v4, 0x7e

    if-gt v2, v4, :cond_0

    const/16 v4, 0x22

    if-eq v2, v4, :cond_0

    const/16 v4, 0x27

    if-eq v2, v4, :cond_0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-string/jumbo v4, "\\u%04x"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static print(Lcom/google/protobuf/nano/MessageNano;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/protobuf/nano/MessageNano;",
            ">(TT;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-nez p0, :cond_0

    const-string/jumbo v3, ""

    return-object v3

    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    :try_start_0
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v4, 0x0

    invoke-static {v4, p0, v3, v0}, Lcom/google/protobuf/nano/MessageNanoPrinter;->print(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Error printing proto: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    :catch_1
    move-exception v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Error printing proto: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static print(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;)V
    .locals 30
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/google/protobuf/nano/MessageNano;

    move/from16 v25, v0

    if-eqz v25, :cond_c

    invoke-virtual/range {p2 .. p2}, Ljava/lang/StringBuffer;->length()I

    move-result v21

    if-eqz p0, :cond_2

    move-object/from16 v0, p3

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v25

    invoke-static/range {p0 .. p0}, Lcom/google/protobuf/nano/MessageNanoPrinter;->deCamelCaseify(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v25

    const-string/jumbo v26, " <\n"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v25, "  "

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v26

    const/16 v25, 0x0

    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v27, v0

    :goto_1
    move/from16 v0, v25

    move/from16 v1, v27

    if-ge v0, v1, :cond_8

    aget-object v10, v26, v25

    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v19

    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v28, "cachedSize"

    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_4

    :cond_3
    :goto_2
    add-int/lit8 v25, v25, 0x1

    goto :goto_1

    :cond_4
    and-int/lit8 v28, v19, 0x1

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_3

    and-int/lit8 v28, v19, 0x8

    const/16 v29, 0x8

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_3

    const-string/jumbo v28, "_"

    move-object/from16 v0, v28

    invoke-virtual {v11, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v28

    xor-int/lit8 v28, v28, 0x1

    if-eqz v28, :cond_3

    const-string/jumbo v28, "_"

    move-object/from16 v0, v28

    invoke-virtual {v11, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v28

    xor-int/lit8 v28, v28, 0x1

    if-eqz v28, :cond_3

    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    invoke-virtual {v12}, Ljava/lang/Class;->isArray()Z

    move-result v28

    if-eqz v28, :cond_7

    invoke-virtual {v12}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v4

    sget-object v28, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v28

    if-ne v4, v0, :cond_5

    move-object/from16 v0, v24

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-static {v11, v0, v1, v2}, Lcom/google/protobuf/nano/MessageNanoPrinter;->print(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;)V

    goto :goto_2

    :cond_5
    if-nez v24, :cond_6

    const/16 v16, 0x0

    :goto_3
    const/4 v15, 0x0

    :goto_4
    move/from16 v0, v16

    if-ge v15, v0, :cond_3

    move-object/from16 v0, v24

    invoke-static {v0, v15}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v7

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-static {v11, v7, v0, v1}, Lcom/google/protobuf/nano/MessageNanoPrinter;->print(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;)V

    add-int/lit8 v15, v15, 0x1

    goto :goto_4

    :cond_6
    invoke-static/range {v24 .. v24}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v16

    goto :goto_3

    :cond_7
    move-object/from16 v0, v24

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-static {v11, v0, v1, v2}, Lcom/google/protobuf/nano/MessageNanoPrinter;->print(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;)V

    goto :goto_2

    :cond_8
    invoke-virtual {v5}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v27

    const/16 v25, 0x0

    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v28, v0

    move/from16 v26, v25

    :goto_5
    move/from16 v0, v26

    move/from16 v1, v28

    if-ge v0, v1, :cond_b

    aget-object v18, v27, v26

    invoke-virtual/range {v18 .. v18}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v20

    const-string/jumbo v25, "set"

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_9

    const/16 v25, 0x3

    move-object/from16 v0, v20

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v23

    const/4 v14, 0x0

    :try_start_0
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "has"

    move-object/from16 v0, v25

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    const/16 v29, 0x0

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v29, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v29

    invoke-virtual {v5, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v14

    const/16 v25, 0x0

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v14, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/Boolean;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v25

    if-nez v25, :cond_a

    :cond_9
    :goto_6
    add-int/lit8 v25, v26, 0x1

    move/from16 v26, v25

    goto :goto_5

    :cond_a
    const/4 v13, 0x0

    :try_start_1
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "get"

    move-object/from16 v0, v25

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    const/16 v29, 0x0

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v29, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v29

    invoke-virtual {v5, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v13

    const/16 v25, 0x0

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v13, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-static {v0, v1, v2, v3}, Lcom/google/protobuf/nano/MessageNanoPrinter;->print(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;)V

    goto :goto_6

    :cond_b
    if-eqz p0, :cond_0

    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    move-object/from16 v0, p3

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v25

    const-string/jumbo v26, ">\n"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    :cond_c
    move-object/from16 v0, p1

    instance-of v0, v0, Ljava/util/Map;

    move/from16 v25, v0

    if-eqz v25, :cond_d

    move-object/from16 v17, p1

    check-cast v17, Ljava/util/Map;

    invoke-static/range {p0 .. p0}, Lcom/google/protobuf/nano/MessageNanoPrinter;->deCamelCaseify(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface/range {v17 .. v17}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_7
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    move-object/from16 v0, p3

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v25

    const-string/jumbo v26, " <\n"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/StringBuffer;->length()I

    move-result v21

    const-string/jumbo v25, "  "

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v25, "key"

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-static {v0, v1, v2, v3}, Lcom/google/protobuf/nano/MessageNanoPrinter;->print(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;)V

    const-string/jumbo v25, "value"

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-static {v0, v1, v2, v3}, Lcom/google/protobuf/nano/MessageNanoPrinter;->print(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;)V

    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    move-object/from16 v0, p3

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v25

    const-string/jumbo v26, ">\n"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_7

    :cond_d
    invoke-static/range {p0 .. p0}, Lcom/google/protobuf/nano/MessageNanoPrinter;->deCamelCaseify(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    move-object/from16 v0, p3

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v25

    const-string/jumbo v26, ": "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object/from16 v0, p1

    instance-of v0, v0, Ljava/lang/String;

    move/from16 v25, v0

    if-eqz v25, :cond_e

    check-cast p1, Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Lcom/google/protobuf/nano/MessageNanoPrinter;->sanitizeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    const-string/jumbo v25, "\""

    move-object/from16 v0, p3

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v25

    const-string/jumbo v26, "\""

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_8
    const-string/jumbo v25, "\n"

    move-object/from16 v0, p3

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    :cond_e
    move-object/from16 v0, p1

    instance-of v0, v0, [B

    move/from16 v25, v0

    if-eqz v25, :cond_f

    check-cast p1, [B

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Lcom/google/protobuf/nano/MessageNanoPrinter;->appendQuotedBytes([BLjava/lang/StringBuffer;)V

    goto :goto_8

    :cond_f
    move-object/from16 v0, p3

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto :goto_8

    :catch_0
    move-exception v6

    goto/16 :goto_6

    :catch_1
    move-exception v6

    goto/16 :goto_6
.end method

.method private static sanitizeString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/16 v2, 0xc8

    const-string/jumbo v0, "http"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "[...]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_0
    invoke-static {p0}, Lcom/google/protobuf/nano/MessageNanoPrinter;->escapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
