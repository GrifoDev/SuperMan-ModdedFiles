.class final Landroid/hardware/display/DisplayManagerGlobal$VirtualDisplayCallbackDelegate;
.super Landroid/os/Handler;
.source "DisplayManagerGlobal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/display/DisplayManagerGlobal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "VirtualDisplayCallbackDelegate"
.end annotation


# static fields
.field public static final MSG_DISPLAY_PAUSED:I = 0x0

.field public static final MSG_DISPLAY_RESUMED:I = 0x1

.field public static final MSG_DISPLAY_STOPPED:I = 0x2


# instance fields
.field private final mCallback:Landroid/hardware/display/VirtualDisplay$Callback;


# direct methods
.method public constructor <init>(Landroid/hardware/display/VirtualDisplay$Callback;Landroid/os/Handler;)V
    .locals 3
    .param p1, "callback"    # Landroid/hardware/display/VirtualDisplay$Callback;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    const/4 v2, 0x0

    .line 1224
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    :goto_0
    const/4 v1, 0x1

    invoke-direct {p0, v0, v2, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 1225
    iput-object p1, p0, Landroid/hardware/display/DisplayManagerGlobal$VirtualDisplayCallbackDelegate;->mCallback:Landroid/hardware/display/VirtualDisplay$Callback;

    .line 1223
    return-void

    .line 1224
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1230
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1229
    :goto_0
    return-void

    .line 1232
    :pswitch_0
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal$VirtualDisplayCallbackDelegate;->mCallback:Landroid/hardware/display/VirtualDisplay$Callback;

    invoke-virtual {v0}, Landroid/hardware/display/VirtualDisplay$Callback;->onPaused()V

    goto :goto_0

    .line 1235
    :pswitch_1
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal$VirtualDisplayCallbackDelegate;->mCallback:Landroid/hardware/display/VirtualDisplay$Callback;

    invoke-virtual {v0}, Landroid/hardware/display/VirtualDisplay$Callback;->onResumed()V

    goto :goto_0

    .line 1238
    :pswitch_2
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal$VirtualDisplayCallbackDelegate;->mCallback:Landroid/hardware/display/VirtualDisplay$Callback;

    invoke-virtual {v0}, Landroid/hardware/display/VirtualDisplay$Callback;->onStopped()V

    goto :goto_0

    .line 1230
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
