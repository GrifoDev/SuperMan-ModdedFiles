.class public abstract Landroid/media/session/ISessionController$Stub;
.super Landroid/os/Binder;
.source "ISessionController.java"

# interfaces
.implements Landroid/media/session/ISessionController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/session/ISessionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/session/ISessionController$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.media.session.ISessionController"

.field static final TRANSACTION_adjustVolume:I = 0xb

.field static final TRANSACTION_fastForward:I = 0x1b

.field static final TRANSACTION_getExtras:I = 0x24

.field static final TRANSACTION_getFlags:I = 0x9

.field static final TRANSACTION_getLaunchPendingIntent:I = 0x8

.field static final TRANSACTION_getMediaButtonReceiver:I = 0xd

.field static final TRANSACTION_getMetadata:I = 0x20

.field static final TRANSACTION_getPackageName:I = 0x6

.field static final TRANSACTION_getPlaybackState:I = 0x21

.field static final TRANSACTION_getQueue:I = 0x22

.field static final TRANSACTION_getQueueTitle:I = 0x23

.field static final TRANSACTION_getRatingType:I = 0x25

.field static final TRANSACTION_getTag:I = 0x7

.field static final TRANSACTION_getVolumeAttributes:I = 0xa

.field static final TRANSACTION_isTransportControlEnabled:I = 0x5

.field static final TRANSACTION_next:I = 0x19

.field static final TRANSACTION_pause:I = 0x17

.field static final TRANSACTION_play:I = 0x12

.field static final TRANSACTION_playFromMediaId:I = 0x13

.field static final TRANSACTION_playFromSearch:I = 0x14

.field static final TRANSACTION_playFromUri:I = 0x15

.field static final TRANSACTION_prepare:I = 0xe

.field static final TRANSACTION_prepareFromMediaId:I = 0xf

.field static final TRANSACTION_prepareFromSearch:I = 0x10

.field static final TRANSACTION_prepareFromUri:I = 0x11

.field static final TRANSACTION_previous:I = 0x1a

.field static final TRANSACTION_rate:I = 0x1e

.field static final TRANSACTION_registerCallbackListener:I = 0x3

.field static final TRANSACTION_rewind:I = 0x1c

.field static final TRANSACTION_seekTo:I = 0x1d

.field static final TRANSACTION_sendCommand:I = 0x1

.field static final TRANSACTION_sendCustomAction:I = 0x1f

.field static final TRANSACTION_sendMediaButton:I = 0x2

.field static final TRANSACTION_setVolumeTo:I = 0xc

.field static final TRANSACTION_skipToQueueItem:I = 0x16

.field static final TRANSACTION_stop:I = 0x18

.field static final TRANSACTION_unregisterCallbackListener:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "android.media.session.ISessionController"

    invoke-virtual {p0, p0, v0}, Landroid/media/session/ISessionController$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/media/session/ISessionController;
    .locals 2

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const-string/jumbo v1, "android.media.session.ISessionController"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/media/session/ISessionController;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/media/session/ISessionController;

    return-object v0

    :cond_1
    new-instance v1, Landroid/media/session/ISessionController$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/media/session/ISessionController$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 29
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sparse-switch p1, :sswitch_data_0

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v28

    return v28

    :sswitch_0
    const-string/jumbo v28, "android.media.session.ISessionController"

    move-object/from16 v0, p3

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/16 v28, 0x1

    return v28

    :sswitch_1
    const-string/jumbo v28, "android.media.session.ISessionController"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v28

    if-eqz v28, :cond_0

    sget-object v28, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v28

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/Bundle;

    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v28

    if-eqz v28, :cond_1

    sget-object v28, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v28

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/os/ResultReceiver;

    :goto_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v13, v14}, Landroid/media/session/ISessionController$Stub;->sendCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v28, 0x1

    return v28

    :cond_0
    const/4 v13, 0x0

    goto :goto_0

    :cond_1
    const/4 v14, 0x0

    goto :goto_1

    :sswitch_2
    const-string/jumbo v28, "android.media.session.ISessionController"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v28

    if-eqz v28, :cond_2

    sget-object v28, Landroid/view/KeyEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v28

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/KeyEvent;

    :goto_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/media/session/ISessionController$Stub;->sendMediaButton(Landroid/view/KeyEvent;)Z

    move-result v27

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v27, :cond_3

    const/16 v28, 0x1

    :goto_3
    move-object/from16 v0, p3

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v28, 0x1

    return v28

    :cond_2
    const/4 v10, 0x0

    goto :goto_2

    :cond_3
    const/16 v28, 0x0

    goto :goto_3

    :sswitch_3
    const-string/jumbo v28, "android.media.session.ISessionController"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Landroid/media/session/ISessionControllerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/session/ISessionControllerCallback;

    move-result-object v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/media/session/ISessionController$Stub;->registerCallbackListener(Landroid/media/session/ISessionControllerCallback;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v28, 0x1

    return v28

    :sswitch_4
    const-string/jumbo v28, "android.media.session.ISessionController"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Landroid/media/session/ISessionControllerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/session/ISessionControllerCallback;

    move-result-object v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/media/session/ISessionController$Stub;->unregisterCallbackListener(Landroid/media/session/ISessionControllerCallback;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v28, 0x1

    return v28

    :sswitch_5
    const-string/jumbo v28, "android.media.session.ISessionController"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/media/session/ISessionController$Stub;->isTransportControlEnabled()Z

    move-result v27

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v27, :cond_4

    const/16 v28, 0x1

    :goto_4
    move-object/from16 v0, p3

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v28, 0x1

    return v28

    :cond_4
    const/16 v28, 0x0

    goto :goto_4

    :sswitch_6
    const-string/jumbo v28, "android.media.session.ISessionController"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/media/session/ISessionController$Stub;->getPackageName()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/16 v28, 0x1

    return v28

    :sswitch_7
    const-string/jumbo v28, "android.media.session.ISessionController"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/media/session/ISessionController$Stub;->getTag()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/16 v28, 0x1

    return v28

    :sswitch_8
    const-string/jumbo v28, "android.media.session.ISessionController"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/media/session/ISessionController$Stub;->getLaunchPendingIntent()Landroid/app/PendingIntent;

    move-result-object v17

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v17, :cond_5

    const/16 v28, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v28, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_5
    const/16 v28, 0x1

    return v28

    :cond_5
    const/16 v28, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_5

    :sswitch_9
    const-string/jumbo v28, "android.media.session.ISessionController"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/media/session/ISessionController$Stub;->getFlags()J

    move-result-wide v18

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    const/16 v28, 0x1

    return v28

    :sswitch_a
    const-string/jumbo v28, "android.media.session.ISessionController"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/media/session/ISessionController$Stub;->getVolumeAttributes()Landroid/media/session/ParcelableVolumeInfo;

    move-result-object v22

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v22, :cond_6

    const/16 v28, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v28, 0x1

    move-object/from16 v0, v22

    move-object/from16 v1, p3

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/media/session/ParcelableVolumeInfo;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_6
    const/16 v28, 0x1

    return v28

    :cond_6
    const/16 v28, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_6

    :sswitch_b
    const-string/jumbo v28, "android.media.session.ISessionController"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v12, v15}, Landroid/media/session/ISessionController$Stub;->adjustVolume(IILjava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v28, 0x1

    return v28

    :sswitch_c
    const-string/jumbo v28, "android.media.session.ISessionController"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v12, v15}, Landroid/media/session/ISessionController$Stub;->setVolumeTo(IILjava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v28, 0x1

    return v28

    :sswitch_d
    const-string/jumbo v28, "android.media.session.ISessionController"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/media/session/ISessionController$Stub;->getMediaButtonReceiver()Landroid/app/PendingIntent;

    move-result-object v17

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v17, :cond_7

    const/16 v28, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v28, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_7
    const/16 v28, 0x1

    return v28

    :cond_7
    const/16 v28, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_7

    :sswitch_e
    const-string/jumbo v28, "android.media.session.ISessionController"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/media/session/ISessionController$Stub;->prepare()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v28, 0x1

    return v28

    :sswitch_f
    const-string/jumbo v28, "android.media.session.ISessionController"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v28

    if-eqz v28, :cond_8

    sget-object v28, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v28

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/Bundle;

    :goto_8
    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v13}, Landroid/media/session/ISessionController$Stub;->prepareFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v28, 0x1

    return v28

    :cond_8
    const/4 v13, 0x0

    goto :goto_8

    :sswitch_10
    const-string/jumbo v28, "android.media.session.ISessionController"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v28

    if-eqz v28, :cond_9

    sget-object v28, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v28

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/Bundle;

    :goto_9
    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v13}, Landroid/media/session/ISessionController$Stub;->prepareFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v28, 0x1

    return v28

    :cond_9
    const/4 v13, 0x0

    goto :goto_9

    :sswitch_11
    const-string/jumbo v28, "android.media.session.ISessionController"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v28

    if-eqz v28, :cond_a

    sget-object v28, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v28

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/Uri;

    :goto_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v28

    if-eqz v28, :cond_b

    sget-object v28, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v28

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/Bundle;

    :goto_b
    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v13}, Landroid/media/session/ISessionController$Stub;->prepareFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v28, 0x1

    return v28

    :cond_a
    const/4 v9, 0x0

    goto :goto_a

    :cond_b
    const/4 v13, 0x0

    goto :goto_b

    :sswitch_12
    const-string/jumbo v28, "android.media.session.ISessionController"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/media/session/ISessionController$Stub;->play()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v28, 0x1

    return v28

    :sswitch_13
    const-string/jumbo v28, "android.media.session.ISessionController"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v28

    if-eqz v28, :cond_c

    sget-object v28, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v28

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/Bundle;

    :goto_c
    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v13}, Landroid/media/session/ISessionController$Stub;->playFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v28, 0x1

    return v28

    :cond_c
    const/4 v13, 0x0

    goto :goto_c

    :sswitch_14
    const-string/jumbo v28, "android.media.session.ISessionController"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v28

    if-eqz v28, :cond_d

    sget-object v28, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v28

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/Bundle;

    :goto_d
    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v13}, Landroid/media/session/ISessionController$Stub;->playFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v28, 0x1

    return v28

    :cond_d
    const/4 v13, 0x0

    goto :goto_d

    :sswitch_15
    const-string/jumbo v28, "android.media.session.ISessionController"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v28

    if-eqz v28, :cond_e

    sget-object v28, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v28

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/Uri;

    :goto_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v28

    if-eqz v28, :cond_f

    sget-object v28, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v28

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/Bundle;

    :goto_f
    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v13}, Landroid/media/session/ISessionController$Stub;->playFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v28, 0x1

    return v28

    :cond_e
    const/4 v9, 0x0

    goto :goto_e

    :cond_f
    const/4 v13, 0x0

    goto :goto_f

    :sswitch_16
    const-string/jumbo v28, "android.media.session.ISessionController"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Landroid/media/session/ISessionController$Stub;->skipToQueueItem(J)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v28, 0x1

    return v28

    :sswitch_17
    const-string/jumbo v28, "android.media.session.ISessionController"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/media/session/ISessionController$Stub;->pause()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v28, 0x1

    return v28

    :sswitch_18
    const-string/jumbo v28, "android.media.session.ISessionController"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/media/session/ISessionController$Stub;->stop()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v28, 0x1

    return v28

    :sswitch_19
    const-string/jumbo v28, "android.media.session.ISessionController"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/media/session/ISessionController$Stub;->next()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v28, 0x1

    return v28

    :sswitch_1a
    const-string/jumbo v28, "android.media.session.ISessionController"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/media/session/ISessionController$Stub;->previous()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v28, 0x1

    return v28

    :sswitch_1b
    const-string/jumbo v28, "android.media.session.ISessionController"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/media/session/ISessionController$Stub;->fastForward()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v28, 0x1

    return v28

    :sswitch_1c
    const-string/jumbo v28, "android.media.session.ISessionController"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/media/session/ISessionController$Stub;->rewind()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v28, 0x1

    return v28

    :sswitch_1d
    const-string/jumbo v28, "android.media.session.ISessionController"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Landroid/media/session/ISessionController$Stub;->seekTo(J)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v28, 0x1

    return v28

    :sswitch_1e
    const-string/jumbo v28, "android.media.session.ISessionController"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v28

    if-eqz v28, :cond_10

    sget-object v28, Landroid/media/Rating;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v28

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/Rating;

    :goto_10
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/media/session/ISessionController$Stub;->rate(Landroid/media/Rating;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v28, 0x1

    return v28

    :cond_10
    const/4 v5, 0x0

    goto :goto_10

    :sswitch_1f
    const-string/jumbo v28, "android.media.session.ISessionController"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v28

    if-eqz v28, :cond_11

    sget-object v28, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v28

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/Bundle;

    :goto_11
    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v13}, Landroid/media/session/ISessionController$Stub;->sendCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v28, 0x1

    return v28

    :cond_11
    const/4 v13, 0x0

    goto :goto_11

    :sswitch_20
    const-string/jumbo v28, "android.media.session.ISessionController"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/media/session/ISessionController$Stub;->getMetadata()Landroid/media/MediaMetadata;

    move-result-object v21

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v21, :cond_12

    const/16 v28, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v28, 0x1

    move-object/from16 v0, v21

    move-object/from16 v1, p3

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaMetadata;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_12
    const/16 v28, 0x1

    return v28

    :cond_12
    const/16 v28, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_12

    :sswitch_21
    const-string/jumbo v28, "android.media.session.ISessionController"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/media/session/ISessionController$Stub;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v23

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v23, :cond_13

    const/16 v28, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v28, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, p3

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/media/session/PlaybackState;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_13
    const/16 v28, 0x1

    return v28

    :cond_13
    const/16 v28, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_13

    :sswitch_22
    const-string/jumbo v28, "android.media.session.ISessionController"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/media/session/ISessionController$Stub;->getQueue()Landroid/content/pm/ParceledListSlice;

    move-result-object v20

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v20, :cond_14

    const/16 v28, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v28, 0x1

    move-object/from16 v0, v20

    move-object/from16 v1, p3

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_14
    const/16 v28, 0x1

    return v28

    :cond_14
    const/16 v28, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_14

    :sswitch_23
    const-string/jumbo v28, "android.media.session.ISessionController"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/media/session/ISessionController$Stub;->getQueueTitle()Ljava/lang/CharSequence;

    move-result-object v25

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v25, :cond_15

    const/16 v28, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v28, 0x1

    move-object/from16 v0, v25

    move-object/from16 v1, p3

    move/from16 v2, v28

    invoke-static {v0, v1, v2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    :goto_15
    const/16 v28, 0x1

    return v28

    :cond_15
    const/16 v28, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_15

    :sswitch_24
    const-string/jumbo v28, "android.media.session.ISessionController"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/media/session/ISessionController$Stub;->getExtras()Landroid/os/Bundle;

    move-result-object v24

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v24, :cond_16

    const/16 v28, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v28, 0x1

    move-object/from16 v0, v24

    move-object/from16 v1, p3

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_16
    const/16 v28, 0x1

    return v28

    :cond_16
    const/16 v28, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_16

    :sswitch_25
    const-string/jumbo v28, "android.media.session.ISessionController"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/media/session/ISessionController$Stub;->getRatingType()I

    move-result v16

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v28, 0x1

    return v28

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
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x22 -> :sswitch_22
        0x23 -> :sswitch_23
        0x24 -> :sswitch_24
        0x25 -> :sswitch_25
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
