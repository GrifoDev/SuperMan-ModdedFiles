.class final Landroid/hardware/display/DisplayManagerGlobal$DisplayVolumeListenerDelegate;
.super Landroid/os/Handler;
.source "DisplayManagerGlobal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/display/DisplayManagerGlobal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DisplayVolumeListenerDelegate"
.end annotation


# instance fields
.field public final mListener:Landroid/hardware/display/SemDisplayVolumeListener;


# direct methods
.method public constructor <init>(Landroid/hardware/display/SemDisplayVolumeListener;Landroid/os/Handler;)V
    .locals 3

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    :goto_0
    const/4 v1, 0x1

    invoke-direct {p0, v0, v2, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    iput-object p1, p0, Landroid/hardware/display/DisplayManagerGlobal$DisplayVolumeListenerDelegate;->mListener:Landroid/hardware/display/SemDisplayVolumeListener;

    return-void

    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public clearEvents()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/hardware/display/DisplayManagerGlobal$DisplayVolumeListenerDelegate;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const-string/jumbo v5, "minVol"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string/jumbo v5, "maxVol"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v5, "curVol"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string/jumbo v5, "isMute"

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const-string/jumbo v5, "DisplayManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "handleMessage EVENT_VOLUME_LEVEL_CHANGED= curVol: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Landroid/hardware/display/DisplayManagerGlobal$DisplayVolumeListenerDelegate;->mListener:Landroid/hardware/display/SemDisplayVolumeListener;

    invoke-interface {v5, v4, v3, v0, v2}, Landroid/hardware/display/SemDisplayVolumeListener;->onVolumeChanged(IIIZ)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
    .end packed-switch
.end method

.method public sendDisplayVolumeEvent(ILandroid/os/Bundle;)V
    .locals 1

    invoke-static {p0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    invoke-virtual {p0, v0}, Landroid/hardware/display/DisplayManagerGlobal$DisplayVolumeListenerDelegate;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
