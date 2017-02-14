.class public final Lcn/com/xy/sms/sdk/net/util/j;
.super Ljava/lang/Object;
.source "Unknown"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;Lcn/com/xy/sms/sdk/db/entity/IccidInfo;)I
    .locals 5

    const/4 v1, -0x1

    :try_start_0
    const-string/jumbo v0, ""

    invoke-static {p0, v0}, Lcn/com/xy/sms/sdk/util/StringUtils;->stringConvertXML(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Document;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v0

    const-string/jumbo v2, "rstCode"

    invoke-static {v0, v2}, Lcn/com/xy/sms/sdk/net/util/j;->a(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    :goto_0
    return v1

    :cond_0
    return v1

    :cond_1
    const-string/jumbo v2, "iccid"

    invoke-static {v0, v2}, Lcn/com/xy/sms/sdk/net/util/j;->a(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcn/com/xy/sms/sdk/db/entity/IccidInfo;->iccid:Ljava/lang/String;

    const-string/jumbo v2, "operator"

    invoke-static {v0, v2}, Lcn/com/xy/sms/sdk/net/util/j;->a(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcn/com/xy/sms/sdk/db/entity/IccidInfo;->operator:Ljava/lang/String;

    const-string/jumbo v2, "provinces"

    invoke-static {v0, v2}, Lcn/com/xy/sms/sdk/net/util/j;->a(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcn/com/xy/sms/sdk/db/entity/IccidInfo;->provinces:Ljava/lang/String;

    const-string/jumbo v2, "city"

    invoke-static {v0, v2}, Lcn/com/xy/sms/sdk/net/util/j;->a(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcn/com/xy/sms/sdk/db/entity/IccidInfo;->city:Ljava/lang/String;

    const-string/jumbo v2, "updateTime"

    invoke-static {v0, v2}, Lcn/com/xy/sms/sdk/net/util/j;->a(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p1, Lcn/com/xy/sms/sdk/db/entity/IccidInfo;->updateTime:J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "XIAOYUAN"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "parseQueryIccidInfoResponse: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcn/com/xy/sms/sdk/log/LogManager;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static a(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v2, 0x0

    invoke-interface {p0, p1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const-string/jumbo v0, ""

    return-object v0

    :cond_1
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-lez v1, :cond_0

    invoke-interface {v0, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-static {v0}, Lcn/com/xy/sms/sdk/util/z;->a(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Ljava/util/Map;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v3, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v4, 0x0

    :try_start_0
    const-string/jumbo v2, ""

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcn/com/xy/sms/sdk/util/StringUtils;->stringConvertXML(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Document;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-interface {v2}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v7

    const-string/jumbo v2, "em"

    invoke-interface {v7, v2}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v14

    const-string/jumbo v2, "jars"

    invoke-static {v7, v2}, Lcn/com/xy/sms/sdk/net/util/j;->a(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v2, "jarVersion"

    invoke-static {v7, v2}, Lcn/com/xy/sms/sdk/net/util/j;->a(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const-string/jumbo v2, "downLoadUrl"

    invoke-static {v7, v2}, Lcn/com/xy/sms/sdk/net/util/j;->a(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string/jumbo v2, "pver"

    invoke-static {v7, v2}, Lcn/com/xy/sms/sdk/net/util/j;->a(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-static {v15}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_0
    invoke-interface {v14}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-eqz v2, :cond_5

    :goto_0
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    const-wide/16 v10, -0x1

    if-nez v14, :cond_6

    :cond_1
    :goto_1
    :try_start_1
    invoke-static {v15}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    if-eqz v2, :cond_b

    :cond_2
    return-object v6

    :cond_3
    const/4 v2, 0x0

    return-object v2

    :cond_4
    :try_start_2
    invoke-static/range {v16 .. v16}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_5
    const/4 v2, 0x0

    return-object v2

    :cond_6
    :try_start_3
    invoke-interface {v14}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-lez v2, :cond_1

    new-instance v19, Lorg/json/JSONArray;

    invoke-direct/range {v19 .. v19}, Lorg/json/JSONArray;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    :goto_2
    invoke-interface {v14}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-ge v3, v2, :cond_a

    new-instance v20, Lorg/json/JSONObject;

    invoke-direct/range {v20 .. v20}, Lorg/json/JSONObject;-><init>()V

    invoke-interface {v14, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-static {v2}, Lcn/com/xy/sms/sdk/util/z;->a(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v12

    check-cast v2, Lorg/w3c/dom/Element;

    const-string/jumbo v13, "version"

    invoke-interface {v2, v13}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v13, "emContent"

    move-object/from16 v0, v20

    invoke-virtual {v0, v13, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v12, "emVersion"

    move-object/from16 v0, v20

    invoke-virtual {v0, v12, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    :try_start_4
    invoke-static {v2}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    move-result v12

    if-eqz v12, :cond_8

    :cond_7
    :goto_3
    :try_start_5
    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_2

    :cond_8
    :try_start_6
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    move-result-wide v12

    cmp-long v2, v10, v12

    if-ltz v2, :cond_9

    const/4 v2, 0x1

    :goto_4
    if-nez v2, :cond_7

    move-wide v10, v12

    goto :goto_3

    :cond_9
    const/4 v2, 0x0

    goto :goto_4

    :catch_0
    move-exception v2

    :try_start_7
    const-string/jumbo v12, "XIAOYUAN"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string/jumbo v21, "parseJarsUpdateRespose "

    move-object/from16 v0, v21

    invoke-direct {v13, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13, v2}, Lcn/com/xy/sms/sdk/log/LogManager;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_3

    :catch_1
    move-exception v2

    move-object v3, v6

    :goto_5
    const-string/jumbo v4, "XIAOYUAN"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "parseJarsUpdateRespose: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Lcn/com/xy/sms/sdk/log/LogManager;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v6, v3

    :goto_6
    return-object v6

    :cond_a
    :try_start_8
    const-string/jumbo v2, "EM_VERSION"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v3, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/com/xy/sms/sdk/db/entity/SysParamEntityManager;->setParam(Ljava/lang/String;Ljava/lang/String;)J

    const-string/jumbo v2, "emergencyArray"

    move-object/from16 v0, v19

    invoke-interface {v6, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_b
    invoke-static/range {v16 .. v16}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, ","

    invoke-virtual {v15, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v2, ","

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v2, ","

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v2, ","

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    array-length v2, v10

    array-length v3, v11

    if-eq v2, v3, :cond_d

    :cond_c
    return-object v6

    :cond_d
    array-length v2, v11

    array-length v3, v12

    if-ne v2, v3, :cond_c

    const-string/jumbo v2, "delaystart"

    invoke-static {v7, v2}, Lcn/com/xy/sms/sdk/net/util/j;->a(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    :goto_7
    const-string/jumbo v2, "delayend"

    invoke-static {v7, v2}, Lcn/com/xy/sms/sdk/net/util/j;->a(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    move-wide v2, v4

    :goto_8
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_10

    const/4 v4, 0x1

    :goto_9
    if-nez v4, :cond_11

    const-wide/32 v2, 0x5265c00

    move-wide v4, v2

    :goto_a
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    const/4 v2, 0x0

    :goto_b
    array-length v7, v10

    if-ge v2, v7, :cond_13

    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v14, "name"

    aget-object v15, v10, v2

    invoke-virtual {v7, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v14, "version"

    aget-object v15, v11, v2

    invoke-virtual {v7, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v14, "url"

    aget-object v15, v12, v2

    invoke-virtual {v7, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    array-length v14, v13

    if-gt v14, v2, :cond_12

    :goto_c
    const-string/jumbo v14, "delayStart"

    invoke-virtual {v7, v14, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string/jumbo v14, "delayEnd"

    invoke-virtual {v7, v14, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    invoke-virtual {v3, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_e
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    move-wide v8, v2

    goto :goto_7

    :cond_f
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    goto :goto_8

    :cond_10
    const/4 v4, 0x0

    goto :goto_9

    :cond_11
    move-wide v4, v2

    goto :goto_a

    :cond_12
    const-string/jumbo v14, "pver"

    aget-object v15, v13, v2

    invoke-virtual {v7, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_c

    :cond_13
    const-string/jumbo v2, "updataJars"

    invoke-interface {v6, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_1

    goto/16 :goto_6

    :catch_2
    move-exception v2

    goto/16 :goto_5
.end method

.method public static b(Ljava/lang/String;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcn/com/xy/sms/sdk/db/entity/SceneRule;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    const-string/jumbo v0, ""

    invoke-static {p0, v0}, Lcn/com/xy/sms/sdk/util/StringUtils;->stringConvertXML(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Document;

    move-result-object v0

    if-eqz v0, :cond_2

    sget-boolean v1, Lcn/com/xy/sms/sdk/log/LogManager;->debug:Z

    if-nez v1, :cond_0

    :cond_0
    const-string/jumbo v1, "SceneRule"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v4

    move v1, v2

    :goto_0
    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-ge v1, v0, :cond_4

    new-instance v5, Lcn/com/xy/sms/sdk/db/entity/SceneRule;

    invoke-direct {v5}, Lcn/com/xy/sms/sdk/db/entity/SceneRule;-><init>()V

    invoke-interface {v4, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v6

    move v0, v2

    :goto_1
    invoke-interface {v6}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v7

    if-ge v0, v7, :cond_11

    invoke-interface {v6, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v8

    const/4 v9, 0x1

    if-eq v8, v9, :cond_3

    :cond_1
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-object v1

    :cond_3
    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "sceneId"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_5

    const-string/jumbo v9, "sceneRuleVersion"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_6

    const-string/jumbo v9, "province"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_7

    const-string/jumbo v9, "id"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_8

    const-string/jumbo v9, "operator"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_9

    const-string/jumbo v9, "expire_date"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_a

    const-string/jumbo v9, "fun_call"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_b

    const-string/jumbo v9, "fun_acc_url"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_c

    const-string/jumbo v9, "fun_reply_sms"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_d

    const-string/jumbo v9, "fun_config"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_e

    const-string/jumbo v9, "res_urls"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_f

    const-string/jumbo v9, "s_version"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_10

    const-string/jumbo v9, "scene_page_conf"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-static {v7}, Lcn/com/xy/sms/sdk/util/z;->a(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcn/com/xy/sms/sdk/db/entity/SceneRule;->Scene_page_config:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception v0

    const-string/jumbo v1, "XIAOYUAN"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "parseQuerySceneRuleResponse: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcn/com/xy/sms/sdk/log/LogManager;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    return-object v3

    :cond_5
    :try_start_1
    invoke-static {v7}, Lcn/com/xy/sms/sdk/util/z;->a(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcn/com/xy/sms/sdk/db/entity/SceneRule;->scene_id:Ljava/lang/String;

    goto/16 :goto_2

    :cond_6
    invoke-static {v7}, Lcn/com/xy/sms/sdk/util/z;->a(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcn/com/xy/sms/sdk/db/entity/SceneRule;->sceneruleVersion:Ljava/lang/String;

    goto/16 :goto_2

    :cond_7
    invoke-static {v7}, Lcn/com/xy/sms/sdk/util/z;->a(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcn/com/xy/sms/sdk/db/entity/SceneRule;->province:Ljava/lang/String;

    goto/16 :goto_2

    :cond_8
    invoke-static {v7}, Lcn/com/xy/sms/sdk/util/z;->a(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcn/com/xy/sms/sdk/db/entity/SceneRule;->id:Ljava/lang/String;

    goto/16 :goto_2

    :cond_9
    invoke-static {v7}, Lcn/com/xy/sms/sdk/util/z;->a(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcn/com/xy/sms/sdk/db/entity/SceneRule;->operator:Ljava/lang/String;

    goto/16 :goto_2

    :cond_a
    invoke-static {v7}, Lcn/com/xy/sms/sdk/util/z;->a(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcn/com/xy/sms/sdk/db/entity/SceneRule;->expire_date:Ljava/lang/String;

    goto/16 :goto_2

    :cond_b
    invoke-static {v7}, Lcn/com/xy/sms/sdk/util/z;->a(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v5, Lcn/com/xy/sms/sdk/db/entity/SceneRule;->Func_call:I

    goto/16 :goto_2

    :cond_c
    invoke-static {v7}, Lcn/com/xy/sms/sdk/util/z;->a(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v5, Lcn/com/xy/sms/sdk/db/entity/SceneRule;->Func_acc_url:I

    goto/16 :goto_2

    :cond_d
    invoke-static {v7}, Lcn/com/xy/sms/sdk/util/z;->a(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v5, Lcn/com/xy/sms/sdk/db/entity/SceneRule;->Func_reply_sms:I

    goto/16 :goto_2

    :cond_e
    invoke-static {v7}, Lcn/com/xy/sms/sdk/util/z;->a(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcn/com/xy/sms/sdk/db/entity/SceneRule;->Func_config:Ljava/lang/String;

    goto/16 :goto_2

    :cond_f
    invoke-static {v7}, Lcn/com/xy/sms/sdk/util/z;->a(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcn/com/xy/sms/sdk/db/entity/SceneRule;->res_urls:Ljava/lang/String;

    goto/16 :goto_2

    :cond_10
    invoke-static {v7}, Lcn/com/xy/sms/sdk/util/z;->a(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcn/com/xy/sms/sdk/db/entity/SceneRule;->s_version:Ljava/lang/String;

    goto/16 :goto_2

    :cond_11
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_0
.end method

.method public static c(Ljava/lang/String;)Z
    .locals 3

    const/4 v2, 0x0

    :try_start_0
    const-string/jumbo v0, ""

    invoke-static {p0, v0}, Lcn/com/xy/sms/sdk/util/StringUtils;->stringConvertXML(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Document;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v0

    const-string/jumbo v1, "rstCode"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_0
    :goto_0
    return v2

    :cond_1
    return v2

    :cond_2
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-static {v0}, Lcn/com/xy/sms/sdk/util/z;->a(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static d(Ljava/lang/String;)Z
    .locals 3

    const/4 v2, 0x0

    :try_start_0
    const-string/jumbo v0, ""

    invoke-static {p0, v0}, Lcn/com/xy/sms/sdk/util/StringUtils;->stringConvertXML(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Document;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v0

    const-string/jumbo v1, "rstCode"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_0
    :goto_0
    return v2

    :cond_1
    return v2

    :cond_2
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-static {v0}, Lcn/com/xy/sms/sdk/util/z;->a(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static e(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    const-string/jumbo v1, ""

    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/util/StringUtils;->stringConvertXML(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Document;

    move-result-object v6

    if-eqz v6, :cond_2

    sget-boolean v1, Lcn/com/xy/sms/sdk/log/LogManager;->debug:Z

    if-nez v1, :cond_0

    :cond_0
    const-string/jumbo v1, "Scene"

    invoke-interface {v6, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v7

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {v7}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-ge v2, v1, :cond_17

    new-instance v8, Lcn/com/xy/sms/sdk/db/entity/t;

    invoke-direct {v8}, Lcn/com/xy/sms/sdk/db/entity/t;-><init>()V

    invoke-interface {v7, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Element;

    invoke-interface {v1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v9

    const/4 v3, 0x0

    :goto_1
    invoke-interface {v9}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v10

    if-ge v3, v10, :cond_5

    invoke-interface {v9, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v10

    invoke-interface {v10}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v11

    const/4 v12, 0x1

    if-eq v11, v12, :cond_3

    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    return-object v1

    :cond_3
    invoke-interface {v10}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "sceneId"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_4

    const-string/jumbo v12, "sceneVersion"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-static {v10}, Lcn/com/xy/sms/sdk/util/z;->a(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v8, Lcn/com/xy/sms/sdk/db/entity/t;->b:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    const-string/jumbo v2, "XIAOYUAN"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "parseQuerySceneRecordResponse: "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcn/com/xy/sms/sdk/log/LogManager;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3
    const-string/jumbo v1, "sceneconfigList"

    invoke-virtual {v4, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v4

    :cond_4
    :try_start_1
    invoke-static {v10}, Lcn/com/xy/sms/sdk/util/z;->a(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v8, Lcn/com/xy/sms/sdk/db/entity/t;->a:Ljava/lang/String;

    goto :goto_2

    :cond_5
    const-string/jumbo v3, "SceneRule"

    invoke-interface {v1, v3}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v9

    if-nez v9, :cond_7

    :cond_6
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto/16 :goto_0

    :cond_7
    invoke-interface {v9}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v10

    const/4 v1, 0x0

    move v3, v1

    :goto_4
    if-ge v3, v10, :cond_6

    new-instance v11, Lcn/com/xy/sms/sdk/db/entity/SceneRule;

    invoke-direct {v11}, Lcn/com/xy/sms/sdk/db/entity/SceneRule;-><init>()V

    invoke-interface {v9, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Element;

    invoke-interface {v1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v12

    const/4 v1, 0x0

    :goto_5
    invoke-interface {v12}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v13

    if-ge v1, v13, :cond_16

    invoke-interface {v12, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v13

    invoke-interface {v13}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v14

    const/4 v15, 0x1

    if-eq v14, v15, :cond_9

    :cond_8
    :goto_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_9
    invoke-interface {v13}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v13}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_8

    const-string/jumbo v15, "sceneId"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_a

    const-string/jumbo v15, "sceneRuleVersion"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_b

    const-string/jumbo v15, "province"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_c

    const-string/jumbo v15, "id"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_d

    const-string/jumbo v15, "operator"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_e

    const-string/jumbo v15, "expire_date"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_f

    const-string/jumbo v15, "fun_call"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_10

    const-string/jumbo v15, "fun_acc_url"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_11

    const-string/jumbo v15, "fun_reply_sms"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_12

    const-string/jumbo v15, "fun_config"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_13

    const-string/jumbo v15, "res_urls"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_14

    const-string/jumbo v15, "s_version"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_15

    const-string/jumbo v15, "scene_page_conf"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_8

    invoke-static {v13}, Lcn/com/xy/sms/sdk/util/z;->a(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v11, Lcn/com/xy/sms/sdk/db/entity/SceneRule;->Scene_page_config:Ljava/lang/String;

    goto/16 :goto_6

    :cond_a
    invoke-static {v13}, Lcn/com/xy/sms/sdk/util/z;->a(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v11, Lcn/com/xy/sms/sdk/db/entity/SceneRule;->scene_id:Ljava/lang/String;

    goto/16 :goto_6

    :cond_b
    invoke-static {v13}, Lcn/com/xy/sms/sdk/util/z;->a(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v11, Lcn/com/xy/sms/sdk/db/entity/SceneRule;->sceneruleVersion:Ljava/lang/String;

    goto/16 :goto_6

    :cond_c
    invoke-static {v13}, Lcn/com/xy/sms/sdk/util/z;->a(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v11, Lcn/com/xy/sms/sdk/db/entity/SceneRule;->province:Ljava/lang/String;

    goto/16 :goto_6

    :cond_d
    invoke-static {v13}, Lcn/com/xy/sms/sdk/util/z;->a(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v11, Lcn/com/xy/sms/sdk/db/entity/SceneRule;->id:Ljava/lang/String;

    goto/16 :goto_6

    :cond_e
    invoke-static {v13}, Lcn/com/xy/sms/sdk/util/z;->a(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v11, Lcn/com/xy/sms/sdk/db/entity/SceneRule;->operator:Ljava/lang/String;

    goto/16 :goto_6

    :cond_f
    invoke-static {v13}, Lcn/com/xy/sms/sdk/util/z;->a(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v11, Lcn/com/xy/sms/sdk/db/entity/SceneRule;->expire_date:Ljava/lang/String;

    goto/16 :goto_6

    :cond_10
    invoke-static {v13}, Lcn/com/xy/sms/sdk/util/z;->a(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    iput v13, v11, Lcn/com/xy/sms/sdk/db/entity/SceneRule;->Func_call:I

    goto/16 :goto_6

    :cond_11
    invoke-static {v13}, Lcn/com/xy/sms/sdk/util/z;->a(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    iput v13, v11, Lcn/com/xy/sms/sdk/db/entity/SceneRule;->Func_acc_url:I

    goto/16 :goto_6

    :cond_12
    invoke-static {v13}, Lcn/com/xy/sms/sdk/util/z;->a(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    iput v13, v11, Lcn/com/xy/sms/sdk/db/entity/SceneRule;->Func_reply_sms:I

    goto/16 :goto_6

    :cond_13
    invoke-static {v13}, Lcn/com/xy/sms/sdk/util/z;->a(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v11, Lcn/com/xy/sms/sdk/db/entity/SceneRule;->Func_config:Ljava/lang/String;

    goto/16 :goto_6

    :cond_14
    invoke-static {v13}, Lcn/com/xy/sms/sdk/util/z;->a(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v11, Lcn/com/xy/sms/sdk/db/entity/SceneRule;->res_urls:Ljava/lang/String;

    goto/16 :goto_6

    :cond_15
    invoke-static {v13}, Lcn/com/xy/sms/sdk/util/z;->a(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v11, Lcn/com/xy/sms/sdk/db/entity/SceneRule;->s_version:Ljava/lang/String;

    goto/16 :goto_6

    :cond_16
    invoke-virtual {v8, v11}, Lcn/com/xy/sms/sdk/db/entity/t;->a(Lcn/com/xy/sms/sdk/db/entity/SceneRule;)V

    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto/16 :goto_4

    :cond_17
    const-string/jumbo v1, "SceneUrl"

    invoke-interface {v6, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    if-nez v2, :cond_19

    :cond_18
    const-string/jumbo v1, "sceneUrllist"

    invoke-virtual {v4, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    :cond_19
    const/4 v1, 0x0

    :goto_7
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-ge v1, v6, :cond_18

    invoke-interface {v2, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    invoke-static {v6}, Lcn/com/xy/sms/sdk/util/z;->a(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1a

    :goto_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_1a
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_8
.end method

.method public static f(Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 10

    const/4 v9, 0x0

    const/4 v0, 0x0

    :try_start_0
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    const-string/jumbo v1, ""

    invoke-static {p0, v1}, Lcn/com/xy/sms/sdk/util/StringUtils;->stringConvertXML(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Document;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-interface {v4}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v2

    const-string/jumbo v1, "code"

    invoke-interface {v2, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    if-nez v1, :cond_3

    :cond_0
    :goto_0
    const-string/jumbo v1, ""

    const-string/jumbo v5, "res_type"

    invoke-interface {v2, v5}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    if-nez v2, :cond_6

    :cond_1
    :goto_1
    move-object v2, v1

    const-string/jumbo v1, "res"

    invoke-interface {v4, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v4

    move v1, v0

    :goto_2
    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-ge v1, v0, :cond_7

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    invoke-interface {v4, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    const-string/jumbo v6, "version"

    invoke-interface {v0, v6}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "del_history"

    invoke-interface {v0, v7}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "res_version"

    invoke-virtual {v5, v8, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v6, "del_history"

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {v0}, Lcn/com/xy/sms/sdk/util/z;->a(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v6, "res_url"

    invoke-virtual {v5, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "res_type"

    invoke-virtual {v5, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_2
    return-object v9

    :cond_3
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    if-lez v5, :cond_0

    const/4 v5, 0x0

    invoke-interface {v1, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-static {v1}, Lcn/com/xy/sms/sdk/util/z;->a(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    :cond_4
    return-object v9

    :cond_5
    const-string/jumbo v5, "0"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_0

    :cond_6
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    if-lez v5, :cond_1

    const/4 v1, 0x0

    invoke-interface {v2, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-static {v1}, Lcn/com/xy/sms/sdk/util/z;->a(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto/16 :goto_1

    :cond_7
    return-object v3

    :catch_0
    move-exception v0

    return-object v9
.end method

.method public static g(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    const-string/jumbo v0, ""

    invoke-static {p0, v0}, Lcn/com/xy/sms/sdk/util/StringUtils;->stringConvertXML(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Document;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v0

    const-string/jumbo v2, "data"

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_0
    :goto_0
    move-object v0, v1

    :goto_1
    return-object v0

    :cond_1
    return-object v1

    :cond_2
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-static {v0}, Lcn/com/xy/sms/sdk/util/z;->a(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string/jumbo v2, "XIAOYUAN"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "parseTrainData: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcn/com/xy/sms/sdk/log/LogManager;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
