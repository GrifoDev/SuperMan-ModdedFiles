.class public abstract Lcom/android/internal/telecom/IConnectionService$Stub;
.super Landroid/os/Binder;
.source "IConnectionService.java"

# interfaces
.implements Lcom/android/internal/telecom/IConnectionService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telecom/IConnectionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telecom/IConnectionService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telecom.IConnectionService"

.field static final TRANSACTION_abort:I = 0x6

.field static final TRANSACTION_addConnectionServiceAdapter:I = 0x1

.field static final TRANSACTION_answer:I = 0x8

.field static final TRANSACTION_answerVideo:I = 0x7

.field static final TRANSACTION_conference:I = 0x12

.field static final TRANSACTION_createConnection:I = 0x3

.field static final TRANSACTION_createConnectionComplete:I = 0x4

.field static final TRANSACTION_createConnectionFailed:I = 0x5

.field static final TRANSACTION_disconnect:I = 0xb

.field static final TRANSACTION_hold:I = 0xd

.field static final TRANSACTION_mergeConference:I = 0x14

.field static final TRANSACTION_onCallAudioStateChanged:I = 0xf

.field static final TRANSACTION_onExtrasChanged:I = 0x19

.field static final TRANSACTION_onPostDialContinue:I = 0x16

.field static final TRANSACTION_playDtmfTone:I = 0x10

.field static final TRANSACTION_pullExternalCall:I = 0x17

.field static final TRANSACTION_reject:I = 0x9

.field static final TRANSACTION_rejectWithMessage:I = 0xa

.field static final TRANSACTION_removeConnectionServiceAdapter:I = 0x2

.field static final TRANSACTION_respondToRttUpgradeRequest:I = 0x1c

.field static final TRANSACTION_sendCallEvent:I = 0x18

.field static final TRANSACTION_silence:I = 0xc

.field static final TRANSACTION_splitFromConference:I = 0x13

.field static final TRANSACTION_startRtt:I = 0x1a

.field static final TRANSACTION_stopDtmfTone:I = 0x11

.field static final TRANSACTION_stopRtt:I = 0x1b

.field static final TRANSACTION_swapConference:I = 0x15

.field static final TRANSACTION_unhold:I = 0xe


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "com.android.internal.telecom.IConnectionService"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telecom/IConnectionService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/IConnectionService;
    .locals 2

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const-string/jumbo v1, "com.android.internal.telecom.IConnectionService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/telecom/IConnectionService;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/android/internal/telecom/IConnectionService;

    return-object v0

    :cond_1
    new-instance v1, Lcom/android/internal/telecom/IConnectionService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/telecom/IConnectionService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 31
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sparse-switch p1, :sswitch_data_0

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    return v5

    :sswitch_0
    const-string/jumbo v5, "com.android.internal.telecom.IConnectionService"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v5, 0x1

    return v5

    :sswitch_1
    const-string/jumbo v5, "com.android.internal.telecom.IConnectionService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v18

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/telecom/Logging/Session$Info;

    :goto_0
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telecom/IConnectionService$Stub;->addConnectionServiceAdapter(Lcom/android/internal/telecom/IConnectionServiceAdapter;Landroid/telecom/Logging/Session$Info;)V

    const/4 v5, 0x1

    return v5

    :cond_0
    const/16 v25, 0x0

    goto :goto_0

    :sswitch_2
    const-string/jumbo v5, "com.android.internal.telecom.IConnectionService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v18

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1

    sget-object v5, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/telecom/Logging/Session$Info;

    :goto_1
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telecom/IConnectionService$Stub;->removeConnectionServiceAdapter(Lcom/android/internal/telecom/IConnectionServiceAdapter;Landroid/telecom/Logging/Session$Info;)V

    const/4 v5, 0x1

    return v5

    :cond_1
    const/16 v25, 0x0

    goto :goto_1

    :sswitch_3
    const-string/jumbo v5, "com.android.internal.telecom.IConnectionService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2

    sget-object v5, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telecom/PhoneAccountHandle;

    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3

    sget-object v5, Landroid/telecom/ConnectionRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/telecom/ConnectionRequest;

    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_4

    const/4 v9, 0x1

    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_5

    const/4 v10, 0x1

    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_6

    sget-object v5, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/telecom/Logging/Session$Info;

    :goto_6
    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v11}, Lcom/android/internal/telecom/IConnectionService$Stub;->createConnection(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/ConnectionRequest;ZZLandroid/telecom/Logging/Session$Info;)V

    const/4 v5, 0x1

    return v5

    :cond_2
    const/4 v6, 0x0

    goto :goto_2

    :cond_3
    const/4 v8, 0x0

    goto :goto_3

    :cond_4
    const/4 v9, 0x0

    goto :goto_4

    :cond_5
    const/4 v10, 0x0

    goto :goto_5

    :cond_6
    const/4 v11, 0x0

    goto :goto_6

    :sswitch_4
    const-string/jumbo v5, "com.android.internal.telecom.IConnectionService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_7

    sget-object v5, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/telecom/Logging/Session$Info;

    :goto_7
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telecom/IConnectionService$Stub;->createConnectionComplete(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    const/4 v5, 0x1

    return v5

    :cond_7
    const/16 v25, 0x0

    goto :goto_7

    :sswitch_5
    const-string/jumbo v5, "com.android.internal.telecom.IConnectionService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_8

    sget-object v5, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telecom/PhoneAccountHandle;

    :goto_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_9

    sget-object v5, Landroid/telecom/ConnectionRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/telecom/ConnectionRequest;

    :goto_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_a

    const/4 v9, 0x1

    :goto_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_b

    sget-object v5, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/telecom/Logging/Session$Info;

    :goto_b
    move-object/from16 v12, p0

    move-object v13, v6

    move-object v14, v7

    move-object v15, v8

    move/from16 v16, v9

    invoke-virtual/range {v12 .. v17}, Lcom/android/internal/telecom/IConnectionService$Stub;->createConnectionFailed(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/ConnectionRequest;ZLandroid/telecom/Logging/Session$Info;)V

    const/4 v5, 0x1

    return v5

    :cond_8
    const/4 v6, 0x0

    goto :goto_8

    :cond_9
    const/4 v8, 0x0

    goto :goto_9

    :cond_a
    const/4 v9, 0x0

    goto :goto_a

    :cond_b
    const/16 v17, 0x0

    goto :goto_b

    :sswitch_6
    const-string/jumbo v5, "com.android.internal.telecom.IConnectionService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_c

    sget-object v5, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/telecom/Logging/Session$Info;

    :goto_c
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telecom/IConnectionService$Stub;->abort(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    const/4 v5, 0x1

    return v5

    :cond_c
    const/16 v25, 0x0

    goto :goto_c

    :sswitch_7
    const-string/jumbo v5, "com.android.internal.telecom.IConnectionService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_d

    sget-object v5, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Landroid/telecom/Logging/Session$Info;

    :goto_d
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v21

    move-object/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telecom/IConnectionService$Stub;->answerVideo(Ljava/lang/String;ILandroid/telecom/Logging/Session$Info;)V

    const/4 v5, 0x1

    return v5

    :cond_d
    const/16 v29, 0x0

    goto :goto_d

    :sswitch_8
    const-string/jumbo v5, "com.android.internal.telecom.IConnectionService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_e

    sget-object v5, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/telecom/Logging/Session$Info;

    :goto_e
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telecom/IConnectionService$Stub;->answer(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    const/4 v5, 0x1

    return v5

    :cond_e
    const/16 v25, 0x0

    goto :goto_e

    :sswitch_9
    const-string/jumbo v5, "com.android.internal.telecom.IConnectionService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_f

    sget-object v5, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/telecom/Logging/Session$Info;

    :goto_f
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telecom/IConnectionService$Stub;->reject(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    const/4 v5, 0x1

    return v5

    :cond_f
    const/16 v25, 0x0

    goto :goto_f

    :sswitch_a
    const-string/jumbo v5, "com.android.internal.telecom.IConnectionService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_10

    sget-object v5, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Landroid/telecom/Logging/Session$Info;

    :goto_10
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v7, v2}, Lcom/android/internal/telecom/IConnectionService$Stub;->rejectWithMessage(Ljava/lang/String;Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    const/4 v5, 0x1

    return v5

    :cond_10
    const/16 v29, 0x0

    goto :goto_10

    :sswitch_b
    const-string/jumbo v5, "com.android.internal.telecom.IConnectionService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_11

    sget-object v5, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/telecom/Logging/Session$Info;

    :goto_11
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telecom/IConnectionService$Stub;->disconnect(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    const/4 v5, 0x1

    return v5

    :cond_11
    const/16 v25, 0x0

    goto :goto_11

    :sswitch_c
    const-string/jumbo v5, "com.android.internal.telecom.IConnectionService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_12

    sget-object v5, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/telecom/Logging/Session$Info;

    :goto_12
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telecom/IConnectionService$Stub;->silence(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    const/4 v5, 0x1

    return v5

    :cond_12
    const/16 v25, 0x0

    goto :goto_12

    :sswitch_d
    const-string/jumbo v5, "com.android.internal.telecom.IConnectionService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_13

    sget-object v5, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/telecom/Logging/Session$Info;

    :goto_13
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telecom/IConnectionService$Stub;->hold(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    const/4 v5, 0x1

    return v5

    :cond_13
    const/16 v25, 0x0

    goto :goto_13

    :sswitch_e
    const-string/jumbo v5, "com.android.internal.telecom.IConnectionService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_14

    sget-object v5, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/telecom/Logging/Session$Info;

    :goto_14
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telecom/IConnectionService$Stub;->unhold(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    const/4 v5, 0x1

    return v5

    :cond_14
    const/16 v25, 0x0

    goto :goto_14

    :sswitch_f
    const-string/jumbo v5, "com.android.internal.telecom.IConnectionService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_15

    sget-object v5, Landroid/telecom/CallAudioState;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/telecom/CallAudioState;

    :goto_15
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_16

    sget-object v5, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Landroid/telecom/Logging/Session$Info;

    :goto_16
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v24

    move-object/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telecom/IConnectionService$Stub;->onCallAudioStateChanged(Ljava/lang/String;Landroid/telecom/CallAudioState;Landroid/telecom/Logging/Session$Info;)V

    const/4 v5, 0x1

    return v5

    :cond_15
    const/16 v24, 0x0

    goto :goto_15

    :cond_16
    const/16 v29, 0x0

    goto :goto_16

    :sswitch_10
    const-string/jumbo v5, "com.android.internal.telecom.IConnectionService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    int-to-char v0, v5

    move/from16 v20, v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_17

    sget-object v5, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Landroid/telecom/Logging/Session$Info;

    :goto_17
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    move-object/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telecom/IConnectionService$Stub;->playDtmfTone(Ljava/lang/String;CLandroid/telecom/Logging/Session$Info;)V

    const/4 v5, 0x1

    return v5

    :cond_17
    const/16 v29, 0x0

    goto :goto_17

    :sswitch_11
    const-string/jumbo v5, "com.android.internal.telecom.IConnectionService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_18

    sget-object v5, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/telecom/Logging/Session$Info;

    :goto_18
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telecom/IConnectionService$Stub;->stopDtmfTone(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    const/4 v5, 0x1

    return v5

    :cond_18
    const/16 v25, 0x0

    goto :goto_18

    :sswitch_12
    const-string/jumbo v5, "com.android.internal.telecom.IConnectionService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_19

    sget-object v5, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Landroid/telecom/Logging/Session$Info;

    :goto_19
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v7, v2}, Lcom/android/internal/telecom/IConnectionService$Stub;->conference(Ljava/lang/String;Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    const/4 v5, 0x1

    return v5

    :cond_19
    const/16 v29, 0x0

    goto :goto_19

    :sswitch_13
    const-string/jumbo v5, "com.android.internal.telecom.IConnectionService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1a

    sget-object v5, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/telecom/Logging/Session$Info;

    :goto_1a
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telecom/IConnectionService$Stub;->splitFromConference(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    const/4 v5, 0x1

    return v5

    :cond_1a
    const/16 v25, 0x0

    goto :goto_1a

    :sswitch_14
    const-string/jumbo v5, "com.android.internal.telecom.IConnectionService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1b

    sget-object v5, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/telecom/Logging/Session$Info;

    :goto_1b
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telecom/IConnectionService$Stub;->mergeConference(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    const/4 v5, 0x1

    return v5

    :cond_1b
    const/16 v25, 0x0

    goto :goto_1b

    :sswitch_15
    const-string/jumbo v5, "com.android.internal.telecom.IConnectionService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1c

    sget-object v5, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/telecom/Logging/Session$Info;

    :goto_1c
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telecom/IConnectionService$Stub;->swapConference(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    const/4 v5, 0x1

    return v5

    :cond_1c
    const/16 v25, 0x0

    goto :goto_1c

    :sswitch_16
    const-string/jumbo v5, "com.android.internal.telecom.IConnectionService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1d

    const/16 v26, 0x1

    :goto_1d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1e

    sget-object v5, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Landroid/telecom/Logging/Session$Info;

    :goto_1e
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v26

    move-object/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telecom/IConnectionService$Stub;->onPostDialContinue(Ljava/lang/String;ZLandroid/telecom/Logging/Session$Info;)V

    const/4 v5, 0x1

    return v5

    :cond_1d
    const/16 v26, 0x0

    goto :goto_1d

    :cond_1e
    const/16 v29, 0x0

    goto :goto_1e

    :sswitch_17
    const-string/jumbo v5, "com.android.internal.telecom.IConnectionService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1f

    sget-object v5, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/telecom/Logging/Session$Info;

    :goto_1f
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telecom/IConnectionService$Stub;->pullExternalCall(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    const/4 v5, 0x1

    return v5

    :cond_1f
    const/16 v25, 0x0

    goto :goto_1f

    :sswitch_18
    const-string/jumbo v5, "com.android.internal.telecom.IConnectionService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_20

    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/os/Bundle;

    :goto_20
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_21

    sget-object v5, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Landroid/telecom/Logging/Session$Info;

    :goto_21
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v27

    move-object/from16 v3, v30

    invoke-virtual {v0, v1, v7, v2, v3}, Lcom/android/internal/telecom/IConnectionService$Stub;->sendCallEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/telecom/Logging/Session$Info;)V

    const/4 v5, 0x1

    return v5

    :cond_20
    const/16 v27, 0x0

    goto :goto_20

    :cond_21
    const/16 v30, 0x0

    goto :goto_21

    :sswitch_19
    const-string/jumbo v5, "com.android.internal.telecom.IConnectionService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_22

    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/os/Bundle;

    :goto_22
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_23

    sget-object v5, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Landroid/telecom/Logging/Session$Info;

    :goto_23
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v22

    move-object/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telecom/IConnectionService$Stub;->onExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;Landroid/telecom/Logging/Session$Info;)V

    const/4 v5, 0x1

    return v5

    :cond_22
    const/16 v22, 0x0

    goto :goto_22

    :cond_23
    const/16 v29, 0x0

    goto :goto_23

    :sswitch_1a
    const-string/jumbo v5, "com.android.internal.telecom.IConnectionService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_24

    sget-object v5, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/os/ParcelFileDescriptor;

    :goto_24
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_25

    sget-object v5, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/os/ParcelFileDescriptor;

    :goto_25
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_26

    sget-object v5, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Landroid/telecom/Logging/Session$Info;

    :goto_26
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v23

    move-object/from16 v3, v28

    move-object/from16 v4, v30

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telecom/IConnectionService$Stub;->startRtt(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/telecom/Logging/Session$Info;)V

    const/4 v5, 0x1

    return v5

    :cond_24
    const/16 v23, 0x0

    goto :goto_24

    :cond_25
    const/16 v28, 0x0

    goto :goto_25

    :cond_26
    const/16 v30, 0x0

    goto :goto_26

    :sswitch_1b
    const-string/jumbo v5, "com.android.internal.telecom.IConnectionService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_27

    sget-object v5, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/telecom/Logging/Session$Info;

    :goto_27
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telecom/IConnectionService$Stub;->stopRtt(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    const/4 v5, 0x1

    return v5

    :cond_27
    const/16 v25, 0x0

    goto :goto_27

    :sswitch_1c
    const-string/jumbo v5, "com.android.internal.telecom.IConnectionService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_28

    sget-object v5, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/os/ParcelFileDescriptor;

    :goto_28
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_29

    sget-object v5, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/os/ParcelFileDescriptor;

    :goto_29
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2a

    sget-object v5, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Landroid/telecom/Logging/Session$Info;

    :goto_2a
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v23

    move-object/from16 v3, v28

    move-object/from16 v4, v30

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telecom/IConnectionService$Stub;->respondToRttUpgradeRequest(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/telecom/Logging/Session$Info;)V

    const/4 v5, 0x1

    return v5

    :cond_28
    const/16 v23, 0x0

    goto :goto_28

    :cond_29
    const/16 v28, 0x0

    goto :goto_29

    :cond_2a
    const/16 v30, 0x0

    goto :goto_2a

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
