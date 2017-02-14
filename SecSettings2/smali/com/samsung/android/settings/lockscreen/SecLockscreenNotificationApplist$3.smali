.class Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$3;
.super Ljava/lang/Object;
.source "SecLockscreenNotificationApplist.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$3;->this$0:Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$3;->this$0:Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;

    invoke-static {v0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->-wrap0(Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;)V

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$3;->this$0:Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mProgress:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$3;->this$0:Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$3;->this$0:Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$3;->this$0:Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;

    invoke-virtual {v0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$3;->this$0:Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;

    invoke-static {v0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->-get2(Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;)Landroid/preference/SwitchPreference;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$3;->this$0:Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$3;->this$0:Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;

    invoke-virtual {v1}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->isAllAppsCheckedState()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->setStatusPreference(Z)V

    return-void
.end method
