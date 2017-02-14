.class public Lcom/cmdm/control/network/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static aK(Ljava/lang/String;)Lcom/cmdm/control/network/b;
    .locals 2

    sget-object v0, Lcom/cmdm/control/network/b;->cB:Lcom/cmdm/control/network/b;

    const-string v1, "cmwap"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v0, Lcom/cmdm/control/network/b;->cC:Lcom/cmdm/control/network/b;

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string v1, "cmnet"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v0, Lcom/cmdm/control/network/b;->cD:Lcom/cmdm/control/network/b;

    goto :goto_0

    :cond_2
    const-string v1, ""

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v0, Lcom/cmdm/control/network/b;->cF:Lcom/cmdm/control/network/b;

    goto :goto_0
.end method

.method public static g(Landroid/content/Context;)Z
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "airplane_mode_on"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-ne v0, v2, :cond_0

    :goto_0
    return v2

    :cond_0
    move v2, v3

    goto :goto_0

    :catch_0
    move-exception v1

    move v2, v3

    goto :goto_0
.end method

.method public static h(Landroid/content/Context;)Lcom/cmdm/control/network/b;
    .locals 9

    const/4 v8, 0x1

    sget-object v5, Lcom/cmdm/control/network/b;->cB:Lcom/cmdm/control/network/b;

    invoke-static {p0}, Lcom/cmdm/control/network/c;->g(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v6, v5

    :goto_0
    return-object v6

    :cond_0
    const-string v6, "connectivity"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ConnectivityManager;

    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v4

    const-string v1, ""

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v6

    if-ne v6, v8, :cond_1

    sget-object v6, Lcom/cmdm/control/network/b;->cE:Lcom/cmdm/control/network/b;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    :cond_2
    invoke-static {v1}, Lcom/cmdm/control/network/c;->aK(Ljava/lang/String;)Lcom/cmdm/control/network/b;

    move-result-object v5

    :cond_3
    move-object v6, v5

    goto :goto_0

    :cond_4
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v6

    sget-object v7, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-eq v6, v7, :cond_3

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getType()I

    move-result v6

    if-ne v6, v8, :cond_5

    sget-object v6, Lcom/cmdm/control/network/b;->cE:Lcom/cmdm/control/network/b;

    goto :goto_0

    :cond_5
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getType()I

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_6

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    :cond_6
    invoke-static {v1}, Lcom/cmdm/control/network/c;->aK(Ljava/lang/String;)Lcom/cmdm/control/network/b;

    move-result-object v5

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v6

    sget-object v7, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-eq v6, v7, :cond_7

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v6

    sget-object v7, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v6, v7, :cond_8

    :cond_7
    sget-object v6, Lcom/cmdm/control/network/b;->cB:Lcom/cmdm/control/network/b;

    goto/16 :goto_0

    :cond_8
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v6

    sget-object v7, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    if-eq v6, v7, :cond_3

    sget-object v6, Lcom/cmdm/control/network/b;->cD:Lcom/cmdm/control/network/b;

    goto/16 :goto_0
.end method

.method public static i(Landroid/content/Context;)Z
    .locals 8

    const/4 v5, 0x0

    :try_start_0
    invoke-static {p0}, Lcom/cmdm/control/network/c;->g(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v5

    :cond_1
    const-string v6, "connectivity"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ConnectivityManager;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v6, "phone"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v6

    const/4 v7, 0x2

    if-eq v6, v7, :cond_2

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getDataState()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-nez v6, :cond_0

    :cond_2
    if-eqz v1, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method
