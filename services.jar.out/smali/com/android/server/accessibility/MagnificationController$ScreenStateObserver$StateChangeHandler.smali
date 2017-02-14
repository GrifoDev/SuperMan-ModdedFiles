.class Lcom/android/server/accessibility/MagnificationController$ScreenStateObserver$StateChangeHandler;
.super Landroid/os/Handler;
.source "MagnificationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/MagnificationController$ScreenStateObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StateChangeHandler"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/accessibility/MagnificationController$ScreenStateObserver;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/MagnificationController$ScreenStateObserver;Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/accessibility/MagnificationController$ScreenStateObserver$StateChangeHandler;->this$1:Lcom/android/server/accessibility/MagnificationController$ScreenStateObserver;

    invoke-virtual {p2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController$ScreenStateObserver$StateChangeHandler;->this$1:Lcom/android/server/accessibility/MagnificationController$ScreenStateObserver;

    invoke-static {v0}, Lcom/android/server/accessibility/MagnificationController$ScreenStateObserver;->-wrap0(Lcom/android/server/accessibility/MagnificationController$ScreenStateObserver;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
