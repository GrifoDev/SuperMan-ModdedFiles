.class Lcom/android/server/accessibility/GestureWakeup$1;
.super Landroid/os/Handler;
.source "GestureWakeup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/GestureWakeup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/accessibility/GestureWakeup;


# direct methods
.method constructor <init>(Lcom/android/server/accessibility/GestureWakeup;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/accessibility/GestureWakeup$1;->this$0:Lcom/android/server/accessibility/GestureWakeup;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/accessibility/GestureWakeup$1;->this$0:Lcom/android/server/accessibility/GestureWakeup;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/android/server/accessibility/GestureWakeup;->-wrap0(Lcom/android/server/accessibility/GestureWakeup;I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
