.class public abstract Lcom/samsung/android/media/fmradio/internal/IFMEventListener$Stub;
.super Landroid/os/Binder;
.source "IFMEventListener.java"

# interfaces
.implements Lcom/samsung/android/media/fmradio/internal/IFMEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/media/fmradio/internal/IFMEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/media/fmradio/internal/IFMEventListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.media.fmradio.internal.IFMEventListener"

.field static final TRANSACTION_onAlternateFrequencyReceived:I = 0xf

.field static final TRANSACTION_onAlternateFrequencyStarted:I = 0xe

.field static final TRANSACTION_onChannelFound:I = 0x3

.field static final TRANSACTION_onHeadsetConnected:I = 0x8

.field static final TRANSACTION_onHeadsetDisconnected:I = 0x9

.field static final TRANSACTION_onProgrammeIdentificationExtendedCountryCodesReceived:I = 0x12

.field static final TRANSACTION_onRadioDataSystemDisabled:I = 0xd

.field static final TRANSACTION_onRadioDataSystemEnabled:I = 0xc

.field static final TRANSACTION_onRadioDataSystemReceived:I = 0xa

.field static final TRANSACTION_onRadioDisabled:I = 0x2

.field static final TRANSACTION_onRadioEnabled:I = 0x1

.field static final TRANSACTION_onRadioTextPlusReceived:I = 0xb

.field static final TRANSACTION_onRecordingFinished:I = 0x11

.field static final TRANSACTION_onScanFinished:I = 0x6

.field static final TRANSACTION_onScanStarted:I = 0x4

.field static final TRANSACTION_onScanStopped:I = 0x5

.field static final TRANSACTION_onTuned:I = 0x7

.field static final TRANSACTION_onVolumeLocked:I = 0x10


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "com.samsung.android.media.fmradio.internal.IFMEventListener"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/media/fmradio/internal/IFMEventListener;
    .locals 2

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const-string/jumbo v1, "com.samsung.android.media.fmradio.internal.IFMEventListener"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    return-object v0

    :cond_1
    new-instance v1, Lcom/samsung/android/media/fmradio/internal/IFMEventListener$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sparse-switch p1, :sswitch_data_0

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    return v2

    :sswitch_0
    const-string/jumbo v2, "com.samsung.android.media.fmradio.internal.IFMEventListener"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v2, 0x1

    return v2

    :sswitch_1
    const-string/jumbo v2, "com.samsung.android.media.fmradio.internal.IFMEventListener"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener$Stub;->onRadioEnabled()V

    const/4 v2, 0x1

    return v2

    :sswitch_2
    const-string/jumbo v2, "com.samsung.android.media.fmradio.internal.IFMEventListener"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener$Stub;->onRadioDisabled(I)V

    const/4 v2, 0x1

    return v2

    :sswitch_3
    const-string/jumbo v2, "com.samsung.android.media.fmradio.internal.IFMEventListener"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v10

    invoke-virtual {p0, v10, v11}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener$Stub;->onChannelFound(J)V

    const/4 v2, 0x1

    return v2

    :sswitch_4
    const-string/jumbo v2, "com.samsung.android.media.fmradio.internal.IFMEventListener"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener$Stub;->onScanStarted()V

    const/4 v2, 0x1

    return v2

    :sswitch_5
    const-string/jumbo v2, "com.samsung.android.media.fmradio.internal.IFMEventListener"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    if-gez v12, :cond_0

    const/4 v9, 0x0

    :goto_0
    invoke-virtual {p0, v9}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener$Stub;->onScanStopped([J)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeLongArray([J)V

    const/4 v2, 0x1

    return v2

    :cond_0
    new-array v9, v12, [J

    goto :goto_0

    :sswitch_6
    const-string/jumbo v2, "com.samsung.android.media.fmradio.internal.IFMEventListener"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    if-gez v12, :cond_1

    const/4 v9, 0x0

    :goto_1
    invoke-virtual {p0, v9}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener$Stub;->onScanFinished([J)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeLongArray([J)V

    const/4 v2, 0x1

    return v2

    :cond_1
    new-array v9, v12, [J

    goto :goto_1

    :sswitch_7
    const-string/jumbo v2, "com.samsung.android.media.fmradio.internal.IFMEventListener"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v10

    invoke-virtual {p0, v10, v11}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener$Stub;->onTuned(J)V

    const/4 v2, 0x1

    return v2

    :sswitch_8
    const-string/jumbo v2, "com.samsung.android.media.fmradio.internal.IFMEventListener"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener$Stub;->onHeadsetConnected()V

    const/4 v2, 0x1

    return v2

    :sswitch_9
    const-string/jumbo v2, "com.samsung.android.media.fmradio.internal.IFMEventListener"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener$Stub;->onHeadsetDisconnected()V

    const/4 v2, 0x1

    return v2

    :sswitch_a
    const-string/jumbo v2, "com.samsung.android.media.fmradio.internal.IFMEventListener"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {p0, v10, v11, v13, v14}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener$Stub;->onRadioDataSystemReceived(JLjava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    return v2

    :sswitch_b
    const-string/jumbo v2, "com.samsung.android.media.fmradio.internal.IFMEventListener"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    move-object v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener$Stub;->onRadioTextPlusReceived(IIIIII)V

    const/4 v2, 0x1

    return v2

    :sswitch_c
    const-string/jumbo v2, "com.samsung.android.media.fmradio.internal.IFMEventListener"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener$Stub;->onRadioDataSystemEnabled()V

    const/4 v2, 0x1

    return v2

    :sswitch_d
    const-string/jumbo v2, "com.samsung.android.media.fmradio.internal.IFMEventListener"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener$Stub;->onRadioDataSystemDisabled()V

    const/4 v2, 0x1

    return v2

    :sswitch_e
    const-string/jumbo v2, "com.samsung.android.media.fmradio.internal.IFMEventListener"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener$Stub;->onAlternateFrequencyStarted()V

    const/4 v2, 0x1

    return v2

    :sswitch_f
    const-string/jumbo v2, "com.samsung.android.media.fmradio.internal.IFMEventListener"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v10

    invoke-virtual {p0, v10, v11}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener$Stub;->onAlternateFrequencyReceived(J)V

    const/4 v2, 0x1

    return v2

    :sswitch_10
    const-string/jumbo v2, "com.samsung.android.media.fmradio.internal.IFMEventListener"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener$Stub;->onVolumeLocked()V

    const/4 v2, 0x1

    return v2

    :sswitch_11
    const-string/jumbo v2, "com.samsung.android.media.fmradio.internal.IFMEventListener"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener$Stub;->onRecordingFinished()V

    const/4 v2, 0x1

    return v2

    :sswitch_12
    const-string/jumbo v2, "com.samsung.android.media.fmradio.internal.IFMEventListener"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p0, v3, v4}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener$Stub;->onProgrammeIdentificationExtendedCountryCodesReceived(II)V

    const/4 v2, 0x1

    return v2

    nop

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
