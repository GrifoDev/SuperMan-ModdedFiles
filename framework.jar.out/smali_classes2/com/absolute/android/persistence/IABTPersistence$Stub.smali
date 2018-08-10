.class public abstract Lcom/absolute/android/persistence/IABTPersistence$Stub;
.super Landroid/os/Binder;
.source "IABTPersistence.java"

# interfaces
.implements Lcom/absolute/android/persistence/IABTPersistence;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/absolute/android/persistence/IABTPersistence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/absolute/android/persistence/IABTPersistence$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.absolute.android.persistence.IABTPersistence"

.field static final TRANSACTION_downloadApk:I = 0x16

.field static final TRANSACTION_downloadApk_v2:I = 0x1a

.field static final TRANSACTION_getAllApplicationProfiles:I = 0x7

.field static final TRANSACTION_getAppInfo:I = 0x15

.field static final TRANSACTION_getAppInfo_v2:I = 0x19

.field static final TRANSACTION_getApplicationProfile:I = 0x8

.field static final TRANSACTION_getDeviceId:I = 0x11

.field static final TRANSACTION_getDiagnostics:I = 0x14

.field static final TRANSACTION_getLog:I = 0x4

.field static final TRANSACTION_getPersistedAppCount:I = 0xc

.field static final TRANSACTION_getPersistedFile:I = 0x10

.field static final TRANSACTION_getState:I = 0x1

.field static final TRANSACTION_getSystemFile:I = 0x18

.field static final TRANSACTION_getVersion:I = 0x3

.field static final TRANSACTION_install:I = 0x5

.field static final TRANSACTION_invokeMethodAsSystem:I = 0xd

.field static final TRANSACTION_persistApp:I = 0x17

.field static final TRANSACTION_refreshDeviceId:I = 0x12

.field static final TRANSACTION_registerPing:I = 0xe

.field static final TRANSACTION_setAllPersistence:I = 0xb

.field static final TRANSACTION_setApplicationProfile:I = 0x9

.field static final TRANSACTION_setPersistence:I = 0xa

.field static final TRANSACTION_setState:I = 0x2

.field static final TRANSACTION_testFirmwareUpdate:I = 0x13

.field static final TRANSACTION_uninstall:I = 0x6

.field static final TRANSACTION_unregisterPing:I = 0xf


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "com.absolute.android.persistence.IABTPersistence"

    invoke-virtual {p0, p0, v0}, Lcom/absolute/android/persistence/IABTPersistence$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/absolute/android/persistence/IABTPersistence;
    .locals 2

    const/4 v1, 0x0

    if-eqz p0, :cond_1

    const-string/jumbo v1, "com.absolute.android.persistence.IABTPersistence"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_0
    new-instance v1, Lcom/absolute/android/persistence/IABTPersistence$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/absolute/android/persistence/IABTPersistence$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1

    :cond_1
    return-object v1

    :cond_2
    instance-of v1, v0, Lcom/absolute/android/persistence/IABTPersistence;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/absolute/android/persistence/IABTPersistence;

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 49
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sparse-switch p1, :sswitch_data_0

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    return v3

    :sswitch_0
    const-string/jumbo v3, "com.absolute.android.persistence.IABTPersistence"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v3, 0x1

    return v3

    :sswitch_1
    const-string/jumbo v3, "com.absolute.android.persistence.IABTPersistence"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/absolute/android/persistence/IABTPersistence$Stub;->getState()I

    move-result v43

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    return v3

    :sswitch_2
    const-string/jumbo v3, "com.absolute.android.persistence.IABTPersistence"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v33

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/absolute/android/persistence/IABTPersistence$Stub;->setState(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    return v3

    :sswitch_3
    const-string/jumbo v3, "com.absolute.android.persistence.IABTPersistence"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/absolute/android/persistence/IABTPersistence$Stub;->getVersion()I

    move-result v43

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    return v3

    :sswitch_4
    const-string/jumbo v3, "com.absolute.android.persistence.IABTPersistence"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/absolute/android/persistence/IABTPersistence$Stub;->getLog(Ljava/lang/String;)Lcom/absolute/android/persistence/IABTPersistenceLog;

    move-result-object v46

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-nez v46, :cond_0

    const/4 v3, 0x0

    :goto_0
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    const/4 v3, 0x1

    return v3

    :cond_0
    invoke-interface/range {v46 .. v46}, Lcom/absolute/android/persistence/IABTPersistenceLog;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    goto :goto_0

    :sswitch_5
    const-string/jumbo v3, "com.absolute.android.persistence.IABTPersistence"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-nez v3, :cond_1

    const/16 v34, 0x0

    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/absolute/android/persistence/IABTResultReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/absolute/android/persistence/IABTResultReceiver;

    move-result-object v41

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move-object/from16 v2, v41

    invoke-virtual {v0, v1, v5, v2}, Lcom/absolute/android/persistence/IABTPersistence$Stub;->install(Lcom/absolute/android/persistence/AppProfile;Ljava/lang/String;Lcom/absolute/android/persistence/IABTResultReceiver;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    return v3

    :cond_1
    sget-object v3, Lcom/absolute/android/persistence/AppProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lcom/absolute/android/persistence/AppProfile;

    goto :goto_1

    :sswitch_6
    const-string/jumbo v3, "com.absolute.android.persistence.IABTPersistence"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-nez v3, :cond_2

    const/16 v39, 0x0

    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/absolute/android/persistence/IABTResultReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/absolute/android/persistence/IABTResultReceiver;

    move-result-object v41

    move-object/from16 v0, p0

    move/from16 v1, v39

    move-object/from16 v2, v41

    invoke-virtual {v0, v4, v1, v2}, Lcom/absolute/android/persistence/IABTPersistence$Stub;->uninstall(Ljava/lang/String;ZLcom/absolute/android/persistence/IABTResultReceiver;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    return v3

    :cond_2
    const/16 v39, 0x1

    goto :goto_2

    :sswitch_7
    const-string/jumbo v3, "com.absolute.android.persistence.IABTPersistence"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/absolute/android/persistence/IABTPersistence$Stub;->getAllApplicationProfiles()[Lcom/absolute/android/persistence/AppProfile;

    move-result-object v48

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v48

    invoke-virtual {v0, v1, v3}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    const/4 v3, 0x1

    return v3

    :sswitch_8
    const-string/jumbo v3, "com.absolute.android.persistence.IABTPersistence"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/absolute/android/persistence/IABTPersistence$Stub;->getApplicationProfile(Ljava/lang/String;)Lcom/absolute/android/persistence/AppProfile;

    move-result-object v44

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-nez v44, :cond_3

    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_3
    const/4 v3, 0x1

    return v3

    :cond_3
    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    move-object/from16 v0, v44

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v3}, Lcom/absolute/android/persistence/AppProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_3

    :sswitch_9
    const-string/jumbo v3, "com.absolute.android.persistence.IABTPersistence"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-nez v3, :cond_4

    const/16 v34, 0x0

    :goto_4
    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/absolute/android/persistence/IABTPersistence$Stub;->setApplicationProfile(Lcom/absolute/android/persistence/AppProfile;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    return v3

    :cond_4
    sget-object v3, Lcom/absolute/android/persistence/AppProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lcom/absolute/android/persistence/AppProfile;

    goto :goto_4

    :sswitch_a
    const-string/jumbo v3, "com.absolute.android.persistence.IABTPersistence"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-nez v3, :cond_5

    const/16 v39, 0x0

    :goto_5
    move-object/from16 v0, p0

    move/from16 v1, v39

    invoke-virtual {v0, v4, v1}, Lcom/absolute/android/persistence/IABTPersistence$Stub;->setPersistence(Ljava/lang/String;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    return v3

    :cond_5
    const/16 v39, 0x1

    goto :goto_5

    :sswitch_b
    const-string/jumbo v3, "com.absolute.android.persistence.IABTPersistence"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-nez v3, :cond_6

    const/16 v36, 0x0

    :goto_6
    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/absolute/android/persistence/IABTPersistence$Stub;->setAllPersistence(Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    return v3

    :cond_6
    const/16 v36, 0x1

    goto :goto_6

    :sswitch_c
    const-string/jumbo v3, "com.absolute.android.persistence.IABTPersistence"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/absolute/android/persistence/IABTPersistence$Stub;->getPersistedAppCount()I

    move-result v43

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    return v3

    :sswitch_d
    const-string/jumbo v3, "com.absolute.android.persistence.IABTPersistence"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-nez v3, :cond_7

    const/16 v35, 0x0

    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/absolute/android/persistence/IABTResultReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/absolute/android/persistence/IABTResultReceiver;

    move-result-object v38

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Lcom/absolute/android/persistence/IABTPersistence$Stub;->invokeMethodAsSystem(Lcom/absolute/android/persistence/MethodSpec;Lcom/absolute/android/persistence/IABTResultReceiver;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    return v3

    :cond_7
    sget-object v3, Lcom/absolute/android/persistence/MethodSpec;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Lcom/absolute/android/persistence/MethodSpec;

    goto :goto_7

    :sswitch_e
    const-string/jumbo v3, "com.absolute.android.persistence.IABTPersistence"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/absolute/android/persistence/IABTPing$Stub;->asInterface(Landroid/os/IBinder;)Lcom/absolute/android/persistence/IABTPing;

    move-result-object v37

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v40

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move/from16 v2, v40

    invoke-virtual {v0, v4, v1, v2}, Lcom/absolute/android/persistence/IABTPersistence$Stub;->registerPing(Ljava/lang/String;Lcom/absolute/android/persistence/IABTPing;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    return v3

    :sswitch_f
    const-string/jumbo v3, "com.absolute.android.persistence.IABTPersistence"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/absolute/android/persistence/IABTPersistence$Stub;->unregisterPing(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    return v3

    :sswitch_10
    const-string/jumbo v3, "com.absolute.android.persistence.IABTPersistence"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-nez v3, :cond_8

    const/16 v42, 0x0

    :goto_8
    move-object/from16 v0, p0

    move/from16 v1, v42

    invoke-virtual {v0, v4, v5, v1}, Lcom/absolute/android/persistence/IABTPersistence$Stub;->getPersistedFile(Ljava/lang/String;Ljava/lang/String;Z)Lcom/absolute/android/persistence/IABTPersistedFile;

    move-result-object v45

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-nez v45, :cond_9

    const/4 v3, 0x0

    :goto_9
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    const/4 v3, 0x1

    return v3

    :cond_8
    const/16 v42, 0x1

    goto :goto_8

    :cond_9
    invoke-interface/range {v45 .. v45}, Lcom/absolute/android/persistence/IABTPersistedFile;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    goto :goto_9

    :sswitch_11
    const-string/jumbo v3, "com.absolute.android.persistence.IABTPersistence"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/absolute/android/persistence/IABTPersistence$Stub;->getDeviceId()Ljava/lang/String;

    move-result-object v47

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v3, 0x1

    return v3

    :sswitch_12
    const-string/jumbo v3, "com.absolute.android.persistence.IABTPersistence"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/absolute/android/persistence/IABTPersistence$Stub;->refreshDeviceId()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    return v3

    :sswitch_13
    const-string/jumbo v3, "com.absolute.android.persistence.IABTPersistence"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/absolute/android/persistence/IABTPersistence$Stub;->testFirmwareUpdate()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    return v3

    :sswitch_14
    const-string/jumbo v3, "com.absolute.android.persistence.IABTPersistence"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/absolute/android/persistence/IABTPersistence$Stub;->getDiagnostics()Ljava/lang/String;

    move-result-object v47

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v3, 0x1

    return v3

    :sswitch_15
    const-string/jumbo v3, "com.absolute.android.persistence.IABTPersistence"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/absolute/android/persistence/IABTGetAppInfoReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/absolute/android/persistence/IABTGetAppInfoReceiver;

    move-result-object v8

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/absolute/android/persistence/IABTPersistence$Stub;->getAppInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/absolute/android/persistence/IABTGetAppInfoReceiver;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    return v3

    :sswitch_16
    const-string/jumbo v3, "com.absolute.android.persistence.IABTPersistence"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/absolute/android/persistence/IABTDownloadReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/absolute/android/persistence/IABTDownloadReceiver;

    move-result-object v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    move-object/from16 v9, p0

    move-object v10, v4

    move-object v12, v6

    move-object v13, v7

    invoke-virtual/range {v9 .. v16}, Lcom/absolute/android/persistence/IABTPersistence$Stub;->downloadApk(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/absolute/android/persistence/IABTDownloadReceiver;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    return v3

    :sswitch_17
    const-string/jumbo v3, "com.absolute.android.persistence.IABTPersistence"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-nez v3, :cond_a

    const/16 v34, 0x0

    :goto_a
    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/absolute/android/persistence/IABTPersistence$Stub;->persistApp(Lcom/absolute/android/persistence/AppProfile;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    return v3

    :cond_a
    sget-object v3, Lcom/absolute/android/persistence/AppProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lcom/absolute/android/persistence/AppProfile;

    goto :goto_a

    :sswitch_18
    const-string/jumbo v3, "com.absolute.android.persistence.IABTPersistence"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-nez v3, :cond_b

    const/16 v39, 0x0

    :goto_b
    move-object/from16 v0, p0

    move/from16 v1, v39

    invoke-virtual {v0, v4, v1}, Lcom/absolute/android/persistence/IABTPersistence$Stub;->getSystemFile(Ljava/lang/String;Z)Lcom/absolute/android/persistence/IABTPersistedFile;

    move-result-object v45

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-nez v45, :cond_c

    const/4 v3, 0x0

    :goto_c
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    const/4 v3, 0x1

    return v3

    :cond_b
    const/16 v39, 0x1

    goto :goto_b

    :cond_c
    invoke-interface/range {v45 .. v45}, Lcom/absolute/android/persistence/IABTPersistedFile;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    goto :goto_c

    :sswitch_19
    const-string/jumbo v3, "com.absolute.android.persistence.IABTPersistence"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/absolute/android/persistence/IABTGetAppInfoReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/absolute/android/persistence/IABTGetAppInfoReceiver;

    move-result-object v23

    move-object/from16 v17, p0

    move-object/from16 v18, v4

    move-object/from16 v19, v5

    move-object/from16 v20, v6

    move-object/from16 v21, v7

    move-object/from16 v22, v14

    invoke-virtual/range {v17 .. v23}, Lcom/absolute/android/persistence/IABTPersistence$Stub;->getAppInfo_v2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/absolute/android/persistence/IABTGetAppInfoReceiver;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    return v3

    :sswitch_1a
    const-string/jumbo v3, "com.absolute.android.persistence.IABTPersistence"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/absolute/android/persistence/IABTDownloadReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/absolute/android/persistence/IABTDownloadReceiver;

    move-result-object v31

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v32

    move-object/from16 v24, p0

    move-object/from16 v25, v4

    move/from16 v26, v11

    move-object/from16 v27, v6

    move-object/from16 v28, v7

    move-object/from16 v29, v14

    invoke-virtual/range {v24 .. v32}, Lcom/absolute/android/persistence/IABTPersistence$Stub;->downloadApk_v2(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/absolute/android/persistence/IABTDownloadReceiver;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    return v3

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
