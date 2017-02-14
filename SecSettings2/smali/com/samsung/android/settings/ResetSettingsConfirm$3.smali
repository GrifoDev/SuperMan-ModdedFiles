.class Lcom/samsung/android/settings/ResetSettingsConfirm$3;
.super Landroid/content/BroadcastReceiver;
.source "ResetSettingsConfirm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/ResetSettingsConfirm;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/ResetSettingsConfirm;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/ResetSettingsConfirm;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/ResetSettingsConfirm$3;->this$0:Lcom/samsung/android/settings/ResetSettingsConfirm;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const/4 v4, 0x1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "com.samsung.intent.action.SETTINGS_SOFT_RESET_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/ResetSettingsConfirm$3;->this$0:Lcom/samsung/android/settings/ResetSettingsConfirm;

    invoke-static {v0, v4}, Lcom/samsung/android/settings/ResetSettingsConfirm;->-set0(Lcom/samsung/android/settings/ResetSettingsConfirm;Z)Z

    iget-object v0, p0, Lcom/samsung/android/settings/ResetSettingsConfirm$3;->this$0:Lcom/samsung/android/settings/ResetSettingsConfirm;

    new-instance v1, Lcom/samsung/android/settings/ResetSettingsConfirm$ResetSettingsTask;

    iget-object v2, p0, Lcom/samsung/android/settings/ResetSettingsConfirm$3;->this$0:Lcom/samsung/android/settings/ResetSettingsConfirm;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/settings/ResetSettingsConfirm$ResetSettingsTask;-><init>(Lcom/samsung/android/settings/ResetSettingsConfirm;Lcom/samsung/android/settings/ResetSettingsConfirm$ResetSettingsTask;)V

    iput-object v1, v0, Lcom/samsung/android/settings/ResetSettingsConfirm;->resetTask:Lcom/samsung/android/settings/ResetSettingsConfirm$ResetSettingsTask;

    iget-object v0, p0, Lcom/samsung/android/settings/ResetSettingsConfirm$3;->this$0:Lcom/samsung/android/settings/ResetSettingsConfirm;

    iget-object v0, v0, Lcom/samsung/android/settings/ResetSettingsConfirm;->resetTask:Lcom/samsung/android/settings/ResetSettingsConfirm$ResetSettingsTask;

    new-array v1, v4, [Landroid/content/Context;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/ResetSettingsConfirm$ResetSettingsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method
