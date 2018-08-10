.class Lcom/samsung/android/settings/WirelessSettings$3;
.super Landroid/database/ContentObserver;
.source "WirelessSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/WirelessSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/WirelessSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/WirelessSettings;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/WirelessSettings$3;->this$0:Lcom/samsung/android/settings/WirelessSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/samsung/android/settings/WirelessSettings$3;->this$0:Lcom/samsung/android/settings/WirelessSettings;

    invoke-virtual {v3}, Lcom/samsung/android/settings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/samsung/android/settings/WirelessSettings$3;->this$0:Lcom/samsung/android/settings/WirelessSettings;

    invoke-virtual {v3}, Lcom/samsung/android/settings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v3, p0, Lcom/samsung/android/settings/WirelessSettings$3;->this$0:Lcom/samsung/android/settings/WirelessSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/WirelessSettings;->-get4(Lcom/samsung/android/settings/WirelessSettings;)Landroid/support/v7/preference/SecPreferenceScreen;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isSupportCseriesUX()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "airplane_mode_on"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/samsung/android/settings/WirelessSettings$3;->this$0:Lcom/samsung/android/settings/WirelessSettings;

    invoke-virtual {v3}, Lcom/samsung/android/settings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->isHideMobileNetworks(Landroid/content/Context;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/samsung/android/settings/WirelessSettings$3;->this$0:Lcom/samsung/android/settings/WirelessSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/WirelessSettings;->-get9(Lcom/samsung/android/settings/WirelessSettings;)Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/WirelessSettings$3;->this$0:Lcom/samsung/android/settings/WirelessSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/WirelessSettings;->-get4(Lcom/samsung/android/settings/WirelessSettings;)Landroid/support/v7/preference/SecPreferenceScreen;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    :cond_0
    :goto_0
    if-eqz v0, :cond_3

    const-string/jumbo v3, "airplane_mode_toggleable_radios"

    invoke-static {v0, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string/jumbo v3, "wifi"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_3

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/settings/WirelessSettings$3;->this$0:Lcom/samsung/android/settings/WirelessSettings;

    const-string/jumbo v4, "vpn_settings"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    const-string/jumbo v4, "airplane_mode_on"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_2

    const/4 v2, 0x1

    :cond_2
    invoke-virtual {v3, v2}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    :cond_3
    return-void

    :cond_4
    iget-object v3, p0, Lcom/samsung/android/settings/WirelessSettings$3;->this$0:Lcom/samsung/android/settings/WirelessSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/WirelessSettings;->-get9(Lcom/samsung/android/settings/WirelessSettings;)Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/WirelessSettings$3;->this$0:Lcom/samsung/android/settings/WirelessSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/WirelessSettings;->-get4(Lcom/samsung/android/settings/WirelessSettings;)Landroid/support/v7/preference/SecPreferenceScreen;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_0
.end method
