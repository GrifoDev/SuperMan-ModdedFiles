.class Lcom/samsung/android/sdk/bixby/c;
.super Ljava/lang/Object;


# direct methods
.method public static a(Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/ParamFilling;
    .locals 15

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "utterance"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "intent"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "appName"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "screenStates"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v0, v8, :cond_0

    invoke-virtual {v7, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-string v0, "screenParameters"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    const/4 v0, 0x0

    move v6, v0

    :goto_1
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v6, v0, :cond_c

    invoke-virtual {v7, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    new-instance v9, Lcom/samsung/android/sdk/bixby/data/ScreenParameter;

    invoke-direct {v9}, Lcom/samsung/android/sdk/bixby/data/ScreenParameter;-><init>()V

    const-string v0, "slotType"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "slotType"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/samsung/android/sdk/bixby/data/ScreenParameter;->a(Ljava/lang/String;)V

    :goto_2
    const-string v0, "slotName"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "slotName"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/samsung/android/sdk/bixby/data/ScreenParameter;->b(Ljava/lang/String;)V

    :goto_3
    const-string v0, "slotValue"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "slotValue"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/samsung/android/sdk/bixby/data/ScreenParameter;->c(Ljava/lang/String;)V

    :goto_4
    const-string v0, "CH_ObjectType"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "CH_ObjectType"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/samsung/android/sdk/bixby/data/ScreenParameter;->d(Ljava/lang/String;)V

    :goto_5
    const-string v0, "CH_Objects"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "CH_Objects"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    const/4 v0, 0x0

    :goto_6
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v12

    if-ge v0, v12, :cond_8

    invoke-virtual {v11, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v12

    new-instance v13, Lcom/samsung/android/sdk/bixby/data/CHObject;

    invoke-direct {v13}, Lcom/samsung/android/sdk/bixby/data/CHObject;-><init>()V

    const-string v14, "CH_Type"

    invoke-virtual {v12, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_5

    const-string v14, "CH_Type"

    invoke-virtual {v12, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/samsung/android/sdk/bixby/data/CHObject;->a(Ljava/lang/String;)V

    :goto_7
    const-string v14, "CH_Value"

    invoke-virtual {v12, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_6

    const-string v14, "CH_Value"

    invoke-virtual {v12, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/samsung/android/sdk/bixby/data/CHObject;->b(Ljava/lang/String;)V

    :goto_8
    const-string v14, "CH_ValueType"

    invoke-virtual {v12, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_7

    const-string v14, "CH_ValueType"

    invoke-virtual {v12, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v13, v12}, Lcom/samsung/android/sdk/bixby/data/CHObject;->c(Ljava/lang/String;)V

    :goto_9
    invoke-interface {v10, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_1
    const-string v0, ""

    invoke-virtual {v9, v0}, Lcom/samsung/android/sdk/bixby/data/ScreenParameter;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    :try_start_1
    const-string v0, ""

    invoke-virtual {v9, v0}, Lcom/samsung/android/sdk/bixby/data/ScreenParameter;->b(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_3
    const-string v0, ""

    invoke-virtual {v9, v0}, Lcom/samsung/android/sdk/bixby/data/ScreenParameter;->c(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_4
    const-string v0, ""

    invoke-virtual {v9, v0}, Lcom/samsung/android/sdk/bixby/data/ScreenParameter;->d(Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_5
    const-string v14, ""

    invoke-virtual {v13, v14}, Lcom/samsung/android/sdk/bixby/data/CHObject;->a(Ljava/lang/String;)V

    goto :goto_7

    :cond_6
    const-string v14, ""

    invoke-virtual {v13, v14}, Lcom/samsung/android/sdk/bixby/data/CHObject;->b(Ljava/lang/String;)V

    goto :goto_8

    :cond_7
    const-string v12, ""

    invoke-virtual {v13, v12}, Lcom/samsung/android/sdk/bixby/data/CHObject;->c(Ljava/lang/String;)V

    goto :goto_9

    :cond_8
    invoke-virtual {v9, v10}, Lcom/samsung/android/sdk/bixby/data/ScreenParameter;->a(Ljava/util/List;)V

    :goto_a
    const-string v0, "parameterName"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "parameterName"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/samsung/android/sdk/bixby/data/ScreenParameter;->e(Ljava/lang/String;)V

    :goto_b
    const-string v0, "parameterType"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "parameterType"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/samsung/android/sdk/bixby/data/ScreenParameter;->f(Ljava/lang/String;)V

    :goto_c
    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto/16 :goto_1

    :cond_9
    const/4 v0, 0x0

    invoke-virtual {v9, v0}, Lcom/samsung/android/sdk/bixby/data/ScreenParameter;->a(Ljava/util/List;)V

    goto :goto_a

    :cond_a
    const-string v0, ""

    invoke-virtual {v9, v0}, Lcom/samsung/android/sdk/bixby/data/ScreenParameter;->e(Ljava/lang/String;)V

    goto :goto_b

    :cond_b
    const-string v0, ""

    invoke-virtual {v9, v0}, Lcom/samsung/android/sdk/bixby/data/ScreenParameter;->f(Ljava/lang/String;)V

    goto :goto_c

    :cond_c
    new-instance v0, Lcom/samsung/android/sdk/bixby/data/ParamFilling;

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/sdk/bixby/data/ParamFilling;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0
.end method
