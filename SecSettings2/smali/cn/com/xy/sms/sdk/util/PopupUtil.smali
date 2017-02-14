.class public Lcn/com/xy/sms/sdk/util/PopupUtil;
.super Ljava/lang/Object;
.source "Unknown"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getActionCode(Ljava/lang/String;)I
    .locals 5

    const/4 v2, 0x1

    const/4 v0, 0x3

    const/4 v1, -0x1

    :try_start_0
    invoke-static {p0}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_0
    move v0, v1

    :cond_0
    :goto_1
    return v0

    :cond_1
    const-string/jumbo v3, "url"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "reply_sms"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string/jumbo v3, "reply_sms_fwd"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string/jumbo v3, "call_phone"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_2
    const/4 v0, 0x2

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_1

    :cond_4
    const-string/jumbo v3, "call"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string/jumbo v3, "reply_sms_open"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string/jumbo v2, "access_url"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "down_url"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "download"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "send_email"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "weibo_url"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v0, "map_site"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    const/4 v0, 0x4

    goto :goto_1

    :cond_6
    const-string/jumbo v0, "open_map"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string/jumbo v0, "open_map_list"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string/jumbo v0, "open_map_browser"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string/jumbo v0, "chong_zhi"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_7
    const/4 v0, 0x5

    goto/16 :goto_1

    :cond_8
    const-string/jumbo v0, "recharge"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string/jumbo v0, "zfb_recharge"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string/jumbo v0, "WEB_CHONG_ZHI"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string/jumbo v0, "WEB_RECHARGE_CHOOSE"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string/jumbo v0, "repayment"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_9
    const/4 v0, 0x6

    goto/16 :goto_1

    :cond_a
    const-string/jumbo v0, "zfb_repayment"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string/jumbo v0, "WEB_REPAYMENT"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string/jumbo v0, "WEB_REPAYMENT_CHOOSE"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string/jumbo v0, "copy_code"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    const-string/jumbo v0, "open_app"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string/jumbo v0, "time_remind"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_b
    const/16 v0, 0xa

    goto/16 :goto_1

    :cond_c
    const/16 v0, 0x8

    goto/16 :goto_1

    :cond_d
    const/16 v0, 0x9

    goto/16 :goto_1

    :cond_e
    const-string/jumbo v0, "sdk_time_remind"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string/jumbo v0, "pay_water_gas"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string/jumbo v0, "WEB_TRAFFIC_ORDER"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    :cond_f
    const/16 v0, 0xc

    goto/16 :goto_1

    :cond_10
    const/16 v0, 0xb

    goto/16 :goto_1

    :cond_11
    const-string/jumbo v0, "WEB_TRAFFIC_CHOOSE"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    const-string/jumbo v0, "WEB_PURCHASE"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    const-string/jumbo v0, "WEB_QUERY_EXPRESS_FLOW"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string/jumbo v0, "WEB_QUERY_FLIGHT_TREND"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_14

    const-string/jumbo v0, "WEB_INSTALMENT_PLAN"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_15

    const-string/jumbo v0, "WEB_TRAIN_STATION"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_16

    const-string/jumbo v0, "WEB_NEAR_SITE"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    :cond_12
    const/16 v0, 0x11

    goto/16 :goto_1

    :cond_13
    const/16 v0, 0xd

    goto/16 :goto_1

    :cond_14
    const/16 v0, 0xe

    goto/16 :goto_1

    :cond_15
    const/16 v0, 0xf

    goto/16 :goto_1

    :cond_16
    const/16 v0, 0x10

    goto/16 :goto_1

    :cond_17
    const-string/jumbo v0, "near_site"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    const-string/jumbo v0, "WEB_LIVE_CHOOSE"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_18

    const/4 v0, 0x7

    goto/16 :goto_1

    :cond_18
    const/16 v0, 0x12

    goto/16 :goto_1

    :catch_0
    move-exception v0

    const-string/jumbo v2, "XIAOYUAN"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "PopupUtil getActionCode error: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcn/com/xy/sms/sdk/log/LogManager;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method

.method public static getMsg(Ljava/lang/String;Ljava/lang/String;)Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;
    .locals 2

    invoke-static {p0}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    return-object v0

    :cond_1
    invoke-static {p1}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;

    invoke-direct {v0}, Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;-><init>()V

    invoke-virtual {v0, p0}, Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;->setOriginatingAddress(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;->setMessageBody(Ljava/lang/String;)V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;->isBgVis:Z

    return-object v0
.end method

.method public static getResultMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Landroid/content/Context;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v6, 0x0

    invoke-static {}, Lcn/com/xy/sms/sdk/ui/popu/util/ViewUtil;->getChannelType()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    const-string/jumbo v0, "Result"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    const-string/jumbo v0, "msgId"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v1, "simIndex"

    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string/jumbo v2, "simName"

    invoke-interface {p3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string/jumbo v3, "msgTime"

    invoke-interface {p3, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const-string/jumbo v4, "uri"

    invoke-interface {p3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p3}, Ljava/util/Map;->clear()V

    const-string/jumbo v5, "msgId"

    invoke-interface {p3, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "simIndex"

    invoke-interface {p3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "simName"

    invoke-interface {p3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "msgTime"

    invoke-interface {p3, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "phoneNumber"

    invoke-interface {p3, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "smsContent"

    invoke-interface {p3, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "uri"

    invoke-interface {p3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p4, v6, p3}, Lcn/com/xy/sms/sdk/util/PopupUtil;->startBusinessReceiveSmsActivity(Landroid/content/Context;Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;Ljava/util/Map;)V

    const-string/jumbo v0, "Result"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static getResultMap(ZZ)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "Result"

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "recogResult"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static getValue(I)Ljava/lang/String;
    .locals 4

    :try_start_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v0, 0x1

    :goto_0
    const/4 v2, 0x5

    if-ge v0, v2, :cond_0

    invoke-static {v0, p0}, Lcn/com/xy/sms/sdk/util/DuoquUtils;->getCode(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/com/xy/sms/sdk/util/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/com/xy/sms/sdk/util/StringUtils;->handlerAssemble2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/com/xy/sms/sdk/util/StringUtils;->decode(Ljava/lang/String;)Ljava/lang/String;
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

    const-string/jumbo v0, ""

    return-object v0
.end method

.method public static isEnterpriseSms(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/16 v6, 0x9

    const/4 v5, 0x1

    const/4 v1, 0x0

    invoke-static {p1}, Lcn/com/xy/sms/sdk/util/StringUtils;->getPhoneNumberNo86(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, " "

    const-string/jumbo v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "-"

    const-string/jumbo v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const/16 v0, 0x2b

    new-array v3, v0, [Ljava/lang/String;

    const-string/jumbo v0, "10088"

    aput-object v0, v3, v1

    const-string/jumbo v0, "10198"

    aput-object v0, v3, v5

    const-string/jumbo v0, "101901"

    aput-object v0, v3, v7

    const-string/jumbo v0, "123662"

    aput-object v0, v3, v8

    const/4 v0, 0x4

    const-string/jumbo v4, "12306"

    aput-object v4, v3, v0

    const/4 v0, 0x5

    const-string/jumbo v4, "12110110"

    aput-object v4, v3, v0

    const/4 v0, 0x6

    const-string/jumbo v4, "121100020"

    aput-object v4, v3, v0

    const/4 v0, 0x7

    const-string/jumbo v4, "11888"

    aput-object v4, v3, v0

    const/16 v0, 0x8

    const-string/jumbo v4, "11868"

    aput-object v4, v3, v0

    const-string/jumbo v0, "1186666"

    aput-object v0, v3, v6

    const/16 v0, 0xa

    const-string/jumbo v4, "118388"

    aput-object v4, v3, v0

    const/16 v0, 0xb

    const-string/jumbo v4, "118200"

    aput-object v4, v3, v0

    const/16 v0, 0xc

    const-string/jumbo v4, "118114"

    aput-object v4, v3, v0

    const/16 v0, 0xd

    const-string/jumbo v4, "118100"

    aput-object v4, v3, v0

    const/16 v0, 0xe

    const-string/jumbo v4, "118067"

    aput-object v4, v3, v0

    const/16 v0, 0xf

    const-string/jumbo v4, "11803080"

    aput-object v4, v3, v0

    const/16 v0, 0x10

    const-string/jumbo v4, "11185"

    aput-object v4, v3, v0

    const/16 v0, 0x11

    const-string/jumbo v4, "11183"

    aput-object v4, v3, v0

    const/16 v0, 0x12

    const-string/jumbo v4, "13800138000"

    aput-object v4, v3, v0

    const/16 v0, 0x13

    const-string/jumbo v4, "095583"

    aput-object v4, v3, v0

    const/16 v0, 0x14

    const-string/jumbo v4, "1252004411"

    aput-object v4, v3, v0

    const/16 v0, 0x15

    const-string/jumbo v4, "12520"

    aput-object v4, v3, v0

    const/16 v0, 0x16

    const-string/jumbo v4, "12520029"

    aput-object v4, v3, v0

    const/16 v0, 0x17

    const-string/jumbo v4, "12520035"

    aput-object v4, v3, v0

    const/16 v0, 0x18

    const-string/jumbo v4, "125200353"

    aput-object v4, v3, v0

    const/16 v0, 0x19

    const-string/jumbo v4, "125200352"

    aput-object v4, v3, v0

    const/16 v0, 0x1a

    const-string/jumbo v4, "125200304"

    aput-object v4, v3, v0

    const/16 v0, 0x1b

    const-string/jumbo v4, "125200351"

    aput-object v4, v3, v0

    const/16 v0, 0x1c

    const-string/jumbo v4, "12520010"

    aput-object v4, v3, v0

    const/16 v0, 0x1d

    const-string/jumbo v4, "12520021"

    aput-object v4, v3, v0

    const/16 v0, 0x1e

    const-string/jumbo v4, "125200303"

    aput-object v4, v3, v0

    const/16 v0, 0x1f

    const-string/jumbo v4, "1252003300000"

    aput-object v4, v3, v0

    const/16 v0, 0x20

    const-string/jumbo v4, "12520032"

    aput-object v4, v3, v0

    const/16 v0, 0x21

    const-string/jumbo v4, "125200302"

    aput-object v4, v3, v0

    const/16 v0, 0x22

    const-string/jumbo v4, "12520028"

    aput-object v4, v3, v0

    const/16 v0, 0x23

    const-string/jumbo v4, "12520038"

    aput-object v4, v3, v0

    const/16 v0, 0x24

    const-string/jumbo v4, "12520024"

    aput-object v4, v3, v0

    const/16 v0, 0x25

    const-string/jumbo v4, "12520036"

    aput-object v4, v3, v0

    const/16 v0, 0x26

    const-string/jumbo v4, "125200301"

    aput-object v4, v3, v0

    const/16 v0, 0x27

    const-string/jumbo v4, "12520027"

    aput-object v4, v3, v0

    const/16 v0, 0x28

    const-string/jumbo v4, "125200354"

    aput-object v4, v3, v0

    const/16 v0, 0x29

    const-string/jumbo v4, "1252003300000"

    aput-object v4, v3, v0

    const/16 v0, 0x2a

    const-string/jumbo v4, "053287003810"

    aput-object v4, v3, v0

    move v0, v1

    :goto_0
    const/16 v4, 0x2b

    if-ge v0, v4, :cond_2

    aget-object v4, v3, v0

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    return v5

    :cond_2
    new-array v3, v6, [Ljava/lang/String;

    const-string/jumbo v0, "96"

    aput-object v0, v3, v1

    const-string/jumbo v0, "95"

    aput-object v0, v3, v5

    const-string/jumbo v0, "106"

    aput-object v0, v3, v7

    const-string/jumbo v0, "10178"

    aput-object v0, v3, v8

    const/4 v0, 0x4

    const-string/jumbo v4, "10086"

    aput-object v4, v3, v0

    const/4 v0, 0x5

    const-string/jumbo v4, "1006"

    aput-object v4, v3, v0

    const/4 v0, 0x6

    const-string/jumbo v4, "1001"

    aput-object v4, v3, v0

    const/4 v0, 0x7

    const-string/jumbo v4, "1000"

    aput-object v4, v3, v0

    const/16 v0, 0x8

    const-string/jumbo v4, "116114"

    aput-object v4, v3, v0

    move v0, v1

    :goto_1
    if-ge v0, v6, :cond_4

    aget-object v4, v3, v0

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    return v5

    :cond_4
    const-string/jumbo v0, "12520030"

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    :cond_5
    const-string/jumbo v0, "12520036"

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    :cond_6
    return v1

    :cond_7
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v3, 0xa

    if-gt v0, v3, :cond_5

    return v5

    :cond_8
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v3, 0x13

    if-ne v0, v3, :cond_6

    const-string/jumbo v0, "12520036"

    const-string/jumbo v1, ""

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/com/xy/sms/sdk/util/StringUtils;->sj(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isPopupAble(Ljava/util/Map;Ljava/lang/String;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    const/4 v5, 0x0

    :try_start_0
    const-string/jumbo v0, "cn.com.xy.sms.sdk.ui.popu.util.ViewManger"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "isPopupAble"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/util/Map;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return v5

    :cond_0
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "XIAOYUAN"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "isPopupAble: "

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

.method public static isUseDefaultPopup(Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;Ljava/util/Map;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_0

    :try_start_0
    invoke-static {}, Lcn/com/xy/sms/sdk/constant/Constant;->isDefaultImageExist()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "view_forceToDefault_popup"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcn/com/xy/sms/sdk/constant/Constant;->getContext()Landroid/content/Context;

    invoke-static {p2}, Lcn/com/xy/sms/sdk/b/a;->a(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_0

    iput-object v0, p0, Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;->imagePathMap:Ljava/util/HashMap;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "XIAOYUAN"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "isUseDefaultPopup: "

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

.method public static parseMsgToBubbleCardResult(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JBLjava/util/Map;Z)Ljava/util/Map;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JB",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    if-eqz p8, :cond_1

    :try_start_0
    const-string/jumbo v2, "viewPartParam"

    move-object/from16 v0, p8

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static/range {p8 .. p8}, Lcn/com/xy/sms/sdk/dex/DexUtil;->handerBubbleValueMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "handerBubbleValueMap time:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long/2addr v2, v6

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const/4 v2, 0x0

    if-nez v8, :cond_2

    const-string/jumbo v3, "xiaoyuan_test"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "valueMap res faild.msgId: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v3, v6, v7}, Lcn/com/xy/sms/sdk/log/LogManager;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    move-object/from16 v0, p4

    invoke-static {p2, v0}, Lcn/com/xy/sms/sdk/db/entity/MatchCacheManager;->getMD5(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-eqz v6, :cond_f

    :goto_1
    if-nez p9, :cond_10

    :goto_2
    if-nez v2, :cond_11

    :cond_0
    invoke-static {}, Lcn/com/xy/sms/sdk/util/s;->a()V

    :goto_3
    const/4 v2, 0x0

    return-object v2

    :cond_1
    :try_start_1
    const-string/jumbo v2, "xiaoyuan_test"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "valueMap null .msgId:  "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcn/com/xy/sms/sdk/log/LogManager;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcn/com/xy/sms/sdk/util/s;->a()V

    const/4 v2, 0x0

    return-object v2

    :cond_2
    :try_start_2
    const-string/jumbo v2, "isSafeVerifyCode"

    move-object/from16 v0, p8

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    :goto_4
    const-string/jumbo v2, "title_num"

    invoke-interface {v8, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcn/com/xy/sms/sdk/b/a;->c(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "getBubleSmsTitle time:"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long v6, v10, v6

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    if-nez v4, :cond_6

    :cond_3
    const/4 v3, 0x0

    :goto_5
    invoke-static {}, Lcn/com/xy/sms/sdk/ui/popu/util/ViewUtil;->getChannelType()I

    move-result v5

    const/4 v6, 0x7

    if-ne v5, v6, :cond_7

    :cond_4
    if-nez v3, :cond_8

    :goto_6
    invoke-static {v8, v2}, Lcn/com/xy/sms/sdk/util/PopupUtil;->isPopupAble(Ljava/util/Map;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    const-string/jumbo v2, "xiaoyuan_test"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "valueMap isPopupAble faild.msgId: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcn/com/xy/sms/sdk/log/LogManager;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v2, -0x3

    :goto_7
    move-object/from16 v0, p4

    invoke-static {p2, v0}, Lcn/com/xy/sms/sdk/db/entity/MatchCacheManager;->getMD5(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcn/com/xy/sms/sdk/db/entity/MatchCacheManager;->queryDataCount(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_e

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const/16 v3, 0xe

    const-wide/32 v6, 0x1499700

    invoke-static {v3, v6, v7}, Lcn/com/xy/sms/sdk/dex/DexUtil;->getUpdateCycleByType(IJ)J

    move-result-wide v6

    const-wide/32 v10, 0x668a0

    sub-long/2addr v6, v10

    sub-long/2addr v4, v6

    const-string/jumbo v3, "xiaoyuan_test"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "\u811a\u672c\u5df2\u8bc6\u522b\u96942\u5206\u949f\u540e\u4ecd\u7136\u67e5\u4e0d\u5230\u8d44\u6e90valueMap res faild.msgId: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "bubbleLasttime="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v3, v6, v7}, Lcn/com/xy/sms/sdk/log/LogManager;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    :catch_0
    move-exception v2

    :try_start_3
    const-string/jumbo v3, "XIAOYUAN"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "parseMsgToBubbleCardResult: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcn/com/xy/sms/sdk/log/LogManager;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcn/com/xy/sms/sdk/util/s;->a()V

    goto/16 :goto_3

    :cond_5
    :try_start_4
    const-string/jumbo v2, "isSafeVerifyCode"

    const-string/jumbo v3, "isSafeVerifyCode"

    move-object/from16 v0, p8

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v8, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_4

    :catchall_0
    move-exception v2

    invoke-static {}, Lcn/com/xy/sms/sdk/util/s;->a()V

    throw v2

    :cond_6
    :try_start_5
    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    const/4 v3, 0x1

    goto/16 :goto_5

    :cond_7
    invoke-static {}, Lcn/com/xy/sms/sdk/ui/popu/util/ViewUtil;->getChannelType()I

    move-result v5

    const/16 v6, 0x11

    if-eq v5, v6, :cond_4

    if-nez v3, :cond_4

    const-string/jumbo v2, "xiaoyuan_test"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "valueMap BubleSmsTitle faild.msgId: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcn/com/xy/sms/sdk/log/LogManager;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v2, -0x2

    goto/16 :goto_7

    :cond_8
    invoke-interface {v8, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto/16 :goto_6

    :cond_9
    invoke-static {p2}, Lcn/com/xy/sms/sdk/util/StringUtils;->getPhoneNumberNo86(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v3, "viewPartParam"

    invoke-interface {v8, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_8
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v7, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_8

    :catch_1
    move-exception v2

    :try_start_7
    const-string/jumbo v3, "XIAOYUAN"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "parseMsgToBubbleCardResult: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcn/com/xy/sms/sdk/log/LogManager;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    invoke-static {}, Lcn/com/xy/sms/sdk/util/s;->a()V

    const/4 v2, 0x0

    return-object v2

    :cond_a
    const-wide/16 v4, 0x0

    :try_start_8
    move-object/from16 v0, p4

    invoke-static {v6, v0}, Lcn/com/xy/sms/sdk/db/entity/MatchCacheManager;->getMD5(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v7}, Lcn/com/xy/sms/sdk/db/entity/MatchCacheManager;->removeUselessKey(Lorg/json/JSONObject;)V

    invoke-static {v3}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_b

    move-wide v2, v4

    :goto_9
    invoke-interface {v8}, Ljava/util/Map;->clear()V

    const/4 v4, 0x1

    move/from16 v0, p7

    if-eq v0, v4, :cond_c

    const-string/jumbo v2, "CACHE_SDK_MSG_RESULT"

    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v8, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_a
    const-string/jumbo v2, "View_fdes"

    const-string/jumbo v3, "View_fdes"

    invoke-static {v7, v3}, Lcn/com/xy/sms/sdk/util/JsonUtil;->getValueFromJsonObject(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v8, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p9, :cond_d

    :goto_b
    const-string/jumbo v2, "BUBBLE_JSON_RESULT"

    invoke-interface {v8, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "parseStatu"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v8, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    invoke-static {}, Lcn/com/xy/sms/sdk/util/s;->a()V

    return-object v8

    :cond_b
    const/16 v4, 0x10

    :try_start_9
    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v9, "msg_num_md5"

    aput-object v9, v4, v5

    const/4 v5, 0x1

    aput-object v3, v4, v5

    const/4 v3, 0x2

    const-string/jumbo v5, "phonenum"

    aput-object v5, v4, v3

    const/4 v3, 0x3

    aput-object v6, v4, v3

    const/4 v3, 0x4

    const-string/jumbo v5, "scene_id"

    aput-object v5, v4, v3

    const/4 v3, 0x5

    aput-object v2, v4, v3

    const/4 v2, 0x6

    const-string/jumbo v3, "msg_id"

    aput-object v3, v4, v2

    const/4 v2, 0x7

    aput-object p1, v4, v2

    const/16 v2, 0x8

    const-string/jumbo v3, "bubble_result"

    aput-object v3, v4, v2

    const/16 v2, 0x9

    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v2

    const/16 v2, 0xa

    const-string/jumbo v3, "save_time"

    aput-object v3, v4, v2

    const/16 v2, 0xb

    invoke-static/range {p5 .. p6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v2

    const/16 v2, 0xc

    const-string/jumbo v3, "bubble_lasttime"

    aput-object v3, v4, v2

    const/16 v2, 0xd

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v2

    const/16 v2, 0xe

    const-string/jumbo v3, "urls"

    aput-object v3, v4, v2

    const/16 v2, 0xf

    const-string/jumbo v3, "url"

    invoke-virtual {v7, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v2

    const/4 v2, 0x0

    invoke-static {v2, v4}, Lcn/com/xy/sms/sdk/db/base/BaseManager;->getContentValues(Landroid/content/ContentValues;[Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcn/com/xy/sms/sdk/db/entity/MatchCacheManager;->insertOrUpdate(Landroid/content/ContentValues;I)J

    move-result-wide v2

    const-string/jumbo v4, "xiaoyuan_test"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "MatchCacheManager insertOrUpdate sdkMsgId: "

    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v9, 0x0

    invoke-static {v4, v5, v9}, Lcn/com/xy/sms/sdk/log/LogManager;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_9

    :cond_c
    const-string/jumbo v4, "CACHE_SDK_MSG_ID"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v8, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_a

    :cond_d
    invoke-static {v6, p1, v7}, Lcn/com/xy/sms/util/ParseRichBubbleManager;->addEffectiveBubbleData(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto/16 :goto_b

    :cond_e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const/16 v3, 0xe

    const-wide/32 v6, 0x1499700

    invoke-static {v3, v6, v7}, Lcn/com/xy/sms/sdk/dex/DexUtil;->getUpdateCycleByType(IJ)J

    move-result-wide v6

    const-wide/32 v10, 0x1d4c0

    sub-long/2addr v6, v10

    sub-long/2addr v4, v6

    const-string/jumbo v3, "xiaoyuan_test"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "\u811a\u672c\u5df2\u8bc6\u522b\u4f46\u662f\u627e\u4e0d\u5230\u8d44\u6e90valueMap res faild.msgId: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "bubbleLasttime="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "time="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    new-instance v7, Ljava/util/Date;

    invoke-direct {v7, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v7}, Ljava/util/Date;->toLocaleString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v3, v6, v7}, Lcn/com/xy/sms/sdk/log/LogManager;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_f
    const/16 v6, 0xe

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string/jumbo v9, "msg_num_md5"

    aput-object v9, v6, v7

    const/4 v7, 0x1

    aput-object v3, v6, v7

    const/4 v3, 0x2

    const-string/jumbo v7, "phonenum"

    aput-object v7, v6, v3

    const/4 v3, 0x3

    invoke-static {p2}, Lcn/com/xy/sms/sdk/util/StringUtils;->getPhoneNumberNo86(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    const/4 v3, 0x4

    const-string/jumbo v7, "scene_id"

    aput-object v7, v6, v3

    const/4 v3, 0x5

    const-string/jumbo v7, ""

    aput-object v7, v6, v3

    const/4 v3, 0x6

    const-string/jumbo v7, "msg_id"

    aput-object v7, v6, v3

    const/4 v3, 0x7

    aput-object p1, v6, v3

    const/16 v3, 0x8

    const-string/jumbo v7, "bubble_result"

    aput-object v7, v6, v3

    const/16 v3, 0x9

    const-string/jumbo v7, ""

    aput-object v7, v6, v3

    const/16 v3, 0xa

    const-string/jumbo v7, "save_time"

    aput-object v7, v6, v3

    const/16 v3, 0xb

    invoke-static/range {p5 .. p6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    const/16 v3, 0xc

    const-string/jumbo v7, "bubble_lasttime"

    aput-object v7, v6, v3

    const/16 v3, 0xd

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v3

    const/4 v3, 0x0

    invoke-static {v3, v6}, Lcn/com/xy/sms/sdk/db/base/BaseManager;->getContentValues(Landroid/content/ContentValues;[Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v3

    const/4 v4, 0x2

    invoke-static {v3, v4}, Lcn/com/xy/sms/sdk/db/entity/MatchCacheManager;->insertOrUpdate(Landroid/content/ContentValues;I)J

    goto/16 :goto_1

    :cond_10
    invoke-static {p2, p1}, Lcn/com/xy/sms/util/ParseRichBubbleManager;->addInvalidBubbleData(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_11
    if-eqz v8, :cond_0

    invoke-interface {v8}, Ljava/util/Map;->clear()V

    const-string/jumbo v3, "parseStatu"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v8, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    invoke-static {}, Lcn/com/xy/sms/sdk/util/s;->a()V

    return-object v8
.end method

.method public static parseMsgToPopupWindow(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v8, 0x1

    const/4 v7, 0x0

    if-nez p3, :cond_0

    invoke-static {}, Lcn/com/xy/sms/sdk/util/s;->a()V

    :goto_0
    invoke-static {v7, v8}, Lcn/com/xy/sms/sdk/util/PopupUtil;->getResultMap(ZZ)Ljava/util/Map;

    move-result-object v0

    return-object v0

    :cond_0
    :try_start_0
    const-string/jumbo v0, "title_num"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/util/PopupUtil;->getResultMap(ZZ)Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    invoke-static {}, Lcn/com/xy/sms/sdk/util/s;->a()V

    return-object v0

    :cond_1
    const/4 v1, 0x0

    :try_start_1
    sput-boolean v1, Lcn/com/xy/sms/sdk/constant/Constant;->popupDefault:Z

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/util/SceneconfigUtil;->getSceneRule(Ljava/lang/String;I)Lcn/com/xy/sms/sdk/db/entity/SceneRule;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "sceneRule123="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcn/com/xy/sms/sdk/constant/Constant;->Test:Z

    if-nez v2, :cond_3

    if-nez v1, :cond_4

    invoke-static {}, Lcn/com/xy/sms/sdk/constant/Constant;->getContext()Landroid/content/Context;

    invoke-static {v0}, Lcn/com/xy/sms/sdk/b/a;->a(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    const/4 v2, 0x1

    sput-boolean v2, Lcn/com/xy/sms/sdk/constant/Constant;->popupDefault:Z

    :cond_2
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "smsTitle ="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    if-nez v1, :cond_5

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/util/PopupUtil;->getResultMap(ZZ)Ljava/util/Map;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    invoke-static {}, Lcn/com/xy/sms/sdk/util/s;->a()V

    return-object v0

    :cond_3
    :try_start_2
    invoke-static {}, Lcn/com/xy/sms/sdk/constant/Constant;->getContext()Landroid/content/Context;

    invoke-static {v0}, Lcn/com/xy/sms/sdk/b/a;->b(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "smsTitle123="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Constant.Test="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v2, Lcn/com/xy/sms/sdk/constant/Constant;->Test:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\u5185\u5d4c\u7684\u8d44\u6e90\u6ca1\u914d"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcn/com/xy/sms/sdk/constant/Constant;->getContext()Landroid/content/Context;

    invoke-static {v0}, Lcn/com/xy/sms/sdk/b/a;->a(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    const/4 v2, 0x1

    sput-boolean v2, Lcn/com/xy/sms/sdk/constant/Constant;->popupDefault:Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_3
    const-string/jumbo v1, "XIAOYUAN"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "parseMsgToPopupWindow: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcn/com/xy/sms/sdk/log/LogManager;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcn/com/xy/sms/sdk/util/s;->a()V

    goto/16 :goto_0

    :cond_4
    :try_start_4
    invoke-static {}, Lcn/com/xy/sms/sdk/constant/Constant;->getContext()Landroid/content/Context;

    iget-object v1, v1, Lcn/com/xy/sms/sdk/db/entity/SceneRule;->Scene_page_config:Ljava/lang/String;

    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/b/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-static {}, Lcn/com/xy/sms/sdk/constant/Constant;->getContext()Landroid/content/Context;

    invoke-static {v0}, Lcn/com/xy/sms/sdk/b/a;->a(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    const/4 v2, 0x1

    sput-boolean v2, Lcn/com/xy/sms/sdk/constant/Constant;->popupDefault:Z
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-static {}, Lcn/com/xy/sms/sdk/util/s;->a()V

    throw v0

    :cond_5
    :try_start_5
    new-instance v2, Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;

    invoke-direct {v2}, Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;-><init>()V

    sget-boolean v3, Lcn/com/xy/sms/sdk/constant/Constant;->popupDefault:Z

    if-nez v3, :cond_6

    :goto_2
    iput-object p3, v2, Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;->valueMap:Ljava/util/Map;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    iget-object v3, v2, Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;->extendParamMap:Ljava/util/HashMap;

    if-eqz v3, :cond_8

    :goto_3
    iget-object v3, v2, Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;->extendParamMap:Ljava/util/HashMap;

    invoke-virtual {v3, p3}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_4
    :try_start_7
    invoke-virtual {v2, p1}, Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;->setOriginatingAddress(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;->setMessageBody(Ljava/lang/String;)V

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;->isBgVis:Z

    iput-object v1, v2, Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;->imagePathMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;->setTitleNo(Ljava/lang/String;)V

    const-string/jumbo v1, "simIndex"

    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    :goto_5
    const-string/jumbo v1, "msgTime"

    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    :goto_6
    const-string/jumbo v1, "simName"

    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v2, Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;->simName:Ljava/lang/String;

    invoke-static {p3, v0}, Lcn/com/xy/sms/sdk/dex/DexUtil;->handerValueMap(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;

    invoke-static {v2, p3, v0}, Lcn/com/xy/sms/sdk/util/PopupUtil;->isUseDefaultPopup(Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;Ljava/util/Map;Ljava/lang/String;)V

    invoke-static {p3, v0}, Lcn/com/xy/sms/sdk/util/PopupUtil;->isPopupAble(Ljava/util/Map;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-static {}, Lcn/com/xy/sms/sdk/ui/popu/util/ViewUtil;->getChannelType()I

    move-result v1

    const/4 v3, 0x5

    if-eq v1, v3, :cond_10

    :goto_7
    new-instance v1, Lcn/com/xy/sms/sdk/queue/i;

    const/4 v3, 0x4

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "titleNo"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v0, v4, v5

    invoke-direct {v1, v3, v4}, Lcn/com/xy/sms/sdk/queue/i;-><init>(I[Ljava/lang/String;)V

    invoke-static {v1}, Lcn/com/xy/sms/sdk/queue/g;->a(Lcn/com/xy/sms/sdk/queue/i;)V

    invoke-static {p0, v2, p3}, Lcn/com/xy/sms/sdk/util/PopupUtil;->startBusinessReceiveSmsActivity(Landroid/content/Context;Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;Ljava/util/Map;)V

    const/4 v0, 0x1

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/util/PopupUtil;->getResultMap(ZZ)Ljava/util/Map;
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result-object v0

    invoke-static {}, Lcn/com/xy/sms/sdk/util/s;->a()V

    return-object v0

    :cond_6
    :try_start_8
    invoke-static {}, Lcn/com/xy/sms/sdk/constant/Constant;->isDefaultImageExist()Z

    move-result v3

    if-nez v3, :cond_7

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/util/PopupUtil;->getResultMap(ZZ)Ljava/util/Map;
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result-object v0

    invoke-static {}, Lcn/com/xy/sms/sdk/util/s;->a()V

    return-object v0

    :cond_7
    :try_start_9
    const-string/jumbo v3, "view_default_popup"

    const-string/jumbo v4, "true"

    invoke-interface {p3, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_2

    :cond_8
    :try_start_a
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v2, Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;->extendParamMap:Ljava/util/HashMap;
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_3

    :catch_1
    move-exception v3

    goto/16 :goto_4

    :cond_9
    :try_start_b
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v2, Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;->simIndex:I
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_5

    :catch_2
    move-exception v1

    :try_start_c
    const-string/jumbo v3, "XIAOYUAN"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "parseMsgToPopupWindow: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Lcn/com/xy/sms/sdk/log/LogManager;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto/16 :goto_5

    :cond_a
    :try_start_d
    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iput-wide v4, v2, Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;->msgTime:J
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_3
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto/16 :goto_6

    :catch_3
    move-exception v1

    :try_start_e
    const-string/jumbo v3, "XIAOYUAN"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "parseMsgToPopupWindow: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Lcn/com/xy/sms/sdk/log/LogManager;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_6

    :cond_b
    invoke-static {v2, p3, v0}, Lcn/com/xy/sms/sdk/util/PopupUtil;->popupDefault(Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;Ljava/util/Map;Ljava/lang/String;)V

    invoke-static {}, Lcn/com/xy/sms/sdk/ui/popu/util/ViewUtil;->getChannelType()I

    move-result v1

    const/4 v3, 0x5

    if-eq v1, v3, :cond_c

    :goto_8
    invoke-static {p3, v0}, Lcn/com/xy/sms/sdk/util/PopupUtil;->isPopupAble(Ljava/util/Map;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    new-instance v1, Lcn/com/xy/sms/sdk/queue/i;

    const/4 v3, 0x4

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "titleNo"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v0, v4, v5

    invoke-direct {v1, v3, v4}, Lcn/com/xy/sms/sdk/queue/i;-><init>(I[Ljava/lang/String;)V

    invoke-static {v1}, Lcn/com/xy/sms/sdk/queue/g;->a(Lcn/com/xy/sms/sdk/queue/i;)V

    invoke-static {p0, v2, p3}, Lcn/com/xy/sms/sdk/util/PopupUtil;->startBusinessReceiveSmsActivity(Landroid/content/Context;Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;Ljava/util/Map;)V

    const/4 v0, 0x1

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/util/PopupUtil;->getResultMap(ZZ)Ljava/util/Map;
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_0
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    move-result-object v0

    invoke-static {}, Lcn/com/xy/sms/sdk/util/s;->a()V

    return-object v0

    :cond_c
    :try_start_f
    sget-boolean v1, Lcn/com/xy/sms/sdk/constant/Constant;->popupDefault:Z

    if-eqz v1, :cond_e

    :cond_d
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/util/PopupUtil;->getResultMap(ZZ)Ljava/util/Map;
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_0
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    move-result-object v0

    invoke-static {}, Lcn/com/xy/sms/sdk/util/s;->a()V

    return-object v0

    :cond_e
    :try_start_10
    const-string/jumbo v1, "view_forceToDefault_popup"

    invoke-interface {p3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    goto :goto_8

    :cond_f
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/util/PopupUtil;->getResultMap(ZZ)Ljava/util/Map;
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_0
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    move-result-object v0

    invoke-static {}, Lcn/com/xy/sms/sdk/util/s;->a()V

    return-object v0

    :cond_10
    :try_start_11
    sget-boolean v1, Lcn/com/xy/sms/sdk/constant/Constant;->popupDefault:Z

    if-eqz v1, :cond_12

    :cond_11
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/util/PopupUtil;->getResultMap(ZZ)Ljava/util/Map;
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_0
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    move-result-object v0

    invoke-static {}, Lcn/com/xy/sms/sdk/util/s;->a()V

    return-object v0

    :cond_12
    :try_start_12
    const-string/jumbo v1, "view_forceToDefault_popup"

    invoke-interface {p3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_0
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    move-result v1

    if-nez v1, :cond_11

    goto/16 :goto_7
.end method

.method public static parseMsgToSimpleBubbleResult(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JBLjava/util/Map;Z)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JB",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    if-eqz p8, :cond_2

    const-string/jumbo v0, "ADACTION"

    invoke-interface {p8, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v1, 0x1

    if-eq p7, v1, :cond_3

    if-nez v0, :cond_6

    :cond_0
    move-object v1, v2

    :goto_0
    if-nez p9, :cond_7

    :cond_1
    :goto_1
    return-object v1

    :cond_2
    const/4 v0, 0x0

    return-object v0

    :cond_3
    const-wide/16 v4, -0x1

    invoke-static {p2, p4}, Lcn/com/xy/sms/sdk/db/entity/MatchCacheManager;->getMD5(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    :goto_2
    if-eqz v0, :cond_0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v2, "CACHE_SDK_MSG_ID"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "CACHE_SDK_MSG_SIMPLE_RESULT"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    const/16 v3, 0xc

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "msg_num_md5"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    const/4 v1, 0x2

    const-string/jumbo v4, "phonenum"

    aput-object v4, v3, v1

    const/4 v1, 0x3

    invoke-static {p2}, Lcn/com/xy/sms/sdk/util/StringUtils;->getPhoneNumberNo86(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x4

    const-string/jumbo v4, "msg_id"

    aput-object v4, v3, v1

    const/4 v1, 0x5

    aput-object p1, v3, v1

    const/4 v1, 0x6

    const-string/jumbo v4, "session_reuslt"

    aput-object v4, v3, v1

    const/4 v4, 0x7

    if-eqz v0, :cond_5

    move-object v1, v0

    :goto_3
    aput-object v1, v3, v4

    const/16 v1, 0x8

    const-string/jumbo v4, "save_time"

    aput-object v4, v3, v1

    const/16 v1, 0x9

    invoke-static {p5, p6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    const/16 v1, 0xa

    const-string/jumbo v4, "session_lasttime"

    aput-object v4, v3, v1

    const/16 v1, 0xb

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x0

    invoke-static {v1, v3}, Lcn/com/xy/sms/sdk/db/base/BaseManager;->getContentValues(Landroid/content/ContentValues;[Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v1

    const/4 v3, 0x1

    invoke-static {v1, v3}, Lcn/com/xy/sms/sdk/db/entity/MatchCacheManager;->insertOrUpdate(Landroid/content/ContentValues;I)J

    move-result-wide v4

    goto :goto_2

    :cond_5
    const-string/jumbo v1, ""

    goto :goto_3

    :cond_6
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v2, "CACHE_SDK_MSG_SIMPLE_RESULT"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_7
    invoke-static {p2}, Lcn/com/xy/sms/util/ParseBubbleManager;->equalPhoneNum(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-nez v0, :cond_8

    :try_start_0
    invoke-static {p2, p1}, Lcn/com/xy/sms/util/ParseBubbleManager;->addInvalidBubbleData(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    invoke-static {p2, p1}, Lcn/com/xy/sms/util/ParseBubbleManager;->addInvalidBubbleData(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "XIAOYUAN"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "parseMsgToSimpleBubbleResult: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcn/com/xy/sms/sdk/log/LogManager;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    :cond_8
    :try_start_1
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-static {p2, p1, v2}, Lcn/com/xy/sms/util/ParseBubbleManager;->addEffectiveBubbleData(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method public static popupDefault(Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;Ljava/util/Map;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_0

    :try_start_0
    const-string/jumbo v0, "view_forceToDefault_popup"

    const-string/jumbo v1, "true"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcn/com/xy/sms/sdk/ui/popu/util/ViewUtil;->getChannelType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    :cond_2
    const-string/jumbo v0, "View_fdes"

    const-string/jumbo v1, "H103102;B502513,10236113;F904"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    const-string/jumbo v0, "view_title_name"

    const-string/jumbo v1, "title_name"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "View_viewid"

    const-string/jumbo v1, "001"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcn/com/xy/sms/sdk/constant/Constant;->isDefaultImageExist()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcn/com/xy/sms/sdk/constant/Constant;->getContext()Landroid/content/Context;

    invoke-static {p2}, Lcn/com/xy/sms/sdk/b/a;->a(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_0

    iput-object v0, p0, Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;->imagePathMap:Ljava/util/HashMap;

    return-void

    :cond_3
    invoke-static {}, Lcn/com/xy/sms/sdk/ui/popu/util/ViewUtil;->getChannelType()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2

    invoke-static {}, Lcn/com/xy/sms/sdk/ui/popu/util/ViewUtil;->getChannelType()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_4

    const-string/jumbo v0, "View_fdes"

    const-string/jumbo v1, "H101;B502,11125213;F901"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "XIAOYUAN"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "popupDefault: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcn/com/xy/sms/sdk/log/LogManager;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_4
    :try_start_1
    const-string/jumbo v0, "View_fdes"

    const-string/jumbo v1, "H113;B502,10340013;F908906"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public static startBusinessReceiveSmsActivity(Landroid/content/Context;Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\u53ef\u4ee5\u5f39\u7a97\u4e86"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    if-nez p1, :cond_0

    invoke-static {p2}, Lcn/com/xy/sms/sdk/util/PopupMsgManager;->addThirdPopupMsgData(Ljava/util/Map;)Z

    :goto_0
    new-instance v0, Lcn/com/xy/sms/sdk/queue/i;

    const/16 v1, 0xc

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "state"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "128"

    aput-object v4, v2, v3

    invoke-direct {v0, v1, v2}, Lcn/com/xy/sms/sdk/queue/i;-><init>(I[Ljava/lang/String;)V

    invoke-static {v0}, Lcn/com/xy/sms/sdk/queue/g;->a(Lcn/com/xy/sms/sdk/queue/i;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "cn.com.xy.sms.sdk.ui.popu.BusinessReceiveSmsActivity"

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_0
    iput-object p2, p1, Lcn/com/xy/sms/sdk/smsmessage/BusinessSmsMessage;->valueMap:Ljava/util/Map;

    sget-object v0, Lcn/com/xy/sms/sdk/util/PopupMsgManager;->businessSmsList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "XIAOYUAN"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "startBusinessReceiveSmsActivity: "

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

.method public static startWebActivity(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcn/com/xy/sms/sdk/util/PopupUtil;->startWebActivity(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z

    move-result v0

    return v0
.end method

.method public static startWebActivity(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v4, 0x0

    :try_start_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v0, "actionType"

    invoke-virtual {v2, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-nez p1, :cond_0

    :goto_0
    sget-object v0, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    invoke-static {v0}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    sget-object v0, Lcn/com/xy/sms/sdk/net/NetUtil;->APPVERSION:Ljava/lang/String;

    invoke-static {v0}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_2
    if-nez p4, :cond_3

    move-object v0, v1

    :goto_3
    invoke-static {v0}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string/jumbo v3, "cn.com.xy.sms.sdk.ui.popu.web.SdkWebActivity"

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :goto_4
    invoke-static {v1}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    :goto_5
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_6

    :goto_6
    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-static {p3}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    :goto_7
    const/4 v0, 0x1

    return v0

    :cond_0
    const-string/jumbo v0, "JSONDATA"

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "XIAOYUAN"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "startWebActivity: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcn/com/xy/sms/sdk/log/LogManager;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v4

    :cond_1
    :try_start_1
    const-string/jumbo v0, "channel"

    sget-object v3, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    :cond_2
    const-string/jumbo v0, "appVersion"

    sget-object v3, Lcn/com/xy/sms/sdk/net/NetUtil;->APPVERSION:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    :cond_3
    const-string/jumbo v0, "otherPackageName"

    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v1, "actionName"

    invoke-interface {p4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_3

    :cond_4
    const-string/jumbo v0, "cn.com.xy.sms.sdk.ui.popu.web.SdkWebActivity"

    invoke-virtual {v2, p0, v0}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_4

    :cond_5
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_5

    :cond_6
    const/high16 v0, 0x10000000

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_6

    :cond_7
    const/4 v0, 0x0

    invoke-static {p0, p3, v0}, Lcn/com/xy/sms/util/ParseManager;->clearHistorySmsByNum(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_7
.end method
