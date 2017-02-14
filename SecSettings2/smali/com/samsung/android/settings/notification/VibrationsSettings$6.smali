.class Lcom/samsung/android/settings/notification/VibrationsSettings$6;
.super Landroid/content/BroadcastReceiver;
.source "VibrationsSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/notification/VibrationsSettings;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/notification/VibrationsSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/notification/VibrationsSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/notification/VibrationsSettings$6;->this$0:Lcom/samsung/android/settings/notification/VibrationsSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/samsung/android/settings/notification/VibrationsSettings;->-get0()Landroid/media/AudioManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v1

    const/4 v2, 0x2

    if-ne v2, v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/notification/VibrationsSettings$6;->this$0:Lcom/samsung/android/settings/notification/VibrationsSettings;

    const-string/jumbo v2, "vibrate_when_ringing"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/notification/VibrationsSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/notification/VibrationsSettings$6;->this$0:Lcom/samsung/android/settings/notification/VibrationsSettings;

    const-string/jumbo v2, "vibrate_when_ringing"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/notification/VibrationsSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/notification/VibrationsSettings$6;->this$0:Lcom/samsung/android/settings/notification/VibrationsSettings;

    const-string/jumbo v2, "vibrate_when_ringing"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/notification/VibrationsSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/notification/VibrationsSettings$6;->this$0:Lcom/samsung/android/settings/notification/VibrationsSettings;

    const-string/jumbo v2, "vibrate_when_ringing"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/notification/VibrationsSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    goto :goto_0
.end method
