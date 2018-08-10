.class Lcom/android/keyguard/KeyguardUpdateMonitor$2;
.super Landroid/os/Handler;
.source "KeyguardUpdateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardUpdateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$2;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$2;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-wrap55(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$2;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;

    invoke-static {v1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-wrap8(Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;)V

    goto :goto_0

    :pswitch_3
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$2;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-static {v1, v2, v3, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-wrap52(Lcom/android/keyguard/KeyguardUpdateMonitor;IILcom/android/internal/telephony/IccCardConstants$State;)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$2;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleRingerModeChange(I)V

    goto :goto_0

    :pswitch_5
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$2;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handlePhoneStateChanged(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_6
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$2;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleDeviceProvisioned()V

    goto :goto_0

    :pswitch_7
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$2;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleDevicePolicyManagerStateChanged()V

    goto :goto_0

    :pswitch_8
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$2;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/IRemoteCallback;

    invoke-virtual {v1, v2, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleUserSwitching(ILandroid/os/IRemoteCallback;)V

    goto :goto_0

    :pswitch_9
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$2;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleUserSwitchComplete(I)V

    goto :goto_0

    :pswitch_a
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$2;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-wrap32(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    goto :goto_0

    :pswitch_b
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$2;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-wrap31(Lcom/android/keyguard/KeyguardUpdateMonitor;I)V

    goto :goto_0

    :pswitch_c
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$2;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleBootCompleted()V

    goto :goto_0

    :pswitch_d
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$2;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-wrap58(Lcom/android/keyguard/KeyguardUpdateMonitor;I)V

    goto :goto_0

    :pswitch_e
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$2;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-wrap43(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    goto :goto_0

    :pswitch_f
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$2;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleStartedGoingToSleep(I)V

    goto :goto_0

    :pswitch_10
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$2;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleFinishedGoingToSleep(I)V

    goto/16 :goto_0

    :pswitch_11
    const-string/jumbo v0, "KeyguardUpdateMonitor#handler MSG_STARTED_WAKING_UP"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$2;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleStartedWakingUp()V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/16 :goto_0

    :pswitch_12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "KeyguardUpdateMonitor#handler MSG_STARTED_WAKING_UP "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$2;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleStartedWakingUp(I)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/16 :goto_0

    :pswitch_13
    const-string/jumbo v0, "KeyguardUpdateMonitor#handler MSG_FACE_UNLOCK_STATE_CHANGED"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$2;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_0

    move v0, v1

    :goto_1
    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-static {v3, v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-wrap18(Lcom/android/keyguard/KeyguardUpdateMonitor;ZI)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/16 :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :pswitch_14
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$2;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleSimSubscriptionInfoChanged()V

    goto/16 :goto_0

    :pswitch_15
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$2;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-wrap9(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    goto/16 :goto_0

    :pswitch_16
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$2;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/telephony/ServiceState;

    invoke-static {v1, v2, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-wrap50(Lcom/android/keyguard/KeyguardUpdateMonitor;ILandroid/telephony/ServiceState;)V

    goto/16 :goto_0

    :pswitch_17
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$2;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-wrap45(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    goto/16 :goto_0

    :pswitch_18
    const-string/jumbo v0, "KeyguardUpdateMonitor#handler MSG_SCREEN_TURNED_ON"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$2;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-wrap44(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/16 :goto_0

    :pswitch_19
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$2;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-wrap12(Lcom/android/keyguard/KeyguardUpdateMonitor;I)V

    goto/16 :goto_0

    :pswitch_1a
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$2;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-wrap59(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    goto/16 :goto_0

    :pswitch_1b
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$2;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/cover/CoverState;

    invoke-static {v1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-wrap56(Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/samsung/android/cover/CoverState;)V

    goto/16 :goto_0

    :pswitch_1c
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$2;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-wrap41(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    goto/16 :goto_0

    :pswitch_1d
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$2;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-wrap10(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    goto/16 :goto_0

    :pswitch_1e
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$2;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    invoke-static {v1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-wrap33(Lcom/android/keyguard/KeyguardUpdateMonitor;Landroid/os/Bundle;)V

    goto/16 :goto_0

    :pswitch_1f
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$2;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-wrap28(Lcom/android/keyguard/KeyguardUpdateMonitor;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_20
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$2;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-wrap54(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    goto/16 :goto_0

    :pswitch_21
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$2;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-wrap42(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    goto/16 :goto_0

    :pswitch_22
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$2;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;

    invoke-static {v1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-wrap49(Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;)V

    goto/16 :goto_0

    :pswitch_23
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$2;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-wrap38(Lcom/android/keyguard/KeyguardUpdateMonitor;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_24
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$2;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-wrap39(Lcom/android/keyguard/KeyguardUpdateMonitor;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_25
    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$2;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-ne v4, v1, :cond_1

    :goto_2
    invoke-static {v3, v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-wrap40(Lcom/android/keyguard/KeyguardUpdateMonitor;Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_1
    move v1, v2

    goto :goto_2

    :pswitch_26
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$2;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-wrap53(Lcom/android/keyguard/KeyguardUpdateMonitor;Z)V

    goto/16 :goto_0

    :pswitch_27
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$2;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-wrap48(Lcom/android/keyguard/KeyguardUpdateMonitor;Z)V

    goto/16 :goto_0

    :pswitch_28
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$2;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-wrap11(Lcom/android/keyguard/KeyguardUpdateMonitor;Z)V

    goto/16 :goto_0

    :pswitch_29
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$2;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-wrap46(Lcom/android/keyguard/KeyguardUpdateMonitor;Z)V

    goto/16 :goto_0

    :pswitch_2a
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$2;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-static {v1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-wrap47(Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    goto/16 :goto_0

    :pswitch_2b
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$2;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-eqz v3, :cond_2

    :goto_3
    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-wrap7(Lcom/android/keyguard/KeyguardUpdateMonitor;Z)V

    goto/16 :goto_0

    :cond_2
    move v1, v2

    goto :goto_3

    :pswitch_2c
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$2;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-wrap57(Lcom/android/keyguard/KeyguardUpdateMonitor;I)V

    goto/16 :goto_0

    :pswitch_2d
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$2;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;

    invoke-static {v1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-wrap6(Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;)V

    goto/16 :goto_0

    :pswitch_2e
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$2;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-wrap36(Lcom/android/keyguard/KeyguardUpdateMonitor;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_2f
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$2;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-wrap35(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    goto/16 :goto_0

    :pswitch_30
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$2;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-wrap37(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    goto/16 :goto_0

    :pswitch_31
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$2;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-wrap34(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x12d
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_a
        :pswitch_c
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_d
        :pswitch_e
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_12
        :pswitch_1c
        :pswitch_1d
        :pswitch_21
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_26
        :pswitch_27
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_22
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_2b
        :pswitch_2c
        :pswitch_2d
        :pswitch_2e
        :pswitch_2f
        :pswitch_30
        :pswitch_15
        :pswitch_31
    .end packed-switch
.end method
