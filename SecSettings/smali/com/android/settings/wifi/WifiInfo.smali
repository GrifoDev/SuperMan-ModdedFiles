.class public Lcom/android/settings/wifi/WifiInfo;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "WifiInfo.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x59

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f15011d

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiInfo;->addPreferencesFromResource(I)V

    return-void
.end method
