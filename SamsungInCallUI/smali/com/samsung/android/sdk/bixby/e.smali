.class Lcom/samsung/android/sdk/bixby/e;
.super Ljava/lang/Object;


# direct methods
.method public static a(Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/State;
    .locals 22

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "specVer"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "specVer"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_0
    const-string v4, "seqNum"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "isExecuted"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const-string v6, "appName"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "stateId"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v7, "ruleId"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v9, "isLandingState"

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    const-string v10, "isLastState"

    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    const-string v10, "isLastState"

    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    :goto_1
    const-string v11, "subIntent"

    invoke-virtual {v2, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    const-string v11, "subIntent"

    invoke-virtual {v2, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    :goto_2
    const-string v13, "parameters"

    invoke-virtual {v2, v13}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v14

    const/4 v2, 0x0

    move v13, v2

    :goto_3
    invoke-virtual {v14}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v13, v2, :cond_10

    invoke-virtual {v14, v13}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v15

    new-instance v16, Lcom/samsung/android/sdk/bixby/data/Parameter;

    invoke-direct/range {v16 .. v16}, Lcom/samsung/android/sdk/bixby/data/Parameter;-><init>()V

    const-string v2, "slotType"

    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "slotType"

    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/bixby/data/Parameter;->a(Ljava/lang/String;)V

    :goto_4
    const-string v2, "slotName"

    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "slotName"

    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/bixby/data/Parameter;->b(Ljava/lang/String;)V

    :goto_5
    const-string v2, "slotValue"

    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "slotValue"

    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/bixby/data/Parameter;->c(Ljava/lang/String;)V

    :goto_6
    const-string v2, "slotValueType"

    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "slotValueType"

    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/bixby/data/Parameter;->d(Ljava/lang/String;)V

    :goto_7
    const-string v2, "CH_ObjectType"

    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, "CH_ObjectType"

    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/bixby/data/Parameter;->e(Ljava/lang/String;)V

    :goto_8
    const-string v2, "CH_Objects"

    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "CH_Objects"

    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v18

    const/4 v2, 0x0

    :goto_9
    invoke-virtual/range {v18 .. v18}, Lorg/json/JSONArray;->length()I

    move-result v19

    move/from16 v0, v19

    if-ge v2, v0, :cond_b

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v19

    new-instance v20, Lcom/samsung/android/sdk/bixby/data/CHObject;

    invoke-direct/range {v20 .. v20}, Lcom/samsung/android/sdk/bixby/data/CHObject;-><init>()V

    const-string v21, "CH_Type"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_8

    const-string v21, "CH_Type"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/samsung/android/sdk/bixby/data/CHObject;->a(Ljava/lang/String;)V

    :goto_a
    const-string v21, "CH_Value"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_9

    const-string v21, "CH_Value"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/samsung/android/sdk/bixby/data/CHObject;->b(Ljava/lang/String;)V

    :goto_b
    const-string v21, "CH_ValueType"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_a

    const-string v21, "CH_ValueType"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/bixby/data/CHObject;->c(Ljava/lang/String;)V

    :goto_c
    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_0
    const-string v3, "1.0"

    goto/16 :goto_0

    :cond_1
    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    goto/16 :goto_1

    :cond_2
    const-string v11, ""

    goto/16 :goto_2

    :cond_3
    const-string v2, ""

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/bixby/data/Parameter;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_4

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v2}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_4
    :try_start_1
    const-string v2, ""

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/bixby/data/Parameter;->b(Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_5
    const-string v2, ""

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/bixby/data/Parameter;->c(Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_6
    const-string v2, ""

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/bixby/data/Parameter;->d(Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_7
    const-string v2, ""

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/bixby/data/Parameter;->e(Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_8
    const-string v21, ""

    invoke-virtual/range {v20 .. v21}, Lcom/samsung/android/sdk/bixby/data/CHObject;->a(Ljava/lang/String;)V

    goto/16 :goto_a

    :cond_9
    const-string v21, ""

    invoke-virtual/range {v20 .. v21}, Lcom/samsung/android/sdk/bixby/data/CHObject;->b(Ljava/lang/String;)V

    goto :goto_b

    :cond_a
    const-string v19, ""

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/bixby/data/CHObject;->c(Ljava/lang/String;)V

    goto :goto_c

    :cond_b
    invoke-virtual/range {v16 .. v17}, Lcom/samsung/android/sdk/bixby/data/Parameter;->a(Ljava/util/List;)V

    :goto_d
    const-string v2, "parameterName"

    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    const-string v2, "parameterName"

    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/bixby/data/Parameter;->f(Ljava/lang/String;)V

    :goto_e
    const-string v2, "parameterType"

    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    const-string v2, "parameterType"

    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/bixby/data/Parameter;->g(Ljava/lang/String;)V

    :goto_f
    const-string v2, "isMandatory"

    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    const-string v2, "isMandatory"

    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/bixby/data/Parameter;->a(Ljava/lang/Boolean;)V

    :goto_10
    move-object/from16 v0, v16

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v13, 0x1

    move v13, v2

    goto/16 :goto_3

    :cond_c
    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/bixby/data/Parameter;->a(Ljava/util/List;)V

    goto :goto_d

    :cond_d
    const-string v2, ""

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/bixby/data/Parameter;->f(Ljava/lang/String;)V

    goto :goto_e

    :cond_e
    const-string v2, ""

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/bixby/data/Parameter;->g(Ljava/lang/String;)V

    goto :goto_f

    :cond_f
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/bixby/data/Parameter;->a(Ljava/lang/Boolean;)V

    goto :goto_10

    :cond_10
    new-instance v2, Lcom/samsung/android/sdk/bixby/data/State;

    invoke-direct/range {v2 .. v12}, Lcom/samsung/android/sdk/bixby/data/State;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/util/List;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v2
.end method
