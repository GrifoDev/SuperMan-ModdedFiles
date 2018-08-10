.class Lcom/samsung/android/sdk/bixby/PathRuleInfoReader;
.super Ljava/lang/Object;
.source "PathRuleInfoReader.java"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static read(Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/PathRuleInfo;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v8, 0x0

    const/4 v9, 0x0

    :try_start_0
    new-instance v13, Lorg/json/JSONObject;

    invoke-direct {v13, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "pathRuleId"

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v0, "pathRuleName"

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v0, "intent"

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v0, "utterance"

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v0, "sampleUtterance"

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v0, "apps"

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v12

    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-array v6, v0, [Ljava/lang/String;

    const/4 v11, 0x0

    :goto_0
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lt v11, v0, :cond_0

    const-string/jumbo v0, "isRoot"

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    const-string/jumbo v0, "isCalleePathRule"

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :goto_1
    const-string/jumbo v0, "isFromSimulator"

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    :goto_2
    new-instance v0, Lcom/samsung/android/sdk/bixby/data/PathRuleInfo;

    invoke-direct/range {v0 .. v9}, Lcom/samsung/android/sdk/bixby/data/PathRuleInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZZZ)V

    return-object v0

    :cond_0
    invoke-virtual {v12, v11}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "isCalleePathRule"

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    goto :goto_1

    :cond_2
    const-string/jumbo v0, "isFromSimulator"

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    goto :goto_2

    :catch_0
    move-exception v10

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v10}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v0, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
