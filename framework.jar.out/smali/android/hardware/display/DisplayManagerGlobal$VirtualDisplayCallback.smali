.class final Landroid/hardware/display/DisplayManagerGlobal$VirtualDisplayCallback;
.super Landroid/hardware/display/IVirtualDisplayCallback$Stub;
.source "DisplayManagerGlobal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/display/DisplayManagerGlobal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "VirtualDisplayCallback"
.end annotation


# instance fields
.field private mDelegate:Landroid/hardware/display/DisplayManagerGlobal$VirtualDisplayCallbackDelegate;


# direct methods
.method public constructor <init>(Landroid/hardware/display/VirtualDisplay$Callback;Landroid/os/Handler;)V
    .locals 1
    .param p1, "callback"    # Landroid/hardware/display/VirtualDisplay$Callback;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 1187
    invoke-direct {p0}, Landroid/hardware/display/IVirtualDisplayCallback$Stub;-><init>()V

    .line 1188
    if-eqz p1, :cond_0

    .line 1189
    new-instance v0, Landroid/hardware/display/DisplayManagerGlobal$VirtualDisplayCallbackDelegate;

    invoke-direct {v0, p1, p2}, Landroid/hardware/display/DisplayManagerGlobal$VirtualDisplayCallbackDelegate;-><init>(Landroid/hardware/display/VirtualDisplay$Callback;Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal$VirtualDisplayCallback;->mDelegate:Landroid/hardware/display/DisplayManagerGlobal$VirtualDisplayCallbackDelegate;

    .line 1187
    :cond_0
    return-void
.end method


# virtual methods
.method public onPaused()V
    .locals 2

    .prologue
    .line 1195
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal$VirtualDisplayCallback;->mDelegate:Landroid/hardware/display/DisplayManagerGlobal$VirtualDisplayCallbackDelegate;

    if-eqz v0, :cond_0

    .line 1196
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal$VirtualDisplayCallback;->mDelegate:Landroid/hardware/display/DisplayManagerGlobal$VirtualDisplayCallbackDelegate;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1194
    :cond_0
    return-void
.end method

.method public onResumed()V
    .locals 2

    .prologue
    .line 1202
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal$VirtualDisplayCallback;->mDelegate:Landroid/hardware/display/DisplayManagerGlobal$VirtualDisplayCallbackDelegate;

    if-eqz v0, :cond_0

    .line 1203
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal$VirtualDisplayCallback;->mDelegate:Landroid/hardware/display/DisplayManagerGlobal$VirtualDisplayCallbackDelegate;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1201
    :cond_0
    return-void
.end method

.method public onStopped()V
    .locals 2

    .prologue
    .line 1209
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal$VirtualDisplayCallback;->mDelegate:Landroid/hardware/display/DisplayManagerGlobal$VirtualDisplayCallbackDelegate;

    if-eqz v0, :cond_0

    .line 1210
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal$VirtualDisplayCallback;->mDelegate:Landroid/hardware/display/DisplayManagerGlobal$VirtualDisplayCallbackDelegate;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1208
    :cond_0
    return-void
.end method
