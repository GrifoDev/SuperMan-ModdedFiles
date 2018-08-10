.class Lcom/android/server/enterprise/shareddevice/SharedDeviceKeyguardScrimView$ScrimTimeoutHandler;
.super Landroid/os/Handler;
.source "SharedDeviceKeyguardScrimView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/shareddevice/SharedDeviceKeyguardScrimView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ScrimTimeoutHandler"
.end annotation


# static fields
.field public static final MSG_CHECK_KEYGUARD_SERVICE_RUNNING:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/shareddevice/SharedDeviceKeyguardScrimView;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/shareddevice/SharedDeviceKeyguardScrimView;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/shareddevice/SharedDeviceKeyguardScrimView$ScrimTimeoutHandler;->this$0:Lcom/android/server/enterprise/shareddevice/SharedDeviceKeyguardScrimView;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const-string/jumbo v1, "SharedDeviceKeyguardScrimView"

    const-string/jumbo v2, "MSG_CHECK_KEYGUARD_SERVICE_RUNNING"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/enterprise/shareddevice/SharedDeviceKeyguardScrimView$ScrimTimeoutHandler;->this$0:Lcom/android/server/enterprise/shareddevice/SharedDeviceKeyguardScrimView;

    iget-boolean v1, v1, Lcom/android/server/enterprise/shareddevice/SharedDeviceKeyguardScrimView;->isScrimVisible:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/enterprise/shareddevice/SharedDeviceKeyguardScrimView$ScrimTimeoutHandler;->this$0:Lcom/android/server/enterprise/shareddevice/SharedDeviceKeyguardScrimView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/enterprise/shareddevice/SharedDeviceKeyguardScrimView;->isSharedDeviceKeyguardServiceRunning(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    if-nez v0, :cond_2

    const-string/jumbo v1, "SharedDeviceKeyguardScrimView"

    const-string/jumbo v2, "keyguard service is not running, dismiss scrim"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/enterprise/shareddevice/SharedDeviceKeyguardScrimView$ScrimTimeoutHandler;->this$0:Lcom/android/server/enterprise/shareddevice/SharedDeviceKeyguardScrimView;

    invoke-virtual {v1}, Lcom/android/server/enterprise/shareddevice/SharedDeviceKeyguardScrimView;->hideScrim()V

    const-string/jumbo v1, "SharedDeviceKeyguardScrimView"

    const-string/jumbo v2, "forcefully removed scrim. switch to primary user"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string/jumbo v1, "SharedDeviceKeyguardScrimView"

    const-string/jumbo v2, "keyguard service is running, keep scrim"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
