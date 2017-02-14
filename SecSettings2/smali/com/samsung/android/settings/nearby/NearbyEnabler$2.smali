.class Lcom/samsung/android/settings/nearby/NearbyEnabler$2;
.super Landroid/content/BroadcastReceiver;
.source "NearbyEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/nearby/NearbyEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/nearby/NearbyEnabler;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/nearby/NearbyEnabler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/nearby/NearbyEnabler$2;->this$0:Lcom/samsung/android/settings/nearby/NearbyEnabler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "NearbyEnabler"

    const-string/jumbo v4, "BroadcastReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, " onReceive(): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/samsung/android/settings/nearby/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "com.android.settings.allshare.SERVER_STATE_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string/jumbo v3, "START"

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    const-string/jumbo v3, "NearbyEnabler"

    const-string/jumbo v4, "mBroadcastReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/samsung/android/settings/nearby/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v2}, Lcom/samsung/android/settings/nearby/NearbyEnabler;->-set1(Z)Z

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/settings/nearby/NearbyEnabler$2;->this$0:Lcom/samsung/android/settings/nearby/NearbyEnabler;

    invoke-static {v3}, Lcom/samsung/android/settings/nearby/NearbyEnabler;->-get5(Lcom/samsung/android/settings/nearby/NearbyEnabler;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/settings/nearby/NearbyEnabler$2;->this$0:Lcom/samsung/android/settings/nearby/NearbyEnabler;

    invoke-static {v3}, Lcom/samsung/android/settings/nearby/NearbyEnabler;->-get5(Lcom/samsung/android/settings/nearby/NearbyEnabler;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result v3

    if-eq v3, v2, :cond_1

    const-string/jumbo v3, "NearbyEnabler"

    const-string/jumbo v4, "mBroadcastReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "INVALID ONOFF VALUE"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/samsung/android/settings/nearby/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/settings/nearby/NearbyEnabler$2;->this$0:Lcom/samsung/android/settings/nearby/NearbyEnabler;

    invoke-static {v3}, Lcom/samsung/android/settings/nearby/NearbyEnabler;->-get5(Lcom/samsung/android/settings/nearby/NearbyEnabler;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/settings/nearby/NearbyEnabler$2;->this$0:Lcom/samsung/android/settings/nearby/NearbyEnabler;

    invoke-static {v3}, Lcom/samsung/android/settings/nearby/NearbyEnabler;->-get5(Lcom/samsung/android/settings/nearby/NearbyEnabler;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "com.android.settings.DEVICE_NAME_CHANGED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/settings/nearby/NearbyEnabler$2;->this$0:Lcom/samsung/android/settings/nearby/NearbyEnabler;

    iget-object v4, p0, Lcom/samsung/android/settings/nearby/NearbyEnabler$2;->this$0:Lcom/samsung/android/settings/nearby/NearbyEnabler;

    invoke-static {v4}, Lcom/samsung/android/settings/nearby/NearbyEnabler;->-get2(Lcom/samsung/android/settings/nearby/NearbyEnabler;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "device_name"

    invoke-static {v4, v5}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/settings/nearby/NearbyEnabler;->-wrap0(Lcom/samsung/android/settings/nearby/NearbyEnabler;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v3, p0, Lcom/samsung/android/settings/nearby/NearbyEnabler$2;->this$0:Lcom/samsung/android/settings/nearby/NearbyEnabler;

    invoke-static {v3}, Lcom/samsung/android/settings/nearby/NearbyEnabler;->-get4(Lcom/samsung/android/settings/nearby/NearbyEnabler;)Landroid/preference/PreferenceScreen;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/settings/nearby/NearbyEnabler$2;->this$0:Lcom/samsung/android/settings/nearby/NearbyEnabler;

    invoke-static {v3}, Lcom/samsung/android/settings/nearby/NearbyEnabler;->-get4(Lcom/samsung/android/settings/nearby/NearbyEnabler;)Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/preference/PreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
