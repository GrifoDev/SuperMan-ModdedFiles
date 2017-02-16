.class public Lcom/android/incallui/util/TelecomCallUtil;
.super Ljava/lang/Object;
.source "TelecomCallUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getHandle(Landroid/telecom/Call;)Landroid/net/Uri;
    .locals 1
    .param p0, "call"    # Landroid/telecom/Call;

    .prologue
    .line 51
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Call$Details;->getHandle()Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method public static getNumber(Landroid/telecom/Call;)Ljava/lang/String;
    .locals 3
    .param p0, "call"    # Landroid/telecom/Call;

    .prologue
    const/4 v1, 0x0

    .line 39
    if-nez p0, :cond_1

    .line 47
    :cond_0
    :goto_0
    return-object v1

    .line 42
    :cond_1
    invoke-virtual {p0}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telecom/Call$Details;->getGatewayInfo()Landroid/telecom/GatewayInfo;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 43
    invoke-virtual {p0}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telecom/Call$Details;->getGatewayInfo()Landroid/telecom/GatewayInfo;

    move-result-object v1

    .line 44
    invoke-virtual {v1}, Landroid/telecom/GatewayInfo;->getOriginalAddress()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 46
    :cond_2
    invoke-static {p0}, Lcom/android/incallui/util/TelecomCallUtil;->getHandle(Landroid/telecom/Call;)Landroid/net/Uri;

    move-result-object v0

    .line 47
    .local v0, "handle":Landroid/net/Uri;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static isEmergencyCall(Landroid/telecom/Call;)Z
    .locals 2
    .param p0, "call"    # Landroid/telecom/Call;

    .prologue
    .line 33
    invoke-virtual {p0}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telecom/Call$Details;->getHandle()Landroid/net/Uri;

    move-result-object v0

    .line 34
    .local v0, "handle":Landroid/net/Uri;
    if-nez v0, :cond_0

    const-string v1, ""

    :goto_0
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 35
    :cond_0
    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
