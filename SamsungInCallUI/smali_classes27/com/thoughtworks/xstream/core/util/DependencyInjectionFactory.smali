.class public Lcom/thoughtworks/xstream/core/util/DependencyInjectionFactory;
.super Ljava/lang/Object;
.source "DependencyInjectionFactory.java"


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
    .locals 34

    if-eqz p1, :cond_0

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v27, v0

    const/16 v30, 0x3f

    move/from16 v0, v27

    move/from16 v1, v30

    if-le v0, v1, :cond_0

    new-instance v27, Ljava/lang/IllegalArgumentException;

    const-string v30, "More than 63 arguments are not supported"

    move-object/from16 v0, v27

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v27

    :cond_0
    const/4 v6, 0x0

    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    const/16 v23, 0x0

    const-wide/16 v28, 0x0

    const-wide/16 v24, 0x0

    if-eqz p1, :cond_17

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v27, v0

    if-lez v27, :cond_17

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v8

    array-length v0, v8

    move/from16 v27, v0

    const/16 v30, 0x1

    move/from16 v0, v27

    move/from16 v1, v30

    if-le v0, v1, :cond_1

    new-instance v27, Lcom/thoughtworks/xstream/core/util/DependencyInjectionFactory$1;

    invoke-direct/range {v27 .. v27}, Lcom/thoughtworks/xstream/core/util/DependencyInjectionFactory$1;-><init>()V

    move-object/from16 v0, v27

    invoke-static {v8, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    :cond_1
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    new-array v0, v0, [Lcom/thoughtworks/xstream/core/util/DependencyInjectionFactory$TypedValue;

    move-object/from16 v26, v0

    const/4 v13, 0x0

    :goto_0
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v13, v0, :cond_4

    aget-object v10, p1, v13

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->isPrimitive()Z

    move-result v27

    if-eqz v27, :cond_3

    invoke-static {v9}, Lcom/thoughtworks/xstream/core/util/Primitives;->box(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v9

    :cond_2
    :goto_1
    new-instance v27, Lcom/thoughtworks/xstream/core/util/DependencyInjectionFactory$TypedValue;

    move-object/from16 v0, v27

    invoke-direct {v0, v9, v10}, Lcom/thoughtworks/xstream/core/util/DependencyInjectionFactory$TypedValue;-><init>(Ljava/lang/Class;Ljava/lang/Object;)V

    aput-object v27, v26, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    :cond_3
    const-class v27, Lcom/thoughtworks/xstream/core/util/TypedNull;

    move-object/from16 v0, v27

    if-ne v9, v0, :cond_2

    check-cast v10, Lcom/thoughtworks/xstream/core/util/TypedNull;

    invoke-virtual {v10}, Lcom/thoughtworks/xstream/core/util/TypedNull;->getType()Ljava/lang/Class;

    move-result-object v9

    const/4 v10, 0x0

    goto :goto_1

    :cond_4
    const/16 v22, 0x0

    const v4, 0x7fffffff

    const/4 v13, 0x0

    :goto_2
    if-nez v6, :cond_7

    array-length v0, v8

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v13, v0, :cond_7

    aget-object v7, v8, v13

    invoke-virtual {v7}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v20

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v27, v0

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v30, v0

    move/from16 v0, v27

    move/from16 v1, v30

    if-le v0, v1, :cond_6

    :cond_5
    :goto_3
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    :cond_6
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v27, v0

    if-nez v27, :cond_8

    if-nez v22, :cond_7

    move-object v6, v7

    :cond_7
    if-nez v6, :cond_17

    if-nez v22, :cond_16

    const-wide/16 v28, 0x0

    new-instance v27, Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Cannot construct "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, ", none of the dependencies match any constructor\'s parameters"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v27

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;-><init>(Ljava/lang/String;)V

    throw v27

    :cond_8
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    if-le v4, v0, :cond_9

    if-nez v22, :cond_5

    move-object/from16 v0, v20

    array-length v4, v0

    :cond_9
    const/4 v15, 0x0

    :goto_4
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v15, v0, :cond_b

    aget-object v27, v20, v15

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Class;->isPrimitive()Z

    move-result v27

    if-eqz v27, :cond_a

    aget-object v27, v20, v15

    invoke-static/range {v27 .. v27}, Lcom/thoughtworks/xstream/core/util/Primitives;->box(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v27

    aput-object v27, v20, v15

    :cond_a
    add-int/lit8 v15, v15, 0x1

    goto :goto_4

    :cond_b
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->clear()V

    const-wide/16 v28, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    :goto_5
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v15, v0, :cond_c

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v27, v0

    add-int v27, v27, v16

    sub-int v27, v27, v15

    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v30, v0

    move/from16 v0, v27

    move/from16 v1, v30

    if-gt v0, v1, :cond_c

    aget-object v27, v20, v15

    aget-object v30, v26, v16

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/thoughtworks/xstream/core/util/DependencyInjectionFactory$TypedValue;->type:Ljava/lang/Class;

    move-object/from16 v30, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v27

    if-eqz v27, :cond_e

    aget-object v27, v26, v16

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/thoughtworks/xstream/core/util/DependencyInjectionFactory$TypedValue;->value:Ljava/lang/Object;

    move-object/from16 v27, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-wide/16 v30, 0x1

    shl-long v30, v30, v16

    or-long v28, v28, v30

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    if-ne v15, v0, :cond_e

    move-object v6, v7

    :cond_c
    if-nez v6, :cond_5

    const/16 v21, 0x1

    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    new-array v11, v0, [Lcom/thoughtworks/xstream/core/util/DependencyInjectionFactory$TypedValue;

    const/16 v27, 0x0

    const/16 v30, 0x0

    array-length v0, v11

    move/from16 v31, v0

    move-object/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v30

    move/from16 v3, v31

    invoke-static {v0, v1, v11, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->clear()V

    const-wide/16 v28, 0x0

    const/4 v15, 0x0

    :goto_6
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v15, v0, :cond_14

    const/4 v5, -0x1

    const/16 v16, 0x0

    :goto_7
    array-length v0, v11

    move/from16 v27, v0

    move/from16 v0, v16

    move/from16 v1, v27

    if-ge v0, v1, :cond_10

    aget-object v27, v11, v16

    if-nez v27, :cond_f

    :cond_d
    :goto_8
    add-int/lit8 v16, v16, 0x1

    goto :goto_7

    :cond_e
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_5

    :cond_f
    aget-object v27, v11, v16

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/thoughtworks/xstream/core/util/DependencyInjectionFactory$TypedValue;->type:Ljava/lang/Class;

    move-object/from16 v27, v0

    aget-object v30, v20, v15

    move-object/from16 v0, v27

    move-object/from16 v1, v30

    if-ne v0, v1, :cond_11

    move/from16 v5, v16

    :cond_10
    if-ltz v5, :cond_13

    aget-object v27, v11, v5

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/thoughtworks/xstream/core/util/DependencyInjectionFactory$TypedValue;->value:Ljava/lang/Object;

    move-object/from16 v27, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-wide/16 v30, 0x1

    shl-long v30, v30, v5

    or-long v28, v28, v30

    const/16 v27, 0x0

    aput-object v27, v11, v5

    add-int/lit8 v15, v15, 0x1

    goto :goto_6

    :cond_11
    aget-object v27, v20, v15

    aget-object v30, v11, v16

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/thoughtworks/xstream/core/util/DependencyInjectionFactory$TypedValue;->type:Ljava/lang/Class;

    move-object/from16 v30, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v27

    if-eqz v27, :cond_d

    if-ltz v5, :cond_12

    aget-object v27, v11, v5

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/thoughtworks/xstream/core/util/DependencyInjectionFactory$TypedValue;->type:Ljava/lang/Class;

    move-object/from16 v27, v0

    aget-object v30, v11, v16

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/thoughtworks/xstream/core/util/DependencyInjectionFactory$TypedValue;->type:Ljava/lang/Class;

    move-object/from16 v30, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v30

    if-eq v0, v1, :cond_d

    aget-object v27, v11, v5

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/thoughtworks/xstream/core/util/DependencyInjectionFactory$TypedValue;->type:Ljava/lang/Class;

    move-object/from16 v27, v0

    aget-object v30, v11, v16

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/thoughtworks/xstream/core/util/DependencyInjectionFactory$TypedValue;->type:Ljava/lang/Class;

    move-object/from16 v30, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v27

    if-eqz v27, :cond_d

    :cond_12
    move/from16 v5, v16

    goto :goto_8

    :cond_13
    const/16 v21, 0x0

    :cond_14
    if-eqz v21, :cond_5

    if-eqz v22, :cond_15

    cmp-long v27, v28, v24

    if-gez v27, :cond_5

    :cond_15
    move-object/from16 v22, v7

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/util/List;

    move-wide/from16 v24, v28

    goto/16 :goto_3

    :cond_16
    move-object/from16 v6, v22

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->clear()V

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-wide/from16 v28, v24

    :cond_17
    if-nez v6, :cond_19

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v14

    :goto_9
    if-eqz p2, :cond_1a

    invoke-virtual/range {p2 .. p2}, Ljava/util/BitSet;->clear()V

    const/4 v13, 0x0

    const-wide/16 v18, 0x1

    :goto_a
    cmp-long v27, v18, v28

    if-gez v27, :cond_1a

    and-long v30, v28, v18

    const-wide/16 v32, 0x0

    cmp-long v27, v30, v32

    if-lez v27, :cond_18

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/util/BitSet;->set(I)V

    :cond_18
    const/16 v27, 0x1

    shl-long v18, v18, v27

    add-int/lit8 v13, v13, 0x1

    goto :goto_a

    :cond_19
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v6, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v14

    goto :goto_9

    :catch_0
    move-exception v12

    new-instance v27, Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Cannot construct "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v27

    move-object/from16 v1, v30

    invoke-direct {v0, v1, v12}, Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v27

    :catch_1
    move-exception v12

    new-instance v27, Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Cannot construct "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v27

    move-object/from16 v1, v30

    invoke-direct {v0, v1, v12}, Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v27

    :catch_2
    move-exception v12

    new-instance v27, Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Cannot construct "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v27

    move-object/from16 v1, v30

    invoke-direct {v0, v1, v12}, Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v27

    :catch_3
    move-exception v12

    new-instance v27, Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Cannot construct "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v27

    move-object/from16 v1, v30

    invoke-direct {v0, v1, v12}, Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v27

    :catch_4
    move-exception v12

    new-instance v27, Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Cannot construct "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v27

    move-object/from16 v1, v30

    invoke-direct {v0, v1, v12}, Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v27

    :cond_1a
    return-object v14
.end method
