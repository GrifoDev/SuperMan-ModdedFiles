.class Lcom/samsung/android/share/executor/StateReader;
.super Ljava/lang/Object;
.source "StateReader.java"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static read(Ljava/lang/String;)Lcom/samsung/android/share/executor/data/State;
    .locals 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    new-instance v20, Lorg/json/JSONObject;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "specVer"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "specVer"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_0
    const-string/jumbo v2, "seqNum"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string/jumbo v2, "isExecuted"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const-string/jumbo v2, "appName"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v2, "stateId"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v2, "ruleId"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v2, "isLandingState"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    const-string/jumbo v2, "isLastState"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "isLastState"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    :goto_1
    const-string/jumbo v2, "subIntent"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "subIntent"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    :goto_2
    const-string/jumbo v2, "parameters"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v23

    const/16 v18, 0x0

    :goto_3
    invoke-virtual/range {v23 .. v23}, Lorg/json/JSONArray;->length()I

    move-result v2

    move/from16 v0, v18

    if-ge v0, v2, :cond_10

    move-object/from16 v0, v23

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v22

    new-instance v21, Lcom/samsung/android/share/executor/data/Parameter;

    invoke-direct/range {v21 .. v21}, Lcom/samsung/android/share/executor/data/Parameter;-><init>()V

    const-string/jumbo v2, "slotType"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string/jumbo v2, "slotType"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/samsung/android/share/executor/data/Parameter;->setSlotType(Ljava/lang/String;)V

    :goto_4
    const-string/jumbo v2, "slotName"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string/jumbo v2, "slotName"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/samsung/android/share/executor/data/Parameter;->setSlotName(Ljava/lang/String;)V

    :goto_5
    const-string/jumbo v2, "slotValue"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string/jumbo v2, "slotValue"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/samsung/android/share/executor/data/Parameter;->setSlotValue(Ljava/lang/String;)V

    :goto_6
    const-string/jumbo v2, "slotValueType"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string/jumbo v2, "slotValueType"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/samsung/android/share/executor/data/Parameter;->setSlotValueType(Ljava/lang/String;)V

    :goto_7
    const-string/jumbo v2, "CH_ObjectType"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string/jumbo v2, "CH_ObjectType"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/samsung/android/share/executor/data/Parameter;->setCHObjectType(Ljava/lang/String;)V

    :goto_8
    const-string/jumbo v2, "CH_Objects"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v2, "CH_Objects"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v14

    const/16 v19, 0x0

    :goto_9
    invoke-virtual {v14}, Lorg/json/JSONArray;->length()I

    move-result v2

    move/from16 v0, v19

    if-ge v0, v2, :cond_b

    move/from16 v0, v19

    invoke-virtual {v14, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v13

    new-instance v16, Lcom/samsung/android/share/executor/data/CHObject;

    invoke-direct/range {v16 .. v16}, Lcom/samsung/android/share/executor/data/CHObject;-><init>()V

    const-string/jumbo v2, "CH_Type"

    invoke-virtual {v13, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    const-string/jumbo v2, "CH_Type"

    invoke-virtual {v13, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/samsung/android/share/executor/data/CHObject;->setCHType(Ljava/lang/String;)V

    :goto_a
    const-string/jumbo v2, "CH_Value"

    invoke-virtual {v13, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    const-string/jumbo v2, "CH_Value"

    invoke-virtual {v13, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/samsung/android/share/executor/data/CHObject;->setCHValue(Ljava/lang/String;)V

    :goto_b
    const-string/jumbo v2, "CH_ValueType"

    invoke-virtual {v13, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    const-string/jumbo v2, "CH_ValueType"

    invoke-virtual {v13, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/samsung/android/share/executor/data/CHObject;->setCHValueType(Ljava/lang/String;)V

    :goto_c
    invoke-interface/range {v15 .. v16}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v19, v19, 0x1

    goto :goto_9

    :cond_0
    const-string/jumbo v3, "1.0"

    goto/16 :goto_0

    :cond_1
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    goto/16 :goto_1

    :cond_2
    const-string/jumbo v11, ""

    goto/16 :goto_2

    :cond_3
    const-string/jumbo v2, ""

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/samsung/android/share/executor/data/Parameter;->setSlotType(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_4

    :catch_0
    move-exception v17

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual/range {v17 .. v17}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4
    :try_start_1
    const-string/jumbo v2, ""

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/samsung/android/share/executor/data/Parameter;->setSlotName(Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_5
    const-string/jumbo v2, ""

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/samsung/android/share/executor/data/Parameter;->setSlotValue(Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_6
    const-string/jumbo v2, ""

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/samsung/android/share/executor/data/Parameter;->setSlotValueType(Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_7
    const-string/jumbo v2, ""

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/samsung/android/share/executor/data/Parameter;->setCHObjectType(Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_8
    const-string/jumbo v2, ""

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/samsung/android/share/executor/data/CHObject;->setCHType(Ljava/lang/String;)V

    goto/16 :goto_a

    :cond_9
    const-string/jumbo v2, ""

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/samsung/android/share/executor/data/CHObject;->setCHValue(Ljava/lang/String;)V

    goto :goto_b

    :cond_a
    const-string/jumbo v2, ""

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/samsung/android/share/executor/data/CHObject;->setCHValueType(Ljava/lang/String;)V

    goto :goto_c

    :cond_b
    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Lcom/samsung/android/share/executor/data/Parameter;->setCHObjects(Ljava/util/List;)V

    :goto_d
    const-string/jumbo v2, "parameterName"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    const-string/jumbo v2, "parameterName"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/samsung/android/share/executor/data/Parameter;->setParameterName(Ljava/lang/String;)V

    :goto_e
    const-string/jumbo v2, "parameterType"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    const-string/jumbo v2, "parameterType"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/samsung/android/share/executor/data/Parameter;->setParameterType(Ljava/lang/String;)V

    :goto_f
    const-string/jumbo v2, "isMandatory"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    const-string/jumbo v2, "isMandatory"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/samsung/android/share/executor/data/Parameter;->setIsMandatory(Ljava/lang/Boolean;)V

    :goto_10
    move-object/from16 v0, v21

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_3

    :cond_c
    const/4 v2, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/samsung/android/share/executor/data/Parameter;->setCHObjects(Ljava/util/List;)V

    goto :goto_d

    :cond_d
    const-string/jumbo v2, ""

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/samsung/android/share/executor/data/Parameter;->setParameterName(Ljava/lang/String;)V

    goto :goto_e

    :cond_e
    const-string/jumbo v2, ""

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/samsung/android/share/executor/data/Parameter;->setParameterType(Ljava/lang/String;)V

    goto :goto_f

    :cond_f
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/samsung/android/share/executor/data/Parameter;->setIsMandatory(Ljava/lang/Boolean;)V

    goto :goto_10

    :cond_10
    new-instance v2, Lcom/samsung/android/share/executor/data/State;

    invoke-direct/range {v2 .. v12}, Lcom/samsung/android/share/executor/data/State;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/util/List;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v2
.end method
