.class Lcom/samsung/android/settings/WirelessSettings$11;
.super Ljava/lang/Object;
.source "WirelessSettings.java"

# interfaces
.implements Lcom/samsung/android/settings/networklock/NetworkLockUtils$OnLockStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/WirelessSettings;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/WirelessSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/WirelessSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/WirelessSettings$11;->this$0:Lcom/samsung/android/settings/WirelessSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChangeLockStatus(Z)V
    .locals 3

    const/4 v2, 0x0

    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/WirelessSettings$11;->this$0:Lcom/samsung/android/settings/WirelessSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/WirelessSettings;->-get5(Lcom/samsung/android/settings/WirelessSettings;)Landroid/support/v7/preference/SecPreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/WirelessSettings$11;->this$0:Lcom/samsung/android/settings/WirelessSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/WirelessSettings;->-get9(Lcom/samsung/android/settings/WirelessSettings;)Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/WirelessSettings$11;->this$0:Lcom/samsung/android/settings/WirelessSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/WirelessSettings;->-get5(Lcom/samsung/android/settings/WirelessSettings;)Landroid/support/v7/preference/SecPreferenceScreen;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    iget-object v0, p0, Lcom/samsung/android/settings/WirelessSettings$11;->this$0:Lcom/samsung/android/settings/WirelessSettings;

    invoke-static {v0, v2}, Lcom/samsung/android/settings/WirelessSettings;->-set1(Lcom/samsung/android/settings/WirelessSettings;Landroid/support/v7/preference/SecPreferenceScreen;)Landroid/support/v7/preference/SecPreferenceScreen;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/WirelessSettings$11;->this$0:Lcom/samsung/android/settings/WirelessSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/WirelessSettings;->-get0(Lcom/samsung/android/settings/WirelessSettings;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/networklock/NetworkLockUtils;->setVzwNetworkUnLocked(Landroid/content/Context;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/WirelessSettings$11;->this$0:Lcom/samsung/android/settings/WirelessSettings;

    const-string/jumbo v1, "network_unlock"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/WirelessSettings$11;->this$0:Lcom/samsung/android/settings/WirelessSettings;

    const-string/jumbo v1, "network_unlock"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    goto :goto_0
.end method
