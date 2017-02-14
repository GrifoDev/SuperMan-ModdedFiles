.class Lcom/samsung/android/settings/WirelessSettings$1;
.super Landroid/content/BroadcastReceiver;
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
.method constructor <init>(Lcom/samsung/android/settings/WirelessSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/WirelessSettings$1;->this$0:Lcom/samsung/android/settings/WirelessSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/settings/WirelessSettings$1;->this$0:Lcom/samsung/android/settings/WirelessSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/WirelessSettings;->-get2(Lcom/samsung/android/settings/WirelessSettings;)Landroid/preference/PreferenceScreen;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "com.samsung.intent.action.QCOMHOTSWAP"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isSupportCseriesUX()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "REASON"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v2, "WirelessSettings"

    const-string/jumbo v3, "QCOMHOTSWAP_removed"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/settings/WirelessSettings$1;->this$0:Lcom/samsung/android/settings/WirelessSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/WirelessSettings;->-get5(Lcom/samsung/android/settings/WirelessSettings;)Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/WirelessSettings$1;->this$0:Lcom/samsung/android/settings/WirelessSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/WirelessSettings;->-get2(Lcom/samsung/android/settings/WirelessSettings;)Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_0
    return-void
.end method
