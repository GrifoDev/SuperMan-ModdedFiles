.class public Lcom/thoughtworks/xstream/core/util/DependencyInjectionFactory;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/thoughtworks/xstream/core/util/DependencyInjectionFactory$TypedValue;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/thoughtworks/xstream/core/util/DependencyInjectionFactory;->newInstance(Ljava/lang/Class;[Ljava/lang/Object;Ljava/util/BitSet;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(Ljava/lang/Class;[Ljava/lang/Object;Ljava/util/BitSet;)Ljava/lang/Object;
    .locals 26

    if-eqz p1, :cond_0

    move-object/from16 v0, p1

    array-length v2, v0

    const/16 v3, 0x3f

    if-le v2, v3, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "More than 63 arguments are not supported"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    const/4 v5, 0x0

    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    const/4 v10, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    if-eqz p1, :cond_1c

    move-object/from16 v0, p1

    array-length v2, v0

    if-lez v2, :cond_1c

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v17

    move-object/from16 v0, v17

    array-length v2, v0

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    new-instance v2, Lcom/thoughtworks/xstream/core/util/DependencyInjectionFactory$1;

    invoke-direct {v2}, Lcom/thoughtworks/xstream/core/util/DependencyInjectionFactory$1;-><init>()V

    move-object/from16 v0, v17

    invoke-static {v0, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    :cond_1
    move-object/from16 v0, p1

    array-length v2, v0

    new-array v0, v2, [Lcom/thoughtworks/xstream/core/util/DependencyInjectionFactory$TypedValue;

    move-object/from16 v18, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    move-object/from16 v0, p1

    array-length v2, v0

    if-ge v3, v2, :cond_3

    aget-object v2, p1, v3

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->isPrimitive()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-static {v4}, Lcom/thoughtworks/xstream/core/util/Primitives;->box(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v4

    move-object/from16 v24, v4

    move-object v4, v2

    move-object/from16 v2, v24

    :goto_1
    new-instance v11, Lcom/thoughtworks/xstream/core/util/DependencyInjectionFactory$TypedValue;

    invoke-direct {v11, v2, v4}, Lcom/thoughtworks/xstream/core/util/DependencyInjectionFactory$TypedValue;-><init>(Ljava/lang/Class;Ljava/lang/Object;)V

    aput-object v11, v18, v3

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_0

    :cond_2
    const-class v11, Lcom/thoughtworks/xstream/core/util/TypedNull;

    if-ne v4, v11, :cond_1b

    check-cast v2, Lcom/thoughtworks/xstream/core/util/TypedNull;

    invoke-virtual {v2}, Lcom/thoughtworks/xstream/core/util/TypedNull;->getType()Ljava/lang/Class;

    move-result-object v2

    const/4 v4, 0x0

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    const v3, 0x7fffffff

    const/4 v2, 0x0

    move v15, v2

    move-object v11, v5

    move v2, v3

    move-wide/from16 v24, v6

    move-wide v6, v8

    move-wide/from16 v8, v24

    :goto_2
    if-nez v11, :cond_1a

    move-object/from16 v0, v17

    array-length v3, v0

    if-ge v15, v3, :cond_1a

    aget-object v5, v17, v15

    invoke-virtual {v5}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v19

    move-object/from16 v0, v19

    array-length v3, v0

    move-object/from16 v0, p1

    array-length v12, v0

    if-le v3, v12, :cond_4

    move-object v3, v4

    move-wide v4, v6

    move-object v6, v10

    move-object v7, v11

    :goto_3
    add-int/lit8 v10, v15, 0x1

    move v15, v10

    move-object v11, v7

    move-object v10, v6

    move-wide v6, v4

    move-object v4, v3

    goto :goto_2

    :cond_4
    move-object/from16 v0, v19

    array-length v3, v0

    if-nez v3, :cond_5

    if-nez v4, :cond_1a

    move-object v2, v5

    :goto_4
    if-nez v2, :cond_14

    if-nez v4, :cond_10

    new-instance v2, Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot construct "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", none of the dependencies match any constructor\'s parameters"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_5
    move-object/from16 v0, v19

    array-length v3, v0

    if-le v2, v3, :cond_19

    if-eqz v4, :cond_6

    move-object v3, v4

    move-wide v4, v6

    move-object v6, v10

    move-object v7, v11

    goto :goto_3

    :cond_6
    move-object/from16 v0, v19

    array-length v3, v0

    :goto_5
    const/4 v2, 0x0

    :goto_6
    move-object/from16 v0, v19

    array-length v8, v0

    if-ge v2, v8, :cond_8

    aget-object v8, v19, v2

    invoke-virtual {v8}, Ljava/lang/Class;->isPrimitive()Z

    move-result v8

    if-eqz v8, :cond_7

    aget-object v8, v19, v2

    invoke-static {v8}, Lcom/thoughtworks/xstream/core/util/Primitives;->box(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v8

    aput-object v8, v19, v2

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_8
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->clear()V

    const-wide/16 v12, 0x0

    const/4 v8, 0x0

    const/4 v2, 0x0

    :goto_7
    move-object/from16 v0, v19

    array-length v9, v0

    if-ge v8, v9, :cond_18

    move-object/from16 v0, v19

    array-length v9, v0

    add-int/2addr v9, v2

    sub-int/2addr v9, v8

    move-object/from16 v0, v18

    array-length v14, v0

    if-gt v9, v14, :cond_18

    aget-object v9, v19, v8

    aget-object v14, v18, v2

    iget-object v14, v14, Lcom/thoughtworks/xstream/core/util/DependencyInjectionFactory$TypedValue;->type:Ljava/lang/Class;

    invoke-virtual {v9, v14}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v9

    if-eqz v9, :cond_a

    aget-object v9, v18, v2

    iget-object v9, v9, Lcom/thoughtworks/xstream/core/util/DependencyInjectionFactory$TypedValue;->value:Ljava/lang/Object;

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-wide/16 v20, 0x1

    shl-long v20, v20, v2

    or-long v12, v12, v20

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v0, v19

    array-length v9, v0

    if-ne v8, v9, :cond_a

    move-wide v8, v12

    move-object v11, v5

    :goto_8
    if-nez v11, :cond_15

    const/4 v14, 0x1

    move-object/from16 v0, v18

    array-length v2, v0

    new-array v0, v2, [Lcom/thoughtworks/xstream/core/util/DependencyInjectionFactory$TypedValue;

    move-object/from16 v20, v0

    const/4 v2, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, v20

    array-length v9, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-static {v0, v2, v1, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->clear()V

    const-wide/16 v8, 0x0

    const/4 v2, 0x0

    :goto_9
    move-object/from16 v0, v19

    array-length v12, v0

    if-ge v2, v12, :cond_17

    const/4 v13, -0x1

    const/4 v12, 0x0

    :goto_a
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v12, v0, :cond_16

    aget-object v21, v20, v12

    if-nez v21, :cond_b

    :cond_9
    :goto_b
    add-int/lit8 v12, v12, 0x1

    goto :goto_a

    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_b
    aget-object v21, v20, v12

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/thoughtworks/xstream/core/util/DependencyInjectionFactory$TypedValue;->type:Ljava/lang/Class;

    move-object/from16 v21, v0

    aget-object v22, v19, v2

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_c

    :goto_c
    if-ltz v12, :cond_e

    aget-object v13, v20, v12

    iget-object v13, v13, Lcom/thoughtworks/xstream/core/util/DependencyInjectionFactory$TypedValue;->value:Ljava/lang/Object;

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-wide/16 v22, 0x1

    shl-long v22, v22, v12

    or-long v8, v8, v22

    const/4 v13, 0x0

    aput-object v13, v20, v12

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_c
    aget-object v21, v19, v2

    aget-object v22, v20, v12

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/thoughtworks/xstream/core/util/DependencyInjectionFactory$TypedValue;->type:Ljava/lang/Class;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v21

    if-eqz v21, :cond_9

    if-ltz v13, :cond_d

    aget-object v21, v20, v13

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/thoughtworks/xstream/core/util/DependencyInjectionFactory$TypedValue;->type:Ljava/lang/Class;

    move-object/from16 v21, v0

    aget-object v22, v20, v12

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/thoughtworks/xstream/core/util/DependencyInjectionFactory$TypedValue;->type:Ljava/lang/Class;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-eq v0, v1, :cond_9

    aget-object v21, v20, v13

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/thoughtworks/xstream/core/util/DependencyInjectionFactory$TypedValue;->type:Ljava/lang/Class;

    move-object/from16 v21, v0

    aget-object v22, v20, v12

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/thoughtworks/xstream/core/util/DependencyInjectionFactory$TypedValue;->type:Ljava/lang/Class;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v21

    if-eqz v21, :cond_9

    :cond_d
    move v13, v12

    goto :goto_b

    :cond_e
    const/4 v2, 0x0

    :goto_d
    if-eqz v2, :cond_15

    if-eqz v4, :cond_f

    cmp-long v2, v8, v6

    if-ltz v2, :cond_f

    move v2, v3

    move-object v3, v4

    move-wide v4, v6

    move-object v6, v10

    move-object v7, v11

    goto/16 :goto_3

    :cond_f
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    move-object v6, v2

    move-object v7, v11

    move v2, v3

    move-object v3, v5

    move-wide v4, v8

    goto/16 :goto_3

    :cond_10
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->clear()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :goto_e
    if-nez v4, :cond_12

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    :goto_f
    if-eqz p2, :cond_13

    invoke-virtual/range {p2 .. p2}, Ljava/util/BitSet;->clear()V

    const/4 v4, 0x0

    const-wide/16 v2, 0x1

    :goto_10
    cmp-long v8, v2, v6

    if-gez v8, :cond_13

    and-long v8, v6, v2

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-lez v8, :cond_11

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->set(I)V

    :cond_11
    const/4 v8, 0x1

    shl-long/2addr v2, v8

    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    :cond_12
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v2

    move-object v5, v2

    goto :goto_f

    :catch_0
    move-exception v2

    new-instance v3, Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot construct "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :catch_1
    move-exception v2

    new-instance v3, Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot construct "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :catch_2
    move-exception v2

    new-instance v3, Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot construct "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :catch_3
    move-exception v2

    new-instance v3, Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot construct "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :catch_4
    move-exception v2

    new-instance v3, Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot construct "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :cond_13
    return-object v5

    :cond_14
    move-wide v6, v8

    move-object v4, v2

    goto/16 :goto_e

    :cond_15
    move v2, v3

    move-object v3, v4

    move-wide v4, v6

    move-object v6, v10

    move-object v7, v11

    goto/16 :goto_3

    :cond_16
    move v12, v13

    goto/16 :goto_c

    :cond_17
    move v2, v14

    goto/16 :goto_d

    :cond_18
    move-wide v8, v12

    goto/16 :goto_8

    :cond_19
    move v3, v2

    goto/16 :goto_5

    :cond_1a
    move-object v2, v11

    goto/16 :goto_4

    :cond_1b
    move-object/from16 v24, v4

    move-object v4, v2

    move-object/from16 v2, v24

    goto/16 :goto_1

    :cond_1c
    move-object v4, v5

    goto/16 :goto_e
.end method
