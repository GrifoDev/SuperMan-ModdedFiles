.class public Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# static fields
.field private static final a:J = 0x1L

.field public static emptyObj:Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;


# instance fields
.field private b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation
.end field

.field public bubbleJsonObj:Lorg/json/JSONObject;

.field private c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/json/JSONArray;",
            ">;"
        }
    .end annotation
.end field

.field public extendParamMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public imagePathMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public isBgVis:Z

.field public isPopByWeishi:Z

.field public messageBody:Ljava/lang/String;

.field public msgTime:J

.field public originatingAddress:Ljava/lang/String;

.field public reBindData:Z

.field public simIndex:I

.field public simName:Ljava/lang/String;

.field public smsId:J

.field public titleNo:Ljava/lang/String;

.field public valueMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public viewType:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;->emptyObj:Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;->imagePathMap:Ljava/util/HashMap;

    iput-object v2, p0, Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;->extendParamMap:Ljava/util/HashMap;

    iput-object v2, p0, Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;->valueMap:Ljava/util/Map;

    iput-object v2, p0, Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;->bubbleJsonObj:Lorg/json/JSONObject;

    const/4 v0, -0x1

    iput v0, p0, Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;->simIndex:I

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;->simName:Ljava/lang/String;

    iput-boolean v3, p0, Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;->reBindData:Z

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;->smsId:J

    iput-boolean v3, p0, Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;->isPopByWeishi:Z

    iput-byte v3, p0, Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;->viewType:B

    iput-object v2, p0, Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;->b:Ljava/util/HashMap;

    iput-object v2, p0, Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;->c:Ljava/util/HashMap;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;->msgTime:J

    return-void
.end method

.method public static createMsgObj()Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;
    .locals 4

    :try_start_0
    sget-object v0, Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;->emptyObj:Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;

    if-eqz v0, :cond_0

    :goto_0
    sget-object v0, Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;->emptyObj:Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;

    invoke-virtual {v0}, Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;

    return-object v0

    :cond_0
    new-instance v0, Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;

    invoke-direct {v0}, Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;-><init>()V

    sput-object v0, Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;->emptyObj:Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "XIAOYUAN"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "createMsgObj: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcn/com/xy/sms/sdk/log/LogManager;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;

    invoke-direct {v0}, Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;-><init>()V

    return-object v0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getActionJsonArray()Lorg/json/JSONArray;
    .locals 2

    const/4 v1, 0x0

    const-string/jumbo v0, "ADACTION"

    invoke-virtual {p0, v0}, Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Lorg/json/JSONArray;

    if-nez v1, :cond_1

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcn/com/xy/sms/sdk/util/JsonUtil;->parseStrToJsonArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const-string/jumbo v1, "ADACTION"

    invoke-virtual {p0, v1, v0}, Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0

    :cond_0
    return-object v1

    :cond_1
    check-cast v0, Lorg/json/JSONArray;

    return-object v0
.end method

.method public getCenterAddress()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, ""

    return-object v0
.end method

.method public getExtendParamValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;->extendParamMap:Ljava/util/HashMap;

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;->extendParamMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getImgNameByKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v1, 0x0

    iget-byte v0, p0, Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;->viewType:B

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;->bubbleJsonObj:Lorg/json/JSONObject;

    if-nez v0, :cond_2

    :cond_0
    :goto_0
    move-object v0, v1

    :goto_1
    return-object v0

    :cond_1
    iget-object v0, p0, Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;->imagePathMap:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;->imagePathMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;->bubbleJsonObj:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;->bubbleJsonObj:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "XIAOYUAN"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "getImgNameByKey: "

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

.method public getMessageBody()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;->messageBody:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginatingAddress()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;->originatingAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getSmsId()J
    .locals 2

    iget-wide v0, p0, Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;->smsId:J

    return-wide v0
.end method

.method public getTableData(ILjava/lang/String;)Ljava/lang/Object;
    .locals 5

    const/4 v4, 0x0

    iget-byte v0, p0, Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;->viewType:B

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;->c:Ljava/util/HashMap;

    if-nez v0, :cond_2

    :cond_0
    :goto_0
    return-object v4

    :cond_1
    iget-object v0, p0, Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;->b:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, p1, :cond_0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "XIAOYUAN"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "getTableData: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcn/com/xy/sms/sdk/log/LogManager;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONArray;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-le v1, p1, :cond_0

    invoke-virtual {v0, p1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    return-object v0

    :catch_1
    move-exception v0

    const-string/jumbo v1, "XIAOYUAN"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "getTableData: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcn/com/xy/sms/sdk/log/LogManager;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getTableDataSize(Ljava/lang/String;)I
    .locals 6

    const/4 v4, 0x5

    const/4 v3, 0x0

    :try_start_0
    iget-byte v1, p0, Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;->viewType:B

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;->c:Ljava/util/HashMap;

    if-eqz v1, :cond_7

    :goto_0
    iget-object v1, p0, Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;->c:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONArray;

    if-eqz v1, :cond_8

    :cond_0
    :goto_1
    if-nez v1, :cond_9

    :cond_1
    :goto_2
    move v1, v3

    :cond_2
    :goto_3
    return v1

    :cond_3
    iget-object v1, p0, Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;->b:Ljava/util/HashMap;

    if-eqz v1, :cond_5

    :goto_4
    iget-object v1, p0, Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;->b:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_6

    :cond_4
    :goto_5
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_3

    :cond_5
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;->b:Ljava/util/HashMap;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v1

    const-string/jumbo v2, "XIAOYUAN"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "getTableDataSize: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v1}, Lcn/com/xy/sms/sdk/log/LogManager;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_6
    :try_start_1
    invoke-virtual {p0, p1}, Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_4

    instance-of v4, v2, Ljava/util/List;

    if-eqz v4, :cond_4

    move-object v0, v2

    check-cast v0, Ljava/util/List;

    move-object v1, v0

    iget-object v2, p0, Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;->b:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_7
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;->c:Ljava/util/HashMap;

    goto :goto_0

    :cond_8
    invoke-virtual {p0, p1}, Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    instance-of v5, v2, Lorg/json/JSONArray;

    if-eqz v5, :cond_0

    move-object v0, v2

    check-cast v0, Lorg/json/JSONArray;

    move-object v1, v0

    iget-object v2, p0, Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;->c:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_9
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    if-le v1, v4, :cond_2

    move v1, v4

    goto :goto_3
.end method

.method public getTitleNo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;->titleNo:Ljava/lang/String;

    return-object v0
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 5

    const/4 v4, 0x0

    iget-byte v0, p0, Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;->viewType:B

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;->bubbleJsonObj:Lorg/json/JSONObject;

    if-nez v0, :cond_2

    :cond_0
    :goto_0
    return-object v4

    :cond_1
    iget-object v0, p0, Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;->valueMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;->valueMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_2
    iget-object v0, p0, Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;->bubbleJsonObj:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;->bubbleJsonObj:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "XIAOYUAN"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "getValue: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcn/com/xy/sms/sdk/log/LogManager;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public isDataNull(Ljava/lang/String;)Z
    .locals 2

    const/4 v1, 0x0

    iget-byte v0, p0, Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;->viewType:B

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;->c:Ljava/util/HashMap;

    if-nez v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    iget-object v0, p0, Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;->b:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    return v1

    :cond_2
    iget-object v0, p0, Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONArray;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_0

    return v1
.end method

.method public putValue(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4

    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    if-eqz p2, :cond_0

    iget-byte v0, p0, Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;->viewType:B

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;->bubbleJsonObj:Lorg/json/JSONObject;

    if-eqz v0, :cond_4

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;->bubbleJsonObj:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :cond_2
    iget-object v0, p0, Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;->valueMap:Ljava/util/Map;

    if-eqz v0, :cond_3

    :goto_1
    iget-object v0, p0, Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;->valueMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;->valueMap:Ljava/util/Map;

    goto :goto_1

    :cond_4
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;->bubbleJsonObj:Lorg/json/JSONObject;

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "XIAOYUAN"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "putValue: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcn/com/xy/sms/sdk/log/LogManager;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public setMessageBody(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;->messageBody:Ljava/lang/String;

    return-void
.end method

.method public setOriginatingAddress(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;->originatingAddress:Ljava/lang/String;

    return-void
.end method

.method public setSmsId(J)V
    .locals 1

    iput-wide p1, p0, Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;->smsId:J

    return-void
.end method

.method public setTitleNo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;->titleNo:Ljava/lang/String;

    return-void
.end method
