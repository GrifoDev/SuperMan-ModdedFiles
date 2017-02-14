.class Lcom/android/settings/WifiCallingSettings$1;
.super Landroid/telephony/PhoneStateListener;
.source "WifiCallingSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/WifiCallingSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/WifiCallingSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/WifiCallingSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/WifiCallingSettings$1;->this$0:Lcom/android/settings/WifiCallingSettings;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 8

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/settings/WifiCallingSettings$1;->this$0:Lcom/android/settings/WifiCallingSettings;

    invoke-virtual {v6}, Lcom/android/settings/WifiCallingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    invoke-static {v0}, Lcom/android/ims/ImsManager;->isNonTtyOrTtyOnVolteEnabled(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/settings/widget/SwitchBar;->getSwitch()Lcom/android/settings/widget/ToggleSwitch;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/settings/widget/ToggleSwitch;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_2

    move v2, v1

    :goto_0
    if-nez p1, :cond_3

    :goto_1
    invoke-virtual {v4, v1}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    iget-object v6, p0, Lcom/android/settings/WifiCallingSettings$1;->this$0:Lcom/android/settings/WifiCallingSettings;

    invoke-virtual {v6}, Lcom/android/settings/WifiCallingSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v6

    const-string/jumbo v7, "wifi_calling_mode"

    invoke-virtual {v6, v7}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    if-eqz v3, :cond_1

    if-eqz v2, :cond_0

    if-nez p1, :cond_0

    const/4 v5, 0x1

    :cond_0
    invoke-virtual {v3, v5}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    :cond_1
    return-void

    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    :cond_3
    move v1, v5

    goto :goto_1
.end method
