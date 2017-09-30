.class final Lcom/android/incallui/motion/CallSContextMotion$1;
.super Ljava/lang/Object;

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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSemContextChanged(Lcom/samsung/android/hardware/context/SemContextEvent;)V
    .locals 5

    const/4 v4, 0x1

    iget-object v0, p1, Lcom/samsung/android/hardware/context/SemContextEvent;->semContext:Lcom/samsung/android/hardware/context/SemContext;

    const-string v1, "CallSContextMotion"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSContextChanged : scontext.getType()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/samsung/android/hardware/context/SemContext;->getType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v0}, Lcom/samsung/android/hardware/context/SemContext;->getType()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getFirstCall()Lcom/android/incallui/Call;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, "CallSContextMotion"

    const-string v2, "onSContextChanged: has not call"

    invoke-static {v1, v2, v4}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {v0, v4}, Lcom/android/incallui/motion/CallSContextMotion;->stopPutDownListening(Landroid/content/Context;Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/hardware/context/SemContextEvent;->getPutDownMotionContext()Lcom/samsung/android/hardware/context/SemContextPutDownMotion;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/hardware/context/SemContextPutDownMotion;->getAction()I

    move-result v0

    const-string v1, "CallSContextMotion"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSContextChanged PUT_DOWN_MOTION : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-static {v4}, Lcom/android/incallui/motion/CallSContextMotion;->access$000(Z)V

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/incallui/motion/CallSContextMotion;->access$000(Z)V

    goto :goto_0

    :sswitch_1
    invoke-virtual {p1}, Lcom/samsung/android/hardware/context/SemContextEvent;->getDevicePositionContext()Lcom/samsung/android/hardware/context/SemContextDevicePosition;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/hardware/context/SemContextDevicePosition;->getPosition()I

    move-result v0

    const-string v1, "CallSContextMotion"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSContextChanged : SContextDevicePosition.getPosition = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/incallui/motion/CallSContextMotion;->access$100()Lcom/android/incallui/motion/CallSContextMotion$FlatListener;

    move-result-object v1

    if-nez v1, :cond_2

    const-string v0, "CallSContextMotion"

    const-string v1, "sFlatListener is null : stopFlatMotionListening"

    invoke-static {v0, v1, v4}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/motion/CallSContextMotion;->stopFlatMotionListening(Landroid/content/Context;)V

    goto/16 :goto_0

    :cond_2
    packed-switch v0, :pswitch_data_1

    :pswitch_2
    goto/16 :goto_0

    :pswitch_3
    invoke-static {}, Lcom/android/incallui/motion/CallSContextMotion;->access$100()Lcom/android/incallui/motion/CallSContextMotion$FlatListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/incallui/motion/CallSContextMotion$FlatListener;->onFlatMotionUp()V

    goto/16 :goto_0

    :pswitch_4
    invoke-static {}, Lcom/android/incallui/motion/CallSContextMotion;->access$100()Lcom/android/incallui/motion/CallSContextMotion$FlatListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/incallui/motion/CallSContextMotion$FlatListener;->onFlatMotionDown()V

    goto/16 :goto_0

    :pswitch_5
    invoke-static {}, Lcom/android/incallui/motion/CallSContextMotion;->access$100()Lcom/android/incallui/motion/CallSContextMotion$FlatListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/incallui/motion/CallSContextMotion$FlatListener;->onFlatMotionFalse()V

    goto/16 :goto_0

    :pswitch_6
    invoke-static {}, Lcom/android/incallui/motion/CallSContextMotion;->access$100()Lcom/android/incallui/motion/CallSContextMotion$FlatListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/incallui/motion/CallSContextMotion$FlatListener;->onFlatMotionVerticality()V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0xf -> :sswitch_0
        0x16 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method
