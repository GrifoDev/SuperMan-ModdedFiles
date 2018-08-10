.class Lcom/android/server/pm/KnoxKeyguardScrimView$ScrimTimeoutHandler;
.super Landroid/os/Handler;
.source "KnoxKeyguardScrimView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/KnoxKeyguardScrimView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ScrimTimeoutHandler"
.end annotation


# static fields
.field public static final MSG_CHECK_KEYGUARD_SERVICE_RUNNING:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/KnoxKeyguardScrimView;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/KnoxKeyguardScrimView;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/KnoxKeyguardScrimView$ScrimTimeoutHandler;->this$0:Lcom/android/server/pm/KnoxKeyguardScrimView;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    const/4 v5, 0x0

    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const-string/jumbo v3, "KnoxKeyguardScrimView"

    const-string/jumbo v4, "MSG_CHECK_KEYGUARD_SERVICE_RUNNING"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/server/pm/KnoxKeyguardScrimView;->-get0()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/pm/KnoxKeyguardScrimView$ScrimTimeoutHandler;->this$0:Lcom/android/server/pm/KnoxKeyguardScrimView;

    invoke-virtual {v3, v5}, Lcom/android/server/pm/KnoxKeyguardScrimView;->isKnoxKeyguardServiceRunning(I)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    if-nez v1, :cond_2

    iget-object v3, p0, Lcom/android/server/pm/KnoxKeyguardScrimView$ScrimTimeoutHandler;->this$0:Lcom/android/server/pm/KnoxKeyguardScrimView;

    invoke-static {v3}, Lcom/android/server/pm/KnoxKeyguardScrimView;->-get1(Lcom/android/server/pm/KnoxKeyguardScrimView;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/knox/SemPersonaManager;->getSecureFolderId(Landroid/content/Context;)I

    move-result v2

    if-lez v2, :cond_2

    iget-object v3, p0, Lcom/android/server/pm/KnoxKeyguardScrimView$ScrimTimeoutHandler;->this$0:Lcom/android/server/pm/KnoxKeyguardScrimView;

    invoke-virtual {v3, v2}, Lcom/android/server/pm/KnoxKeyguardScrimView;->isKnoxKeyguardServiceRunning(I)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v1, 0x1

    :cond_2
    if-nez v1, :cond_4

    const-string/jumbo v3, "KnoxKeyguardScrimView"

    const-string/jumbo v4, "keyguard service is not running, dismiss scrim"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/pm/KnoxKeyguardScrimView$ScrimTimeoutHandler;->this$0:Lcom/android/server/pm/KnoxKeyguardScrimView;

    invoke-static {v3}, Lcom/android/server/pm/KnoxKeyguardScrimView;->-get1(Lcom/android/server/pm/KnoxKeyguardScrimView;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string/jumbo v3, "KnoxKeyguardScrimView"

    const-string/jumbo v4, "kiosk mode enabled. cannot dismiss scrim"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    iget-object v3, p0, Lcom/android/server/pm/KnoxKeyguardScrimView$ScrimTimeoutHandler;->this$0:Lcom/android/server/pm/KnoxKeyguardScrimView;

    invoke-virtual {v3}, Lcom/android/server/pm/KnoxKeyguardScrimView;->hideScrim()V

    const-string/jumbo v3, "KnoxKeyguardScrimView"

    const-string/jumbo v4, "forcefully removed scrim. switch to primary user"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v3, "android.intent.extra.user_handle"

    invoke-virtual {v0, v3, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v3, "knox.container.proxy.COMMAND_SWITCH_PROFILE"

    invoke-static {v3, v0}, Lcom/samsung/android/knox/ContainerProxy;->sendCommand(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    goto :goto_0

    :cond_4
    const-string/jumbo v3, "KnoxKeyguardScrimView"

    const-string/jumbo v4, "keyguard service is running, keep scrim"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
