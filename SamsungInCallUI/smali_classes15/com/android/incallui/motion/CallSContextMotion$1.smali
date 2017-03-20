.class final Lcom/android/incallui/motion/CallSContextMotion$1;
.super Ljava/lang/Object;
.source "CallSContextMotion.java"

# interfaces
.implements Lcom/samsung/android/hardware/context/SemContextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/motion/CallSContextMotion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSemContextChanged(Lcom/samsung/android/hardware/context/SemContextEvent;)V
    .locals 10
    .param p1, "event"    # Lcom/samsung/android/hardware/context/SemContextEvent;

    .prologue
    const/4 v9, 0x1

    .line 53
    iget-object v5, p1, Lcom/samsung/android/hardware/context/SemContextEvent;->semContext:Lcom/samsung/android/hardware/context/SemContext;

    .line 54
    .local v5, "scontext":Lcom/samsung/android/hardware/context/SemContext;
    const-string v6, "CallSContextMotion"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onSContextChanged : scontext.getType()"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Lcom/samsung/android/hardware/context/SemContext;->getType()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v9}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 56
    invoke-virtual {v5}, Lcom/samsung/android/hardware/context/SemContext;->getType()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    .line 111
    :cond_0
    :goto_0
    return-void

    .line 58
    :sswitch_0
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 59
    .local v1, "context":Landroid/content/Context;
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/incallui/CallList;->getFirstCall()Lcom/android/incallui/Call;

    move-result-object v6

    if-nez v6, :cond_1

    .line 60
    const-string v6, "CallSContextMotion"

    const-string v7, "onSContextChanged: has not call"

    invoke-static {v6, v7, v9}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 61
    invoke-static {v1, v9}, Lcom/android/incallui/motion/CallSContextMotion;->stopPutDownListening(Landroid/content/Context;Z)V

    goto :goto_0

    .line 64
    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/hardware/context/SemContextEvent;->getPutDownMotionContext()Lcom/samsung/android/hardware/context/SemContextPutDownMotion;

    move-result-object v4

    .line 65
    .local v4, "putDownMotionContext":Lcom/samsung/android/hardware/context/SemContextPutDownMotion;
    if-eqz v4, :cond_0

    .line 66
    invoke-virtual {v4}, Lcom/samsung/android/hardware/context/SemContextPutDownMotion;->getAction()I

    move-result v0

    .line 67
    .local v0, "action":I
    const-string v6, "CallSContextMotion"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onSContextChanged PUT_DOWN_MOTION : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v9}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 68
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 70
    :pswitch_0
    # invokes: Lcom/android/incallui/motion/CallSContextMotion;->doActionPutUpDown(Z)V
    invoke-static {v9}, Lcom/android/incallui/motion/CallSContextMotion;->access$000(Z)V

    goto :goto_0

    .line 73
    :pswitch_1
    const/4 v6, 0x0

    # invokes: Lcom/android/incallui/motion/CallSContextMotion;->doActionPutUpDown(Z)V
    invoke-static {v6}, Lcom/android/incallui/motion/CallSContextMotion;->access$000(Z)V

    goto :goto_0

    .line 81
    .end local v0    # "action":I
    .end local v1    # "context":Landroid/content/Context;
    .end local v4    # "putDownMotionContext":Lcom/samsung/android/hardware/context/SemContextPutDownMotion;
    :sswitch_1
    invoke-virtual {p1}, Lcom/samsung/android/hardware/context/SemContextEvent;->getDevicePositionContext()Lcom/samsung/android/hardware/context/SemContextDevicePosition;

    move-result-object v2

    .line 82
    .local v2, "devicePosition":Lcom/samsung/android/hardware/context/SemContextDevicePosition;
    invoke-virtual {v2}, Lcom/samsung/android/hardware/context/SemContextDevicePosition;->getPosition()I

    move-result v3

    .line 84
    .local v3, "position":I
    const-string v6, "CallSContextMotion"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onSContextChanged : SContextDevicePosition.getPosition = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v9}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 85
    # getter for: Lcom/android/incallui/motion/CallSContextMotion;->sFlatListener:Lcom/android/incallui/motion/CallSContextMotion$FlatListener;
    invoke-static {}, Lcom/android/incallui/motion/CallSContextMotion;->access$100()Lcom/android/incallui/motion/CallSContextMotion$FlatListener;

    move-result-object v6

    if-nez v6, :cond_2

    .line 86
    const-string v6, "CallSContextMotion"

    const-string v7, "sFlatListener is null : stopFlatMotionListening"

    invoke-static {v6, v7, v9}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 87
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v6

    invoke-static {v6}, Lcom/android/incallui/motion/CallSContextMotion;->stopFlatMotionListening(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 91
    :cond_2
    packed-switch v3, :pswitch_data_1

    goto/16 :goto_0

    .line 96
    :pswitch_2
    # getter for: Lcom/android/incallui/motion/CallSContextMotion;->sFlatListener:Lcom/android/incallui/motion/CallSContextMotion$FlatListener;
    invoke-static {}, Lcom/android/incallui/motion/CallSContextMotion;->access$100()Lcom/android/incallui/motion/CallSContextMotion$FlatListener;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/incallui/motion/CallSContextMotion$FlatListener;->onFlatMotionUp()V

    goto/16 :goto_0

    .line 93
    :pswitch_3
    # getter for: Lcom/android/incallui/motion/CallSContextMotion;->sFlatListener:Lcom/android/incallui/motion/CallSContextMotion$FlatListener;
    invoke-static {}, Lcom/android/incallui/motion/CallSContextMotion;->access$100()Lcom/android/incallui/motion/CallSContextMotion$FlatListener;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/incallui/motion/CallSContextMotion$FlatListener;->onFlatMotionDown()V

    goto/16 :goto_0

    .line 99
    :pswitch_4
    # getter for: Lcom/android/incallui/motion/CallSContextMotion;->sFlatListener:Lcom/android/incallui/motion/CallSContextMotion$FlatListener;
    invoke-static {}, Lcom/android/incallui/motion/CallSContextMotion;->access$100()Lcom/android/incallui/motion/CallSContextMotion$FlatListener;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/incallui/motion/CallSContextMotion$FlatListener;->onFlatMotionFalse()V

    goto/16 :goto_0

    .line 102
    :pswitch_5
    # getter for: Lcom/android/incallui/motion/CallSContextMotion;->sFlatListener:Lcom/android/incallui/motion/CallSContextMotion$FlatListener;
    invoke-static {}, Lcom/android/incallui/motion/CallSContextMotion;->access$100()Lcom/android/incallui/motion/CallSContextMotion$FlatListener;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/incallui/motion/CallSContextMotion$FlatListener;->onFlatMotionVerticality()V

    goto/16 :goto_0

    .line 56
    :sswitch_data_0
    .sparse-switch
        0xf -> :sswitch_0
        0x16 -> :sswitch_1
    .end sparse-switch

    .line 68
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 91
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
