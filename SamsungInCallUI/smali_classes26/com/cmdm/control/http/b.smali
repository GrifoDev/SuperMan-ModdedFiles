.class public Lcom/cmdm/control/http/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static bJ:Lcom/cmdm/control/http/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x0

    sput-object v0, Lcom/cmdm/control/http/b;->bJ:Lcom/cmdm/control/http/b;

    .line 16
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static V(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "loginType"    # Ljava/lang/String;
    .param p1, "signature"    # Ljava/lang/String;

    .prologue
    .line 125
    if-eqz p0, :cond_1

    const-string v0, "1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "JSIF3 "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 140
    :cond_0
    :goto_0
    return-object p1

    .line 127
    :cond_1
    if-eqz p0, :cond_2

    const-string v0, "2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SMS "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 129
    :cond_2
    if-eqz p0, :cond_3

    const-string v0, "3"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ZQPX "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 131
    :cond_3
    if-eqz p0, :cond_4

    const-string v0, "4"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CMWAP "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 133
    :cond_4
    if-eqz p0, :cond_5

    const-string v0, "5"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ZSIMSI "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 135
    :cond_5
    if-eqz p0, :cond_6

    const-string v0, "6"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ZSPWD "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    .line 137
    :cond_6
    if-eqz p0, :cond_0

    const-string v0, "7"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "JDSDK "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0
.end method

.method public static bg()Lcom/cmdm/control/http/b;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/cmdm/control/http/b;->bJ:Lcom/cmdm/control/http/b;

    if-nez v0, :cond_0

    .line 22
    new-instance v0, Lcom/cmdm/control/http/b;

    invoke-direct {v0}, Lcom/cmdm/control/http/b;-><init>()V

    sput-object v0, Lcom/cmdm/control/http/b;->bJ:Lcom/cmdm/control/http/b;

    .line 25
    :cond_0
    sget-object v0, Lcom/cmdm/control/http/b;->bJ:Lcom/cmdm/control/http/b;

    return-object v0
.end method

.method public static bh()Ljava/lang/String;
    .locals 3

    .prologue
    .line 202
    :try_start_0
    const-string v2, "http.agent"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 207
    :goto_0
    return-object v1

    .line 204
    :catch_0
    move-exception v0

    .line 205
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 207
    const-string v1, ""

    goto :goto_0
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 150
    invoke-static {p0}, Lcom/cmdm/control/util/client/Setting;->initSetting(Landroid/content/Context;)V

    .line 151
    invoke-static {}, Lcom/cmdm/control/util/client/Setting;->loadAppType()I

    move-result v0

    .line 152
    .local v0, "appType":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 153
    const-string v1, "gaoyang"

    .line 167
    :goto_0
    return-object v1

    .line 154
    :cond_0
    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-ne v0, v1, :cond_2

    .line 155
    :cond_1
    const-string v1, "zqpx"

    goto :goto_0

    .line 156
    :cond_2
    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 157
    const-string v1, "htxl"

    goto :goto_0

    .line 158
    :cond_3
    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    .line 159
    const-string v1, "htxlzs"

    goto :goto_0

    .line 160
    :cond_4
    const/4 v1, 0x5

    if-ne v0, v1, :cond_5

    .line 161
    const-string v1, "hdm"

    goto :goto_0

    .line 162
    :cond_5
    const/4 v1, 0x7

    if-ne v0, v1, :cond_6

    .line 163
    const-string v1, "zqpx_feixin"

    goto :goto_0

    .line 164
    :cond_6
    const/16 v1, 0x8

    if-ne v0, v1, :cond_7

    .line 165
    const-string v1, "txx"

    goto :goto_0

    .line 167
    :cond_7
    const-string v1, "gaoyang"

    goto :goto_0
.end method

.method public static d(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 179
    const-string v1, "3"

    .line 180
    .local v1, "str":Ljava/lang/String;
    invoke-static {p0}, Lcom/cmdm/control/util/client/Setting;->setNetWorkType(Landroid/content/Context;)V

    .line 181
    sget-object v0, Lcom/cmdm/control/network/b;->cB:Lcom/cmdm/control/network/b;

    .line 182
    .local v0, "netWorkType":Lcom/cmdm/control/network/b;
    invoke-static {}, Lcom/cmdm/control/network/a;->bF()Lcom/cmdm/control/network/b;

    move-result-object v0

    .line 183
    sget-object v2, Lcom/cmdm/control/network/b;->cE:Lcom/cmdm/control/network/b;

    invoke-virtual {v0, v2}, Lcom/cmdm/control/network/b;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 184
    const-string v1, "3"

    .line 192
    :goto_0
    return-object v1

    .line 185
    :cond_0
    sget-object v2, Lcom/cmdm/control/network/b;->cD:Lcom/cmdm/control/network/b;

    invoke-virtual {v0, v2}, Lcom/cmdm/control/network/b;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 186
    const-string v1, "2"

    goto :goto_0

    .line 187
    :cond_1
    sget-object v2, Lcom/cmdm/control/network/b;->cC:Lcom/cmdm/control/network/b;

    invoke-virtual {v0, v2}, Lcom/cmdm/control/network/b;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 188
    const-string v1, "1"

    goto :goto_0

    .line 190
    :cond_2
    const-string v1, "4"

    goto :goto_0
.end method

.method public static e(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 218
    .line 219
    :try_start_0
    const-string v4, "phone"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 218
    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 220
    .local v3, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 221
    .local v0, "DeviceId":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 222
    :cond_0
    const/16 v4, 0xf

    invoke-static {v4}, Lcom/cmdm/control/util/mobile/UUIDUtils;->getUniqueId(I)Ljava/lang/String;

    move-result-object v0

    .line 224
    :cond_1
    if-eqz v0, :cond_2

    const-string v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 225
    invoke-static {v0}, Lcom/cmdm/control/util/encry/Signature;->getIMEISignature(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 231
    .end local v0    # "DeviceId":Ljava/lang/String;
    .end local v3    # "tm":Landroid/telephony/TelephonyManager;
    :goto_0
    return-object v2

    .line 228
    :catch_0
    move-exception v1

    .line 229
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 231
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    const-string v2, ""

    goto :goto_0
.end method

.method public static getIMSI(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 171
    invoke-static {p0}, Lcom/cmdm/control/util/BitmapUtils;->getIMSI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 172
    .local v0, "imsi":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 173
    invoke-static {v0}, Lcom/cmdm/control/util/encry/Signature;->getIMEISignature(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 175
    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method


# virtual methods
.method public e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;
    .locals 3
    .param p1, "msisdn"    # Ljava/lang/String;
    .param p2, "signature"    # Ljava/lang/String;
    .param p3, "contentLength"    # Ljava/lang/String;
    .param p4, "contentType"    # Ljava/lang/String;
    .param p5, "ifNoneMatch"    # Ljava/lang/String;
    .param p6, "host"    # Ljava/lang/String;
    .param p7, "loginType"    # Ljava/lang/String;
    .param p8, "serverAddress"    # I
    .param p9, "context"    # Landroid/content/Context;
    .param p10, "clientid"    # Ljava/lang/String;
    .param p11, "clientKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 87
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 88
    .local v0, "mHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "x-jsif-date"

    invoke-static {}, Lcom/cmdm/control/util/UTCCode;->getUTC()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    const-string v1, "x-jsif-up-calling-line-id"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    const-string v1, "Date"

    invoke-static {}, Lcom/cmdm/control/util/UTCCode;->getUTC()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    if-eqz p2, :cond_0

    const-string v1, ""

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 92
    const-string v1, "Authorization"

    invoke-static {p7, p2}, Lcom/cmdm/control/http/b;->V(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    :cond_0
    if-eqz p10, :cond_1

    const-string v1, ""

    invoke-virtual {p10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 95
    const-string v1, "clientId"

    invoke-virtual {v0, v1, p10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    :cond_1
    if-eqz p11, :cond_2

    const-string v1, ""

    invoke-virtual {p11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 98
    const-string v1, "clientKey"

    invoke-virtual {v0, v1, p11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    :cond_2
    const-string v1, "Content-Type"

    invoke-virtual {v0, v1, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    const-string v1, "If-None-Match"

    invoke-virtual {v0, v1, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    const-string v1, "Host"

    invoke-static {p8}, Lcom/cmdm/control/http/d;->x(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    const-string v1, "Accept"

    const-string v2, "application/xml"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    const-string v1, "User-Agent"

    invoke-static {}, Lcom/cmdm/control/http/b;->bh()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    const-string v1, "x-jsif-api-verison"

    sget-object v2, Lcom/cmdm/control/util/client/AppConfigDP;->api:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    const-string v1, "x-umid"

    invoke-static {p9}, Lcom/cmdm/control/http/b;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    const-string v1, "x-corp"

    invoke-static {p9}, Lcom/cmdm/control/http/b;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    const-string v1, "x-channel"

    invoke-static {}, Lcom/cmdm/control/util/client/Setting;->loadChannelID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    const-string v1, "x-net-type"

    invoke-static {p9}, Lcom/cmdm/control/http/b;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    const-string v1, "x-usid"

    invoke-static {p9}, Lcom/cmdm/control/http/b;->getIMSI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    return-object v0
.end method
