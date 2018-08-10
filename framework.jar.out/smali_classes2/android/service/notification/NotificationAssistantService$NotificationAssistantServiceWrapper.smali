.class Landroid/service/notification/NotificationAssistantService$NotificationAssistantServiceWrapper;
.super Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;
.source "NotificationAssistantService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/notification/NotificationAssistantService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NotificationAssistantServiceWrapper"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/service/notification/NotificationAssistantService;


# direct methods
.method private constructor <init>(Landroid/service/notification/NotificationAssistantService;)V
    .locals 0

    iput-object p1, p0, Landroid/service/notification/NotificationAssistantService$NotificationAssistantServiceWrapper;->this$0:Landroid/service/notification/NotificationAssistantService;

    invoke-direct {p0, p1}, Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;-><init>(Landroid/service/notification/NotificationListenerService;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/service/notification/NotificationAssistantService;Landroid/service/notification/NotificationAssistantService$NotificationAssistantServiceWrapper;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/service/notification/NotificationAssistantService$NotificationAssistantServiceWrapper;-><init>(Landroid/service/notification/NotificationAssistantService;)V

    return-void
.end method


# virtual methods
.method public onNotificationEnqueued(Landroid/service/notification/IStatusBarNotificationHolder;)V
    .locals 5

    :try_start_0
    invoke-interface {p1}, Landroid/service/notification/IStatusBarNotificationHolder;->get()Landroid/service/notification/StatusBarNotification;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    iput-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    iget-object v3, p0, Landroid/service/notification/NotificationAssistantService$NotificationAssistantServiceWrapper;->this$0:Landroid/service/notification/NotificationAssistantService;

    invoke-static {v3}, Landroid/service/notification/NotificationAssistantService;->-get0(Landroid/service/notification/NotificationAssistantService;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    return-void

    :catch_0
    move-exception v1

    const-string/jumbo v3, "NotificationAssistants"

    const-string/jumbo v4, "onNotificationEnqueued: Error receiving StatusBarNotification"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public onNotificationSnoozedUntilContext(Landroid/service/notification/IStatusBarNotificationHolder;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    :try_start_0
    invoke-interface {p1}, Landroid/service/notification/IStatusBarNotificationHolder;->get()Landroid/service/notification/StatusBarNotification;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    iput-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    iget-object v3, p0, Landroid/service/notification/NotificationAssistantService$NotificationAssistantServiceWrapper;->this$0:Landroid/service/notification/NotificationAssistantService;

    invoke-static {v3}, Landroid/service/notification/NotificationAssistantService;->-get0(Landroid/service/notification/NotificationAssistantService;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    return-void

    :catch_0
    move-exception v1

    const-string/jumbo v3, "NotificationAssistants"

    const-string/jumbo v4, "onNotificationSnoozed: Error receiving StatusBarNotification"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
