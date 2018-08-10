.class Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList$1;
.super Ljava/lang/Object;
.source "LockNotificationChannelList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList$1;->this$0:Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList$1;->this$0:Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;

    invoke-virtual {v0}, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList$1;->this$0:Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;

    invoke-static {v0}, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->-wrap2(Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;)V

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList$1;->this$0:Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;

    invoke-static {v0}, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->-get11(Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList$1;->this$0:Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;

    invoke-static {v0}, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->-get11(Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList$1;->this$0:Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;

    invoke-static {v0}, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->-get11(Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList$1;->this$0:Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;

    invoke-static {v0}, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->-get3(Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList$1;->this$0:Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;

    invoke-static {v1}, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->-wrap1(Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList$1;->this$0:Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;

    invoke-static {v0}, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->-get7(Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getPendingState()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList$1;->this$0:Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;

    invoke-static {v0}, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->-get7(Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setPendingState(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList$1;->this$0:Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;

    invoke-virtual {v0}, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->executeBixby()V

    :cond_2
    return-void
.end method
