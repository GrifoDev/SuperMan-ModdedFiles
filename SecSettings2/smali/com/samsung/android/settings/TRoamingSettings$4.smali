.class Lcom/samsung/android/settings/TRoamingSettings$4;
.super Landroid/content/BroadcastReceiver;
.source "TRoamingSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/TRoamingSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/TRoamingSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/TRoamingSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/TRoamingSettings$4;->this$0:Lcom/samsung/android/settings/TRoamingSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "com.android.settings.ACTION_DATA_ROAMING_NEGATIVE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/TRoamingSettings$4;->this$0:Lcom/samsung/android/settings/TRoamingSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/TRoamingSettings;->-get7(Lcom/samsung/android/settings/TRoamingSettings;)Landroid/preference/SwitchPreference;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/TRoamingSettings$4;->this$0:Lcom/samsung/android/settings/TRoamingSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/TRoamingSettings;->-get7(Lcom/samsung/android/settings/TRoamingSettings;)Landroid/preference/SwitchPreference;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v1, "android.settings.POWERSAVING_DATA_SERVICE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/TRoamingSettings$4;->this$0:Lcom/samsung/android/settings/TRoamingSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/TRoamingSettings;->-get1(Lcom/samsung/android/settings/TRoamingSettings;)Landroid/preference/SwitchPreference;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/TRoamingSettings$4;->this$0:Lcom/samsung/android/settings/TRoamingSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/TRoamingSettings;->-wrap1(Lcom/samsung/android/settings/TRoamingSettings;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/TRoamingSettings$4;->this$0:Lcom/samsung/android/settings/TRoamingSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/TRoamingSettings;->-get4(Lcom/samsung/android/settings/TRoamingSettings;)Landroid/app/ProgressDialog;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/TRoamingSettings$4;->this$0:Lcom/samsung/android/settings/TRoamingSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/TRoamingSettings;->-get1(Lcom/samsung/android/settings/TRoamingSettings;)Landroid/preference/SwitchPreference;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_0
.end method
