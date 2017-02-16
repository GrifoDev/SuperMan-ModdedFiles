.class final Landroid/hardware/input/InputManager$InputDeviceListenerDelegate;
.super Landroid/os/Handler;
.source "InputManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/input/InputManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InputDeviceListenerDelegate"
.end annotation


# instance fields
.field public final mListener:Landroid/hardware/input/InputManager$InputDeviceListener;


# direct methods
.method public constructor <init>(Landroid/hardware/input/InputManager$InputDeviceListener;Landroid/os/Handler;)V
    .locals 1
    .param p1, "listener"    # Landroid/hardware/input/InputManager$InputDeviceListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 1415
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    :goto_0
    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1416
    iput-object p1, p0, Landroid/hardware/input/InputManager$InputDeviceListenerDelegate;->mListener:Landroid/hardware/input/InputManager$InputDeviceListener;

    .line 1414
    return-void

    .line 1415
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1421
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1420
    :goto_0
    return-void

    .line 1423
    :pswitch_0
    iget-object v0, p0, Landroid/hardware/input/InputManager$InputDeviceListenerDelegate;->mListener:Landroid/hardware/input/InputManager$InputDeviceListener;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1}, Landroid/hardware/input/InputManager$InputDeviceListener;->onInputDeviceAdded(I)V

    goto :goto_0

    .line 1426
    :pswitch_1
    iget-object v0, p0, Landroid/hardware/input/InputManager$InputDeviceListenerDelegate;->mListener:Landroid/hardware/input/InputManager$InputDeviceListener;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1}, Landroid/hardware/input/InputManager$InputDeviceListener;->onInputDeviceRemoved(I)V

    goto :goto_0

    .line 1429
    :pswitch_2
    iget-object v0, p0, Landroid/hardware/input/InputManager$InputDeviceListenerDelegate;->mListener:Landroid/hardware/input/InputManager$InputDeviceListener;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1}, Landroid/hardware/input/InputManager$InputDeviceListener;->onInputDeviceChanged(I)V

    goto :goto_0

    .line 1421
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
