.class Lcom/sec/android/cover/neoncover/NeonCoverController$NeonHandler;
.super Landroid/os/Handler;
.source "NeonCoverController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/cover/neoncover/NeonCoverController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NeonHandler"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mControllerRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/sec/android/cover/neoncover/NeonCoverController;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/sec/android/cover/neoncover/NeonCoverController;->-get0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/sec/android/cover/neoncover/NeonCoverController$NeonHandler;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/cover/neoncover/NeonCoverController$NeonHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Lcom/sec/android/cover/neoncover/NeonCoverController;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/android/cover/neoncover/NeonCoverController$NeonHandler;->mControllerRef:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12

    sget-object v9, Lcom/sec/android/cover/neoncover/NeonCoverController$NeonHandler;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "handleMessage: msg="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/sec/android/cover/neoncover/NeonCoverController$NeonHandler;->mControllerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v9}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/cover/neoncover/NeonCoverController;

    if-nez v1, :cond_0

    sget-object v9, Lcom/sec/android/cover/neoncover/NeonCoverController$NeonHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "handleMessage: controller is null"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget v9, p1, Landroid/os/Message;->what:I

    packed-switch v9, :pswitch_data_0

    sget-object v9, Lcom/sec/android/cover/neoncover/NeonCoverController$NeonHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "Message not supported"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :pswitch_0
    sget-object v9, Lcom/sec/android/cover/neoncover/NeonCoverController$NeonHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "New Message"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v5, p1, Landroid/os/Message;->arg1:I

    iget v6, p1, Landroid/os/Message;->arg2:I

    invoke-static {v1}, Lcom/sec/android/cover/neoncover/NeonCoverController;->-wrap5(Lcom/sec/android/cover/neoncover/NeonCoverController;)Lcom/sec/android/cover/neoncover/NeonFSM;

    move-result-object v9

    invoke-virtual {v9, v6, v5}, Lcom/sec/android/cover/neoncover/NeonFSM;->processMessage(II)V

    goto :goto_0

    :pswitch_1
    sget-object v9, Lcom/sec/android/cover/neoncover/NeonCoverController$NeonHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "Alarm Start"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Lcom/sec/android/cover/neoncover/NeonCoverController;->-wrap5(Lcom/sec/android/cover/neoncover/NeonCoverController;)Lcom/sec/android/cover/neoncover/NeonFSM;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/cover/neoncover/NeonFSM;->processAlarmStart()V

    goto :goto_0

    :pswitch_2
    sget-object v9, Lcom/sec/android/cover/neoncover/NeonCoverController$NeonHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "Alarm Stop"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Lcom/sec/android/cover/neoncover/NeonCoverController;->-wrap5(Lcom/sec/android/cover/neoncover/NeonCoverController;)Lcom/sec/android/cover/neoncover/NeonFSM;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/cover/neoncover/NeonFSM;->processAlarmStop()V

    goto :goto_0

    :pswitch_3
    sget-object v9, Lcom/sec/android/cover/neoncover/NeonCoverController$NeonHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "Timer Start"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Lcom/sec/android/cover/neoncover/NeonCoverController;->-wrap5(Lcom/sec/android/cover/neoncover/NeonCoverController;)Lcom/sec/android/cover/neoncover/NeonFSM;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/cover/neoncover/NeonFSM;->processTimerStart()V

    goto :goto_0

    :pswitch_4
    sget-object v9, Lcom/sec/android/cover/neoncover/NeonCoverController$NeonHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "Timer Stop"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Lcom/sec/android/cover/neoncover/NeonCoverController;->-wrap5(Lcom/sec/android/cover/neoncover/NeonCoverController;)Lcom/sec/android/cover/neoncover/NeonFSM;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/cover/neoncover/NeonFSM;->processTimerStop()V

    goto :goto_0

    :pswitch_5
    sget-object v9, Lcom/sec/android/cover/neoncover/NeonCoverController$NeonHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "Calendar Start"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Lcom/sec/android/cover/neoncover/NeonCoverController;->-wrap5(Lcom/sec/android/cover/neoncover/NeonCoverController;)Lcom/sec/android/cover/neoncover/NeonFSM;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/cover/neoncover/NeonFSM;->processCalendarStart()V

    goto :goto_0

    :pswitch_6
    sget-object v9, Lcom/sec/android/cover/neoncover/NeonCoverController$NeonHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "Calendar Stop"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Lcom/sec/android/cover/neoncover/NeonCoverController;->-wrap5(Lcom/sec/android/cover/neoncover/NeonCoverController;)Lcom/sec/android/cover/neoncover/NeonFSM;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/cover/neoncover/NeonFSM;->processCalendarStop()V

    goto :goto_0

    :pswitch_7
    sget-object v9, Lcom/sec/android/cover/neoncover/NeonCoverController$NeonHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "Call state changed"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_2

    const/4 v9, 0x2

    if-eq v0, v9, :cond_2

    const/4 v9, 0x1

    if-eq v0, v9, :cond_2

    sget-object v9, Lcom/sec/android/cover/neoncover/NeonCoverController$NeonHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "Invalid call state"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    invoke-static {v1}, Lcom/sec/android/cover/neoncover/NeonCoverController;->-wrap5(Lcom/sec/android/cover/neoncover/NeonCoverController;)Lcom/sec/android/cover/neoncover/NeonFSM;

    move-result-object v9

    invoke-virtual {v9, v0}, Lcom/sec/android/cover/neoncover/NeonFSM;->processCallStateChange(I)V

    goto/16 :goto_0

    :pswitch_8
    iget v9, p1, Landroid/os/Message;->arg1:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_3

    const/4 v9, 0x1

    :goto_1
    invoke-static {v1, v9}, Lcom/sec/android/cover/neoncover/NeonCoverController;->-set0(Lcom/sec/android/cover/neoncover/NeonCoverController;Z)Z

    invoke-virtual {v1}, Lcom/sec/android/cover/neoncover/NeonCoverController;->getCoverState()Lcom/samsung/android/cover/CoverState;

    move-result-object v9

    invoke-virtual {v1, v9}, Lcom/sec/android/cover/neoncover/NeonCoverController;->onCoverEvent(Lcom/samsung/android/cover/CoverState;)V

    goto/16 :goto_0

    :cond_3
    const/4 v9, 0x0

    goto :goto_1

    :pswitch_9
    sget-object v9, Lcom/sec/android/cover/neoncover/NeonCoverController$NeonHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "MSG_EVENT_SCREEN_ON"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Lcom/sec/android/cover/neoncover/NeonCoverController;->-wrap0(Lcom/sec/android/cover/neoncover/NeonCoverController;)Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/cover/manager/CoverPowerManager;->isScreenOn()Z

    move-result v9

    if-eqz v9, :cond_1

    sget-object v9, Lcom/sec/android/cover/neoncover/NeonCoverController$NeonHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "MSG_EVENT_SCREEN_ON INSIDE isScreenOn"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Lcom/sec/android/cover/neoncover/NeonCoverController;->-wrap4(Lcom/sec/android/cover/neoncover/NeonCoverController;)Z

    move-result v9

    if-eqz v9, :cond_1

    sget-object v9, Lcom/sec/android/cover/neoncover/NeonCoverController$NeonHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "MSG_EVENT_SCREEN_ON INSIDE isCoverStateForNeon"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Lcom/sec/android/cover/neoncover/NeonCoverController;->-wrap5(Lcom/sec/android/cover/neoncover/NeonCoverController;)Lcom/sec/android/cover/neoncover/NeonFSM;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/cover/neoncover/NeonFSM;->processCoverClose()V

    goto/16 :goto_0

    :pswitch_a
    invoke-static {v1}, Lcom/sec/android/cover/neoncover/NeonCoverController;->-wrap0(Lcom/sec/android/cover/neoncover/NeonCoverController;)Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/cover/manager/CoverPowerManager;->isScreenOn()Z

    move-result v9

    if-nez v9, :cond_1

    invoke-static {v1}, Lcom/sec/android/cover/neoncover/NeonCoverController;->-wrap5(Lcom/sec/android/cover/neoncover/NeonCoverController;)Lcom/sec/android/cover/neoncover/NeonFSM;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/cover/neoncover/NeonFSM;->setPreviousStateToIdle()V

    invoke-static {v1}, Lcom/sec/android/cover/neoncover/NeonCoverController;->-wrap4(Lcom/sec/android/cover/neoncover/NeonCoverController;)Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-static {v1}, Lcom/sec/android/cover/neoncover/NeonCoverController;->-wrap9(Lcom/sec/android/cover/neoncover/NeonCoverController;)V

    goto/16 :goto_0

    :pswitch_b
    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v1}, Lcom/sec/android/cover/neoncover/NeonCoverController;->-wrap4(Lcom/sec/android/cover/neoncover/NeonCoverController;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/4 v9, 0x1

    if-ne v2, v9, :cond_4

    invoke-static {v1}, Lcom/sec/android/cover/neoncover/NeonCoverController;->-wrap9(Lcom/sec/android/cover/neoncover/NeonCoverController;)V

    invoke-static {v1}, Lcom/sec/android/cover/neoncover/NeonCoverController;->-get2(Lcom/sec/android/cover/neoncover/NeonCoverController;)Lcom/sec/android/cover/neoncover/NeonBrightnessController;

    move-result-object v9

    sget-object v10, Lcom/sec/android/cover/neoncover/NeonBrightnessController$BrightnessSate;->NONE:Lcom/sec/android/cover/neoncover/NeonBrightnessController$BrightnessSate;

    invoke-virtual {v9, v10}, Lcom/sec/android/cover/neoncover/NeonBrightnessController;->setBrightnessState(Lcom/sec/android/cover/neoncover/NeonBrightnessController$BrightnessSate;)V

    goto/16 :goto_0

    :cond_4
    invoke-static {v1}, Lcom/sec/android/cover/neoncover/NeonCoverController;->-wrap5(Lcom/sec/android/cover/neoncover/NeonCoverController;)Lcom/sec/android/cover/neoncover/NeonFSM;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/cover/neoncover/NeonFSM;->getCurrentState()Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;

    move-result-object v9

    invoke-virtual {v1, v9}, Lcom/sec/android/cover/neoncover/NeonCoverController;->onStateChange(Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;)V

    goto/16 :goto_0

    :pswitch_c
    invoke-static {v1}, Lcom/sec/android/cover/neoncover/NeonCoverController;->-wrap0(Lcom/sec/android/cover/neoncover/NeonCoverController;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "neon_cover_all_test"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    const/16 v10, 0x378

    if-ne v9, v10, :cond_7

    const/4 v4, 0x1

    :goto_2
    if-nez v4, :cond_5

    invoke-static {v1}, Lcom/sec/android/cover/neoncover/NeonCoverController;->-wrap2(Lcom/sec/android/cover/neoncover/NeonCoverController;)Z

    move-result v9

    xor-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_5

    invoke-static {v1}, Lcom/sec/android/cover/neoncover/NeonCoverController;->-wrap3(Lcom/sec/android/cover/neoncover/NeonCoverController;)Z

    move-result v9

    xor-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_5

    invoke-static {v1}, Lcom/sec/android/cover/neoncover/NeonCoverController;->-wrap9(Lcom/sec/android/cover/neoncover/NeonCoverController;)V

    :cond_5
    if-eqz v4, :cond_6

    invoke-static {v1}, Lcom/sec/android/cover/neoncover/NeonCoverController;->-wrap10(Lcom/sec/android/cover/neoncover/NeonCoverController;)V

    invoke-static {v1}, Lcom/sec/android/cover/neoncover/NeonCoverController;->-wrap8(Lcom/sec/android/cover/neoncover/NeonCoverController;)V

    :cond_6
    :pswitch_d
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Lcom/sec/android/cover/neoncover/animation/NeonAnimation$AnimationType;

    sget-object v9, Lcom/sec/android/cover/neoncover/animation/NeonAnimation$AnimationType;->NEW_MESSAGE:Lcom/sec/android/cover/neoncover/animation/NeonAnimation$AnimationType;

    if-ne v9, v8, :cond_1

    invoke-static {v1}, Lcom/sec/android/cover/neoncover/NeonCoverController;->-wrap5(Lcom/sec/android/cover/neoncover/NeonCoverController;)Lcom/sec/android/cover/neoncover/NeonFSM;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/cover/neoncover/NeonFSM;->processMessageRemoval()V

    goto/16 :goto_0

    :cond_7
    const/4 v4, 0x0

    goto :goto_2

    :pswitch_e
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Lcom/samsung/android/cover/CoverState;

    if-eqz v7, :cond_1

    invoke-static {v1}, Lcom/sec/android/cover/neoncover/NeonCoverController;->-wrap5(Lcom/sec/android/cover/neoncover/NeonCoverController;)Lcom/sec/android/cover/neoncover/NeonFSM;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/cover/neoncover/NeonFSM;->setPreviousStateToIdle()V

    invoke-static {v1}, Lcom/sec/android/cover/neoncover/NeonCoverController;->-wrap5(Lcom/sec/android/cover/neoncover/NeonCoverController;)Lcom/sec/android/cover/neoncover/NeonFSM;

    move-result-object v9

    invoke-virtual {v1}, Lcom/sec/android/cover/neoncover/NeonCoverController;->isCoverOpen()Z

    move-result v10

    xor-int/lit8 v10, v10, 0x1

    invoke-virtual {v9, v10}, Lcom/sec/android/cover/neoncover/NeonFSM;->setCoverClosed(Z)V

    invoke-static {v1}, Lcom/sec/android/cover/neoncover/NeonCoverController;->-get2(Lcom/sec/android/cover/neoncover/NeonCoverController;)Lcom/sec/android/cover/neoncover/NeonBrightnessController;

    move-result-object v10

    invoke-virtual {v1}, Lcom/sec/android/cover/neoncover/NeonCoverController;->isCoverOpen()Z

    move-result v9

    if-eqz v9, :cond_9

    iget-boolean v9, v7, Lcom/samsung/android/cover/CoverState;->attached:Z

    :goto_3
    invoke-virtual {v10, v9}, Lcom/sec/android/cover/neoncover/NeonBrightnessController;->updateCoverState(Z)V

    invoke-virtual {v1}, Lcom/sec/android/cover/neoncover/NeonCoverController;->isCoverOpen()Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-static {v1}, Lcom/sec/android/cover/neoncover/NeonCoverController;->-get1(Lcom/sec/android/cover/neoncover/NeonCoverController;)Landroid/os/PowerManager$WakeLock;

    move-result-object v9

    invoke-virtual {v9}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-static {v1}, Lcom/sec/android/cover/neoncover/NeonCoverController;->-get1(Lcom/sec/android/cover/neoncover/NeonCoverController;)Landroid/os/PowerManager$WakeLock;

    move-result-object v9

    invoke-virtual {v9}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_8
    const/4 v9, 0x0

    invoke-static {v1, v9}, Lcom/sec/android/cover/neoncover/NeonCoverController;->-wrap6(Lcom/sec/android/cover/neoncover/NeonCoverController;Lcom/sec/android/cover/neoncover/animation/NeonAnimation$AnimationType;)V

    invoke-static {v1}, Lcom/sec/android/cover/neoncover/NeonCoverController;->-get2(Lcom/sec/android/cover/neoncover/NeonCoverController;)Lcom/sec/android/cover/neoncover/NeonBrightnessController;

    move-result-object v9

    sget-object v10, Lcom/sec/android/cover/neoncover/NeonBrightnessController$BrightnessSate;->NONE:Lcom/sec/android/cover/neoncover/NeonBrightnessController$BrightnessSate;

    invoke-virtual {v9, v10}, Lcom/sec/android/cover/neoncover/NeonBrightnessController;->setBrightnessState(Lcom/sec/android/cover/neoncover/NeonBrightnessController$BrightnessSate;)V

    invoke-static {v1}, Lcom/sec/android/cover/neoncover/NeonCoverController;->-wrap0(Lcom/sec/android/cover/neoncover/NeonCoverController;)Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/cover/manager/CoverPowerManager;->isScreenOn()Z

    move-result v9

    if-nez v9, :cond_1

    sget-object v9, Lcom/sec/android/cover/neoncover/NeonCoverController$NeonHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "waking up screen"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Lcom/sec/android/cover/neoncover/NeonCoverController;->-wrap0(Lcom/sec/android/cover/neoncover/NeonCoverController;)Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/cover/manager/CoverPowerManager;->wakeUp()V

    goto/16 :goto_0

    :cond_9
    const/4 v9, 0x0

    goto :goto_3

    :cond_a
    invoke-static {v1}, Lcom/sec/android/cover/neoncover/NeonCoverController;->-wrap0(Lcom/sec/android/cover/neoncover/NeonCoverController;)Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/cover/manager/CoverPowerManager;->isScreenOn()Z

    move-result v9

    if-nez v9, :cond_b

    invoke-static {v1}, Lcom/sec/android/cover/neoncover/NeonCoverController;->-wrap10(Lcom/sec/android/cover/neoncover/NeonCoverController;)V

    goto/16 :goto_0

    :cond_b
    invoke-static {v1}, Lcom/sec/android/cover/neoncover/NeonCoverController;->-wrap5(Lcom/sec/android/cover/neoncover/NeonCoverController;)Lcom/sec/android/cover/neoncover/NeonFSM;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/cover/neoncover/NeonFSM;->processCoverClose()V

    goto/16 :goto_0

    :pswitch_f
    invoke-static {v1}, Lcom/sec/android/cover/neoncover/NeonCoverController;->-wrap7(Lcom/sec/android/cover/neoncover/NeonCoverController;)V

    invoke-static {v1}, Lcom/sec/android/cover/neoncover/NeonCoverController;->-wrap4(Lcom/sec/android/cover/neoncover/NeonCoverController;)Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-static {v1}, Lcom/sec/android/cover/neoncover/NeonCoverController;->-wrap5(Lcom/sec/android/cover/neoncover/NeonCoverController;)Lcom/sec/android/cover/neoncover/NeonFSM;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/cover/neoncover/NeonFSM;->getCurrentState()Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;

    move-result-object v9

    invoke-virtual {v1, v9}, Lcom/sec/android/cover/neoncover/NeonCoverController;->onStateChange(Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;)V

    goto/16 :goto_0

    :pswitch_10
    invoke-static {v1}, Lcom/sec/android/cover/neoncover/NeonCoverController;->-wrap0(Lcom/sec/android/cover/neoncover/NeonCoverController;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "neon_cover_test_mode"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    const/16 v10, 0x309

    if-ne v9, v10, :cond_c

    const/4 v3, 0x1

    :goto_4
    if-eqz v3, :cond_d

    invoke-static {v1}, Lcom/sec/android/cover/neoncover/NeonCoverController;->-wrap5(Lcom/sec/android/cover/neoncover/NeonCoverController;)Lcom/sec/android/cover/neoncover/NeonFSM;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/cover/neoncover/NeonFSM;->processTestModeStart()V

    goto/16 :goto_0

    :cond_c
    const/4 v3, 0x0

    goto :goto_4

    :cond_d
    invoke-static {v1}, Lcom/sec/android/cover/neoncover/NeonCoverController;->-wrap5(Lcom/sec/android/cover/neoncover/NeonCoverController;)Lcom/sec/android/cover/neoncover/NeonFSM;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/cover/neoncover/NeonFSM;->processTestModeStop()V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_5
        :pswitch_6
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
    .end packed-switch
.end method
