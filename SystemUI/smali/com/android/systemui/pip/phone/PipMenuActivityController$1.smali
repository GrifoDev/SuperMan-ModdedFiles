.class Lcom/android/systemui/pip/phone/PipMenuActivityController$1;
.super Landroid/os/Handler;
.source "PipMenuActivityController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/pip/phone/PipMenuActivityController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/pip/phone/PipMenuActivityController;


# direct methods
.method constructor <init>(Lcom/android/systemui/pip/phone/PipMenuActivityController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController$1;->this$0:Lcom/android/systemui/pip/phone/PipMenuActivityController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method static synthetic lambda$-com_android_systemui_pip_phone_PipMenuActivityController$1_5160(Lcom/android/systemui/pip/phone/PipMenuActivityController$Listener;)V
    .locals 0

    invoke-interface {p0}, Lcom/android/systemui/pip/phone/PipMenuActivityController$Listener;->onPipExpand()V

    return-void
.end method

.method static synthetic lambda$-com_android_systemui_pip_phone_PipMenuActivityController$1_5312(Lcom/android/systemui/pip/phone/PipMenuActivityController$Listener;)V
    .locals 0

    invoke-interface {p0}, Lcom/android/systemui/pip/phone/PipMenuActivityController$Listener;->onPipMinimize()V

    return-void
.end method

.method static synthetic lambda$-com_android_systemui_pip_phone_PipMenuActivityController$1_5465(Lcom/android/systemui/pip/phone/PipMenuActivityController$Listener;)V
    .locals 0

    invoke-interface {p0}, Lcom/android/systemui/pip/phone/PipMenuActivityController$Listener;->onPipDismiss()V

    return-void
.end method

.method static synthetic lambda$-com_android_systemui_pip_phone_PipMenuActivityController$1_5615(Lcom/android/systemui/pip/phone/PipMenuActivityController$Listener;)V
    .locals 0

    invoke-interface {p0}, Lcom/android/systemui/pip/phone/PipMenuActivityController$Listener;->onPipShowMenu()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController$1;->this$0:Lcom/android/systemui/pip/phone/PipMenuActivityController;

    invoke-static {v1, v0, v5}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->-wrap0(Lcom/android/systemui/pip/phone/PipMenuActivityController;IZ)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController$1;->this$0:Lcom/android/systemui/pip/phone/PipMenuActivityController;

    invoke-static {v1}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->-get1(Lcom/android/systemui/pip/phone/PipMenuActivityController;)Ljava/util/ArrayList;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/pip/phone/-$Lambda$ZB0vTH4BRyAQB1FhTXfcOlTpmPY;

    invoke-direct {v2}, Lcom/android/systemui/pip/phone/-$Lambda$ZB0vTH4BRyAQB1FhTXfcOlTpmPY;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController$1;->this$0:Lcom/android/systemui/pip/phone/PipMenuActivityController;

    invoke-static {v1}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->-get1(Lcom/android/systemui/pip/phone/PipMenuActivityController;)Ljava/util/ArrayList;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/pip/phone/-$Lambda$ZB0vTH4BRyAQB1FhTXfcOlTpmPY$1;

    invoke-direct {v2}, Lcom/android/systemui/pip/phone/-$Lambda$ZB0vTH4BRyAQB1FhTXfcOlTpmPY$1;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_0

    :pswitch_3
    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController$1;->this$0:Lcom/android/systemui/pip/phone/PipMenuActivityController;

    invoke-static {v1}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->-get1(Lcom/android/systemui/pip/phone/PipMenuActivityController;)Ljava/util/ArrayList;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/pip/phone/-$Lambda$ZB0vTH4BRyAQB1FhTXfcOlTpmPY$2;

    invoke-direct {v2}, Lcom/android/systemui/pip/phone/-$Lambda$ZB0vTH4BRyAQB1FhTXfcOlTpmPY$2;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_0

    :pswitch_4
    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController$1;->this$0:Lcom/android/systemui/pip/phone/PipMenuActivityController;

    invoke-static {v1}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->-get1(Lcom/android/systemui/pip/phone/PipMenuActivityController;)Ljava/util/ArrayList;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/pip/phone/-$Lambda$ZB0vTH4BRyAQB1FhTXfcOlTpmPY$3;

    invoke-direct {v2}, Lcom/android/systemui/pip/phone/-$Lambda$ZB0vTH4BRyAQB1FhTXfcOlTpmPY$3;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_0

    :pswitch_5
    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController$1;->this$0:Lcom/android/systemui/pip/phone/PipMenuActivityController;

    invoke-static {v1}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->-get0(Lcom/android/systemui/pip/phone/PipMenuActivityController;)Lcom/android/systemui/pip/phone/InputConsumerController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/pip/phone/InputConsumerController;->registerInputConsumer()V

    goto :goto_0

    :pswitch_6
    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController$1;->this$0:Lcom/android/systemui/pip/phone/PipMenuActivityController;

    invoke-static {v1}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->-get0(Lcom/android/systemui/pip/phone/PipMenuActivityController;)Lcom/android/systemui/pip/phone/InputConsumerController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/pip/phone/InputConsumerController;->unregisterInputConsumer()V

    goto :goto_0

    :pswitch_7
    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController$1;->this$0:Lcom/android/systemui/pip/phone/PipMenuActivityController;

    iget-object v2, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-static {v1, v2}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->-set3(Lcom/android/systemui/pip/phone/PipMenuActivityController;Landroid/os/Messenger;)Landroid/os/Messenger;

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController$1;->this$0:Lcom/android/systemui/pip/phone/PipMenuActivityController;

    invoke-static {v1, v4}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->-set2(Lcom/android/systemui/pip/phone/PipMenuActivityController;Z)Z

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController$1;->this$0:Lcom/android/systemui/pip/phone/PipMenuActivityController;

    invoke-static {v1}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->-get2(Lcom/android/systemui/pip/phone/PipMenuActivityController;)Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController$1;->this$0:Lcom/android/systemui/pip/phone/PipMenuActivityController;

    invoke-static {v1}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->-get2(Lcom/android/systemui/pip/phone/PipMenuActivityController;)Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->decrement()V

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController$1;->this$0:Lcom/android/systemui/pip/phone/PipMenuActivityController;

    invoke-static {v1, v3}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->-set1(Lcom/android/systemui/pip/phone/PipMenuActivityController;Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;)Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController$1;->this$0:Lcom/android/systemui/pip/phone/PipMenuActivityController;

    invoke-static {v1}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->-get3(Lcom/android/systemui/pip/phone/PipMenuActivityController;)Landroid/os/Messenger;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController$1;->this$0:Lcom/android/systemui/pip/phone/PipMenuActivityController;

    invoke-static {v1, v4, v5}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->-wrap0(Lcom/android/systemui/pip/phone/PipMenuActivityController;IZ)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_7
        :pswitch_5
        :pswitch_6
        :pswitch_4
    .end packed-switch
.end method
