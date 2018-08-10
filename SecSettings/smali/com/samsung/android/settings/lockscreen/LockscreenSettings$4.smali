.class Lcom/samsung/android/settings/lockscreen/LockscreenSettings$4;
.super Ljava/lang/Object;
.source "LockscreenSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->makeAccessiblityDisablePopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/lockscreen/LockscreenSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/lockscreen/LockscreenSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings$4;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings$4;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->-wrap0(Lcom/samsung/android/settings/lockscreen/LockscreenSettings;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "aod_mode"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    const/4 v3, 0x1

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings$4;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->-wrap1(Lcom/samsung/android/settings/lockscreen/LockscreenSettings;)V

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings$4;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenSettings;

    invoke-virtual {v0}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isNotAODSettingTime(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings$4;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenSettings;

    invoke-virtual {v0}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings$4;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenSettings;

    const v2, 0x7f120194

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method
