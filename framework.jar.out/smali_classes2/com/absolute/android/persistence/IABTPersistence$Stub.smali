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

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "com.absolute.android.persistence.IABTPersistence"

    .line 32
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 33
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/absolute/android/persistence/IABTPersistence;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 40
    if-eqz p0, :cond_1

    const-string/jumbo v0, "com.absolute.android.persistence.IABTPersistence"

    .line 43
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 44
    if-nez v0, :cond_2

    .line 47
    :cond_0
    new-instance v0, Lcom/absolute/android/persistence/IABTPersistence$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/absolute/android/persistence/IABTPersistence$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0

    .line 41
    :cond_1
    return-object v0

    .line 44
    :cond_2
    instance-of v1, v0, Lcom/absolute/android/persistence/IABTPersistence;

    if-eqz v1, :cond_0

    .line 45
    check-cast v0, Lcom/absolute/android/persistence/IABTPersistence;

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 51
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v9, 0x1

    .line 55
    sparse-switch p1, :sswitch_data_0

    .line 383
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :sswitch_0
    const-string/jumbo v0, "com.absolute.android.persistence.IABTPersistence"

    .line 59
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 60
    return v9

    :sswitch_1
    const-string/jumbo v0, "com.absolute.android.persistence.IABTPersistence"

    .line 64
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p0}, Lcom/absolute/android/persistence/IABTPersistence$Stub;->getState()I

    move-result v0

    .line 66
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 67
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 68
    return v9

    :sswitch_2
    const-string/jumbo v0, "com.absolute.android.persistence.IABTPersistence"

    .line 72
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 75
    invoke-virtual {p0, v0}, Lcom/absolute/android/persistence/IABTPersistence$Stub;->setState(I)V

    .line 76
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 77
    return v9

    :sswitch_3
    const-string/jumbo v0, "com.absolute.android.persistence.IABTPersistence"

    .line 81
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p0}, Lcom/absolute/android/persistence/IABTPersistence$Stub;->getVersion()I

    move-result v0

    .line 83
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 84
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 85
    return v9

    :sswitch_4
    const-string/jumbo v1, "com.absolute.android.persistence.IABTPersistence"

    .line 89
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 92
    invoke-virtual {p0, v1}, Lcom/absolute/android/persistence/IABTPersistence$Stub;->getLog(Ljava/lang/String;)Lcom/absolute/android/persistence/IABTPersistenceLog;

    move-result-object v1

    .line 93
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 94
    if-nez v1, :cond_0

    :goto_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 95
    return v9

    .line 94
    :cond_0
    invoke-interface {v1}, Lcom/absolute/android/persistence/IABTPersistenceLog;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_0

    :sswitch_5
    const-string/jumbo v1, "com.absolute.android.persistence.IABTPersistence"

    .line 99
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-nez v1, :cond_1

    .line 108
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 110
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/absolute/android/persistence/IABTResultReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/absolute/android/persistence/IABTResultReceiver;

    move-result-object v2

    .line 111
    invoke-virtual {p0, v0, v1, v2}, Lcom/absolute/android/persistence/IABTPersistence$Stub;->install(Lcom/absolute/android/persistence/AppProfile;Ljava/lang/String;Lcom/absolute/android/persistence/IABTResultReceiver;)V

    .line 112
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 113
    return v9

    .line 102
    :cond_1
    sget-object v0, Lcom/absolute/android/persistence/AppProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/absolute/android/persistence/AppProfile;

    goto :goto_1

    :sswitch_6
    const-string/jumbo v0, "com.absolute.android.persistence.IABTPersistence"

    .line 117
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 121
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 123
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/absolute/android/persistence/IABTResultReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/absolute/android/persistence/IABTResultReceiver;

    move-result-object v1

    .line 124
    invoke-virtual {p0, v2, v0, v1}, Lcom/absolute/android/persistence/IABTPersistence$Stub;->uninstall(Ljava/lang/String;ZLcom/absolute/android/persistence/IABTResultReceiver;)V

    .line 125
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 126
    return v9

    :cond_2
    move v0, v9

    .line 121
    goto :goto_2

    :sswitch_7
    const-string/jumbo v0, "com.absolute.android.persistence.IABTPersistence"

    .line 130
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p0}, Lcom/absolute/android/persistence/IABTPersistence$Stub;->getAllApplicationProfiles()[Lcom/absolute/android/persistence/AppProfile;

    move-result-object v0

    .line 132
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 133
    invoke-virtual {p3, v0, v9}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 134
    return v9

    :sswitch_8
    const-string/jumbo v0, "com.absolute.android.persistence.IABTPersistence"

    .line 138
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 140
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 141
    invoke-virtual {p0, v0}, Lcom/absolute/android/persistence/IABTPersistence$Stub;->getApplicationProfile(Ljava/lang/String;)Lcom/absolute/android/persistence/AppProfile;

    move-result-object v0

    .line 142
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 143
    if-nez v0, :cond_3

    .line 148
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 150
    :goto_3
    return v9

    .line 144
    :cond_3
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 145
    invoke-virtual {v0, p3, v9}, Lcom/absolute/android/persistence/AppProfile;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_3

    :sswitch_9
    const-string/jumbo v1, "com.absolute.android.persistence.IABTPersistence"

    .line 154
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 156
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-nez v1, :cond_4

    .line 162
    :goto_4
    invoke-virtual {p0, v0}, Lcom/absolute/android/persistence/IABTPersistence$Stub;->setApplicationProfile(Lcom/absolute/android/persistence/AppProfile;)V

    .line 163
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 164
    return v9

    .line 157
    :cond_4
    sget-object v0, Lcom/absolute/android/persistence/AppProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/absolute/android/persistence/AppProfile;

    goto :goto_4

    :sswitch_a
    const-string/jumbo v0, "com.absolute.android.persistence.IABTPersistence"

    .line 168
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 170
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 172
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-nez v2, :cond_5

    .line 173
    :goto_5
    invoke-virtual {p0, v0, v1}, Lcom/absolute/android/persistence/IABTPersistence$Stub;->setPersistence(Ljava/lang/String;Z)V

    .line 174
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 175
    return v9

    :cond_5
    move v1, v9

    .line 172
    goto :goto_5

    :sswitch_b
    const-string/jumbo v0, "com.absolute.android.persistence.IABTPersistence"

    .line 179
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 181
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_6

    .line 182
    :goto_6
    invoke-virtual {p0, v1}, Lcom/absolute/android/persistence/IABTPersistence$Stub;->setAllPersistence(Z)V

    .line 183
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 184
    return v9

    :cond_6
    move v1, v9

    .line 181
    goto :goto_6

    :sswitch_c
    const-string/jumbo v0, "com.absolute.android.persistence.IABTPersistence"

    .line 188
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 189
    invoke-virtual {p0}, Lcom/absolute/android/persistence/IABTPersistence$Stub;->getPersistedAppCount()I

    move-result v0

    .line 190
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 191
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 192
    return v9

    :sswitch_d
    const-string/jumbo v1, "com.absolute.android.persistence.IABTPersistence"

    .line 196
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 198
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-nez v1, :cond_7

    .line 205
    :goto_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/absolute/android/persistence/IABTResultReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/absolute/android/persistence/IABTResultReceiver;

    move-result-object v1

    .line 206
    invoke-virtual {p0, v0, v1}, Lcom/absolute/android/persistence/IABTPersistence$Stub;->invokeMethodAsSystem(Lcom/absolute/android/persistence/MethodSpec;Lcom/absolute/android/persistence/IABTResultReceiver;)V

    .line 207
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 208
    return v9

    .line 199
    :cond_7
    sget-object v0, Lcom/absolute/android/persistence/MethodSpec;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/absolute/android/persistence/MethodSpec;

    goto :goto_7

    :sswitch_e
    const-string/jumbo v0, "com.absolute.android.persistence.IABTPersistence"

    .line 212
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 214
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 216
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/absolute/android/persistence/IABTPing$Stub;->asInterface(Landroid/os/IBinder;)Lcom/absolute/android/persistence/IABTPing;

    move-result-object v1

    .line 218
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 219
    invoke-virtual {p0, v0, v1, v2}, Lcom/absolute/android/persistence/IABTPersistence$Stub;->registerPing(Ljava/lang/String;Lcom/absolute/android/persistence/IABTPing;I)V

    .line 220
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 221
    return v9

    :sswitch_f
    const-string/jumbo v0, "com.absolute.android.persistence.IABTPersistence"

    .line 225
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 227
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 228
    invoke-virtual {p0, v0}, Lcom/absolute/android/persistence/IABTPersistence$Stub;->unregisterPing(Ljava/lang/String;)V

    .line 229
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 230
    return v9

    :sswitch_10
    const-string/jumbo v2, "com.absolute.android.persistence.IABTPersistence"

    .line 234
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 236
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 238
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 240
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-nez v4, :cond_8

    .line 241
    :goto_8
    invoke-virtual {p0, v2, v3, v1}, Lcom/absolute/android/persistence/IABTPersistence$Stub;->getPersistedFile(Ljava/lang/String;Ljava/lang/String;Z)Lcom/absolute/android/persistence/IABTPersistedFile;

    move-result-object v1

    .line 242
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 243
    if-nez v1, :cond_9

    :goto_9
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 244
    return v9

    :cond_8
    move v1, v9

    .line 240
    goto :goto_8

    .line 243
    :cond_9
    invoke-interface {v1}, Lcom/absolute/android/persistence/IABTPersistedFile;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_9

    :sswitch_11
    const-string/jumbo v0, "com.absolute.android.persistence.IABTPersistence"

    .line 248
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 249
    invoke-virtual {p0}, Lcom/absolute/android/persistence/IABTPersistence$Stub;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 250
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 251
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 252
    return v9

    :sswitch_12
    const-string/jumbo v0, "com.absolute.android.persistence.IABTPersistence"

    .line 256
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 257
    invoke-virtual {p0}, Lcom/absolute/android/persistence/IABTPersistence$Stub;->refreshDeviceId()V

    .line 258
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 259
    return v9

    :sswitch_13
    const-string/jumbo v0, "com.absolute.android.persistence.IABTPersistence"

    .line 263
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 264
    invoke-virtual {p0}, Lcom/absolute/android/persistence/IABTPersistence$Stub;->testFirmwareUpdate()V

    .line 265
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 266
    return v9

    :sswitch_14
    const-string/jumbo v0, "com.absolute.android.persistence.IABTPersistence"

    .line 270
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 271
    invoke-virtual {p0}, Lcom/absolute/android/persistence/IABTPersistence$Stub;->getDiagnostics()Ljava/lang/String;

    move-result-object v0

    .line 272
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 273
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 274
    return v9

    :sswitch_15
    const-string/jumbo v0, "com.absolute.android.persistence.IABTPersistence"

    .line 278
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 280
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 282
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 284
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 286
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 288
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/absolute/android/persistence/IABTGetAppInfoReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/absolute/android/persistence/IABTGetAppInfoReceiver;

    move-result-object v5

    move-object v0, p0

    .line 289
    invoke-virtual/range {v0 .. v5}, Lcom/absolute/android/persistence/IABTPersistence$Stub;->getAppInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/absolute/android/persistence/IABTGetAppInfoReceiver;)V

    .line 290
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 291
    return v9

    :sswitch_16
    const-string/jumbo v0, "com.absolute.android.persistence.IABTPersistence"

    .line 295
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 297
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 299
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 301
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 303
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 305
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 307
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/absolute/android/persistence/IABTDownloadReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/absolute/android/persistence/IABTDownloadReceiver;

    move-result-object v6

    .line 309
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    move-object v0, p0

    .line 310
    invoke-virtual/range {v0 .. v7}, Lcom/absolute/android/persistence/IABTPersistence$Stub;->downloadApk(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/absolute/android/persistence/IABTDownloadReceiver;I)V

    .line 311
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 312
    return v9

    :sswitch_17
    const-string/jumbo v1, "com.absolute.android.persistence.IABTPersistence"

    .line 316
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 318
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-nez v1, :cond_a

    .line 324
    :goto_a
    invoke-virtual {p0, v0}, Lcom/absolute/android/persistence/IABTPersistence$Stub;->persistApp(Lcom/absolute/android/persistence/AppProfile;)V

    .line 325
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 326
    return v9

    .line 319
    :cond_a
    sget-object v0, Lcom/absolute/android/persistence/AppProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/absolute/android/persistence/AppProfile;

    goto :goto_a

    :sswitch_18
    const-string/jumbo v2, "com.absolute.android.persistence.IABTPersistence"

    .line 330
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 332
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 334
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-nez v3, :cond_b

    .line 335
    :goto_b
    invoke-virtual {p0, v2, v1}, Lcom/absolute/android/persistence/IABTPersistence$Stub;->getSystemFile(Ljava/lang/String;Z)Lcom/absolute/android/persistence/IABTPersistedFile;

    move-result-object v1

    .line 336
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 337
    if-nez v1, :cond_c

    :goto_c
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 338
    return v9

    :cond_b
    move v1, v9

    .line 334
    goto :goto_b

    .line 337
    :cond_c
    invoke-interface {v1}, Lcom/absolute/android/persistence/IABTPersistedFile;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_c

    :sswitch_19
    const-string/jumbo v0, "com.absolute.android.persistence.IABTPersistence"

    .line 342
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 344
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 346
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 348
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 350
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 352
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 354
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/absolute/android/persistence/IABTGetAppInfoReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/absolute/android/persistence/IABTGetAppInfoReceiver;

    move-result-object v6

    move-object v0, p0

    .line 355
    invoke-virtual/range {v0 .. v6}, Lcom/absolute/android/persistence/IABTPersistence$Stub;->getAppInfo_v2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/absolute/android/persistence/IABTGetAppInfoReceiver;)V

    .line 356
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 357
    return v9

    :sswitch_1a
    const-string/jumbo v0, "com.absolute.android.persistence.IABTPersistence"

    .line 361
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 363
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 365
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 367
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 369
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 371
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 373
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 375
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/absolute/android/persistence/IABTDownloadReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/absolute/android/persistence/IABTDownloadReceiver;

    move-result-object v7

    .line 377
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    move-object v0, p0

    .line 378
    invoke-virtual/range {v0 .. v8}, Lcom/absolute/android/persistence/IABTPersistence$Stub;->downloadApk_v2(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/absolute/android/persistence/IABTDownloadReceiver;I)V

    .line 379
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 380
    return v9

    .line 55
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
