.class Lcom/samsung/android/settings/safetycare/SafetyCareSettings$5;
.super Landroid/content/BroadcastReceiver;
.source "SafetyCareSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/safetycare/SafetyCareSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/safetycare/SafetyCareSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/safetycare/SafetyCareSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/safetycare/SafetyCareSettings$5;->this$0:Lcom/samsung/android/settings/safetycare/SafetyCareSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    const/4 v2, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "SafetyCareSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onReceive() : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "com.samsung.settings.DIAGNOSTIC_INFO_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v3, "diagnostic_info_changed"

    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v3, p0, Lcom/samsung/android/settings/safetycare/SafetyCareSettings$5;->this$0:Lcom/samsung/android/settings/safetycare/SafetyCareSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->-get2(Lcom/samsung/android/settings/safetycare/SafetyCareSettings;)Landroid/preference/SwitchPreference;

    move-result-object v3

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {v3, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_1
    return-void
.end method
