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

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 239
    return-void
.end method

.method public static newInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "type"    # Ljava/lang/Class;
    .param p1, "dependencies"    # [Ljava/lang/Object;

    .prologue
    .line 47
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/thoughtworks/xstream/core/util/DependencyInjectionFactory;->newInstance(Ljava/lang/Class;[Ljava/lang/Object;Ljava/util/BitSet;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(Ljava/lang/Class;[Ljava/lang/Object;Ljava/util/BitSet;)Ljava/lang/Object;
    .locals 34
    .param p0, "type"    # Ljava/lang/Class;
    .param p1, "dependencies"    # [Ljava/lang/Object;
    .param p2, "usedDependencies"    # Ljava/util/BitSet;

    .prologue
    .line 66
    if-eqz p1, :cond_0

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v27, v0

    const/16 v30, 0x3f

    move/from16 v0, v27

    move/from16 v1, v30

    if-le v0, v1, :cond_0

    .line 67
    new-instance v27, Ljava/lang/IllegalArgumentException;

    const-string v30, "More than 63 arguments are not supported"

    move-object/from16 v0, v27

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v27

    .line 69
    :cond_0
    const/4 v6, 0x0

    .line 70
    .local v6, "bestMatchingCtor":Ljava/lang/reflect/Constructor;
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 71
    .local v17, "matchingDependencies":Ljava/util/ArrayList;
    const/16 v23, 0x0

    .line 72
    .local v23, "possibleMatchingDependencies":Ljava/util/List;
    const-wide/16 v28, 0x0

    .line 73
    .local v28, "usedDeps":J
    const-wide/16 v24, 0x0

    .line 75
    .local v24, "possibleUsedDeps":J
    if-eqz p1, :cond_17

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v27, v0

    if-lez v27, :cond_17

    .line 77
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v8

    .line 78
    .local v8, "ctors":[Ljava/lang/reflect/Constructor;
    array-length v0, v8

    move/from16 v27, v0

    const/16 v30, 0x1

    move/from16 v0, v27

    move/from16 v1, v30

    if-le v0, v1, :cond_1

    .line 79
    new-instance v27, Lcom/thoughtworks/xstream/core/util/DependencyInjectionFactory$1;

    invoke-direct/range {v27 .. v27}, Lcom/thoughtworks/xstream/core/util/DependencyInjectionFactory$1;-><init>()V

    move-object/from16 v0, v27

    invoke-static {v8, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 87
    :cond_1
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    new-array v0, v0, [Lcom/thoughtworks/xstream/core/util/DependencyInjectionFactory$TypedValue;

    move-object/from16 v26, v0

    .line 88
    .local v26, "typedDependencies":[Lcom/thoughtworks/xstream/core/util/DependencyInjectionFactory$TypedValue;
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_0
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v13, v0, :cond_4

    .line 89
    aget-object v10, p1, v13

    .line 90
    .local v10, "dependency":Ljava/lang/Object;
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    .line 91
    .local v9, "depType":Ljava/lang/Class;
    invoke-virtual {v9}, Ljava/lang/Class;->isPrimitive()Z

    move-result v27

    if-eqz v27, :cond_3

    .line 92
    invoke-static {v9}, Lcom/thoughtworks/xstream/core/util/Primitives;->box(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v9

    .line 98
    .end local v10    # "dependency":Ljava/lang/Object;
    :cond_2
    :goto_1
    new-instance v27, Lcom/thoughtworks/xstream/core/util/DependencyInjectionFactory$TypedValue;

    move-object/from16 v0, v27

    invoke-direct {v0, v9, v10}, Lcom/thoughtworks/xstream/core/util/DependencyInjectionFactory$TypedValue;-><init>(Ljava/lang/Class;Ljava/lang/Object;)V

    aput-object v27, v26, v13

    .line 88
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 93
    .restart local v10    # "dependency":Ljava/lang/Object;
    :cond_3
    const-class v27, Lcom/thoughtworks/xstream/core/util/TypedNull;

    move-object/from16 v0, v27

    if-ne v9, v0, :cond_2

    .line 94
    check-cast v10, Lcom/thoughtworks/xstream/core/util/TypedNull;

    .end local v10    # "dependency":Ljava/lang/Object;
    invoke-virtual {v10}, Lcom/thoughtworks/xstream/core/util/TypedNull;->getType()Ljava/lang/Class;

    move-result-object v9

    .line 95
    const/4 v10, 0x0

    .restart local v10    # "dependency":Ljava/lang/Object;
    goto :goto_1

    .line 101
    .end local v9    # "depType":Ljava/lang/Class;
    .end local v10    # "dependency":Ljava/lang/Object;
    :cond_4
    const/16 v22, 0x0

    .line 102
    .local v22, "possibleCtor":Ljava/lang/reflect/Constructor;
    const v4, 0x7fffffff

    .line 103
    .local v4, "arity":I
    const/4 v13, 0x0

    :goto_2
    if-nez v6, :cond_7

    array-length v0, v8

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v13, v0, :cond_7

    .line 104
    aget-object v7, v8, v13

    .line 105
    .local v7, "constructor":Ljava/lang/reflect/Constructor;
    invoke-virtual {v7}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v20

    .line 106
    .local v20, "parameterTypes":[Ljava/lang/Class;
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v27, v0

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v30, v0

    move/from16 v0, v27

    move/from16 v1, v30

    if-le v0, v1, :cond_6

    .line 103
    :cond_5
    :goto_3
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 108
    :cond_6
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v27, v0

    if-nez v27, :cond_8

    .line 109
    if-nez v22, :cond_7

    .line 110
    move-object v6, v7

    .line 194
    .end local v7    # "constructor":Ljava/lang/reflect/Constructor;
    .end local v20    # "parameterTypes":[Ljava/lang/Class;
    :cond_7
    if-nez v6, :cond_17

    .line 195
    if-nez v22, :cond_16

    .line 196
    const-wide/16 v28, 0x0

    .line 197
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

    .line 114
    .restart local v7    # "constructor":Ljava/lang/reflect/Constructor;
    .restart local v20    # "parameterTypes":[Ljava/lang/Class;
    :cond_8
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    if-le v4, v0, :cond_9

    .line 115
    if-nez v22, :cond_5

    .line 118
    move-object/from16 v0, v20

    array-length v4, v0

    .line 121
    :cond_9
    const/4 v15, 0x0

    .local v15, "j":I
    :goto_4
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v15, v0, :cond_b

    .line 122
    aget-object v27, v20, v15

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Class;->isPrimitive()Z

    move-result v27

    if-eqz v27, :cond_a

    .line 123
    aget-object v27, v20, v15

    invoke-static/range {v27 .. v27}, Lcom/thoughtworks/xstream/core/util/Primitives;->box(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v27

    aput-object v27, v20, v15

    .line 121
    :cond_a
    add-int/lit8 v15, v15, 0x1

    goto :goto_4

    .line 129
    :cond_b
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->clear()V

    .line 130
    const-wide/16 v28, 0x0

    .line 131
    const/4 v15, 0x0

    const/16 v16, 0x0

    .line 132
    .local v16, "k":I
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

    .line 133
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

    .line 134
    aget-object v27, v26, v16

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/thoughtworks/xstream/core/util/DependencyInjectionFactory$TypedValue;->value:Ljava/lang/Object;

    move-object/from16 v27, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    const-wide/16 v30, 0x1

    shl-long v30, v30, v16

    or-long v28, v28, v30

    .line 136
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    if-ne v15, v0, :cond_e

    .line 137
    move-object v6, v7

    .line 143
    :cond_c
    if-nez v6, :cond_5

    .line 144
    const/16 v21, 0x1

    .line 148
    .local v21, "possible":Z
    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    new-array v11, v0, [Lcom/thoughtworks/xstream/core/util/DependencyInjectionFactory$TypedValue;

    .line 149
    .local v11, "deps":[Lcom/thoughtworks/xstream/core/util/DependencyInjectionFactory$TypedValue;
    const/16 v27, 0x0

    const/16 v30, 0x0

    array-length v0, v11

    move/from16 v31, v0

    move-object/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v30

    move/from16 v3, v31

    invoke-static {v0, v1, v11, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 150
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->clear()V

    .line 151
    const-wide/16 v28, 0x0

    .line 152
    const/4 v15, 0x0

    :goto_6
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v15, v0, :cond_14

    .line 153
    const/4 v5, -0x1

    .line 154
    .local v5, "assignable":I
    const/16 v16, 0x0

    :goto_7
    array-length v0, v11

    move/from16 v27, v0

    move/from16 v0, v16

    move/from16 v1, v27

    if-ge v0, v1, :cond_10

    .line 155
    aget-object v27, v11, v16

    if-nez v27, :cond_f

    .line 154
    :cond_d
    :goto_8
    add-int/lit8 v16, v16, 0x1

    goto :goto_7

    .line 132
    .end local v5    # "assignable":I
    .end local v11    # "deps":[Lcom/thoughtworks/xstream/core/util/DependencyInjectionFactory$TypedValue;
    .end local v21    # "possible":Z
    :cond_e
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_5

    .line 158
    .restart local v5    # "assignable":I
    .restart local v11    # "deps":[Lcom/thoughtworks/xstream/core/util/DependencyInjectionFactory$TypedValue;
    .restart local v21    # "possible":Z
    :cond_f
    aget-object v27, v11, v16

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/thoughtworks/xstream/core/util/DependencyInjectionFactory$TypedValue;->type:Ljava/lang/Class;

    move-object/from16 v27, v0

    aget-object v30, v20, v15

    move-object/from16 v0, v27

    move-object/from16 v1, v30

    if-ne v0, v1, :cond_11

    .line 159
    move/from16 v5, v16

    .line 172
    :cond_10
    if-ltz v5, :cond_13

    .line 173
    aget-object v27, v11, v5

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/thoughtworks/xstream/core/util/DependencyInjectionFactory$TypedValue;->value:Ljava/lang/Object;

    move-object/from16 v27, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    const-wide/16 v30, 0x1

    shl-long v30, v30, v5

    or-long v28, v28, v30

    .line 175
    const/16 v27, 0x0

    aput-object v27, v11, v5

    .line 152
    add-int/lit8 v15, v15, 0x1

    goto :goto_6

    .line 162
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

    .line 164
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

    .line 167
    :cond_12
    move/from16 v5, v16

    goto :goto_8

    .line 177
    :cond_13
    const/16 v21, 0x0

    .line 182
    .end local v5    # "assignable":I
    :cond_14
    if-eqz v21, :cond_5

    .line 184
    if-eqz v22, :cond_15

    cmp-long v27, v28, v24

    if-gez v27, :cond_5

    .line 187
    :cond_15
    move-object/from16 v22, v7

    .line 188
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v23

    .end local v23    # "possibleMatchingDependencies":Ljava/util/List;
    check-cast v23, Ljava/util/List;

    .line 189
    .restart local v23    # "possibleMatchingDependencies":Ljava/util/List;
    move-wide/from16 v24, v28

    goto/16 :goto_3

    .line 201
    .end local v7    # "constructor":Ljava/lang/reflect/Constructor;
    .end local v11    # "deps":[Lcom/thoughtworks/xstream/core/util/DependencyInjectionFactory$TypedValue;
    .end local v15    # "j":I
    .end local v16    # "k":I
    .end local v20    # "parameterTypes":[Ljava/lang/Class;
    .end local v21    # "possible":Z
    :cond_16
    move-object/from16 v6, v22

    .line 202
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->clear()V

    .line 203
    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 204
    move-wide/from16 v28, v24

    .line 211
    .end local v4    # "arity":I
    .end local v8    # "ctors":[Ljava/lang/reflect/Constructor;
    .end local v13    # "i":I
    .end local v22    # "possibleCtor":Ljava/lang/reflect/Constructor;
    .end local v26    # "typedDependencies":[Lcom/thoughtworks/xstream/core/util/DependencyInjectionFactory$TypedValue;
    :cond_17
    if-nez v6, :cond_19

    .line 212
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v14

    .line 216
    .local v14, "instance":Ljava/lang/Object;
    :goto_9
    if-eqz p2, :cond_1a

    .line 217
    invoke-virtual/range {p2 .. p2}, Ljava/util/BitSet;->clear()V

    .line 218
    const/4 v13, 0x0

    .line 219
    .restart local v13    # "i":I
    const-wide/16 v18, 0x1

    .local v18, "l":J
    :goto_a
    cmp-long v27, v18, v28

    if-gez v27, :cond_1a

    .line 220
    and-long v30, v28, v18

    const-wide/16 v32, 0x0

    cmp-long v27, v30, v32

    if-lez v27, :cond_18

    .line 221
    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/util/BitSet;->set(I)V

    .line 219
    :cond_18
    const/16 v27, 0x1

    shl-long v18, v18, v27

    add-int/lit8 v13, v13, 0x1

    goto :goto_a

    .line 214
    .end local v13    # "i":I
    .end local v14    # "instance":Ljava/lang/Object;
    .end local v18    # "l":J
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

    .restart local v14    # "instance":Ljava/lang/Object;
    goto :goto_9

    .line 226
    .end local v14    # "instance":Ljava/lang/Object;
    :catch_0
    move-exception v12

    .line 227
    .local v12, "e":Ljava/lang/InstantiationException;
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

    .line 228
    .end local v12    # "e":Ljava/lang/InstantiationException;
    :catch_1
    move-exception v12

    .line 229
    .local v12, "e":Ljava/lang/IllegalAccessException;
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

    .line 230
    .end local v12    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v12

    .line 231
    .local v12, "e":Ljava/lang/reflect/InvocationTargetException;
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

    .line 232
    .end local v12    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_3
    move-exception v12

    .line 233
    .local v12, "e":Ljava/lang/SecurityException;
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

    .line 234
    .end local v12    # "e":Ljava/lang/SecurityException;
    :catch_4
    move-exception v12

    .line 235
    .local v12, "e":Ljava/lang/ExceptionInInitializerError;
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

    .line 225
    .end local v12    # "e":Ljava/lang/ExceptionInInitializerError;
    .restart local v14    # "instance":Ljava/lang/Object;
    :cond_1a
    return-object v14
.end method
