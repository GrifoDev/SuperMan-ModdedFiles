.class public Lcom/android/settings/wifi/WifiApEnabler;
.super Ljava/lang/Object;
.source "WifiApEnabler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/WifiApEnabler$1;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

.field private final mOriginalSummary:Ljava/lang/CharSequence;

.field private final mSwitch:Landroid/support/v14/preference/SwitchPreference;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiRegexs:[Ljava/lang/String;


# direct methods
.method static synthetic -wrap0(Lcom/android/settings/wifi/WifiApEnabler;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApEnabler;->enableWifiSwitch()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/settings/wifi/WifiApEnabler;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/WifiApEnabler;->handleWifiApStateChanged(II)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/settings/wifi/WifiApEnabler;[Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/wifi/WifiApEnabler;->updateTetherState([Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method private enableWifiSwitch()V
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/android/settings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "airplane_mode_on"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_0

    move v0, v2

    :goto_0
    if-nez v0, :cond_2

    iget-object v3, p0, Lcom/android/settings/wifi/WifiApEnabler;->mSwitch:Landroid/support/v14/preference/SwitchPreference;

    iget-object v4, p0, Lcom/android/settings/wifi/WifiApEnabler;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    invoke-virtual {v4}, Lcom/android/settings/datausage/DataSaverBackend;->isDataSaverEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    :goto_1
    invoke-virtual {v3, v1}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    :goto_2
    return-void

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApEnabler;->mSwitch:Landroid/support/v14/preference/SwitchPreference;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiApEnabler;->mOriginalSummary:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/support/v14/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApEnabler;->mSwitch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v2, v1}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_2
.end method

.method private handleWifiApStateChanged(II)V
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApEnabler;->mSwitch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v2, v0}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    if-ne p2, v1, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mSwitch:Landroid/support/v14/preference/SwitchPreference;

    const v1, 0x7f0b122e

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setSummary(I)V

    :goto_0
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApEnabler;->enableWifiSwitch()V

    :goto_1
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApEnabler;->mSwitch:Landroid/support/v14/preference/SwitchPreference;

    const v2, 0x7f0b12d3

    invoke-virtual {v1, v2}, Landroid/support/v14/preference/SwitchPreference;->setSummary(I)V

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApEnabler;->mSwitch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, v0}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_1

    :pswitch_1
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApEnabler;->mSwitch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v2, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApEnabler;->mSwitch:Landroid/support/v14/preference/SwitchPreference;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiApEnabler;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    invoke-virtual {v3}, Lcom/android/settings/datausage/DataSaverBackend;->isDataSaverEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_2
    invoke-virtual {v2, v0}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_1

    :cond_0
    move v0, v1

    goto :goto_2

    :pswitch_2
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApEnabler;->mSwitch:Landroid/support/v14/preference/SwitchPreference;

    const v2, 0x7f0b12d4

    invoke-virtual {v1, v2}, Landroid/support/v14/preference/SwitchPreference;->setSummary(I)V

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApEnabler;->mSwitch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, v0}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApEnabler;->mSwitch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, v0}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_1

    :pswitch_3
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApEnabler;->mSwitch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, v0}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mSwitch:Landroid/support/v14/preference/SwitchPreference;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApEnabler;->mOriginalSummary:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApEnabler;->enableWifiSwitch()V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mSwitch:Landroid/support/v14/preference/SwitchPreference;

    const v1, 0x7f0b122d

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setSummary(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateTetherState([Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 12

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    array-length v8, p2

    move v7, v6

    :goto_0
    if-ge v7, v8, :cond_2

    aget-object v0, p2, v7

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    iget-object v9, p0, Lcom/android/settings/wifi/WifiApEnabler;->mWifiRegexs:[Ljava/lang/String;

    const/4 v6, 0x0

    array-length v10, v9

    :goto_1
    if-ge v6, v10, :cond_1

    aget-object v1, v9, v6

    invoke-virtual {v2, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/4 v5, 0x1

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v6, v7, 0x1

    move v7, v6

    goto :goto_0

    :cond_2
    const/4 v6, 0x0

    array-length v8, p3

    move v7, v6

    :goto_2
    if-ge v7, v8, :cond_5

    aget-object v0, p3, v7

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    iget-object v9, p0, Lcom/android/settings/wifi/WifiApEnabler;->mWifiRegexs:[Ljava/lang/String;

    const/4 v6, 0x0

    array-length v10, v9

    :goto_3
    if-ge v6, v10, :cond_4

    aget-object v1, v9, v6

    invoke-virtual {v2, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    const/4 v4, 0x1

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_4
    add-int/lit8 v6, v7, 0x1

    move v7, v6

    goto :goto_2

    :cond_5
    if-eqz v5, :cond_7

    iget-object v6, p0, Lcom/android/settings/wifi/WifiApEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/WifiApEnabler;->updateConfigSummary(Landroid/net/wifi/WifiConfiguration;)V

    :cond_6
    :goto_4
    return-void

    :cond_7
    if-eqz v4, :cond_6

    iget-object v6, p0, Lcom/android/settings/wifi/WifiApEnabler;->mSwitch:Landroid/support/v14/preference/SwitchPreference;

    const v7, 0x7f0b122d

    invoke-virtual {v6, v7}, Landroid/support/v14/preference/SwitchPreference;->setSummary(I)V

    goto :goto_4
.end method


# virtual methods
.method public updateConfigSummary(Landroid/net/wifi/WifiConfiguration;)V
    .locals 5

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    const v2, 0x10403e9

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApEnabler;->mSwitch:Landroid/support/v14/preference/SwitchPreference;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    const v3, 0x7f0b0e0c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    if-nez p1, :cond_0

    :goto_0
    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v14/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto :goto_0
.end method
