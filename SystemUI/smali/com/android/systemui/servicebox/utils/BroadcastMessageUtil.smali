.class public Lcom/android/systemui/servicebox/utils/BroadcastMessageUtil;
.super Ljava/lang/Object;
.source "BroadcastMessageUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static sendFullWindowStateChanged(Landroid/content/Context;Z)V
    .locals 1

    const/4 v0, 0x2

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {p0, v0}, Lcom/android/systemui/servicebox/utils/BroadcastMessageUtil;->sendStateChanged(Landroid/content/Context;I)V

    return-void
.end method

.method public static sendStateChanged(Landroid/content/Context;I)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.android.keyguard.servicebox.STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method
