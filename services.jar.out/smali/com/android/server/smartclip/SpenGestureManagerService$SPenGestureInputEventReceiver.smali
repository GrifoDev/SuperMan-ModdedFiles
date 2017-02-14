.class final Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;
.super Landroid/view/InputEventReceiver;
.source "SpenGestureManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/smartclip/SpenGestureManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SPenGestureInputEventReceiver"
.end annotation


# instance fields
.field private sCfmsService:Landroid/os/ICustomFrequencyManager;

.field final synthetic this$0:Lcom/android/server/smartclip/SpenGestureManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/smartclip/SpenGestureManagerService;Landroid/view/InputChannel;Landroid/os/Looper;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    invoke-direct {p0, p2, p3}, Landroid/view/InputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->sCfmsService:Landroid/os/ICustomFrequencyManager;

    return-void
.end method

.method private sendEventToCfmsService(I)V
    .locals 5

    :try_start_0
    iget-object v2, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->sCfmsService:Landroid/os/ICustomFrequencyManager;

    if-nez v2, :cond_0

    const-string/jumbo v2, "CustomFrequencyManagerService"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/os/ICustomFrequencyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ICustomFrequencyManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->sCfmsService:Landroid/os/ICustomFrequencyManager;

    :cond_0
    iget-object v2, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->sCfmsService:Landroid/os/ICustomFrequencyManager;

    if-eqz v2, :cond_1

    const/16 v2, 0x9

    if-ne p1, v2, :cond_2

    iget-object v2, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->sCfmsService:Landroid/os/ICustomFrequencyManager;

    const-string/jumbo v3, "HOVERING_EVENT"

    const-string/jumbo v4, "1"

    invoke-interface {v2, v3, v4}, Landroid/os/ICustomFrequencyManager;->sendCommandToSSRM(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/16 v2, 0xa

    if-ne p1, v2, :cond_3

    iget-object v2, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->sCfmsService:Landroid/os/ICustomFrequencyManager;

    const-string/jumbo v3, "HOVERING_EVENT"

    const-string/jumbo v4, "0"

    invoke-interface {v2, v3, v4}, Landroid/os/ICustomFrequencyManager;->sendCommandToSSRM(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_3
    if-nez p1, :cond_1

    :try_start_1
    iget-object v2, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->sCfmsService:Landroid/os/ICustomFrequencyManager;

    const-string/jumbo v3, "HOVERING_EVENT"

    const-string/jumbo v4, "3"

    invoke-interface {v2, v3, v4}, Landroid/os/ICustomFrequencyManager;->sendCommandToSSRM(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method


# virtual methods
.method public onInputEvent(Landroid/view/InputEvent;)V
    .locals 14

    const/4 v13, 0x2

    const/4 v12, 0x3

    const/4 v3, 0x0

    :try_start_0
    instance-of v9, p1, Landroid/view/MotionEvent;

    if-eqz v9, :cond_a

    move-object v0, p1

    check-cast v0, Landroid/view/MotionEvent;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    invoke-virtual {v6}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v9

    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->-get0()I

    move-result v10

    and-int/2addr v9, v10

    if-eqz v9, :cond_6

    const/4 v4, 0x1

    :goto_0
    iget-object v9, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    invoke-static {v9}, Lcom/android/server/smartclip/SpenGestureManagerService;->-get13(Lcom/android/server/smartclip/SpenGestureManagerService;)I

    move-result v9

    if-lt v9, v12, :cond_4

    iget-object v9, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    invoke-static {v9, v6, v2, v4}, Lcom/android/server/smartclip/SpenGestureManagerService;->-wrap9(Lcom/android/server/smartclip/SpenGestureManagerService;Landroid/view/MotionEvent;IZ)V

    iget-object v9, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    invoke-static {v9}, Lcom/android/server/smartclip/SpenGestureManagerService;->-get8(Lcom/android/server/smartclip/SpenGestureManagerService;)Z

    move-result v9

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    invoke-static {v9, v6, v2, v4}, Lcom/android/server/smartclip/SpenGestureManagerService;->-wrap6(Lcom/android/server/smartclip/SpenGestureManagerService;Landroid/view/MotionEvent;IZ)V

    :cond_0
    if-eqz v4, :cond_1

    const/4 v9, 0x7

    if-eq v2, v9, :cond_1

    if-eq v2, v13, :cond_1

    sget-object v9, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "onInputEvent 4 : Action="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v2}, Landroid/view/MotionEvent;->actionToString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", sideButtonPressed="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", coverOpened="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    invoke-static {v11}, Lcom/android/server/smartclip/SpenGestureManagerService;->-get4(Lcom/android/server/smartclip/SpenGestureManagerService;)Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v8, 0x0

    if-eqz v4, :cond_2

    iget-object v9, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    invoke-static {v9}, Lcom/android/server/smartclip/SpenGestureManagerService;->-get4(Lcom/android/server/smartclip/SpenGestureManagerService;)Z

    move-result v9

    if-eqz v9, :cond_2

    const/4 v8, 0x1

    :cond_2
    const/16 v9, 0x9

    if-ne v2, v9, :cond_7

    iget-object v9, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    invoke-static {v9, v2}, Lcom/android/server/smartclip/SpenGestureManagerService;->-wrap4(Lcom/android/server/smartclip/SpenGestureManagerService;I)V

    invoke-direct {p0, v2}, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->sendEventToCfmsService(I)V

    :cond_3
    :goto_1
    if-eqz v8, :cond_4

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    sget-object v9, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "onInputEvent : default"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    :goto_2
    :pswitch_1
    const/4 v3, 0x1

    :cond_5
    :goto_3
    invoke-virtual {p0, p1, v3}, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    return-void

    :cond_6
    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_7
    const/16 v9, 0xa

    if-ne v2, v9, :cond_8

    :try_start_1
    invoke-direct {p0, v2}, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->sendEventToCfmsService(I)V

    new-instance v7, Landroid/os/Message;

    invoke-direct {v7}, Landroid/os/Message;-><init>()V

    const/16 v9, 0x3018

    iput v9, v7, Landroid/os/Message;->what:I

    iget-object v9, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    invoke-static {v9}, Lcom/android/server/smartclip/SpenGestureManagerService;->-get7(Lcom/android/server/smartclip/SpenGestureManagerService;)Landroid/os/Handler;

    move-result-object v9

    const-wide/16 v10, 0x32

    invoke-virtual {v9, v7, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v9

    invoke-virtual {p0, p1, v3}, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    throw v9

    :cond_8
    if-nez v2, :cond_3

    :try_start_2
    iget-object v9, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    invoke-static {v9}, Lcom/android/server/smartclip/SpenGestureManagerService;->-get7(Lcom/android/server/smartclip/SpenGestureManagerService;)Landroid/os/Handler;

    move-result-object v9

    const/16 v10, 0x3018

    invoke-virtual {v9, v10}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v9

    if-eqz v9, :cond_9

    iget-object v9, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    invoke-static {v9}, Lcom/android/server/smartclip/SpenGestureManagerService;->-get7(Lcom/android/server/smartclip/SpenGestureManagerService;)Landroid/os/Handler;

    move-result-object v9

    const/16 v10, 0x3018

    invoke-virtual {v9, v10}, Landroid/os/Handler;->removeMessages(I)V

    sget-object v9, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "[HOVER] sending hover exit br is canceled by touch event."

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v9

    if-ne v9, v13, :cond_3

    invoke-direct {p0, v2}, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->sendEventToCfmsService(I)V

    goto :goto_1

    :pswitch_2
    iget-object v9, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    invoke-static {v9}, Lcom/android/server/smartclip/SpenGestureManagerService;->-get13(Lcom/android/server/smartclip/SpenGestureManagerService;)I

    move-result v9

    if-lt v9, v12, :cond_4

    iget-object v9, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    invoke-static {v9}, Lcom/android/server/smartclip/SpenGestureManagerService;->-get6(Lcom/android/server/smartclip/SpenGestureManagerService;)Landroid/view/GestureDetector;

    move-result-object v9

    invoke-virtual {v9, v6}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_2

    :pswitch_3
    iget-object v9, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    invoke-static {v9}, Lcom/android/server/smartclip/SpenGestureManagerService;->-get13(Lcom/android/server/smartclip/SpenGestureManagerService;)I

    move-result v9

    if-lt v9, v12, :cond_4

    iget-object v9, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    invoke-static {v9}, Lcom/android/server/smartclip/SpenGestureManagerService;->-get6(Lcom/android/server/smartclip/SpenGestureManagerService;)Landroid/view/GestureDetector;

    move-result-object v9

    invoke-virtual {v9, v6}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_2

    :cond_a
    instance-of v9, p1, Landroid/view/KeyEvent;

    if-eqz v9, :cond_5

    move-object v0, p1

    check-cast v0, Landroid/view/KeyEvent;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v9

    const/4 v10, 0x4

    if-ne v9, v10, :cond_5

    iget-object v9, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    invoke-static {v9}, Lcom/android/server/smartclip/SpenGestureManagerService;->-wrap3(Lcom/android/server/smartclip/SpenGestureManagerService;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v3, 0x1

    goto/16 :goto_3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
