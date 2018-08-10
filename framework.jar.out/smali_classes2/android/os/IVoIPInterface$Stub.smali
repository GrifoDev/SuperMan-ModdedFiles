.class public abstract Landroid/os/IVoIPInterface$Stub;
.super Landroid/os/Binder;
.source "IVoIPInterface.java"

# interfaces
.implements Landroid/os/IVoIPInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IVoIPInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IVoIPInterface$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.os.IVoIPInterface"

.field static final TRANSACTION_answerVoIPCall:I = 0x4

.field static final TRANSACTION_callInVoIP:I = 0x2e

.field static final TRANSACTION_canUseBTInVoIP:I = 0x16

.field static final TRANSACTION_canUseHoldInVoIP:I = 0x1b

.field static final TRANSACTION_createCallSession:I = 0x1

.field static final TRANSACTION_destroyCallSession:I = 0x2

.field static final TRANSACTION_disableStatusBarforVoIP:I = 0x32

.field static final TRANSACTION_dumpCallSessionInfoDB:I = 0x30

.field static final TRANSACTION_existValidCall:I = 0x3a

.field static final TRANSACTION_getActiveCallIndex:I = 0x29

.field static final TRANSACTION_getActiveFgCallState:I = 0x2b

.field static final TRANSACTION_getCallSessionInfo:I = 0x3b

.field static final TRANSACTION_getCurrentRemoteCallNumber:I = 0x27

.field static final TRANSACTION_getCurrentVoIPNumber:I = 0x26

.field static final TRANSACTION_getDirectionForClcc:I = 0x3d

.field static final TRANSACTION_getFirstActiveBgCallState:I = 0x2c

.field static final TRANSACTION_getFirstActiveRingingCallState:I = 0x2d

.field static final TRANSACTION_getIndexForClcc:I = 0x3c

.field static final TRANSACTION_getMptyForClcc:I = 0x3f

.field static final TRANSACTION_getNumberForClcc:I = 0x40

.field static final TRANSACTION_getSessionCount:I = 0x2f

.field static final TRANSACTION_getState:I = 0x28

.field static final TRANSACTION_getStatusForClcc:I = 0x3e

.field static final TRANSACTION_getVoIPCallCount:I = 0xa

.field static final TRANSACTION_getVoIPInCallAlert:I = 0x37

.field static final TRANSACTION_hangupVoIPCall:I = 0x5

.field static final TRANSACTION_holdVoIPCall:I = 0x6

.field static final TRANSACTION_isDualBTConnection:I = 0x18

.field static final TRANSACTION_isIncoming:I = 0x2a

.field static final TRANSACTION_isVoIPActivated:I = 0x20

.field static final TRANSACTION_isVoIPAlerting:I = 0x22

.field static final TRANSACTION_isVoIPDialing:I = 0x1f

.field static final TRANSACTION_isVoIPDisconnecting:I = 0x25

.field static final TRANSACTION_isVoIPHolding:I = 0x21

.field static final TRANSACTION_isVoIPIdle:I = 0x1c

.field static final TRANSACTION_isVoIPIncoming:I = 0x23

.field static final TRANSACTION_isVoIPRingOrDialing:I = 0x1d

.field static final TRANSACTION_isVoIPRinging:I = 0x1e

.field static final TRANSACTION_isVoIPWaiting:I = 0x24

.field static final TRANSACTION_moveVoIPToTop:I = 0x3

.field static final TRANSACTION_muteVoIPCall:I = 0x8

.field static final TRANSACTION_notifyCallStateforVoIP:I = 0x35

.field static final TRANSACTION_notifyMissedCallforVoIP:I = 0x34

.field static final TRANSACTION_reenableStatusBarforVoIP:I = 0x33

.field static final TRANSACTION_resetVoIPCheckBC:I = 0x39

.field static final TRANSACTION_resumeVoIPCall:I = 0x7

.field static final TRANSACTION_setBTUserWantsAudioOn:I = 0x17

.field static final TRANSACTION_setBTUserWantsSwitchAudio:I = 0x19

.field static final TRANSACTION_setEngMode:I = 0x31

.field static final TRANSACTION_setUseBTInVoIP:I = 0x15

.field static final TRANSACTION_setUseHoldInVoIP:I = 0x1a

.field static final TRANSACTION_setVoIPActive:I = 0xe

.field static final TRANSACTION_setVoIPAlerting:I = 0x10

.field static final TRANSACTION_setVoIPCallCount:I = 0x9

.field static final TRANSACTION_setVoIPDialing:I = 0xd

.field static final TRANSACTION_setVoIPDisconnected:I = 0x14

.field static final TRANSACTION_setVoIPDisconnecting:I = 0x13

.field static final TRANSACTION_setVoIPHolding:I = 0xf

.field static final TRANSACTION_setVoIPIdle:I = 0xb

.field static final TRANSACTION_setVoIPInCallAlert:I = 0x36

.field static final TRANSACTION_setVoIPIncoming:I = 0x11

.field static final TRANSACTION_setVoIPRinging:I = 0xc

.field static final TRANSACTION_setVoIPWaiting:I = 0x12

.field static final TRANSACTION_startVoIPCheckBC:I = 0x38


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "android.os.IVoIPInterface"

    invoke-virtual {p0, p0, v0}, Landroid/os/IVoIPInterface$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/IVoIPInterface;
    .locals 2

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const-string/jumbo v1, "android.os.IVoIPInterface"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/os/IVoIPInterface;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/os/IVoIPInterface;

    return-object v0

    :cond_1
    new-instance v1, Landroid/os/IVoIPInterface$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/os/IVoIPInterface$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 18
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
    const-string/jumbo v2, "android.os.IVoIPInterface"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v2, 0x1

    return v2

    :sswitch_1
    const-string/jumbo v2, "android.os.IVoIPInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IVoIPCallbackInterface$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVoIPCallbackInterface;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5, v14}, Landroid/os/IVoIPInterface$Stub;->createCallSession(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/IVoIPCallbackInterface;)Z

    move-result v17

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v17, :cond_0

    const/4 v2, 0x1

    :goto_0
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :sswitch_2
    const-string/jumbo v2, "android.os.IVoIPInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/os/IVoIPInterface$Stub;->destroyCallSession(Ljava/lang/String;)Z

    move-result v17

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v17, :cond_1

    const/4 v2, 0x1

    :goto_1
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :sswitch_3
    const-string/jumbo v2, "android.os.IVoIPInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/os/IVoIPInterface$Stub;->moveVoIPToTop()Z

    move-result v17

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v17, :cond_2

    const/4 v2, 0x1

    :goto_2
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_2

    :sswitch_4
    const-string/jumbo v2, "android.os.IVoIPInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/os/IVoIPInterface$Stub;->answerVoIPCall()Z

    move-result v17

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v17, :cond_3

    const/4 v2, 0x1

    :goto_3
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    return v2

    :cond_3
    const/4 v2, 0x0

    goto :goto_3

    :sswitch_5
    const-string/jumbo v2, "android.os.IVoIPInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/os/IVoIPInterface$Stub;->hangupVoIPCall()Z

    move-result v17

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v17, :cond_4

    const/4 v2, 0x1

    :goto_4
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    return v2

    :cond_4
    const/4 v2, 0x0

    goto :goto_4

    :sswitch_6
    const-string/jumbo v2, "android.os.IVoIPInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/os/IVoIPInterface$Stub;->holdVoIPCall()Z

    move-result v17

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v17, :cond_5

    const/4 v2, 0x1

    :goto_5
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    return v2

    :cond_5
    const/4 v2, 0x0

    goto :goto_5

    :sswitch_7
    const-string/jumbo v2, "android.os.IVoIPInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/os/IVoIPInterface$Stub;->resumeVoIPCall()Z

    move-result v17

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v17, :cond_6

    const/4 v2, 0x1

    :goto_6
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    return v2

    :cond_6
    const/4 v2, 0x0

    goto :goto_6

    :sswitch_8
    const-string/jumbo v2, "android.os.IVoIPInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/os/IVoIPInterface$Stub;->muteVoIPCall()Z

    move-result v17

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v17, :cond_7

    const/4 v2, 0x1

    :goto_7
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    return v2

    :cond_7
    const/4 v2, 0x0

    goto :goto_7

    :sswitch_9
    const-string/jumbo v2, "android.os.IVoIPInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v12}, Landroid/os/IVoIPInterface$Stub;->setVoIPCallCount(Ljava/lang/String;I)Z

    move-result v17

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v17, :cond_8

    const/4 v2, 0x1

    :goto_8
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    return v2

    :cond_8
    const/4 v2, 0x0

    goto :goto_8

    :sswitch_a
    const-string/jumbo v2, "android.os.IVoIPInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/os/IVoIPInterface$Stub;->getVoIPCallCount(Ljava/lang/String;)I

    move-result v15

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    return v2

    :sswitch_b
    const-string/jumbo v2, "android.os.IVoIPInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/os/IVoIPInterface$Stub;->setVoIPIdle(Ljava/lang/String;)Z

    move-result v17

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v17, :cond_9

    const/4 v2, 0x1

    :goto_9
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    return v2

    :cond_9
    const/4 v2, 0x0

    goto :goto_9

    :sswitch_c
    const-string/jumbo v2, "android.os.IVoIPInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/os/IVoIPInterface$Stub;->setVoIPRinging(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v17

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v17, :cond_a

    const/4 v2, 0x1

    :goto_a
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    return v2

    :cond_a
    const/4 v2, 0x0

    goto :goto_a

    :sswitch_d
    const-string/jumbo v2, "android.os.IVoIPInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/os/IVoIPInterface$Stub;->setVoIPDialing(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v17

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v17, :cond_b

    const/4 v2, 0x1

    :goto_b
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    return v2

    :cond_b
    const/4 v2, 0x0

    goto :goto_b

    :sswitch_e
    const-string/jumbo v2, "android.os.IVoIPInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/os/IVoIPInterface$Stub;->setVoIPActive(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v17

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v17, :cond_c

    const/4 v2, 0x1

    :goto_c
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    return v2

    :cond_c
    const/4 v2, 0x0

    goto :goto_c

    :sswitch_f
    const-string/jumbo v2, "android.os.IVoIPInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/os/IVoIPInterface$Stub;->setVoIPHolding(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v17

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v17, :cond_d

    const/4 v2, 0x1

    :goto_d
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    return v2

    :cond_d
    const/4 v2, 0x0

    goto :goto_d

    :sswitch_10
    const-string/jumbo v2, "android.os.IVoIPInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/os/IVoIPInterface$Stub;->setVoIPAlerting(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v17

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v17, :cond_e

    const/4 v2, 0x1

    :goto_e
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    return v2

    :cond_e
    const/4 v2, 0x0

    goto :goto_e

    :sswitch_11
    const-string/jumbo v2, "android.os.IVoIPInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/os/IVoIPInterface$Stub;->setVoIPIncoming(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v17

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v17, :cond_f

    const/4 v2, 0x1

    :goto_f
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    return v2

    :cond_f
    const/4 v2, 0x0

    goto :goto_f

    :sswitch_12
    const-string/jumbo v2, "android.os.IVoIPInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/os/IVoIPInterface$Stub;->setVoIPWaiting(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v17

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v17, :cond_10

    const/4 v2, 0x1

    :goto_10
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    return v2

    :cond_10
    const/4 v2, 0x0

    goto :goto_10

    :sswitch_13
    const-string/jumbo v2, "android.os.IVoIPInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/os/IVoIPInterface$Stub;->setVoIPDisconnecting(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v17

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v17, :cond_11

    const/4 v2, 0x1

    :goto_11
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    return v2

    :cond_11
    const/4 v2, 0x0

    goto :goto_11

    :sswitch_14
    const-string/jumbo v2, "android.os.IVoIPInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/os/IVoIPInterface$Stub;->setVoIPDisconnected(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v17

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v17, :cond_12

    const/4 v2, 0x1

    :goto_12
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    return v2

    :cond_12
    const/4 v2, 0x0

    goto :goto_12

    :sswitch_15
    const-string/jumbo v2, "android.os.IVoIPInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_13

    const/4 v13, 0x1

    :goto_13
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v13}, Landroid/os/IVoIPInterface$Stub;->setUseBTInVoIP(Ljava/lang/String;Z)Z

    move-result v17

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v17, :cond_14

    const/4 v2, 0x1

    :goto_14
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    return v2

    :cond_13
    const/4 v13, 0x0

    goto :goto_13

    :cond_14
    const/4 v2, 0x0

    goto :goto_14

    :sswitch_16
    const-string/jumbo v2, "android.os.IVoIPInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/os/IVoIPInterface$Stub;->canUseBTInVoIP(Ljava/lang/String;)Z

    move-result v17

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v17, :cond_15

    const/4 v2, 0x1

    :goto_15
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    return v2

    :cond_15
    const/4 v2, 0x0

    goto :goto_15

    :sswitch_17
    const-string/jumbo v2, "android.os.IVoIPInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_16

    const/4 v9, 0x1

    :goto_16
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/os/IVoIPInterface$Stub;->setBTUserWantsAudioOn(Z)Z

    move-result v17

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v17, :cond_17

    const/4 v2, 0x1

    :goto_17
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    return v2

    :cond_16
    const/4 v9, 0x0

    goto :goto_16

    :cond_17
    const/4 v2, 0x0

    goto :goto_17

    :sswitch_18
    const-string/jumbo v2, "android.os.IVoIPInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/os/IVoIPInterface$Stub;->isDualBTConnection()Z

    move-result v17

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v17, :cond_18

    const/4 v2, 0x1

    :goto_18
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    return v2

    :cond_18
    const/4 v2, 0x0

    goto :goto_18

    :sswitch_19
    const-string/jumbo v2, "android.os.IVoIPInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/os/IVoIPInterface$Stub;->setBTUserWantsSwitchAudio()Z

    move-result v17

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v17, :cond_19

    const/4 v2, 0x1

    :goto_19
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    return v2

    :cond_19
    const/4 v2, 0x0

    goto :goto_19

    :sswitch_1a
    const-string/jumbo v2, "android.os.IVoIPInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1a

    const/4 v13, 0x1

    :goto_1a
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v13}, Landroid/os/IVoIPInterface$Stub;->setUseHoldInVoIP(Ljava/lang/String;Z)Z

    move-result v17

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v17, :cond_1b

    const/4 v2, 0x1

    :goto_1b
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    return v2

    :cond_1a
    const/4 v13, 0x0

    goto :goto_1a

    :cond_1b
    const/4 v2, 0x0

    goto :goto_1b

    :sswitch_1b
    const-string/jumbo v2, "android.os.IVoIPInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/os/IVoIPInterface$Stub;->canUseHoldInVoIP()Z

    move-result v17

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v17, :cond_1c

    const/4 v2, 0x1

    :goto_1c
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    return v2

    :cond_1c
    const/4 v2, 0x0

    goto :goto_1c

    :sswitch_1c
    const-string/jumbo v2, "android.os.IVoIPInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/os/IVoIPInterface$Stub;->isVoIPIdle()Z

    move-result v17

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v17, :cond_1d

    const/4 v2, 0x1

    :goto_1d
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    return v2

    :cond_1d
    const/4 v2, 0x0

    goto :goto_1d

    :sswitch_1d
    const-string/jumbo v2, "android.os.IVoIPInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/os/IVoIPInterface$Stub;->isVoIPRingOrDialing()Z

    move-result v17

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v17, :cond_1e

    const/4 v2, 0x1

    :goto_1e
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    return v2

    :cond_1e
    const/4 v2, 0x0

    goto :goto_1e

    :sswitch_1e
    const-string/jumbo v2, "android.os.IVoIPInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/os/IVoIPInterface$Stub;->isVoIPRinging()Z

    move-result v17

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v17, :cond_1f

    const/4 v2, 0x1

    :goto_1f
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    return v2

    :cond_1f
    const/4 v2, 0x0

    goto :goto_1f

    :sswitch_1f
    const-string/jumbo v2, "android.os.IVoIPInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/os/IVoIPInterface$Stub;->isVoIPDialing()Z

    move-result v17

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v17, :cond_20

    const/4 v2, 0x1

    :goto_20
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    return v2

    :cond_20
    const/4 v2, 0x0

    goto :goto_20

    :sswitch_20
    const-string/jumbo v2, "android.os.IVoIPInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/os/IVoIPInterface$Stub;->isVoIPActivated()Z

    move-result v17

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v17, :cond_21

    const/4 v2, 0x1

    :goto_21
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    return v2

    :cond_21
    const/4 v2, 0x0

    goto :goto_21

    :sswitch_21
    const-string/jumbo v2, "android.os.IVoIPInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/os/IVoIPInterface$Stub;->isVoIPHolding()Z

    move-result v17

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v17, :cond_22

    const/4 v2, 0x1

    :goto_22
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    return v2

    :cond_22
    const/4 v2, 0x0

    goto :goto_22

    :sswitch_22
    const-string/jumbo v2, "android.os.IVoIPInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/os/IVoIPInterface$Stub;->isVoIPAlerting()Z

    move-result v17

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v17, :cond_23

    const/4 v2, 0x1

    :goto_23
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    return v2

    :cond_23
    const/4 v2, 0x0

    goto :goto_23

    :sswitch_23
    const-string/jumbo v2, "android.os.IVoIPInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/os/IVoIPInterface$Stub;->isVoIPIncoming()Z

    move-result v17

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v17, :cond_24

    const/4 v2, 0x1

    :goto_24
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    return v2

    :cond_24
    const/4 v2, 0x0

    goto :goto_24

    :sswitch_24
    const-string/jumbo v2, "android.os.IVoIPInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/os/IVoIPInterface$Stub;->isVoIPWaiting()Z

    move-result v17

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v17, :cond_25

    const/4 v2, 0x1

    :goto_25
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    return v2

    :cond_25
    const/4 v2, 0x0

    goto :goto_25

    :sswitch_25
    const-string/jumbo v2, "android.os.IVoIPInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/os/IVoIPInterface$Stub;->isVoIPDisconnecting()Z

    move-result v17

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v17, :cond_26

    const/4 v2, 0x1

    :goto_26
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    return v2

    :cond_26
    const/4 v2, 0x0

    goto :goto_26

    :sswitch_26
    const-string/jumbo v2, "android.os.IVoIPInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/os/IVoIPInterface$Stub;->getCurrentVoIPNumber()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v2, 0x1

    return v2

    :sswitch_27
    const-string/jumbo v2, "android.os.IVoIPInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/os/IVoIPInterface$Stub;->getCurrentRemoteCallNumber()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v2, 0x1

    return v2

    :sswitch_28
    const-string/jumbo v2, "android.os.IVoIPInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/os/IVoIPInterface$Stub;->getState()I

    move-result v15

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    return v2

    :sswitch_29
    const-string/jumbo v2, "android.os.IVoIPInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/os/IVoIPInterface$Stub;->getActiveCallIndex()I

    move-result v15

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    return v2

    :sswitch_2a
    const-string/jumbo v2, "android.os.IVoIPInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/os/IVoIPInterface$Stub;->isIncoming()Z

    move-result v17

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v17, :cond_27

    const/4 v2, 0x1

    :goto_27
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    return v2

    :cond_27
    const/4 v2, 0x0

    goto :goto_27

    :sswitch_2b
    const-string/jumbo v2, "android.os.IVoIPInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/os/IVoIPInterface$Stub;->getActiveFgCallState()I

    move-result v15

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    return v2

    :sswitch_2c
    const-string/jumbo v2, "android.os.IVoIPInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/os/IVoIPInterface$Stub;->getFirstActiveBgCallState()I

    move-result v15

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    return v2

    :sswitch_2d
    const-string/jumbo v2, "android.os.IVoIPInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/os/IVoIPInterface$Stub;->getFirstActiveRingingCallState()I

    move-result v15

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    return v2

    :sswitch_2e
    const-string/jumbo v2, "android.os.IVoIPInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/os/IVoIPInterface$Stub;->callInVoIP(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    return v2

    :sswitch_2f
    const-string/jumbo v2, "android.os.IVoIPInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/os/IVoIPInterface$Stub;->getSessionCount()I

    move-result v15

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    return v2

    :sswitch_30
    const-string/jumbo v2, "android.os.IVoIPInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/os/IVoIPInterface$Stub;->dumpCallSessionInfoDB(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    return v2

    :sswitch_31
    const-string/jumbo v2, "android.os.IVoIPInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v12}, Landroid/os/IVoIPInterface$Stub;->setEngMode(Ljava/lang/String;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    return v2

    :sswitch_32
    const-string/jumbo v2, "android.os.IVoIPInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/os/IVoIPInterface$Stub;->disableStatusBarforVoIP()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    return v2

    :sswitch_33
    const-string/jumbo v2, "android.os.IVoIPInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/os/IVoIPInterface$Stub;->reenableStatusBarforVoIP()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    return v2

    :sswitch_34
    const-string/jumbo v2, "android.os.IVoIPInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Landroid/os/IVoIPInterface$Stub;->notifyMissedCallforVoIP(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    return v2

    :sswitch_35
    const-string/jumbo v2, "android.os.IVoIPInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v4}, Landroid/os/IVoIPInterface$Stub;->notifyCallStateforVoIP(ILjava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    return v2

    :sswitch_36
    const-string/jumbo v2, "android.os.IVoIPInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_28

    const/4 v9, 0x1

    :goto_28
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/os/IVoIPInterface$Stub;->setVoIPInCallAlert(Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    return v2

    :cond_28
    const/4 v9, 0x0

    goto :goto_28

    :sswitch_37
    const-string/jumbo v2, "android.os.IVoIPInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/os/IVoIPInterface$Stub;->getVoIPInCallAlert()Z

    move-result v17

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v17, :cond_29

    const/4 v2, 0x1

    :goto_29
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    return v2

    :cond_29
    const/4 v2, 0x0

    goto :goto_29

    :sswitch_38
    const-string/jumbo v2, "android.os.IVoIPInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v11, v4}, Landroid/os/IVoIPInterface$Stub;->startVoIPCheckBC(JLjava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    return v2

    :sswitch_39
    const-string/jumbo v2, "android.os.IVoIPInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/os/IVoIPInterface$Stub;->resetVoIPCheckBC()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    return v2

    :sswitch_3a
    const-string/jumbo v2, "android.os.IVoIPInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/os/IVoIPInterface$Stub;->existValidCall()Z

    move-result v17

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v17, :cond_2a

    const/4 v2, 0x1

    :goto_2a
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    return v2

    :cond_2a
    const/4 v2, 0x0

    goto :goto_2a

    :sswitch_3b
    const-string/jumbo v2, "android.os.IVoIPInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/os/IVoIPInterface$Stub;->getCallSessionInfo(I)Z

    move-result v17

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v17, :cond_2b

    const/4 v2, 0x1

    :goto_2b
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    return v2

    :cond_2b
    const/4 v2, 0x0

    goto :goto_2b

    :sswitch_3c
    const-string/jumbo v2, "android.os.IVoIPInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/os/IVoIPInterface$Stub;->getIndexForClcc()I

    move-result v15

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    return v2

    :sswitch_3d
    const-string/jumbo v2, "android.os.IVoIPInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/os/IVoIPInterface$Stub;->getDirectionForClcc()I

    move-result v15

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    return v2

    :sswitch_3e
    const-string/jumbo v2, "android.os.IVoIPInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/os/IVoIPInterface$Stub;->getStatusForClcc()I

    move-result v15

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    return v2

    :sswitch_3f
    const-string/jumbo v2, "android.os.IVoIPInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/os/IVoIPInterface$Stub;->getMptyForClcc()Z

    move-result v17

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v17, :cond_2c

    const/4 v2, 0x1

    :goto_2c
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    return v2

    :cond_2c
    const/4 v2, 0x0

    goto :goto_2c

    :sswitch_40
    const-string/jumbo v2, "android.os.IVoIPInterface"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/os/IVoIPInterface$Stub;->getNumberForClcc()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

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
        0x26 -> :sswitch_26
        0x27 -> :sswitch_27
        0x28 -> :sswitch_28
        0x29 -> :sswitch_29
        0x2a -> :sswitch_2a
        0x2b -> :sswitch_2b
        0x2c -> :sswitch_2c
        0x2d -> :sswitch_2d
        0x2e -> :sswitch_2e
        0x2f -> :sswitch_2f
        0x30 -> :sswitch_30
        0x31 -> :sswitch_31
        0x32 -> :sswitch_32
        0x33 -> :sswitch_33
        0x34 -> :sswitch_34
        0x35 -> :sswitch_35
        0x36 -> :sswitch_36
        0x37 -> :sswitch_37
        0x38 -> :sswitch_38
        0x39 -> :sswitch_39
        0x3a -> :sswitch_3a
        0x3b -> :sswitch_3b
        0x3c -> :sswitch_3c
        0x3d -> :sswitch_3d
        0x3e -> :sswitch_3e
        0x3f -> :sswitch_3f
        0x40 -> :sswitch_40
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
