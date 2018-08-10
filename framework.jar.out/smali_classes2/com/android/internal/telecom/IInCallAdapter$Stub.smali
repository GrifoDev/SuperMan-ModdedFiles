.class public abstract Lcom/android/internal/telecom/IInCallAdapter$Stub;
.super Landroid/os/Binder;
.source "IInCallAdapter.java"

# interfaces
.implements Lcom/android/internal/telecom/IInCallAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telecom/IInCallAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telecom/IInCallAdapter$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telecom.IInCallAdapter"

.field static final TRANSACTION_answerCall:I = 0x1

.field static final TRANSACTION_conference:I = 0xc

.field static final TRANSACTION_disconnectCall:I = 0x3

.field static final TRANSACTION_holdCall:I = 0x4

.field static final TRANSACTION_mergeConference:I = 0xe

.field static final TRANSACTION_mute:I = 0x6

.field static final TRANSACTION_phoneAccountSelected:I = 0xb

.field static final TRANSACTION_playDtmfTone:I = 0x8

.field static final TRANSACTION_postDialContinue:I = 0xa

.field static final TRANSACTION_pullExternalCall:I = 0x12

.field static final TRANSACTION_putExtras:I = 0x14

.field static final TRANSACTION_rejectCall:I = 0x2

.field static final TRANSACTION_removeExtras:I = 0x15

.field static final TRANSACTION_requestRcsObserver:I = 0x1a

.field static final TRANSACTION_respondToRttRequest:I = 0x17

.field static final TRANSACTION_sendCallEvent:I = 0x13

.field static final TRANSACTION_sendRttRequest:I = 0x16

.field static final TRANSACTION_setAudioRoute:I = 0x7

.field static final TRANSACTION_setRttMode:I = 0x19

.field static final TRANSACTION_splitFromConference:I = 0xd

.field static final TRANSACTION_stopDtmfTone:I = 0x9

.field static final TRANSACTION_stopRtt:I = 0x18

.field static final TRANSACTION_swapConference:I = 0xf

.field static final TRANSACTION_turnOffProximitySensor:I = 0x11

.field static final TRANSACTION_turnOnProximitySensor:I = 0x10

.field static final TRANSACTION_unholdCall:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "com.android.internal.telecom.IInCallAdapter"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/IInCallAdapter;
    .locals 2

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const-string/jumbo v1, "com.android.internal.telecom.IInCallAdapter"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/telecom/IInCallAdapter;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/android/internal/telecom/IInCallAdapter;

    return-object v0

    :cond_1
    new-instance v1, Lcom/android/internal/telecom/IInCallAdapter$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/telecom/IInCallAdapter$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const-string/jumbo v14, "com.android.internal.telecom.IInCallAdapter"

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v14, 0x1

    return v14

    :sswitch_1
    const-string/jumbo v14, "com.android.internal.telecom.IInCallAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {p0, v2, v5}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->answerCall(Ljava/lang/String;I)V

    const/4 v14, 0x1

    return v14

    :sswitch_2
    const-string/jumbo v14, "com.android.internal.telecom.IInCallAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-eqz v14, :cond_0

    const/4 v10, 0x1

    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p0, v2, v10, v12}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->rejectCall(Ljava/lang/String;ZLjava/lang/String;)V

    const/4 v14, 0x1

    return v14

    :cond_0
    const/4 v10, 0x0

    goto :goto_0

    :sswitch_3
    const-string/jumbo v14, "com.android.internal.telecom.IInCallAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->disconnectCall(Ljava/lang/String;)V

    const/4 v14, 0x1

    return v14

    :sswitch_4
    const-string/jumbo v14, "com.android.internal.telecom.IInCallAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->holdCall(Ljava/lang/String;)V

    const/4 v14, 0x1

    return v14

    :sswitch_5
    const-string/jumbo v14, "com.android.internal.telecom.IInCallAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->unholdCall(Ljava/lang/String;)V

    const/4 v14, 0x1

    return v14

    :sswitch_6
    const-string/jumbo v14, "com.android.internal.telecom.IInCallAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-eqz v14, :cond_1

    const/4 v3, 0x1

    :goto_1
    invoke-virtual {p0, v3}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->mute(Z)V

    const/4 v14, 0x1

    return v14

    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    :sswitch_7
    const-string/jumbo v14, "com.android.internal.telecom.IInCallAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->setAudioRoute(I)V

    const/4 v14, 0x1

    return v14

    :sswitch_8
    const-string/jumbo v14, "com.android.internal.telecom.IInCallAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    int-to-char v4, v14

    invoke-virtual {p0, v2, v4}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->playDtmfTone(Ljava/lang/String;C)V

    const/4 v14, 0x1

    return v14

    :sswitch_9
    const-string/jumbo v14, "com.android.internal.telecom.IInCallAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->stopDtmfTone(Ljava/lang/String;)V

    const/4 v14, 0x1

    return v14

    :sswitch_a
    const-string/jumbo v14, "com.android.internal.telecom.IInCallAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-eqz v14, :cond_2

    const/4 v10, 0x1

    :goto_2
    invoke-virtual {p0, v2, v10}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->postDialContinue(Ljava/lang/String;Z)V

    const/4 v14, 0x1

    return v14

    :cond_2
    const/4 v10, 0x0

    goto :goto_2

    :sswitch_b
    const-string/jumbo v14, "com.android.internal.telecom.IInCallAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-eqz v14, :cond_3

    sget-object v14, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v14, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telecom/PhoneAccountHandle;

    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-eqz v14, :cond_4

    const/4 v13, 0x1

    :goto_4
    invoke-virtual {p0, v2, v7, v13}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->phoneAccountSelected(Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;Z)V

    const/4 v14, 0x1

    return v14

    :cond_3
    const/4 v7, 0x0

    goto :goto_3

    :cond_4
    const/4 v13, 0x0

    goto :goto_4

    :sswitch_c
    const-string/jumbo v14, "com.android.internal.telecom.IInCallAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v2, v8}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->conference(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v14, 0x1

    return v14

    :sswitch_d
    const-string/jumbo v14, "com.android.internal.telecom.IInCallAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->splitFromConference(Ljava/lang/String;)V

    const/4 v14, 0x1

    return v14

    :sswitch_e
    const-string/jumbo v14, "com.android.internal.telecom.IInCallAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->mergeConference(Ljava/lang/String;)V

    const/4 v14, 0x1

    return v14

    :sswitch_f
    const-string/jumbo v14, "com.android.internal.telecom.IInCallAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->swapConference(Ljava/lang/String;)V

    const/4 v14, 0x1

    return v14

    :sswitch_10
    const-string/jumbo v14, "com.android.internal.telecom.IInCallAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->turnOnProximitySensor()V

    const/4 v14, 0x1

    return v14

    :sswitch_11
    const-string/jumbo v14, "com.android.internal.telecom.IInCallAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-eqz v14, :cond_5

    const/4 v3, 0x1

    :goto_5
    invoke-virtual {p0, v3}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->turnOffProximitySensor(Z)V

    const/4 v14, 0x1

    return v14

    :cond_5
    const/4 v3, 0x0

    goto :goto_5

    :sswitch_12
    const-string/jumbo v14, "com.android.internal.telecom.IInCallAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->pullExternalCall(Ljava/lang/String;)V

    const/4 v14, 0x1

    return v14

    :sswitch_13
    const-string/jumbo v14, "com.android.internal.telecom.IInCallAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-eqz v14, :cond_6

    sget-object v14, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v14, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/Bundle;

    :goto_6
    invoke-virtual {p0, v2, v8, v11}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->sendCallEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    const/4 v14, 0x1

    return v14

    :cond_6
    const/4 v11, 0x0

    goto :goto_6

    :sswitch_14
    const-string/jumbo v14, "com.android.internal.telecom.IInCallAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-eqz v14, :cond_7

    sget-object v14, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v14, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    :goto_7
    invoke-virtual {p0, v2, v6}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->putExtras(Ljava/lang/String;Landroid/os/Bundle;)V

    const/4 v14, 0x1

    return v14

    :cond_7
    const/4 v6, 0x0

    goto :goto_7

    :sswitch_15
    const-string/jumbo v14, "com.android.internal.telecom.IInCallAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {p0, v2, v9}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->removeExtras(Ljava/lang/String;Ljava/util/List;)V

    const/4 v14, 0x1

    return v14

    :sswitch_16
    const-string/jumbo v14, "com.android.internal.telecom.IInCallAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->sendRttRequest(Ljava/lang/String;)V

    const/4 v14, 0x1

    return v14

    :sswitch_17
    const-string/jumbo v14, "com.android.internal.telecom.IInCallAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-eqz v14, :cond_8

    const/4 v13, 0x1

    :goto_8
    invoke-virtual {p0, v2, v5, v13}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->respondToRttRequest(Ljava/lang/String;IZ)V

    const/4 v14, 0x1

    return v14

    :cond_8
    const/4 v13, 0x0

    goto :goto_8

    :sswitch_18
    const-string/jumbo v14, "com.android.internal.telecom.IInCallAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->stopRtt(Ljava/lang/String;)V

    const/4 v14, 0x1

    return v14

    :sswitch_19
    const-string/jumbo v14, "com.android.internal.telecom.IInCallAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {p0, v2, v5}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->setRttMode(Ljava/lang/String;I)V

    const/4 v14, 0x1

    return v14

    :sswitch_1a
    const-string/jumbo v14, "com.android.internal.telecom.IInCallAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {p0, v1, v5}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->requestRcsObserver(II)V

    const/4 v14, 0x1

    return v14

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
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
