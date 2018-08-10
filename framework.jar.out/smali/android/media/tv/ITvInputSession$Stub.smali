.class public abstract Landroid/media/tv/ITvInputSession$Stub;
.super Landroid/os/Binder;
.source "ITvInputSession.java"

# interfaces
.implements Landroid/media/tv/ITvInputSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/ITvInputSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/ITvInputSession$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.media.tv.ITvInputSession"

.field static final TRANSACTION_appPrivateCommand:I = 0x9

.field static final TRANSACTION_createOverlayView:I = 0xa

.field static final TRANSACTION_dispatchSurfaceChanged:I = 0x4

.field static final TRANSACTION_relayoutOverlayView:I = 0xb

.field static final TRANSACTION_release:I = 0x1

.field static final TRANSACTION_removeOverlayView:I = 0xc

.field static final TRANSACTION_selectTrack:I = 0x8

.field static final TRANSACTION_setCaptionEnabled:I = 0x7

.field static final TRANSACTION_setMain:I = 0x2

.field static final TRANSACTION_setSurface:I = 0x3

.field static final TRANSACTION_setVolume:I = 0x5

.field static final TRANSACTION_startRecording:I = 0x14

.field static final TRANSACTION_stopRecording:I = 0x15

.field static final TRANSACTION_timeShiftEnablePositionTracking:I = 0x13

.field static final TRANSACTION_timeShiftPause:I = 0xf

.field static final TRANSACTION_timeShiftPlay:I = 0xe

.field static final TRANSACTION_timeShiftResume:I = 0x10

.field static final TRANSACTION_timeShiftSeekTo:I = 0x11

.field static final TRANSACTION_timeShiftSetPlaybackParams:I = 0x12

.field static final TRANSACTION_tune:I = 0x6

.field static final TRANSACTION_unblockContent:I = 0xd


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "android.media.tv.ITvInputSession"

    invoke-virtual {p0, p0, v0}, Landroid/media/tv/ITvInputSession$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/media/tv/ITvInputSession;
    .locals 2

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const-string/jumbo v1, "android.media.tv.ITvInputSession"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/media/tv/ITvInputSession;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/media/tv/ITvInputSession;

    return-object v0

    :cond_1
    new-instance v1, Landroid/media/tv/ITvInputSession$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/media/tv/ITvInputSession$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sparse-switch p1, :sswitch_data_0

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v18

    return v18

    :sswitch_0
    const-string/jumbo v18, "android.media.tv.ITvInputSession"

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/16 v18, 0x1

    return v18

    :sswitch_1
    const-string/jumbo v18, "android.media.tv.ITvInputSession"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/media/tv/ITvInputSession$Stub;->release()V

    const/16 v18, 0x1

    return v18

    :sswitch_2
    const-string/jumbo v18, "android.media.tv.ITvInputSession"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    if-eqz v18, :cond_0

    const/4 v12, 0x1

    :goto_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/media/tv/ITvInputSession$Stub;->setMain(Z)V

    const/16 v18, 0x1

    return v18

    :cond_0
    const/4 v12, 0x0

    goto :goto_0

    :sswitch_3
    const-string/jumbo v18, "android.media.tv.ITvInputSession"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    if-eqz v18, :cond_1

    sget-object v18, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/Surface;

    :goto_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/media/tv/ITvInputSession$Stub;->setSurface(Landroid/view/Surface;)V

    const/16 v18, 0x1

    return v18

    :cond_1
    const/4 v10, 0x0

    goto :goto_1

    :sswitch_4
    const-string/jumbo v18, "android.media.tv.ITvInputSession"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v3, v13, v1}, Landroid/media/tv/ITvInputSession$Stub;->dispatchSurfaceChanged(III)V

    const/16 v18, 0x1

    return v18

    :sswitch_5
    const-string/jumbo v18, "android.media.tv.ITvInputSession"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/media/tv/ITvInputSession$Stub;->setVolume(F)V

    const/16 v18, 0x1

    return v18

    :sswitch_6
    const-string/jumbo v18, "android.media.tv.ITvInputSession"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    if-eqz v18, :cond_2

    sget-object v18, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/Uri;

    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    if-eqz v18, :cond_3

    sget-object v18, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/os/Bundle;

    :goto_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v15}, Landroid/media/tv/ITvInputSession$Stub;->tune(Landroid/net/Uri;Landroid/os/Bundle;)V

    const/16 v18, 0x1

    return v18

    :cond_2
    const/4 v8, 0x0

    goto :goto_2

    :cond_3
    const/4 v15, 0x0

    goto :goto_3

    :sswitch_7
    const-string/jumbo v18, "android.media.tv.ITvInputSession"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    if-eqz v18, :cond_4

    const/4 v12, 0x1

    :goto_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/media/tv/ITvInputSession$Stub;->setCaptionEnabled(Z)V

    const/16 v18, 0x1

    return v18

    :cond_4
    const/4 v12, 0x0

    goto :goto_4

    :sswitch_8
    const-string/jumbo v18, "android.media.tv.ITvInputSession"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v3, v1}, Landroid/media/tv/ITvInputSession$Stub;->selectTrack(ILjava/lang/String;)V

    const/16 v18, 0x1

    return v18

    :sswitch_9
    const-string/jumbo v18, "android.media.tv.ITvInputSession"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    if-eqz v18, :cond_5

    sget-object v18, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/os/Bundle;

    :goto_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v15}, Landroid/media/tv/ITvInputSession$Stub;->appPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    const/16 v18, 0x1

    return v18

    :cond_5
    const/4 v15, 0x0

    goto :goto_5

    :sswitch_a
    const-string/jumbo v18, "android.media.tv.ITvInputSession"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    if-eqz v18, :cond_6

    sget-object v18, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/graphics/Rect;

    :goto_6
    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v14}, Landroid/media/tv/ITvInputSession$Stub;->createOverlayView(Landroid/os/IBinder;Landroid/graphics/Rect;)V

    const/16 v18, 0x1

    return v18

    :cond_6
    const/4 v14, 0x0

    goto :goto_6

    :sswitch_b
    const-string/jumbo v18, "android.media.tv.ITvInputSession"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    if-eqz v18, :cond_7

    sget-object v18, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Rect;

    :goto_7
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/media/tv/ITvInputSession$Stub;->relayoutOverlayView(Landroid/graphics/Rect;)V

    const/16 v18, 0x1

    return v18

    :cond_7
    const/4 v6, 0x0

    goto :goto_7

    :sswitch_c
    const-string/jumbo v18, "android.media.tv.ITvInputSession"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/media/tv/ITvInputSession$Stub;->removeOverlayView()V

    const/16 v18, 0x1

    return v18

    :sswitch_d
    const-string/jumbo v18, "android.media.tv.ITvInputSession"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/media/tv/ITvInputSession$Stub;->unblockContent(Ljava/lang/String;)V

    const/16 v18, 0x1

    return v18

    :sswitch_e
    const-string/jumbo v18, "android.media.tv.ITvInputSession"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    if-eqz v18, :cond_8

    sget-object v18, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/Uri;

    :goto_8
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/media/tv/ITvInputSession$Stub;->timeShiftPlay(Landroid/net/Uri;)V

    const/16 v18, 0x1

    return v18

    :cond_8
    const/4 v8, 0x0

    goto :goto_8

    :sswitch_f
    const-string/jumbo v18, "android.media.tv.ITvInputSession"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/media/tv/ITvInputSession$Stub;->timeShiftPause()V

    const/16 v18, 0x1

    return v18

    :sswitch_10
    const-string/jumbo v18, "android.media.tv.ITvInputSession"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/media/tv/ITvInputSession$Stub;->timeShiftResume()V

    const/16 v18, 0x1

    return v18

    :sswitch_11
    const-string/jumbo v18, "android.media.tv.ITvInputSession"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/media/tv/ITvInputSession$Stub;->timeShiftSeekTo(J)V

    const/16 v18, 0x1

    return v18

    :sswitch_12
    const-string/jumbo v18, "android.media.tv.ITvInputSession"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    if-eqz v18, :cond_9

    sget-object v18, Landroid/media/PlaybackParams;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/media/PlaybackParams;

    :goto_9
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/media/tv/ITvInputSession$Stub;->timeShiftSetPlaybackParams(Landroid/media/PlaybackParams;)V

    const/16 v18, 0x1

    return v18

    :cond_9
    const/4 v7, 0x0

    goto :goto_9

    :sswitch_13
    const-string/jumbo v18, "android.media.tv.ITvInputSession"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    if-eqz v18, :cond_a

    const/4 v12, 0x1

    :goto_a
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/media/tv/ITvInputSession$Stub;->timeShiftEnablePositionTracking(Z)V

    const/16 v18, 0x1

    return v18

    :cond_a
    const/4 v12, 0x0

    goto :goto_a

    :sswitch_14
    const-string/jumbo v18, "android.media.tv.ITvInputSession"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    if-eqz v18, :cond_b

    sget-object v18, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/Uri;

    :goto_b
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/media/tv/ITvInputSession$Stub;->startRecording(Landroid/net/Uri;)V

    const/16 v18, 0x1

    return v18

    :cond_b
    const/4 v8, 0x0

    goto :goto_b

    :sswitch_15
    const-string/jumbo v18, "android.media.tv.ITvInputSession"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/media/tv/ITvInputSession$Stub;->stopRecording()V

    const/16 v18, 0x1

    return v18

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
