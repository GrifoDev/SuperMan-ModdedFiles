.class Lcom/samsung/android/settings/wifi/AutoWifiPreferenceController$1;
.super Landroid/content/BroadcastReceiver;
.source "AutoWifiPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/AutoWifiPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/AutoWifiPreferenceController;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/AutoWifiPreferenceController;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/AutoWifiPreferenceController$1;->this$0:Lcom/samsung/android/settings/wifi/AutoWifiPreferenceController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/AutoWifiPreferenceController$1;->this$0:Lcom/samsung/android/settings/wifi/AutoWifiPreferenceController;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/AutoWifiPreferenceController$1;->this$0:Lcom/samsung/android/settings/wifi/AutoWifiPreferenceController;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/AutoWifiPreferenceController;->-get0(Lcom/samsung/android/settings/wifi/AutoWifiPreferenceController;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/wifi/AutoWifiPreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V

    :cond_1
    return-void
.end method
