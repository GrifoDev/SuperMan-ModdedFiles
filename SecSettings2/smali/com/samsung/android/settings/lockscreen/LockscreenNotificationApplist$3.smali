.class Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist$3;
.super Ljava/lang/Object;
.source "LockscreenNotificationApplist.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist$3;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist$3;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;

    invoke-static {v0}, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;->-wrap4(Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;)V

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist$3;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;->mProgress:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist$3;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist$3;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist$3;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;

    invoke-virtual {v0}, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist$3;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;

    invoke-virtual {v0}, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist$3;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;

    iget-object v1, v1, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;->insetdivider:Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist$3;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;

    invoke-static {v0}, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;->-get2(Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;)Landroid/preference/SwitchPreference;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist$3;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;

    invoke-static {v1}, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;->-wrap1(Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist$3;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist$3;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;

    invoke-virtual {v1}, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;->isAllAppsCheckedState()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;->setStatusPreference(Z)V

    return-void
.end method
