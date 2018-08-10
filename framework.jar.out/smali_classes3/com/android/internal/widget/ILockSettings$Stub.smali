.class public abstract Lcom/android/internal/widget/ILockSettings$Stub;
.super Landroid/os/Binder;
.source "ILockSettings.java"

# interfaces
.implements Lcom/android/internal/widget/ILockSettings;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/ILockSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/ILockSettings$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.widget.ILockSettings"

.field static final TRANSACTION_addEscrowToken:I = 0x17

.field static final TRANSACTION_changeToken:I = 0x1d

.field static final TRANSACTION_checkAppLockBackupPin:I = 0x4a

.field static final TRANSACTION_checkAppLockFingerprintPassword:I = 0x4b

.field static final TRANSACTION_checkAppLockPassword:I = 0x48

.field static final TRANSACTION_checkAppLockPattern:I = 0x49

.field static final TRANSACTION_checkAppLockPin:I = 0x47

.field static final TRANSACTION_checkBackupPassword:I = 0x3e

.field static final TRANSACTION_checkCISPassword:I = 0x2e

.field static final TRANSACTION_checkCarrierPassword:I = 0x29

.field static final TRANSACTION_checkCredential:I = 0x9

.field static final TRANSACTION_checkFMMPassword:I = 0x23

.field static final TRANSACTION_checkPrivateModeBackupPin:I = 0x37

.field static final TRANSACTION_checkPrivateModePassword:I = 0x35

.field static final TRANSACTION_checkPrivateModePattern:I = 0x36

.field static final TRANSACTION_checkPrivateModePin:I = 0x34

.field static final TRANSACTION_checkRecoveryPassword:I = 0x41

.field static final TRANSACTION_checkVoldPassword:I = 0xc

.field static final TRANSACTION_getBoolean:I = 0x4

.field static final TRANSACTION_getCarrierLockPlusMode:I = 0x25

.field static final TRANSACTION_getCredentialType:I = 0x1e

.field static final TRANSACTION_getLong:I = 0x5

.field static final TRANSACTION_getSecureMode:I = 0x1f

.field static final TRANSACTION_getSeparateProfileChallengeEnabled:I = 0x10

.field static final TRANSACTION_getString:I = 0x6

.field static final TRANSACTION_getStrongAuthForUser:I = 0x16

.field static final TRANSACTION_haveAppLockBackupPin:I = 0x4f

.field static final TRANSACTION_haveAppLockFingerprintPassword:I = 0x50

.field static final TRANSACTION_haveAppLockPassword:I = 0x4d

.field static final TRANSACTION_haveAppLockPattern:I = 0x4e

.field static final TRANSACTION_haveAppLockPin:I = 0x4c

.field static final TRANSACTION_haveBackupPassword:I = 0x3c

.field static final TRANSACTION_haveCarrierPassword:I = 0x2a

.field static final TRANSACTION_haveFMMPassword:I = 0x24

.field static final TRANSACTION_havePassword:I = 0xe

.field static final TRANSACTION_havePattern:I = 0xd

.field static final TRANSACTION_havePrivateModeBackupPin:I = 0x3b

.field static final TRANSACTION_havePrivateModePassword:I = 0x39

.field static final TRANSACTION_havePrivateModePattern:I = 0x3a

.field static final TRANSACTION_havePrivateModePin:I = 0x38

.field static final TRANSACTION_haveRecoveryPassword:I = 0x3f

.field static final TRANSACTION_isEscrowTokenActive:I = 0x19

.field static final TRANSACTION_registerRemoteLockCallback:I = 0x2b

.field static final TRANSACTION_registerStrongAuthTracker:I = 0x11

.field static final TRANSACTION_removeEscrowToken:I = 0x18

.field static final TRANSACTION_requestRemoteLockInfo:I = 0x2f

.field static final TRANSACTION_requireStrongAuth:I = 0x13

.field static final TRANSACTION_resetKeyStore:I = 0x8

.field static final TRANSACTION_sendLockTypeChangedInfo:I = 0x21

.field static final TRANSACTION_setAppLockBackupPin:I = 0x45

.field static final TRANSACTION_setAppLockFingerprintPassword:I = 0x46

.field static final TRANSACTION_setAppLockPassword:I = 0x43

.field static final TRANSACTION_setAppLockPattern:I = 0x44

.field static final TRANSACTION_setAppLockPin:I = 0x42

.field static final TRANSACTION_setBoolean:I = 0x1

.field static final TRANSACTION_setCarrierLockPlusEnabled:I = 0x26

.field static final TRANSACTION_setLockBackupPassword:I = 0x3d

.field static final TRANSACTION_setLockCarrierPassword:I = 0x27

.field static final TRANSACTION_setLockCredential:I = 0x7

.field static final TRANSACTION_setLockCredentialWithToken:I = 0x1a

.field static final TRANSACTION_setLockFMMPassword:I = 0x22

.field static final TRANSACTION_setLockModeChangedCallback:I = 0x20

.field static final TRANSACTION_setLockRecoveryPassword:I = 0x40

.field static final TRANSACTION_setLong:I = 0x2

.field static final TRANSACTION_setPrivateModeLockBackupPin:I = 0x33

.field static final TRANSACTION_setPrivateModeLockPassword:I = 0x31

.field static final TRANSACTION_setPrivateModeLockPattern:I = 0x32

.field static final TRANSACTION_setPrivateModeLockPin:I = 0x30

.field static final TRANSACTION_setRemoteLock:I = 0x2d

.field static final TRANSACTION_setSeparateProfileChallengeEnabled:I = 0xf

.field static final TRANSACTION_setString:I = 0x3

.field static final TRANSACTION_systemReady:I = 0x14

.field static final TRANSACTION_unlockUserWithToken:I = 0x1b

.field static final TRANSACTION_unregisterRemoteLockCallback:I = 0x2c

.field static final TRANSACTION_unregisterStrongAuthTracker:I = 0x12

.field static final TRANSACTION_updateCarrierLockPlusMode:I = 0x28

.field static final TRANSACTION_userPresent:I = 0x15

.field static final TRANSACTION_verifyCredential:I = 0xa

.field static final TRANSACTION_verifyTiedProfileChallenge:I = 0xb

.field static final TRANSACTION_verifyToken:I = 0x1c


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/widget/ILockSettings$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;
    .locals 2

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const-string/jumbo v1, "com.android.internal.widget.ILockSettings"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/widget/ILockSettings;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/android/internal/widget/ILockSettings;

    return-object v0

    :cond_1
    new-instance v1, Lcom/android/internal/widget/ILockSettings$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/ILockSettings$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 48
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sparse-switch p1, :sswitch_data_0

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v7

    return v7

    :sswitch_0
    const-string/jumbo v7, "com.android.internal.widget.ILockSettings"

    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v7, 0x1

    return v7

    :sswitch_1
    const-string/jumbo v7, "com.android.internal.widget.ILockSettings"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_0

    const/16 v36, 0x1

    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v38

    move-object/from16 v0, p0

    move/from16 v1, v36

    move/from16 v2, v38

    invoke-virtual {v0, v8, v1, v2}, Lcom/android/internal/widget/ILockSettings$Stub;->setBoolean(Ljava/lang/String;ZI)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v7, 0x1

    return v7

    :cond_0
    const/16 v36, 0x0

    goto :goto_0

    :sswitch_2
    const-string/jumbo v7, "com.android.internal.widget.ILockSettings"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v22

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v38

    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    move/from16 v3, v38

    invoke-virtual {v0, v8, v1, v2, v3}, Lcom/android/internal/widget/ILockSettings$Stub;->setLong(Ljava/lang/String;JI)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v7, 0x1

    return v7

    :sswitch_3
    const-string/jumbo v7, "com.android.internal.widget.ILockSettings"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v38

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move/from16 v2, v38

    invoke-virtual {v0, v8, v1, v2}, Lcom/android/internal/widget/ILockSettings$Stub;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v7, 0x1

    return v7

    :sswitch_4
    const-string/jumbo v7, "com.android.internal.widget.ILockSettings"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_1

    const/16 v36, 0x1

    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v38

    move-object/from16 v0, p0

    move/from16 v1, v36

    move/from16 v2, v38

    invoke-virtual {v0, v8, v1, v2}, Lcom/android/internal/widget/ILockSettings$Stub;->getBoolean(Ljava/lang/String;ZI)Z

    move-result v47

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v47, :cond_2

    const/4 v7, 0x1

    :goto_2
    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v7, 0x1

    return v7

    :cond_1
    const/16 v36, 0x0

    goto :goto_1

    :cond_2
    const/4 v7, 0x0

    goto :goto_2

    :sswitch_5
    const-string/jumbo v7, "com.android.internal.widget.ILockSettings"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v22

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v38

    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    move/from16 v3, v38

    invoke-virtual {v0, v8, v1, v2, v3}, Lcom/android/internal/widget/ILockSettings$Stub;->getLong(Ljava/lang/String;JI)J

    move-result-wide v44

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-wide/from16 v1, v44

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    const/4 v7, 0x1

    return v7

    :sswitch_6
    const-string/jumbo v7, "com.android.internal.widget.ILockSettings"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v38

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move/from16 v2, v38

    invoke-virtual {v0, v8, v1, v2}, Lcom/android/internal/widget/ILockSettings$Stub;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v46

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v7, 0x1

    return v7

    :sswitch_7
    const-string/jumbo v7, "com.android.internal.widget.ILockSettings"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v8, v9, v1, v12}, Lcom/android/internal/widget/ILockSettings$Stub;->setLockCredential(Ljava/lang/String;ILjava/lang/String;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v7, 0x1

    return v7

    :sswitch_8
    const-string/jumbo v7, "com.android.internal.widget.ILockSettings"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/widget/ILockSettings$Stub;->resetKeyStore(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v7, 0x1

    return v7

    :sswitch_9
    const-string/jumbo v7, "com.android.internal.widget.ILockSettings"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v38

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/widget/ICheckCredentialProgressCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ICheckCredentialProgressCallback;

    move-result-object v41

    move-object/from16 v0, p0

    move/from16 v1, v38

    move-object/from16 v2, v41

    invoke-virtual {v0, v8, v9, v1, v2}, Lcom/android/internal/widget/ILockSettings$Stub;->checkCredential(Ljava/lang/String;IILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v43

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v43, :cond_3

    const/4 v7, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v7, 0x1

    move-object/from16 v0, v43

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v7}, Lcom/android/internal/widget/VerifyCredentialResponse;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_3
    const/4 v7, 0x1

    return v7

    :cond_3
    const/4 v7, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3

    :sswitch_a
    const-string/jumbo v7, "com.android.internal.widget.ILockSettings"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    move-object/from16 v7, p0

    invoke-virtual/range {v7 .. v12}, Lcom/android/internal/widget/ILockSettings$Stub;->verifyCredential(Ljava/lang/String;IJI)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v43

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v43, :cond_4

    const/4 v7, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v7, 0x1

    move-object/from16 v0, v43

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v7}, Lcom/android/internal/widget/VerifyCredentialResponse;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_4
    const/4 v7, 0x1

    return v7

    :cond_4
    const/4 v7, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_4

    :sswitch_b
    const-string/jumbo v7, "com.android.internal.widget.ILockSettings"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    move-object/from16 v7, p0

    invoke-virtual/range {v7 .. v12}, Lcom/android/internal/widget/ILockSettings$Stub;->verifyTiedProfileChallenge(Ljava/lang/String;IJI)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v43

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v43, :cond_5

    const/4 v7, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v7, 0x1

    move-object/from16 v0, v43

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v7}, Lcom/android/internal/widget/VerifyCredentialResponse;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_5
    const/4 v7, 0x1

    return v7

    :cond_5
    const/4 v7, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_5

    :sswitch_c
    const-string/jumbo v7, "com.android.internal.widget.ILockSettings"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/widget/ILockSettings$Stub;->checkVoldPassword(I)Z

    move-result v47

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v47, :cond_6

    const/4 v7, 0x1

    :goto_6
    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v7, 0x1

    return v7

    :cond_6
    const/4 v7, 0x0

    goto :goto_6

    :sswitch_d
    const-string/jumbo v7, "com.android.internal.widget.ILockSettings"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/widget/ILockSettings$Stub;->havePattern(I)Z

    move-result v47

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v47, :cond_7

    const/4 v7, 0x1

    :goto_7
    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v7, 0x1

    return v7

    :cond_7
    const/4 v7, 0x0

    goto :goto_7

    :sswitch_e
    const-string/jumbo v7, "com.android.internal.widget.ILockSettings"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/widget/ILockSettings$Stub;->havePassword(I)Z

    move-result v47

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v47, :cond_8

    const/4 v7, 0x1

    :goto_8
    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v7, 0x1

    return v7

    :cond_8
    const/4 v7, 0x0

    goto :goto_8

    :sswitch_f
    const-string/jumbo v7, "com.android.internal.widget.ILockSettings"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_9

    const/16 v36, 0x1

    :goto_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, p0

    move/from16 v1, v36

    move-object/from16 v2, v39

    invoke-virtual {v0, v6, v1, v2}, Lcom/android/internal/widget/ILockSettings$Stub;->setSeparateProfileChallengeEnabled(IZLjava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v7, 0x1

    return v7

    :cond_9
    const/16 v36, 0x0

    goto :goto_9

    :sswitch_10
    const-string/jumbo v7, "com.android.internal.widget.ILockSettings"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/widget/ILockSettings$Stub;->getSeparateProfileChallengeEnabled(I)Z

    move-result v47

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v47, :cond_a

    const/4 v7, 0x1

    :goto_a
    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v7, 0x1

    return v7

    :cond_a
    const/4 v7, 0x0

    goto :goto_a

    :sswitch_11
    const-string/jumbo v7, "com.android.internal.widget.ILockSettings"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Landroid/app/trust/IStrongAuthTracker$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/trust/IStrongAuthTracker;

    move-result-object v30

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ILockSettings$Stub;->registerStrongAuthTracker(Landroid/app/trust/IStrongAuthTracker;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v7, 0x1

    return v7

    :sswitch_12
    const-string/jumbo v7, "com.android.internal.widget.ILockSettings"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Landroid/app/trust/IStrongAuthTracker$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/trust/IStrongAuthTracker;

    move-result-object v30

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ILockSettings$Stub;->unregisterStrongAuthTracker(Landroid/app/trust/IStrongAuthTracker;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v7, 0x1

    return v7

    :sswitch_13
    const-string/jumbo v7, "com.android.internal.widget.ILockSettings"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v9}, Lcom/android/internal/widget/ILockSettings$Stub;->requireStrongAuth(II)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v7, 0x1

    return v7

    :sswitch_14
    const-string/jumbo v7, "com.android.internal.widget.ILockSettings"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ILockSettings$Stub;->systemReady()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v7, 0x1

    return v7

    :sswitch_15
    const-string/jumbo v7, "com.android.internal.widget.ILockSettings"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/widget/ILockSettings$Stub;->userPresent(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v7, 0x1

    return v7

    :sswitch_16
    const-string/jumbo v7, "com.android.internal.widget.ILockSettings"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/widget/ILockSettings$Stub;->getStrongAuthForUser(I)I

    move-result v42

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v7, 0x1

    return v7

    :sswitch_17
    const-string/jumbo v7, "com.android.internal.widget.ILockSettings"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v21

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v9}, Lcom/android/internal/widget/ILockSettings$Stub;->addEscrowToken([BI)J

    move-result-wide v44

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-wide/from16 v1, v44

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    const/4 v7, 0x1

    return v7

    :sswitch_18
    const-string/jumbo v7, "com.android.internal.widget.ILockSettings"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v28

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    move-object/from16 v0, p0

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2, v9}, Lcom/android/internal/widget/ILockSettings$Stub;->removeEscrowToken(JI)Z

    move-result v47

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v47, :cond_b

    const/4 v7, 0x1

    :goto_b
    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v7, 0x1

    return v7

    :cond_b
    const/4 v7, 0x0

    goto :goto_b

    :sswitch_19
    const-string/jumbo v7, "com.android.internal.widget.ILockSettings"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v28

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    move-object/from16 v0, p0

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2, v9}, Lcom/android/internal/widget/ILockSettings$Stub;->isEscrowTokenActive(JI)Z

    move-result v47

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v47, :cond_c

    const/4 v7, 0x1

    :goto_c
    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v7, 0x1

    return v7

    :cond_c
    const/4 v7, 0x0

    goto :goto_c

    :sswitch_1a
    const-string/jumbo v7, "com.android.internal.widget.ILockSettings"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v18

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    move-object/from16 v13, p0

    move-object v14, v8

    move v15, v9

    move-wide/from16 v16, v10

    invoke-virtual/range {v13 .. v19}, Lcom/android/internal/widget/ILockSettings$Stub;->setLockCredentialWithToken(Ljava/lang/String;IJ[BI)Z

    move-result v47

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v47, :cond_d

    const/4 v7, 0x1

    :goto_d
    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v7, 0x1

    return v7

    :cond_d
    const/4 v7, 0x0

    goto :goto_d

    :sswitch_1b
    const-string/jumbo v7, "com.android.internal.widget.ILockSettings"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v28

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v37

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v38

    move-object/from16 v0, p0

    move-wide/from16 v1, v28

    move-object/from16 v3, v37

    move/from16 v4, v38

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/widget/ILockSettings$Stub;->unlockUserWithToken(J[BI)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v7, 0x1

    return v7

    :sswitch_1c
    const-string/jumbo v7, "com.android.internal.widget.ILockSettings"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v21

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v22

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v38

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-wide/from16 v2, v22

    move/from16 v4, v38

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/widget/ILockSettings$Stub;->verifyToken([BJI)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v43

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v43, :cond_e

    const/4 v7, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v7, 0x1

    move-object/from16 v0, v43

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v7}, Lcom/android/internal/widget/VerifyCredentialResponse;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_e
    const/4 v7, 0x1

    return v7

    :cond_e
    const/4 v7, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_e

    :sswitch_1d
    const-string/jumbo v7, "com.android.internal.widget.ILockSettings"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v21

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v22

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v24

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v25

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    move-object/from16 v20, p0

    move/from16 v27, v19

    invoke-virtual/range {v20 .. v27}, Lcom/android/internal/widget/ILockSettings$Stub;->changeToken([BJ[BJI)Z

    move-result v47

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v47, :cond_f

    const/4 v7, 0x1

    :goto_f
    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v7, 0x1

    return v7

    :cond_f
    const/4 v7, 0x0

    goto :goto_f

    :sswitch_1e
    const-string/jumbo v7, "com.android.internal.widget.ILockSettings"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/widget/ILockSettings$Stub;->getCredentialType(I)I

    move-result v42

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v7, 0x1

    return v7

    :sswitch_1f
    const-string/jumbo v7, "com.android.internal.widget.ILockSettings"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/widget/ILockSettings$Stub;->getSecureMode(I)I

    move-result v42

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v7, 0x1

    return v7

    :sswitch_20
    const-string/jumbo v7, "com.android.internal.widget.ILockSettings"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Landroid/os/IRemoteCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IRemoteCallback;

    move-result-object v31

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ILockSettings$Stub;->setLockModeChangedCallback(Landroid/os/IRemoteCallback;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v7, 0x1

    return v7

    :sswitch_21
    const-string/jumbo v7, "com.android.internal.widget.ILockSettings"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_10

    const/16 v32, 0x1

    :goto_10
    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ILockSettings$Stub;->sendLockTypeChangedInfo(Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v7, 0x1

    return v7

    :cond_10
    const/16 v32, 0x0

    goto :goto_10

    :sswitch_22
    const-string/jumbo v7, "com.android.internal.widget.ILockSettings"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v9}, Lcom/android/internal/widget/ILockSettings$Stub;->setLockFMMPassword(Ljava/lang/String;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v7, 0x1

    return v7

    :sswitch_23
    const-string/jumbo v7, "com.android.internal.widget.ILockSettings"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v9}, Lcom/android/internal/widget/ILockSettings$Stub;->checkFMMPassword(Ljava/lang/String;I)Z

    move-result v47

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v47, :cond_11

    const/4 v7, 0x1

    :goto_11
    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v7, 0x1

    return v7

    :cond_11
    const/4 v7, 0x0

    goto :goto_11

    :sswitch_24
    const-string/jumbo v7, "com.android.internal.widget.ILockSettings"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/widget/ILockSettings$Stub;->haveFMMPassword(I)Z

    move-result v47

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v47, :cond_12

    const/4 v7, 0x1

    :goto_12
    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v7, 0x1

    return v7

    :cond_12
    const/4 v7, 0x0

    goto :goto_12

    :sswitch_25
    const-string/jumbo v7, "com.android.internal.widget.ILockSettings"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/widget/ILockSettings$Stub;->getCarrierLockPlusMode(I)Z

    move-result v47

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v47, :cond_13

    const/4 v7, 0x1

    :goto_13
    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v7, 0x1

    return v7

    :cond_13
    const/4 v7, 0x0

    goto :goto_13

    :sswitch_26
    const-string/jumbo v7, "com.android.internal.widget.ILockSettings"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/widget/ILockSettings$Stub;->setCarrierLockPlusEnabled(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v7, 0x1

    return v7

    :sswitch_27
    const-string/jumbo v7, "com.android.internal.widget.ILockSettings"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v9}, Lcom/android/internal/widget/ILockSettings$Stub;->setLockCarrierPassword(Ljava/lang/String;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v7, 0x1

    return v7

    :sswitch_28
    const-string/jumbo v7, "com.android.internal.widget.ILockSettings"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/widget/ILockSettings$Stub;->updateCarrierLockPlusMode(I)Z

    move-result v47

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v47, :cond_14

    const/4 v7, 0x1

    :goto_14
    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v7, 0x1

    return v7

    :cond_14
    const/4 v7, 0x0

    goto :goto_14

    :sswitch_29
    const-string/jumbo v7, "com.android.internal.widget.ILockSettings"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v9}, Lcom/android/internal/widget/ILockSettings$Stub;->checkCarrierPassword(Ljava/lang/String;I)Z

    move-result v47

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v47, :cond_15

    const/4 v7, 0x1

    :goto_15
    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v7, 0x1

    return v7

    :cond_15
    const/4 v7, 0x0

    goto :goto_15

    :sswitch_2a
    const-string/jumbo v7, "com.android.internal.widget.ILockSettings"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/widget/ILockSettings$Stub;->haveCarrierPassword(I)Z

    move-result v47

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v47, :cond_16

    const/4 v7, 0x1

    :goto_16
    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v7, 0x1

    return v7

    :cond_16
    const/4 v7, 0x0

    goto :goto_16

    :sswitch_2b
    const-string/jumbo v7, "com.android.internal.widget.ILockSettings"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/widget/IRemoteLockMonitorCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/IRemoteLockMonitorCallback;

    move-result-object v33

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v6, v1}, Lcom/android/internal/widget/ILockSettings$Stub;->registerRemoteLockCallback(ILcom/android/internal/widget/IRemoteLockMonitorCallback;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v7, 0x1

    return v7

    :sswitch_2c
    const-string/jumbo v7, "com.android.internal.widget.ILockSettings"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/widget/IRemoteLockMonitorCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/IRemoteLockMonitorCallback;

    move-result-object v33

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v6, v1}, Lcom/android/internal/widget/ILockSettings$Stub;->unregisterRemoteLockCallback(ILcom/android/internal/widget/IRemoteLockMonitorCallback;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v7, 0x1

    return v7

    :sswitch_2d
    const-string/jumbo v7, "com.android.internal.widget.ILockSettings"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_17

    sget-object v7, Lcom/android/internal/widget/RemoteLockInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v7, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lcom/android/internal/widget/RemoteLockInfo;

    :goto_17
    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v6, v1}, Lcom/android/internal/widget/ILockSettings$Stub;->setRemoteLock(ILcom/android/internal/widget/RemoteLockInfo;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v7, 0x1

    return v7

    :cond_17
    const/16 v34, 0x0

    goto :goto_17

    :sswitch_2e
    const-string/jumbo v7, "com.android.internal.widget.ILockSettings"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v38

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Landroid/os/IRemoteCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IRemoteCallback;

    move-result-object v40

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move/from16 v2, v38

    move-object/from16 v3, v40

    invoke-virtual {v0, v6, v1, v2, v3}, Lcom/android/internal/widget/ILockSettings$Stub;->checkCISPassword(ILjava/lang/String;ILandroid/os/IRemoteCallback;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v7, 0x1

    return v7

    :sswitch_2f
    const-string/jumbo v7, "com.android.internal.widget.ILockSettings"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/widget/ILockSettings$Stub;->requestRemoteLockInfo(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v7, 0x1

    return v7

    :sswitch_30
    const-string/jumbo v7, "com.android.internal.widget.ILockSettings"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v9}, Lcom/android/internal/widget/ILockSettings$Stub;->setPrivateModeLockPin(Ljava/lang/String;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v7, 0x1

    return v7

    :sswitch_31
    const-string/jumbo v7, "com.android.internal.widget.ILockSettings"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v9}, Lcom/android/internal/widget/ILockSettings$Stub;->setPrivateModeLockPassword(Ljava/lang/String;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v7, 0x1

    return v7

    :sswitch_32
    const-string/jumbo v7, "com.android.internal.widget.ILockSettings"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v9}, Lcom/android/internal/widget/ILockSettings$Stub;->setPrivateModeLockPattern(Ljava/lang/String;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v7, 0x1

    return v7

    :sswitch_33
    const-string/jumbo v7, "com.android.internal.widget.ILockSettings"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v9}, Lcom/android/internal/widget/ILockSettings$Stub;->setPrivateModeLockBackupPin(Ljava/lang/String;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v7, 0x1

    return v7

    :sswitch_34
    const-string/jumbo v7, "com.android.internal.widget.ILockSettings"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v9}, Lcom/android/internal/widget/ILockSettings$Stub;->checkPrivateModePin(Ljava/lang/String;I)Z

    move-result v47

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v47, :cond_18

    const/4 v7, 0x1

    :goto_18
    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v7, 0x1

    return v7

    :cond_18
    const/4 v7, 0x0

    goto :goto_18

    :sswitch_35
    const-string/jumbo v7, "com.android.internal.widget.ILockSettings"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v9}, Lcom/android/internal/widget/ILockSettings$Stub;->checkPrivateModePassword(Ljava/lang/String;I)Z

    move-result v47

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v47, :cond_19

    const/4 v7, 0x1

    :goto_19
    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v7, 0x1

    return v7

    :cond_19
    const/4 v7, 0x0

    goto :goto_19

    :sswitch_36
    const-string/jumbo v7, "com.android.internal.widget.ILockSettings"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v9}, Lcom/android/internal/widget/ILockSettings$Stub;->checkPrivateModePattern(Ljava/lang/String;I)Z

    move-result v47

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v47, :cond_1a

    const/4 v7, 0x1

    :goto_1a
    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v7, 0x1

    return v7

    :cond_1a
    const/4 v7, 0x0

    goto :goto_1a

    :sswitch_37
    const-string/jumbo v7, "com.android.internal.widget.ILockSettings"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v9}, Lcom/android/internal/widget/ILockSettings$Stub;->checkPrivateModeBackupPin(Ljava/lang/String;I)Z

    move-result v47

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v47, :cond_1b

    const/4 v7, 0x1

    :goto_1b
    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v7, 0x1

    return v7

    :cond_1b
    const/4 v7, 0x0

    goto :goto_1b

    :sswitch_38
    const-string/jumbo v7, "com.android.internal.widget.ILockSettings"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/widget/ILockSettings$Stub;->havePrivateModePin(I)Z

    move-result v47

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v47, :cond_1c

    const/4 v7, 0x1

    :goto_1c
    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v7, 0x1

    return v7

    :cond_1c
    const/4 v7, 0x0

    goto :goto_1c

    :sswitch_39
    const-string/jumbo v7, "com.android.internal.widget.ILockSettings"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/widget/ILockSettings$Stub;->havePrivateModePassword(I)Z

    move-result v47

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v47, :cond_1d

    const/4 v7, 0x1

    :goto_1d
    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v7, 0x1

    return v7

    :cond_1d
    const/4 v7, 0x0

    goto :goto_1d

    :sswitch_3a
    const-string/jumbo v7, "com.android.internal.widget.ILockSettings"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/widget/ILockSettings$Stub;->havePrivateModePattern(I)Z

    move-result v47

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v47, :cond_1e

    const/4 v7, 0x1

    :goto_1e
    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v7, 0x1

    return v7

    :cond_1e
    const/4 v7, 0x0

    goto :goto_1e

    :sswitch_3b
    const-string/jumbo v7, "com.android.internal.widget.ILockSettings"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/widget/ILockSettings$Stub;->havePrivateModeBackupPin(I)Z

    move-result v47

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v47, :cond_1f

    const/4 v7, 0x1

    :goto_1f
    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v7, 0x1

    return v7

    :cond_1f
    const/4 v7, 0x0

    goto :goto_1f

    :sswitch_3c
    const-string/jumbo v7, "com.android.internal.widget.ILockSettings"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/widget/ILockSettings$Stub;->haveBackupPassword(I)Z

    move-result v47

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v47, :cond_20

    const/4 v7, 0x1

    :goto_20
    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v7, 0x1

    return v7

    :cond_20
    const/4 v7, 0x0

    goto :goto_20

    :sswitch_3d
    const-string/jumbo v7, "com.android.internal.widget.ILockSettings"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v38

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move/from16 v2, v38

    invoke-virtual {v0, v8, v1, v2}, Lcom/android/internal/widget/ILockSettings$Stub;->setLockBackupPassword(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v7, 0x1

    return v7

    :sswitch_3e
    const-string/jumbo v7, "com.android.internal.widget.ILockSettings"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v9}, Lcom/android/internal/widget/ILockSettings$Stub;->checkBackupPassword(Ljava/lang/String;I)Z

    move-result v47

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v47, :cond_21

    const/4 v7, 0x1

    :goto_21
    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v7, 0x1

    return v7

    :cond_21
    const/4 v7, 0x0

    goto :goto_21

    :sswitch_3f
    const-string/jumbo v7, "com.android.internal.widget.ILockSettings"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/widget/ILockSettings$Stub;->haveRecoveryPassword(I)Z

    move-result v47

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v47, :cond_22

    const/4 v7, 0x1

    :goto_22
    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v7, 0x1

    return v7

    :cond_22
    const/4 v7, 0x0

    goto :goto_22

    :sswitch_40
    const-string/jumbo v7, "com.android.internal.widget.ILockSettings"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v38

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move/from16 v2, v38

    invoke-virtual {v0, v8, v1, v2}, Lcom/android/internal/widget/ILockSettings$Stub;->setLockRecoveryPassword(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v7, 0x1

    return v7

    :sswitch_41
    const-string/jumbo v7, "com.android.internal.widget.ILockSettings"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v9}, Lcom/android/internal/widget/ILockSettings$Stub;->checkRecoveryPassword(Ljava/lang/String;I)Z

    move-result v47

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v47, :cond_23

    const/4 v7, 0x1

    :goto_23
    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v7, 0x1

    return v7

    :cond_23
    const/4 v7, 0x0

    goto :goto_23

    :sswitch_42
    const-string/jumbo v7, "com.android.internal.widget.ILockSettings"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v9}, Lcom/android/internal/widget/ILockSettings$Stub;->setAppLockPin(Ljava/lang/String;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v7, 0x1

    return v7

    :sswitch_43
    const-string/jumbo v7, "com.android.internal.widget.ILockSettings"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v9}, Lcom/android/internal/widget/ILockSettings$Stub;->setAppLockPassword(Ljava/lang/String;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v7, 0x1

    return v7

    :sswitch_44
    const-string/jumbo v7, "com.android.internal.widget.ILockSettings"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v9}, Lcom/android/internal/widget/ILockSettings$Stub;->setAppLockPattern(Ljava/lang/String;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v7, 0x1

    return v7

    :sswitch_45
    const-string/jumbo v7, "com.android.internal.widget.ILockSettings"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v9}, Lcom/android/internal/widget/ILockSettings$Stub;->setAppLockBackupPin(Ljava/lang/String;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v7, 0x1

    return v7

    :sswitch_46
    const-string/jumbo v7, "com.android.internal.widget.ILockSettings"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v9}, Lcom/android/internal/widget/ILockSettings$Stub;->setAppLockFingerprintPassword(Ljava/lang/String;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v7, 0x1

    return v7

    :sswitch_47
    const-string/jumbo v7, "com.android.internal.widget.ILockSettings"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v9}, Lcom/android/internal/widget/ILockSettings$Stub;->checkAppLockPin(Ljava/lang/String;I)Z

    move-result v47

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v47, :cond_24

    const/4 v7, 0x1

    :goto_24
    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v7, 0x1

    return v7

    :cond_24
    const/4 v7, 0x0

    goto :goto_24

    :sswitch_48
    const-string/jumbo v7, "com.android.internal.widget.ILockSettings"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v9}, Lcom/android/internal/widget/ILockSettings$Stub;->checkAppLockPassword(Ljava/lang/String;I)Z

    move-result v47

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v47, :cond_25

    const/4 v7, 0x1

    :goto_25
    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v7, 0x1

    return v7

    :cond_25
    const/4 v7, 0x0

    goto :goto_25

    :sswitch_49
    const-string/jumbo v7, "com.android.internal.widget.ILockSettings"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v9}, Lcom/android/internal/widget/ILockSettings$Stub;->checkAppLockPattern(Ljava/lang/String;I)Z

    move-result v47

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v47, :cond_26

    const/4 v7, 0x1

    :goto_26
    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v7, 0x1

    return v7

    :cond_26
    const/4 v7, 0x0

    goto :goto_26

    :sswitch_4a
    const-string/jumbo v7, "com.android.internal.widget.ILockSettings"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v9}, Lcom/android/internal/widget/ILockSettings$Stub;->checkAppLockBackupPin(Ljava/lang/String;I)Z

    move-result v47

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v47, :cond_27

    const/4 v7, 0x1

    :goto_27
    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v7, 0x1

    return v7

    :cond_27
    const/4 v7, 0x0

    goto :goto_27

    :sswitch_4b
    const-string/jumbo v7, "com.android.internal.widget.ILockSettings"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v9}, Lcom/android/internal/widget/ILockSettings$Stub;->checkAppLockFingerprintPassword(Ljava/lang/String;I)Z

    move-result v47

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v47, :cond_28

    const/4 v7, 0x1

    :goto_28
    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v7, 0x1

    return v7

    :cond_28
    const/4 v7, 0x0

    goto :goto_28

    :sswitch_4c
    const-string/jumbo v7, "com.android.internal.widget.ILockSettings"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/widget/ILockSettings$Stub;->haveAppLockPin(I)Z

    move-result v47

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v47, :cond_29

    const/4 v7, 0x1

    :goto_29
    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v7, 0x1

    return v7

    :cond_29
    const/4 v7, 0x0

    goto :goto_29

    :sswitch_4d
    const-string/jumbo v7, "com.android.internal.widget.ILockSettings"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/widget/ILockSettings$Stub;->haveAppLockPassword(I)Z

    move-result v47

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v47, :cond_2a

    const/4 v7, 0x1

    :goto_2a
    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v7, 0x1

    return v7

    :cond_2a
    const/4 v7, 0x0

    goto :goto_2a

    :sswitch_4e
    const-string/jumbo v7, "com.android.internal.widget.ILockSettings"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/widget/ILockSettings$Stub;->haveAppLockPattern(I)Z

    move-result v47

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v47, :cond_2b

    const/4 v7, 0x1

    :goto_2b
    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v7, 0x1

    return v7

    :cond_2b
    const/4 v7, 0x0

    goto :goto_2b

    :sswitch_4f
    const-string/jumbo v7, "com.android.internal.widget.ILockSettings"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/widget/ILockSettings$Stub;->haveAppLockBackupPin(I)Z

    move-result v47

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v47, :cond_2c

    const/4 v7, 0x1

    :goto_2c
    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v7, 0x1

    return v7

    :cond_2c
    const/4 v7, 0x0

    goto :goto_2c

    :sswitch_50
    const-string/jumbo v7, "com.android.internal.widget.ILockSettings"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/widget/ILockSettings$Stub;->haveAppLockFingerprintPassword(I)Z

    move-result v47

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v47, :cond_2d

    const/4 v7, 0x1

    :goto_2d
    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v7, 0x1

    return v7

    :cond_2d
    const/4 v7, 0x0

    goto :goto_2d

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
        0x41 -> :sswitch_41
        0x42 -> :sswitch_42
        0x43 -> :sswitch_43
        0x44 -> :sswitch_44
        0x45 -> :sswitch_45
        0x46 -> :sswitch_46
        0x47 -> :sswitch_47
        0x48 -> :sswitch_48
        0x49 -> :sswitch_49
        0x4a -> :sswitch_4a
        0x4b -> :sswitch_4b
        0x4c -> :sswitch_4c
        0x4d -> :sswitch_4d
        0x4e -> :sswitch_4e
        0x4f -> :sswitch_4f
        0x50 -> :sswitch_50
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
