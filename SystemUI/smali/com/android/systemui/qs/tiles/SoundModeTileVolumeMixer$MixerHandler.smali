.class final Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$MixerHandler;
.super Landroid/os/Handler;
.source "SoundModeTileVolumeMixer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MixerHandler"
.end annotation


# static fields
.field private static final HANDLER_DELAY_TIME:I = 0x32

.field private static final REFRESH_RADIO_BUTTONS:I = 0x855


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;


# direct methods
.method private constructor <init>(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$MixerHandler;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$MixerHandler;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$MixerHandler;-><init>(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;)V

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
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$MixerHandler;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->-get6(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;)Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeMixerTileCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeMixerTileCallback;->refreshRadioButtons()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x855
        :pswitch_0
    .end packed-switch
.end method

.method public sendNewMessage(I)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$MixerHandler;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->-get3(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;)Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$MixerHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$MixerHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$MixerHandler;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->-get3(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;)Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$MixerHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$MixerHandler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$MixerHandler;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->-get3(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;)Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$MixerHandler;

    move-result-object v0

    const-wide/16 v2, 0x32

    invoke-virtual {v0, p1, v2, v3}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$MixerHandler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
