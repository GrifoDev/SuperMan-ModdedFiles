.class Lcom/samsung/android/media/SemMediaPlayer$EventHandler;
.super Landroid/os/Handler;
.source "SemMediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/media/SemMediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field private mSemMediaPlayer:Lcom/samsung/android/media/SemMediaPlayer;

.field final synthetic this$0:Lcom/samsung/android/media/SemMediaPlayer;


# direct methods
.method public constructor <init>(Lcom/samsung/android/media/SemMediaPlayer;Lcom/samsung/android/media/SemMediaPlayer;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/media/SemMediaPlayer$EventHandler;->this$0:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/samsung/android/media/SemMediaPlayer$EventHandler;->mSemMediaPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14

    iget-object v10, p0, Lcom/samsung/android/media/SemMediaPlayer$EventHandler;->mSemMediaPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-static {v10}, Lcom/samsung/android/media/SemMediaPlayer;->-get0(Lcom/samsung/android/media/SemMediaPlayer;)J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-nez v10, :cond_0

    const-string/jumbo v10, "SemMediaPlayer"

    const-string/jumbo v11, "semmediaplayer went away with unhandled events"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget v10, p1, Landroid/os/Message;->what:I

    sparse-switch v10, :sswitch_data_0

    const-string/jumbo v10, "SemMediaPlayer"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Unknown message type "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p1, Landroid/os/Message;->what:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :sswitch_0
    const/4 v9, 0x0

    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v10, v10, Landroid/os/Parcel;

    if-eqz v10, :cond_2

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/Parcel;

    sget-object v10, Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v10}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;

    invoke-virtual {v8}, Landroid/os/Parcel;->recycle()V

    :cond_2
    iget-object v10, p0, Lcom/samsung/android/media/SemMediaPlayer$EventHandler;->this$0:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-static {v10}, Lcom/samsung/android/media/SemMediaPlayer;->-get3(Lcom/samsung/android/media/SemMediaPlayer;)Lcom/samsung/android/media/SemMediaPlayer$OnInitCompleteListener;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v10, p0, Lcom/samsung/android/media/SemMediaPlayer$EventHandler;->mSemMediaPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-interface {v4, v10, v9}, Lcom/samsung/android/media/SemMediaPlayer$OnInitCompleteListener;->onInitComplete(Lcom/samsung/android/media/SemMediaPlayer;[Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;)V

    goto :goto_0

    :sswitch_1
    iget-object v10, p0, Lcom/samsung/android/media/SemMediaPlayer$EventHandler;->this$0:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-static {v10}, Lcom/samsung/android/media/SemMediaPlayer;->-get4(Lcom/samsung/android/media/SemMediaPlayer;)Lcom/samsung/android/media/SemMediaPlayer$OnPlaybackCompleteListener;

    move-result-object v5

    if-eqz v5, :cond_3

    iget-object v10, p0, Lcom/samsung/android/media/SemMediaPlayer$EventHandler;->mSemMediaPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-interface {v5, v10}, Lcom/samsung/android/media/SemMediaPlayer$OnPlaybackCompleteListener;->onPlaybackComplete(Lcom/samsung/android/media/SemMediaPlayer;)V

    :cond_3
    iget-object v10, p0, Lcom/samsung/android/media/SemMediaPlayer$EventHandler;->this$0:Lcom/samsung/android/media/SemMediaPlayer;

    const/4 v11, 0x0

    invoke-static {v10, v11}, Lcom/samsung/android/media/SemMediaPlayer;->-wrap0(Lcom/samsung/android/media/SemMediaPlayer;Z)V

    goto :goto_0

    :sswitch_2
    iget-object v10, p0, Lcom/samsung/android/media/SemMediaPlayer$EventHandler;->this$0:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-static {v10}, Lcom/samsung/android/media/SemMediaPlayer;->-get5(Lcom/samsung/android/media/SemMediaPlayer;)Lcom/samsung/android/media/SemMediaPlayer$OnSeekCompleteListener;

    move-result-object v6

    if-eqz v6, :cond_1

    iget-object v10, p0, Lcom/samsung/android/media/SemMediaPlayer$EventHandler;->mSemMediaPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-interface {v6, v10}, Lcom/samsung/android/media/SemMediaPlayer$OnSeekCompleteListener;->onSeekComplete(Lcom/samsung/android/media/SemMediaPlayer;)V

    goto :goto_0

    :sswitch_3
    const/4 v0, 0x0

    iget-object v10, p0, Lcom/samsung/android/media/SemMediaPlayer$EventHandler;->this$0:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-static {v10}, Lcom/samsung/android/media/SemMediaPlayer;->-get1(Lcom/samsung/android/media/SemMediaPlayer;)Lcom/samsung/android/media/SemMediaPlayer$OnErrorListener;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v10, p0, Lcom/samsung/android/media/SemMediaPlayer$EventHandler;->mSemMediaPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    iget v11, p1, Landroid/os/Message;->arg1:I

    iget v12, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v2, v10, v11, v12}, Lcom/samsung/android/media/SemMediaPlayer$OnErrorListener;->onError(Lcom/samsung/android/media/SemMediaPlayer;II)Z

    move-result v0

    :cond_4
    if-nez v0, :cond_5

    iget-object v10, p0, Lcom/samsung/android/media/SemMediaPlayer$EventHandler;->this$0:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-static {v10}, Lcom/samsung/android/media/SemMediaPlayer;->-get4(Lcom/samsung/android/media/SemMediaPlayer;)Lcom/samsung/android/media/SemMediaPlayer$OnPlaybackCompleteListener;

    move-result-object v5

    if-eqz v5, :cond_5

    iget-object v10, p0, Lcom/samsung/android/media/SemMediaPlayer$EventHandler;->mSemMediaPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-interface {v5, v10}, Lcom/samsung/android/media/SemMediaPlayer$OnPlaybackCompleteListener;->onPlaybackComplete(Lcom/samsung/android/media/SemMediaPlayer;)V

    :cond_5
    iget-object v10, p0, Lcom/samsung/android/media/SemMediaPlayer$EventHandler;->this$0:Lcom/samsung/android/media/SemMediaPlayer;

    const/4 v11, 0x0

    invoke-static {v10, v11}, Lcom/samsung/android/media/SemMediaPlayer;->-wrap0(Lcom/samsung/android/media/SemMediaPlayer;Z)V

    goto :goto_0

    :sswitch_4
    iget-object v10, p0, Lcom/samsung/android/media/SemMediaPlayer$EventHandler;->this$0:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-static {v10}, Lcom/samsung/android/media/SemMediaPlayer;->-get2(Lcom/samsung/android/media/SemMediaPlayer;)Lcom/samsung/android/media/SemMediaPlayer$OnInfoListener;

    move-result-object v3

    if-eqz v3, :cond_1

    iget v10, p1, Landroid/os/Message;->arg1:I

    const/16 v11, 0x2ade

    if-ne v10, v11, :cond_6

    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v10, v10, Landroid/os/Parcel;

    if-eqz v10, :cond_6

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Parcel;

    iget-object v11, p0, Lcom/samsung/android/media/SemMediaPlayer$EventHandler;->this$0:Lcom/samsung/android/media/SemMediaPlayer;

    sget-object v10, Lcom/samsung/android/media/SemMediaPlayer$SuperSlowRegion;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v10}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Lcom/samsung/android/media/SemMediaPlayer$SuperSlowRegion;

    invoke-static {v11, v10}, Lcom/samsung/android/media/SemMediaPlayer;->-set0(Lcom/samsung/android/media/SemMediaPlayer;[Lcom/samsung/android/media/SemMediaPlayer$SuperSlowRegion;)[Lcom/samsung/android/media/SemMediaPlayer$SuperSlowRegion;

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    :cond_6
    iget-object v10, p0, Lcom/samsung/android/media/SemMediaPlayer$EventHandler;->mSemMediaPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    iget v11, p1, Landroid/os/Message;->arg1:I

    iget v12, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v3, v10, v11, v12}, Lcom/samsung/android/media/SemMediaPlayer$OnInfoListener;->onInfo(Lcom/samsung/android/media/SemMediaPlayer;II)Z

    goto/16 :goto_0

    :sswitch_5
    iget-object v10, p0, Lcom/samsung/android/media/SemMediaPlayer$EventHandler;->this$0:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-static {v10}, Lcom/samsung/android/media/SemMediaPlayer;->-get6(Lcom/samsung/android/media/SemMediaPlayer;)Lcom/samsung/android/media/SemMediaPlayer$OnVideoSizeChangedListener;

    move-result-object v7

    if-eqz v7, :cond_1

    iget-object v10, p0, Lcom/samsung/android/media/SemMediaPlayer$EventHandler;->mSemMediaPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    iget v11, p1, Landroid/os/Message;->arg1:I

    iget v12, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v7, v10, v11, v12}, Lcom/samsung/android/media/SemMediaPlayer$OnVideoSizeChangedListener;->onVideoSizeChanged(Lcom/samsung/android/media/SemMediaPlayer;II)V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_2
        0x5 -> :sswitch_5
        0x64 -> :sswitch_3
        0xc8 -> :sswitch_4
    .end sparse-switch
.end method
