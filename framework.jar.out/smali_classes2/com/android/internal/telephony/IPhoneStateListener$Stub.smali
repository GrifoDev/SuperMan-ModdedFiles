.class public abstract Lcom/android/internal/telephony/IPhoneStateListener$Stub;
.super Landroid/os/Binder;
.source "IPhoneStateListener.java"

# interfaces
.implements Lcom/android/internal/telephony/IPhoneStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/IPhoneStateListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/IPhoneStateListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telephony.IPhoneStateListener"

.field static final TRANSACTION_onCallForwardingIndicatorChanged:I = 0x4

.field static final TRANSACTION_onCallStateChanged:I = 0x6

.field static final TRANSACTION_onCarrierNetworkChange:I = 0x13

.field static final TRANSACTION_onCellInfoChanged:I = 0xb

.field static final TRANSACTION_onCellLocationChanged:I = 0x5

.field static final TRANSACTION_onDataActivationStateChanged:I = 0x11

.field static final TRANSACTION_onDataActivity:I = 0x8

.field static final TRANSACTION_onDataConnectionRealTimeInfoChanged:I = 0xe

.field static final TRANSACTION_onDataConnectionStateChanged:I = 0x7

.field static final TRANSACTION_onFdnUpdated:I = 0x14

.field static final TRANSACTION_onMessageWaitingIndicatorChanged:I = 0x3

.field static final TRANSACTION_onOemHookRawEvent:I = 0x12

.field static final TRANSACTION_onOtaspChanged:I = 0xa

.field static final TRANSACTION_onPreciseCallStateChanged:I = 0xc

.field static final TRANSACTION_onPreciseDataConnectionStateChanged:I = 0xd

.field static final TRANSACTION_onServiceStateChanged:I = 0x1

.field static final TRANSACTION_onSignalStrengthChanged:I = 0x2

.field static final TRANSACTION_onSignalStrengthsChanged:I = 0x9

.field static final TRANSACTION_onVoLteServiceStateChanged:I = 0xf

.field static final TRANSACTION_onVoiceActivationStateChanged:I = 0x10

.field static final TRANSACTION_onVoiceRadioBearerHoStateChanged:I = 0x15


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "com.android.internal.telephony.IPhoneStateListener"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IPhoneStateListener;
    .locals 2

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const-string/jumbo v1, "com.android.internal.telephony.IPhoneStateListener"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/telephony/IPhoneStateListener;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/android/internal/telephony/IPhoneStateListener;

    return-object v0

    :cond_1
    new-instance v1, Lcom/android/internal/telephony/IPhoneStateListener$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/IPhoneStateListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    move-result v14

    return v14

    :sswitch_0
    const-string/jumbo v14, "com.android.internal.telephony.IPhoneStateListener"

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v14, 0x1

    return v14

    :sswitch_1
    const-string/jumbo v14, "com.android.internal.telephony.IPhoneStateListener"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-eqz v14, :cond_0

    sget-object v14, Landroid/telephony/ServiceState;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v14, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/ServiceState;

    :goto_0
    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onServiceStateChanged(Landroid/telephony/ServiceState;)V

    const/4 v14, 0x1

    return v14

    :cond_0
    const/4 v6, 0x0

    goto :goto_0

    :sswitch_2
    const-string/jumbo v14, "com.android.internal.telephony.IPhoneStateListener"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onSignalStrengthChanged(I)V

    const/4 v14, 0x1

    return v14

    :sswitch_3
    const-string/jumbo v14, "com.android.internal.telephony.IPhoneStateListener"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-eqz v14, :cond_1

    const/4 v10, 0x1

    :goto_1
    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onMessageWaitingIndicatorChanged(Z)V

    const/4 v14, 0x1

    return v14

    :cond_1
    const/4 v10, 0x0

    goto :goto_1

    :sswitch_4
    const-string/jumbo v14, "com.android.internal.telephony.IPhoneStateListener"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-eqz v14, :cond_2

    const/4 v10, 0x1

    :goto_2
    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onCallForwardingIndicatorChanged(Z)V

    const/4 v14, 0x1

    return v14

    :cond_2
    const/4 v10, 0x0

    goto :goto_2

    :sswitch_5
    const-string/jumbo v14, "com.android.internal.telephony.IPhoneStateListener"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-eqz v14, :cond_3

    sget-object v14, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v14, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    :goto_3
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onCellLocationChanged(Landroid/os/Bundle;)V

    const/4 v14, 0x1

    return v14

    :cond_3
    const/4 v2, 0x0

    goto :goto_3

    :sswitch_6
    const-string/jumbo v14, "com.android.internal.telephony.IPhoneStateListener"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {p0, v1, v13}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onCallStateChanged(ILjava/lang/String;)V

    const/4 v14, 0x1

    return v14

    :sswitch_7
    const-string/jumbo v14, "com.android.internal.telephony.IPhoneStateListener"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    invoke-virtual {p0, v1, v12}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onDataConnectionStateChanged(II)V

    const/4 v14, 0x1

    return v14

    :sswitch_8
    const-string/jumbo v14, "com.android.internal.telephony.IPhoneStateListener"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onDataActivity(I)V

    const/4 v14, 0x1

    return v14

    :sswitch_9
    const-string/jumbo v14, "com.android.internal.telephony.IPhoneStateListener"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-eqz v14, :cond_4

    sget-object v14, Landroid/telephony/SignalStrength;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v14, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/SignalStrength;

    :goto_4
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V

    const/4 v14, 0x1

    return v14

    :cond_4
    const/4 v7, 0x0

    goto :goto_4

    :sswitch_a
    const-string/jumbo v14, "com.android.internal.telephony.IPhoneStateListener"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onOtaspChanged(I)V

    const/4 v14, 0x1

    return v14

    :sswitch_b
    const-string/jumbo v14, "com.android.internal.telephony.IPhoneStateListener"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    sget-object v14, Landroid/telephony/CellInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onCellInfoChanged(Ljava/util/List;)V

    const/4 v14, 0x1

    return v14

    :sswitch_c
    const-string/jumbo v14, "com.android.internal.telephony.IPhoneStateListener"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-eqz v14, :cond_5

    sget-object v14, Landroid/telephony/PreciseCallState;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v14, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/PreciseCallState;

    :goto_5
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onPreciseCallStateChanged(Landroid/telephony/PreciseCallState;)V

    const/4 v14, 0x1

    return v14

    :cond_5
    const/4 v4, 0x0

    goto :goto_5

    :sswitch_d
    const-string/jumbo v14, "com.android.internal.telephony.IPhoneStateListener"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-eqz v14, :cond_6

    sget-object v14, Landroid/telephony/PreciseDataConnectionState;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v14, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/PreciseDataConnectionState;

    :goto_6
    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onPreciseDataConnectionStateChanged(Landroid/telephony/PreciseDataConnectionState;)V

    const/4 v14, 0x1

    return v14

    :cond_6
    const/4 v5, 0x0

    goto :goto_6

    :sswitch_e
    const-string/jumbo v14, "com.android.internal.telephony.IPhoneStateListener"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-eqz v14, :cond_7

    sget-object v14, Landroid/telephony/DataConnectionRealTimeInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v14, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/DataConnectionRealTimeInfo;

    :goto_7
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onDataConnectionRealTimeInfoChanged(Landroid/telephony/DataConnectionRealTimeInfo;)V

    const/4 v14, 0x1

    return v14

    :cond_7
    const/4 v3, 0x0

    goto :goto_7

    :sswitch_f
    const-string/jumbo v14, "com.android.internal.telephony.IPhoneStateListener"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-eqz v14, :cond_8

    sget-object v14, Landroid/telephony/VoLteServiceState;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v14, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/telephony/VoLteServiceState;

    :goto_8
    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onVoLteServiceStateChanged(Landroid/telephony/VoLteServiceState;)V

    const/4 v14, 0x1

    return v14

    :cond_8
    const/4 v8, 0x0

    goto :goto_8

    :sswitch_10
    const-string/jumbo v14, "com.android.internal.telephony.IPhoneStateListener"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onVoiceActivationStateChanged(I)V

    const/4 v14, 0x1

    return v14

    :sswitch_11
    const-string/jumbo v14, "com.android.internal.telephony.IPhoneStateListener"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onDataActivationStateChanged(I)V

    const/4 v14, 0x1

    return v14

    :sswitch_12
    const-string/jumbo v14, "com.android.internal.telephony.IPhoneStateListener"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onOemHookRawEvent([B)V

    const/4 v14, 0x1

    return v14

    :sswitch_13
    const-string/jumbo v14, "com.android.internal.telephony.IPhoneStateListener"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-eqz v14, :cond_9

    const/4 v10, 0x1

    :goto_9
    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onCarrierNetworkChange(Z)V

    const/4 v14, 0x1

    return v14

    :cond_9
    const/4 v10, 0x0

    goto :goto_9

    :sswitch_14
    const-string/jumbo v14, "com.android.internal.telephony.IPhoneStateListener"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onFdnUpdated()V

    const/4 v14, 0x1

    return v14

    :sswitch_15
    const-string/jumbo v14, "com.android.internal.telephony.IPhoneStateListener"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onVoiceRadioBearerHoStateChanged(I)V

    const/4 v14, 0x1

    return v14

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
