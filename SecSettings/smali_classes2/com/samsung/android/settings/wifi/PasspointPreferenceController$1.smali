.class Lcom/samsung/android/settings/wifi/PasspointPreferenceController$1;
.super Landroid/content/BroadcastReceiver;
.source "PasspointPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/PasspointPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/PasspointPreferenceController;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/PasspointPreferenceController;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/PasspointPreferenceController$1;->this$0:Lcom/samsung/android/settings/wifi/PasspointPreferenceController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const/4 v4, 0x1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "wifi_state"

    const/4 v3, 0x4

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/PasspointPreferenceController$1;->this$0:Lcom/samsung/android/settings/wifi/PasspointPreferenceController;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/PasspointPreferenceController;->-get0(Lcom/samsung/android/settings/wifi/PasspointPreferenceController;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/PasspointPreferenceController$1;->this$0:Lcom/samsung/android/settings/wifi/PasspointPreferenceController;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/PasspointPreferenceController;->-get0(Lcom/samsung/android/settings/wifi/PasspointPreferenceController;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/support/v14/preference/SecSwitchPreference;->setEnabled(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-ne v1, v4, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/PasspointPreferenceController$1;->this$0:Lcom/samsung/android/settings/wifi/PasspointPreferenceController;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/PasspointPreferenceController;->-get0(Lcom/samsung/android/settings/wifi/PasspointPreferenceController;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/PasspointPreferenceController$1;->this$0:Lcom/samsung/android/settings/wifi/PasspointPreferenceController;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/PasspointPreferenceController;->-get0(Lcom/samsung/android/settings/wifi/PasspointPreferenceController;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/support/v14/preference/SecSwitchPreference;->setEnabled(Z)V

    goto :goto_0
.end method
