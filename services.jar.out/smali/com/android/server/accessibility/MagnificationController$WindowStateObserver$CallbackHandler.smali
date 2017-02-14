.class Lcom/android/server/accessibility/MagnificationController$WindowStateObserver$CallbackHandler;
.super Landroid/os/Handler;
.source "MagnificationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/MagnificationController$WindowStateObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallbackHandler"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/accessibility/MagnificationController$WindowStateObserver;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/MagnificationController$WindowStateObserver;Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/accessibility/MagnificationController$WindowStateObserver$CallbackHandler;->this$1:Lcom/android/server/accessibility/MagnificationController$WindowStateObserver;

    invoke-virtual {p2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Landroid/graphics/Region;

    iget-object v6, p0, Lcom/android/server/accessibility/MagnificationController$WindowStateObserver$CallbackHandler;->this$1:Lcom/android/server/accessibility/MagnificationController$WindowStateObserver;

    invoke-static {v6, v3}, Lcom/android/server/accessibility/MagnificationController$WindowStateObserver;->-wrap0(Lcom/android/server/accessibility/MagnificationController$WindowStateObserver;Landroid/graphics/Region;)V

    invoke-virtual {v3}, Landroid/graphics/Region;->recycle()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    iget v2, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    iget v5, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    iget v4, v0, Lcom/android/internal/os/SomeArgs;->argi3:I

    iget v1, v0, Lcom/android/internal/os/SomeArgs;->argi4:I

    iget-object v6, p0, Lcom/android/server/accessibility/MagnificationController$WindowStateObserver$CallbackHandler;->this$1:Lcom/android/server/accessibility/MagnificationController$WindowStateObserver;

    invoke-static {v6, v2, v5, v4, v1}, Lcom/android/server/accessibility/MagnificationController$WindowStateObserver;->-wrap1(Lcom/android/server/accessibility/MagnificationController$WindowStateObserver;IIII)V

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto :goto_0

    :pswitch_2
    iget-object v6, p0, Lcom/android/server/accessibility/MagnificationController$WindowStateObserver$CallbackHandler;->this$1:Lcom/android/server/accessibility/MagnificationController$WindowStateObserver;

    invoke-static {v6}, Lcom/android/server/accessibility/MagnificationController$WindowStateObserver;->-wrap3(Lcom/android/server/accessibility/MagnificationController$WindowStateObserver;)V

    goto :goto_0

    :pswitch_3
    iget-object v6, p0, Lcom/android/server/accessibility/MagnificationController$WindowStateObserver$CallbackHandler;->this$1:Lcom/android/server/accessibility/MagnificationController$WindowStateObserver;

    invoke-static {v6}, Lcom/android/server/accessibility/MagnificationController$WindowStateObserver;->-wrap2(Lcom/android/server/accessibility/MagnificationController$WindowStateObserver;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
