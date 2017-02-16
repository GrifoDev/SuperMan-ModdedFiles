.class public Lcom/cmdm/control/network/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static aK(Ljava/lang/String;)Lcom/cmdm/control/network/b;
    .locals 2
    .param p0, "extraInfo"    # Ljava/lang/String;

    .prologue
    .line 91
    sget-object v0, Lcom/cmdm/control/network/b;->cB:Lcom/cmdm/control/network/b;

    .line 92
    .local v0, "networkType":Lcom/cmdm/control/network/b;
    const-string v1, "cmwap"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 93
    sget-object v0, Lcom/cmdm/control/network/b;->cC:Lcom/cmdm/control/network/b;

    .line 99
    :cond_0
    :goto_0
    return-object v0

    .line 94
    :cond_1
    const-string v1, "cmnet"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 95
    sget-object v0, Lcom/cmdm/control/network/b;->cD:Lcom/cmdm/control/network/b;

    goto :goto_0

    .line 96
    :cond_2
    const-string v1, ""

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 97
    sget-object v0, Lcom/cmdm/control/network/b;->cF:Lcom/cmdm/control/network/b;

    goto :goto_0
.end method

.method public static g(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 22
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 23
    const-string v5, "airplane_mode_on"

    .line 21
    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 24
    .local v0, "airplaneModeSetting":I
    if-ne v0, v2, :cond_0

    .line 26
    .end local v0    # "airplaneModeSetting":I
    :goto_0
    return v2

    .restart local v0    # "airplaneModeSetting":I
    :cond_0
    move v2, v3

    .line 24
    goto :goto_0

    .line 25
    .end local v0    # "airplaneModeSetting":I
    :catch_0
    move-exception v1

    .local v1, "e":Landroid/provider/Settings$SettingNotFoundException;
    move v2, v3

    .line 26
    goto :goto_0
.end method

.method public static h(Landroid/content/Context;)Lcom/cmdm/control/network/b;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x1

    .line 39
    sget-object v5, Lcom/cmdm/control/network/b;->cB:Lcom/cmdm/control/network/b;

    .line 40
    .local v5, "networkType":Lcom/cmdm/control/network/b;
    invoke-static {p0}, Lcom/cmdm/control/network/c;->g(Landroid/content/Context;)Z

    move-result v2

    .line 42
    .local v2, "isAirplaneModeOn":Z
    if-eqz v2, :cond_0

    move-object v6, v5

    .line 86
    :goto_0
    return-object v6

    .line 46
    :cond_0
    const-string v6, "connectivity"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 45
    check-cast v3, Landroid/net/ConnectivityManager;

    .line 47
    .local v3, "mConnectivity":Landroid/net/ConnectivityManager;
    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 49
    .local v0, "activeNetInfo":Landroid/net/NetworkInfo;
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v4

    .line 50
    .local v4, "mobNetInfo":Landroid/net/NetworkInfo;
    const-string v1, ""

    .line 51
    .local v1, "extraInfo":Ljava/lang/String;
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 52
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v6

    if-ne v6, v8, :cond_1

    .line 53
    sget-object v6, Lcom/cmdm/control/network/b;->cE:Lcom/cmdm/control/network/b;

    goto :goto_0

    .line 54
    :cond_1
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v6

    if-nez v6, :cond_3

    .line 55
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 56
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 58
    :cond_2
    invoke-static {v1}, Lcom/cmdm/control/network/c;->aK(Ljava/lang/String;)Lcom/cmdm/control/network/b;

    move-result-object v5

    :cond_3
    move-object v6, v5

    .line 86
    goto :goto_0

    .line 61
    :cond_4
    if-eqz v4, :cond_3

    .line 62
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v6

    sget-object v7, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-eq v6, v7, :cond_3

    .line 63
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getType()I

    move-result v6

    if-ne v6, v8, :cond_5

    .line 64
    sget-object v6, Lcom/cmdm/control/network/b;->cE:Lcom/cmdm/control/network/b;

    goto :goto_0

    .line 65
    :cond_5
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getType()I

    move-result v6

    if-nez v6, :cond_3

    .line 66
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_6

    .line 67
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v6

    .line 68
    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 70
    :cond_6
    invoke-static {v1}, Lcom/cmdm/control/network/c;->aK(Ljava/lang/String;)Lcom/cmdm/control/network/b;

    move-result-object v5

    .line 73
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 74
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v6

    sget-object v7, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-eq v6, v7, :cond_7

    .line 75
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v6

    sget-object v7, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v6, v7, :cond_8

    .line 76
    :cond_7
    sget-object v6, Lcom/cmdm/control/network/b;->cB:Lcom/cmdm/control/network/b;

    goto/16 :goto_0

    .line 78
    :cond_8
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 79
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v6

    sget-object v7, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    if-eq v6, v7, :cond_3

    .line 80
    sget-object v6, Lcom/cmdm/control/network/b;->cD:Lcom/cmdm/control/network/b;

    goto/16 :goto_0
.end method

.method public static i(Landroid/content/Context;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 111
    :try_start_0
    invoke-static {p0}, Lcom/cmdm/control/network/c;->g(Landroid/content/Context;)Z

    move-result v2

    .line 112
    .local v2, "isAirplaneModeOn":Z
    if-eqz v2, :cond_1

    .line 139
    .end local v2    # "isAirplaneModeOn":Z
    :cond_0
    :goto_0
    return v5

    .line 117
    .restart local v2    # "isAirplaneModeOn":Z
    :cond_1
    const-string v6, "connectivity"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 116
    check-cast v3, Landroid/net/ConnectivityManager;

    .line 118
    .local v3, "manager":Landroid/net/ConnectivityManager;
    if-eqz v3, :cond_0

    .line 122
    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 123
    .local v1, "info":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    .line 127
    const-string v6, "phone"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 126
    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 128
    .local v4, "tm":Landroid/telephony/TelephonyManager;
    if-eqz v4, :cond_0

    .line 131
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v6

    const/4 v7, 0x2

    if-eq v6, v7, :cond_2

    .line 132
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getDataState()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-nez v6, :cond_0

    .line 133
    :cond_2
    if-eqz v1, :cond_0

    .line 134
    const/4 v5, 0x1

    goto :goto_0

    .line 138
    .end local v1    # "info":Landroid/net/NetworkInfo;
    .end local v2    # "isAirplaneModeOn":Z
    .end local v3    # "manager":Landroid/net/ConnectivityManager;
    .end local v4    # "tm":Landroid/telephony/TelephonyManager;
    :catch_0
    move-exception v0

    .line 139
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method
