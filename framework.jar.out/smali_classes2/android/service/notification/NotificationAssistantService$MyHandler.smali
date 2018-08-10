.class final Landroid/service/notification/NotificationAssistantService$MyHandler;
.super Landroid/os/Handler;
.source "NotificationAssistantService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/notification/NotificationAssistantService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MyHandler"
.end annotation


# static fields
.field public static final MSG_ON_NOTIFICATION_ENQUEUED:I = 0x1

.field public static final MSG_ON_NOTIFICATION_SNOOZED:I = 0x2


# instance fields
.field final synthetic this$0:Landroid/service/notification/NotificationAssistantService;


# direct methods
.method public constructor <init>(Landroid/service/notification/NotificationAssistantService;Landroid/os/Looper;)V
    .locals 2

    iput-object p1, p0, Landroid/service/notification/NotificationAssistantService$MyHandler;->this$0:Landroid/service/notification/NotificationAssistantService;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    iget-object v3, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    iget-object v5, p0, Landroid/service/notification/NotificationAssistantService$MyHandler;->this$0:Landroid/service/notification/NotificationAssistantService;

    invoke-virtual {v5, v3}, Landroid/service/notification/NotificationAssistantService;->onNotificationEnqueued(Landroid/service/notification/StatusBarNotification;)Landroid/service/notification/Adjustment;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v5, p0, Landroid/service/notification/NotificationAssistantService$MyHandler;->this$0:Landroid/service/notification/NotificationAssistantService;

    invoke-virtual {v5}, Landroid/service/notification/NotificationAssistantService;->isBound()Z

    move-result v5

    if-nez v5, :cond_1

    return-void

    :cond_1
    :try_start_0
    iget-object v5, p0, Landroid/service/notification/NotificationAssistantService$MyHandler;->this$0:Landroid/service/notification/NotificationAssistantService;

    invoke-virtual {v5}, Landroid/service/notification/NotificationAssistantService;->getNotificationInterface()Landroid/app/INotificationManager;

    move-result-object v5

    iget-object v6, p0, Landroid/service/notification/NotificationAssistantService$MyHandler;->this$0:Landroid/service/notification/NotificationAssistantService;

    iget-object v6, v6, Landroid/service/notification/NotificationAssistantService;->mWrapper:Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;

    invoke-interface {v5, v6, v0}, Landroid/app/INotificationManager;->applyEnqueuedAdjustmentFromAssistant(Landroid/service/notification/INotificationListener;Landroid/service/notification/Adjustment;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string/jumbo v5, "NotificationAssistants"

    const-string/jumbo v6, "Unable to contact notification manager"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v5

    throw v5

    :pswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    iget-object v3, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Landroid/service/notification/StatusBarNotification;

    iget-object v4, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    iget-object v5, p0, Landroid/service/notification/NotificationAssistantService$MyHandler;->this$0:Landroid/service/notification/NotificationAssistantService;

    invoke-virtual {v5, v3, v4}, Landroid/service/notification/NotificationAssistantService;->onNotificationSnoozedUntilContext(Landroid/service/notification/StatusBarNotification;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
