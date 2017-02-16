.class public abstract Lcom/samsung/android/location/ISLocationManager$Stub;
.super Landroid/os/Binder;
.source "ISLocationManager.java"

# interfaces
.implements Lcom/samsung/android/location/ISLocationManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/location/ISLocationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/location/ISLocationManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.location.ISLocationManager"

.field static final TRANSACTION_addGeofence:I = 0x5

.field static final TRANSACTION_checkPassiveLocation:I = 0x16

.field static final TRANSACTION_removeCurrentLocation:I = 0x15

.field static final TRANSACTION_removeGeofence:I = 0x8

.field static final TRANSACTION_removeLocation:I = 0x12

.field static final TRANSACTION_removeSingleLocation:I = 0x13

.field static final TRANSACTION_reportCellGeofenceDetected:I = 0x1d

.field static final TRANSACTION_reportCellGeofenceRequestFail:I = 0x1e

.field static final TRANSACTION_reportFlpHardwareLocation:I = 0x1f

.field static final TRANSACTION_reportGpsGeofenceAddStatus:I = 0x19

.field static final TRANSACTION_reportGpsGeofencePauseStatus:I = 0x1b

.field static final TRANSACTION_reportGpsGeofenceRemoveStatus:I = 0x1a

.field static final TRANSACTION_reportGpsGeofenceResumeStatus:I = 0x1c

.field static final TRANSACTION_reportGpsGeofenceStatus:I = 0x18

.field static final TRANSACTION_reportGpsGeofenceTransition:I = 0x17

.field static final TRANSACTION_requestBatchOfLocations:I = 0xd

.field static final TRANSACTION_requestCurrentLocation:I = 0x14

.field static final TRANSACTION_requestLocation:I = 0x10

.field static final TRANSACTION_requestLocationToPoi:I = 0x11

.field static final TRANSACTION_requestSingleLocation:I = 0xf

.field static final TRANSACTION_setFusedLocationHardware:I = 0x1

.field static final TRANSACTION_setGeofenceCellInterface:I = 0x3

.field static final TRANSACTION_setGpsGeofenceHardware:I = 0x2

.field static final TRANSACTION_startCoreBatching:I = 0x20

.field static final TRANSACTION_startGeofence:I = 0x6

.field static final TRANSACTION_startLearning:I = 0x9

.field static final TRANSACTION_startLocationBatching:I = 0xb

.field static final TRANSACTION_stopCoreBatching:I = 0x21

.field static final TRANSACTION_stopGeofence:I = 0x7

.field static final TRANSACTION_stopLearning:I = 0xa

.field static final TRANSACTION_stopLocationBatching:I = 0xc

.field static final TRANSACTION_syncGeofence:I = 0x4

.field static final TRANSACTION_updateBatchingOptions:I = 0xe

.field static final TRANSACTION_updateCoreBatchingOptions:I = 0x22


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string/jumbo v0, "com.samsung.android.location.ISLocationManager"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/location/ISLocationManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 28
    if-nez p0, :cond_0

    .line 29
    return-object v1

    .line 31
    :cond_0
    const-string/jumbo v1, "com.samsung.android.location.ISLocationManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/location/ISLocationManager;

    if-eqz v1, :cond_1

    .line 33
    check-cast v0, Lcom/samsung/android/location/ISLocationManager;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 35
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/samsung/android/location/ISLocationManager$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/location/ISLocationManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 39
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 42
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 43
    sparse-switch p1, :sswitch_data_0

    .line 486
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    return v5

    .line 47
    :sswitch_0
    const-string/jumbo v5, "com.samsung.android.location.ISLocationManager"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    const/4 v5, 0x1

    return v5

    .line 52
    :sswitch_1
    const-string/jumbo v5, "com.samsung.android.location.ISLocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/hardware/location/IFusedLocationHardware$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/location/IFusedLocationHardware;

    move-result-object v22

    .line 55
    .local v22, "_arg0":Landroid/hardware/location/IFusedLocationHardware;
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/android/location/ISLocationManager$Stub;->setFusedLocationHardware(Landroid/hardware/location/IFusedLocationHardware;)V

    .line 56
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 57
    const/4 v5, 0x1

    return v5

    .line 61
    .end local v22    # "_arg0":Landroid/hardware/location/IFusedLocationHardware;
    :sswitch_2
    const-string/jumbo v5, "com.samsung.android.location.ISLocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/location/IGpsGeofenceHardware$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/IGpsGeofenceHardware;

    move-result-object v23

    .line 64
    .local v23, "_arg0":Landroid/location/IGpsGeofenceHardware;
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/samsung/android/location/ISLocationManager$Stub;->setGpsGeofenceHardware(Landroid/location/IGpsGeofenceHardware;)V

    .line 65
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 66
    const/4 v5, 0x1

    return v5

    .line 70
    .end local v23    # "_arg0":Landroid/location/IGpsGeofenceHardware;
    :sswitch_3
    const-string/jumbo v5, "com.samsung.android.location.ISLocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/location/ISLocationCellInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/location/ISLocationCellInterface;

    move-result-object v25

    .line 73
    .local v25, "_arg0":Lcom/samsung/android/location/ISLocationCellInterface;
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/samsung/android/location/ISLocationManager$Stub;->setGeofenceCellInterface(Lcom/samsung/android/location/ISLocationCellInterface;)V

    .line 74
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 75
    const/4 v5, 0x1

    return v5

    .line 79
    .end local v25    # "_arg0":Lcom/samsung/android/location/ISLocationCellInterface;
    :sswitch_4
    const-string/jumbo v5, "com.samsung.android.location.ISLocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v30

    .line 82
    .local v30, "_arg0":[I
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/samsung/android/location/ISLocationManager$Stub;->syncGeofence([I)I

    move-result v40

    .line 83
    .local v40, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 84
    move-object/from16 v0, p3

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 85
    const/4 v5, 0x1

    return v5

    .line 89
    .end local v30    # "_arg0":[I
    .end local v40    # "_result":I
    :sswitch_5
    const-string/jumbo v5, "com.samsung.android.location.ISLocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_0

    .line 92
    sget-object v5, Lcom/samsung/android/location/SemGeofence;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/samsung/android/location/SemGeofence;

    .line 97
    :goto_0
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/samsung/android/location/ISLocationManager$Stub;->addGeofence(Lcom/samsung/android/location/SemGeofence;)I

    move-result v40

    .line 98
    .restart local v40    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 99
    move-object/from16 v0, p3

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 100
    const/4 v5, 0x1

    return v5

    .line 95
    .end local v40    # "_result":I
    :cond_0
    const/16 v27, 0x0

    .local v27, "_arg0":Lcom/samsung/android/location/SemGeofence;
    goto :goto_0

    .line 104
    .end local v27    # "_arg0":Lcom/samsung/android/location/SemGeofence;
    :sswitch_6
    const-string/jumbo v5, "com.samsung.android.location.ISLocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 108
    .local v6, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1

    .line 109
    sget-object v5, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Landroid/app/PendingIntent;

    .line 114
    :goto_1
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v6, v1}, Lcom/samsung/android/location/ISLocationManager$Stub;->startGeofence(ILandroid/app/PendingIntent;)I

    move-result v40

    .line 115
    .restart local v40    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 116
    move-object/from16 v0, p3

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 117
    const/4 v5, 0x1

    return v5

    .line 112
    .end local v40    # "_result":I
    :cond_1
    const/16 v32, 0x0

    .local v32, "_arg1":Landroid/app/PendingIntent;
    goto :goto_1

    .line 121
    .end local v6    # "_arg0":I
    .end local v32    # "_arg1":Landroid/app/PendingIntent;
    :sswitch_7
    const-string/jumbo v5, "com.samsung.android.location.ISLocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 123
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 125
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2

    .line 126
    sget-object v5, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Landroid/app/PendingIntent;

    .line 131
    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v6, v1}, Lcom/samsung/android/location/ISLocationManager$Stub;->stopGeofence(ILandroid/app/PendingIntent;)I

    move-result v40

    .line 132
    .restart local v40    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 133
    move-object/from16 v0, p3

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 134
    const/4 v5, 0x1

    return v5

    .line 129
    .end local v40    # "_result":I
    :cond_2
    const/16 v32, 0x0

    .restart local v32    # "_arg1":Landroid/app/PendingIntent;
    goto :goto_2

    .line 138
    .end local v6    # "_arg0":I
    .end local v32    # "_arg1":Landroid/app/PendingIntent;
    :sswitch_8
    const-string/jumbo v5, "com.samsung.android.location.ISLocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 140
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 141
    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/samsung/android/location/ISLocationManager$Stub;->removeGeofence(I)I

    move-result v40

    .line 142
    .restart local v40    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 143
    move-object/from16 v0, p3

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 144
    const/4 v5, 0x1

    return v5

    .line 148
    .end local v6    # "_arg0":I
    .end local v40    # "_result":I
    :sswitch_9
    const-string/jumbo v5, "com.samsung.android.location.ISLocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 150
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 151
    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/samsung/android/location/ISLocationManager$Stub;->startLearning(I)I

    move-result v40

    .line 152
    .restart local v40    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 153
    move-object/from16 v0, p3

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 154
    const/4 v5, 0x1

    return v5

    .line 158
    .end local v6    # "_arg0":I
    .end local v40    # "_result":I
    :sswitch_a
    const-string/jumbo v5, "com.samsung.android.location.ISLocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 160
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 161
    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/samsung/android/location/ISLocationManager$Stub;->stopLearning(I)I

    move-result v40

    .line 162
    .restart local v40    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 163
    move-object/from16 v0, p3

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 164
    const/4 v5, 0x1

    return v5

    .line 168
    .end local v6    # "_arg0":I
    .end local v40    # "_result":I
    :sswitch_b
    const-string/jumbo v5, "com.samsung.android.location.ISLocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 170
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 172
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/location/ISLocationListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/location/ISLocationListener;

    move-result-object v34

    .line 173
    .local v34, "_arg1":Lcom/samsung/android/location/ISLocationListener;
    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v6, v1}, Lcom/samsung/android/location/ISLocationManager$Stub;->startLocationBatching(ILcom/samsung/android/location/ISLocationListener;)I

    move-result v40

    .line 174
    .restart local v40    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 175
    move-object/from16 v0, p3

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 176
    const/4 v5, 0x1

    return v5

    .line 180
    .end local v6    # "_arg0":I
    .end local v34    # "_arg1":Lcom/samsung/android/location/ISLocationListener;
    .end local v40    # "_result":I
    :sswitch_c
    const-string/jumbo v5, "com.samsung.android.location.ISLocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 182
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 183
    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/samsung/android/location/ISLocationManager$Stub;->stopLocationBatching(I)I

    move-result v40

    .line 184
    .restart local v40    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 185
    move-object/from16 v0, p3

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 186
    const/4 v5, 0x1

    return v5

    .line 190
    .end local v6    # "_arg0":I
    .end local v40    # "_result":I
    :sswitch_d
    const-string/jumbo v5, "com.samsung.android.location.ISLocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 191
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/location/ISLocationManager$Stub;->requestBatchOfLocations()I

    move-result v40

    .line 192
    .restart local v40    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 193
    move-object/from16 v0, p3

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 194
    const/4 v5, 0x1

    return v5

    .line 198
    .end local v40    # "_result":I
    :sswitch_e
    const-string/jumbo v5, "com.samsung.android.location.ISLocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 200
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 202
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 203
    .local v7, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Lcom/samsung/android/location/ISLocationManager$Stub;->updateBatchingOptions(II)I

    move-result v40

    .line 204
    .restart local v40    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 205
    move-object/from16 v0, p3

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 206
    const/4 v5, 0x1

    return v5

    .line 210
    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":I
    .end local v40    # "_result":I
    :sswitch_f
    const-string/jumbo v5, "com.samsung.android.location.ISLocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 212
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 214
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 216
    .restart local v7    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3

    const/16 v38, 0x1

    .line 218
    .local v38, "_arg2":Z
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_4

    .line 219
    sget-object v5, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Landroid/app/PendingIntent;

    .line 224
    :goto_4
    move-object/from16 v0, p0

    move/from16 v1, v38

    move-object/from16 v2, v39

    invoke-virtual {v0, v6, v7, v1, v2}, Lcom/samsung/android/location/ISLocationManager$Stub;->requestSingleLocation(IIZLandroid/app/PendingIntent;)I

    move-result v40

    .line 225
    .restart local v40    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 226
    move-object/from16 v0, p3

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 227
    const/4 v5, 0x1

    return v5

    .line 216
    .end local v38    # "_arg2":Z
    .end local v40    # "_result":I
    :cond_3
    const/16 v38, 0x0

    .restart local v38    # "_arg2":Z
    goto :goto_3

    .line 222
    :cond_4
    const/16 v39, 0x0

    .local v39, "_arg3":Landroid/app/PendingIntent;
    goto :goto_4

    .line 231
    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":I
    .end local v38    # "_arg2":Z
    .end local v39    # "_arg3":Landroid/app/PendingIntent;
    :sswitch_10
    const-string/jumbo v5, "com.samsung.android.location.ISLocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 233
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_5

    const/16 v28, 0x1

    .line 235
    .local v28, "_arg0":Z
    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/location/ISLocationListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/location/ISLocationListener;

    move-result-object v34

    .line 236
    .restart local v34    # "_arg1":Lcom/samsung/android/location/ISLocationListener;
    move-object/from16 v0, p0

    move/from16 v1, v28

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/location/ISLocationManager$Stub;->requestLocation(ZLcom/samsung/android/location/ISLocationListener;)I

    move-result v40

    .line 237
    .restart local v40    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 238
    move-object/from16 v0, p3

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 239
    const/4 v5, 0x1

    return v5

    .line 233
    .end local v28    # "_arg0":Z
    .end local v34    # "_arg1":Lcom/samsung/android/location/ISLocationListener;
    .end local v40    # "_result":I
    :cond_5
    const/16 v28, 0x0

    .restart local v28    # "_arg0":Z
    goto :goto_5

    .line 243
    .end local v28    # "_arg0":Z
    :sswitch_11
    const-string/jumbo v5, "com.samsung.android.location.ISLocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 245
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createDoubleArray()[D

    move-result-object v29

    .line 247
    .local v29, "_arg0":[D
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createDoubleArray()[D

    move-result-object v35

    .line 249
    .local v35, "_arg1":[D
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_6

    .line 250
    sget-object v5, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Landroid/app/PendingIntent;

    .line 255
    :goto_6
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v35

    move-object/from16 v3, v36

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/location/ISLocationManager$Stub;->requestLocationToPoi([D[DLandroid/app/PendingIntent;)I

    move-result v40

    .line 256
    .restart local v40    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 257
    move-object/from16 v0, p3

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 258
    const/4 v5, 0x1

    return v5

    .line 253
    .end local v40    # "_result":I
    :cond_6
    const/16 v36, 0x0

    .local v36, "_arg2":Landroid/app/PendingIntent;
    goto :goto_6

    .line 262
    .end local v29    # "_arg0":[D
    .end local v35    # "_arg1":[D
    .end local v36    # "_arg2":Landroid/app/PendingIntent;
    :sswitch_12
    const-string/jumbo v5, "com.samsung.android.location.ISLocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 264
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/location/ISLocationListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/location/ISLocationListener;

    move-result-object v26

    .line 265
    .local v26, "_arg0":Lcom/samsung/android/location/ISLocationListener;
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/samsung/android/location/ISLocationManager$Stub;->removeLocation(Lcom/samsung/android/location/ISLocationListener;)I

    move-result v40

    .line 266
    .restart local v40    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 267
    move-object/from16 v0, p3

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 268
    const/4 v5, 0x1

    return v5

    .line 272
    .end local v26    # "_arg0":Lcom/samsung/android/location/ISLocationListener;
    .end local v40    # "_result":I
    :sswitch_13
    const-string/jumbo v5, "com.samsung.android.location.ISLocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 274
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_7

    .line 275
    sget-object v5, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/PendingIntent;

    .line 280
    :goto_7
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/android/location/ISLocationManager$Stub;->removeSingleLocation(Landroid/app/PendingIntent;)I

    move-result v40

    .line 281
    .restart local v40    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 282
    move-object/from16 v0, p3

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 283
    const/4 v5, 0x1

    return v5

    .line 278
    .end local v40    # "_result":I
    :cond_7
    const/4 v4, 0x0

    .local v4, "_arg0":Landroid/app/PendingIntent;
    goto :goto_7

    .line 287
    .end local v4    # "_arg0":Landroid/app/PendingIntent;
    :sswitch_14
    const-string/jumbo v5, "com.samsung.android.location.ISLocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 289
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/location/ISCurrentLocListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/location/ISCurrentLocListener;

    move-result-object v24

    .line 290
    .local v24, "_arg0":Lcom/samsung/android/location/ISCurrentLocListener;
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/samsung/android/location/ISLocationManager$Stub;->requestCurrentLocation(Lcom/samsung/android/location/ISCurrentLocListener;)I

    move-result v40

    .line 291
    .restart local v40    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 292
    move-object/from16 v0, p3

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 293
    const/4 v5, 0x1

    return v5

    .line 297
    .end local v24    # "_arg0":Lcom/samsung/android/location/ISCurrentLocListener;
    .end local v40    # "_result":I
    :sswitch_15
    const-string/jumbo v5, "com.samsung.android.location.ISLocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 299
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 300
    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/samsung/android/location/ISLocationManager$Stub;->removeCurrentLocation(I)I

    move-result v40

    .line 301
    .restart local v40    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 302
    move-object/from16 v0, p3

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 303
    const/4 v5, 0x1

    return v5

    .line 307
    .end local v6    # "_arg0":I
    .end local v40    # "_result":I
    :sswitch_16
    const-string/jumbo v5, "com.samsung.android.location.ISLocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 308
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/location/ISLocationManager$Stub;->checkPassiveLocation()Z

    move-result v41

    .line 309
    .local v41, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 310
    if-eqz v41, :cond_8

    const/4 v5, 0x1

    :goto_8
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 311
    const/4 v5, 0x1

    return v5

    .line 310
    :cond_8
    const/4 v5, 0x0

    goto :goto_8

    .line 315
    .end local v41    # "_result":Z
    :sswitch_17
    const-string/jumbo v5, "com.samsung.android.location.ISLocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 317
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 319
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 321
    .restart local v7    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v8

    .line 323
    .local v8, "_arg2":D
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v10

    .line 325
    .local v10, "_arg3":D
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v12

    .line 327
    .local v12, "_arg4":D
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v14

    .line 329
    .local v14, "_arg5":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v15

    .line 331
    .local v15, "_arg6":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v16

    .line 333
    .local v16, "_arg7":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v17

    .line 335
    .local v17, "_arg8":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 337
    .local v19, "_arg9":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v20

    .local v20, "_arg10":J
    move-object/from16 v5, p0

    .line 338
    invoke-virtual/range {v5 .. v21}, Lcom/samsung/android/location/ISLocationManager$Stub;->reportGpsGeofenceTransition(IIDDDFFFJIJ)V

    .line 339
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 340
    const/4 v5, 0x1

    return v5

    .line 344
    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":I
    .end local v8    # "_arg2":D
    .end local v10    # "_arg3":D
    .end local v12    # "_arg4":D
    .end local v14    # "_arg5":F
    .end local v15    # "_arg6":F
    .end local v16    # "_arg7":F
    .end local v17    # "_arg8":J
    .end local v19    # "_arg9":I
    .end local v20    # "_arg10":J
    :sswitch_18
    const-string/jumbo v5, "com.samsung.android.location.ISLocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 346
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 348
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 350
    .restart local v7    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v8

    .line 352
    .restart local v8    # "_arg2":D
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v10

    .line 354
    .restart local v10    # "_arg3":D
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v12

    .line 356
    .restart local v12    # "_arg4":D
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v14

    .line 358
    .restart local v14    # "_arg5":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v15

    .line 360
    .restart local v15    # "_arg6":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v16

    .line 362
    .restart local v16    # "_arg7":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v17

    .restart local v17    # "_arg8":J
    move-object/from16 v5, p0

    .line 363
    invoke-virtual/range {v5 .. v18}, Lcom/samsung/android/location/ISLocationManager$Stub;->reportGpsGeofenceStatus(IIDDDFFFJ)V

    .line 364
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 365
    const/4 v5, 0x1

    return v5

    .line 369
    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":I
    .end local v8    # "_arg2":D
    .end local v10    # "_arg3":D
    .end local v12    # "_arg4":D
    .end local v14    # "_arg5":F
    .end local v15    # "_arg6":F
    .end local v16    # "_arg7":F
    .end local v17    # "_arg8":J
    :sswitch_19
    const-string/jumbo v5, "com.samsung.android.location.ISLocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 371
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 373
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 374
    .restart local v7    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Lcom/samsung/android/location/ISLocationManager$Stub;->reportGpsGeofenceAddStatus(II)V

    .line 375
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 376
    const/4 v5, 0x1

    return v5

    .line 380
    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":I
    :sswitch_1a
    const-string/jumbo v5, "com.samsung.android.location.ISLocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 382
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 384
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 385
    .restart local v7    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Lcom/samsung/android/location/ISLocationManager$Stub;->reportGpsGeofenceRemoveStatus(II)V

    .line 386
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 387
    const/4 v5, 0x1

    return v5

    .line 391
    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":I
    :sswitch_1b
    const-string/jumbo v5, "com.samsung.android.location.ISLocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 393
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 395
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 396
    .restart local v7    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Lcom/samsung/android/location/ISLocationManager$Stub;->reportGpsGeofencePauseStatus(II)V

    .line 397
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 398
    const/4 v5, 0x1

    return v5

    .line 402
    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":I
    :sswitch_1c
    const-string/jumbo v5, "com.samsung.android.location.ISLocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 404
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 406
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 407
    .restart local v7    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Lcom/samsung/android/location/ISLocationManager$Stub;->reportGpsGeofenceResumeStatus(II)V

    .line 408
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 409
    const/4 v5, 0x1

    return v5

    .line 413
    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":I
    :sswitch_1d
    const-string/jumbo v5, "com.samsung.android.location.ISLocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 415
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 417
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 418
    .restart local v7    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Lcom/samsung/android/location/ISLocationManager$Stub;->reportCellGeofenceDetected(II)V

    .line 419
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 420
    const/4 v5, 0x1

    return v5

    .line 424
    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":I
    :sswitch_1e
    const-string/jumbo v5, "com.samsung.android.location.ISLocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 426
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 427
    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/samsung/android/location/ISLocationManager$Stub;->reportCellGeofenceRequestFail(I)V

    .line 428
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 429
    const/4 v5, 0x1

    return v5

    .line 433
    .end local v6    # "_arg0":I
    :sswitch_1f
    const-string/jumbo v5, "com.samsung.android.location.ISLocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 435
    sget-object v5, Landroid/location/Location;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v31

    check-cast v31, [Landroid/location/Location;

    .line 436
    .local v31, "_arg0":[Landroid/location/Location;
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/samsung/android/location/ISLocationManager$Stub;->reportFlpHardwareLocation([Landroid/location/Location;)V

    .line 437
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 438
    const/4 v5, 0x1

    return v5

    .line 442
    .end local v31    # "_arg0":[Landroid/location/Location;
    :sswitch_20
    const-string/jumbo v5, "com.samsung.android.location.ISLocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 444
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 446
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_9

    .line 447
    sget-object v5, Landroid/location/FusedBatchOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Landroid/location/FusedBatchOptions;

    .line 453
    :goto_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/location/ISLocationListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/location/ISLocationListener;

    move-result-object v37

    .line 454
    .local v37, "_arg2":Lcom/samsung/android/location/ISLocationListener;
    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-object/from16 v2, v37

    invoke-virtual {v0, v6, v1, v2}, Lcom/samsung/android/location/ISLocationManager$Stub;->startCoreBatching(ILandroid/location/FusedBatchOptions;Lcom/samsung/android/location/ISLocationListener;)V

    .line 455
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 456
    const/4 v5, 0x1

    return v5

    .line 450
    .end local v37    # "_arg2":Lcom/samsung/android/location/ISLocationListener;
    :cond_9
    const/16 v33, 0x0

    .local v33, "_arg1":Landroid/location/FusedBatchOptions;
    goto :goto_9

    .line 460
    .end local v6    # "_arg0":I
    .end local v33    # "_arg1":Landroid/location/FusedBatchOptions;
    :sswitch_21
    const-string/jumbo v5, "com.samsung.android.location.ISLocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 462
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 463
    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/samsung/android/location/ISLocationManager$Stub;->stopCoreBatching(I)V

    .line 464
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 465
    const/4 v5, 0x1

    return v5

    .line 469
    .end local v6    # "_arg0":I
    :sswitch_22
    const-string/jumbo v5, "com.samsung.android.location.ISLocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 471
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 473
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_a

    .line 474
    sget-object v5, Landroid/location/FusedBatchOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Landroid/location/FusedBatchOptions;

    .line 480
    :goto_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/location/ISLocationListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/location/ISLocationListener;

    move-result-object v37

    .line 481
    .restart local v37    # "_arg2":Lcom/samsung/android/location/ISLocationListener;
    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-object/from16 v2, v37

    invoke-virtual {v0, v6, v1, v2}, Lcom/samsung/android/location/ISLocationManager$Stub;->updateCoreBatchingOptions(ILandroid/location/FusedBatchOptions;Lcom/samsung/android/location/ISLocationListener;)V

    .line 482
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 483
    const/4 v5, 0x1

    return v5

    .line 477
    .end local v37    # "_arg2":Lcom/samsung/android/location/ISLocationListener;
    :cond_a
    const/16 v33, 0x0

    .restart local v33    # "_arg1":Landroid/location/FusedBatchOptions;
    goto :goto_a

    .line 43
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
