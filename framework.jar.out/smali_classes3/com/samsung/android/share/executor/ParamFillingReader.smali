.class Lcom/samsung/android/share/executor/ParamFillingReader;
.super Ljava/lang/Object;
.source "ParamFillingReader.java"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static read(Ljava/lang/String;)Lcom/samsung/android/share/executor/data/ParamFilling;
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    new-instance v15, Lorg/json/JSONObject;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "utterance"

    invoke-virtual {v15, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v1, "intent"

    invoke-virtual {v15, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v1, "appName"

    invoke-virtual {v15, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v1, "screenStates"

    invoke-virtual {v15, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v19

    const/4 v14, 0x0

    :goto_0
    invoke-virtual/range {v19 .. v19}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v14, v1, :cond_0

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "screenParameters"

    invoke-virtual {v15, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v18

    const/4 v12, 0x0

    :goto_1
    invoke-virtual/range {v18 .. v18}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v12, v1, :cond_c

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v16

    new-instance v17, Lcom/samsung/android/share/executor/data/ScreenParameter;

    invoke-direct/range {v17 .. v17}, Lcom/samsung/android/share/executor/data/ScreenParameter;-><init>()V

    const-string/jumbo v1, "slotType"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "slotType"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/share/executor/data/ScreenParameter;->setSlotType(Ljava/lang/String;)V

    :goto_2
    const-string/jumbo v1, "slotName"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "slotName"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/share/executor/data/ScreenParameter;->setSlotName(Ljava/lang/String;)V

    :goto_3
    const-string/jumbo v1, "slotValue"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string/jumbo v1, "slotValue"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/share/executor/data/ScreenParameter;->setSlotValue(Ljava/lang/String;)V

    :goto_4
    const-string/jumbo v1, "CH_ObjectType"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string/jumbo v1, "CH_ObjectType"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/share/executor/data/ScreenParameter;->setCHObjectType(Ljava/lang/String;)V

    :goto_5
    const-string/jumbo v1, "CH_Objects"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v1, "CH_Objects"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    const/4 v13, 0x0

    :goto_6
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v13, v1, :cond_8

    invoke-virtual {v8, v13}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    new-instance v10, Lcom/samsung/android/share/executor/data/CHObject;

    invoke-direct {v10}, Lcom/samsung/android/share/executor/data/CHObject;-><init>()V

    const-string/jumbo v1, "CH_Type"

    invoke-virtual {v7, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string/jumbo v1, "CH_Type"

    invoke-virtual {v7, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/samsung/android/share/executor/data/CHObject;->setCHType(Ljava/lang/String;)V

    :goto_7
    const-string/jumbo v1, "CH_Value"

    invoke-virtual {v7, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string/jumbo v1, "CH_Value"

    invoke-virtual {v7, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/samsung/android/share/executor/data/CHObject;->setCHValue(Ljava/lang/String;)V

    :goto_8
    const-string/jumbo v1, "CH_ValueType"

    invoke-virtual {v7, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string/jumbo v1, "CH_ValueType"

    invoke-virtual {v7, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/samsung/android/share/executor/data/CHObject;->setCHValueType(Ljava/lang/String;)V

    :goto_9
    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v13, v13, 0x1

    goto :goto_6

    :cond_1
    const-string/jumbo v1, ""

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/share/executor/data/ScreenParameter;->setSlotType(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception v11

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v11}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    :try_start_1
    const-string/jumbo v1, ""

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/share/executor/data/ScreenParameter;->setSlotName(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_3
    const-string/jumbo v1, ""

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/share/executor/data/ScreenParameter;->setSlotValue(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_4
    const-string/jumbo v1, ""

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/share/executor/data/ScreenParameter;->setCHObjectType(Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_5
    const-string/jumbo v1, ""

    invoke-virtual {v10, v1}, Lcom/samsung/android/share/executor/data/CHObject;->setCHType(Ljava/lang/String;)V

    goto :goto_7

    :cond_6
    const-string/jumbo v1, ""

    invoke-virtual {v10, v1}, Lcom/samsung/android/share/executor/data/CHObject;->setCHValue(Ljava/lang/String;)V

    goto :goto_8

    :cond_7
    const-string/jumbo v1, ""

    invoke-virtual {v10, v1}, Lcom/samsung/android/share/executor/data/CHObject;->setCHValueType(Ljava/lang/String;)V

    goto :goto_9

    :cond_8
    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Lcom/samsung/android/share/executor/data/ScreenParameter;->setCHObjects(Ljava/util/List;)V

    :goto_a
    const-string/jumbo v1, "parameterName"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    const-string/jumbo v1, "parameterName"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/share/executor/data/ScreenParameter;->setParameterName(Ljava/lang/String;)V

    :goto_b
    const-string/jumbo v1, "parameterType"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    const-string/jumbo v1, "parameterType"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/share/executor/data/ScreenParameter;->setParameterType(Ljava/lang/String;)V

    :goto_c
    move-object/from16 v0, v17

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_1

    :cond_9
    const/4 v1, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/share/executor/data/ScreenParameter;->setCHObjects(Ljava/util/List;)V

    goto :goto_a

    :cond_a
    const-string/jumbo v1, ""

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/share/executor/data/ScreenParameter;->setParameterName(Ljava/lang/String;)V

    goto :goto_b

    :cond_b
    const-string/jumbo v1, ""

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/share/executor/data/ScreenParameter;->setParameterType(Ljava/lang/String;)V

    goto :goto_c

    :cond_c
    new-instance v1, Lcom/samsung/android/share/executor/data/ParamFilling;

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/share/executor/data/ParamFilling;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v1
.end method
