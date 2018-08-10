.class Lcom/android/systemui/stackdivider/DividerPanel$H;
.super Landroid/os/Handler;
.source "DividerPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/stackdivider/DividerPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "H"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/stackdivider/events/DividerButtonsVisibleEvent;

    const/4 v2, 0x7

    invoke-direct {v1, v2}, Lcom/android/systemui/stackdivider/events/DividerButtonsVisibleEvent;-><init>(I)V

    const-string/jumbo v2, "BUTTONS_SHOW_ANIM"

    invoke-virtual {v1, v2}, Lcom/android/systemui/stackdivider/events/DividerButtonsVisibleEvent;->setReason(Ljava/lang/String;)Lcom/android/systemui/recents/events/EventBus$Event;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->post(Lcom/android/systemui/recents/events/EventBus$Event;)V

    goto :goto_0

    :pswitch_1
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/stackdivider/events/DividerButtonsVisibleEvent;

    const/4 v2, 0x6

    invoke-direct {v1, v2}, Lcom/android/systemui/stackdivider/events/DividerButtonsVisibleEvent;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->post(Lcom/android/systemui/recents/events/EventBus$Event;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
