.class public abstract Landroid/location/ILocationManager$Stub;
.super Landroid/os/Binder;
.source "ILocationManager.java"

# interfaces
.implements Landroid/location/ILocationManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/ILocationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/ILocationManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.location.ILocationManager"

.field static final TRANSACTION_addGnssBatchingCallback:I = 0x12

.field static final TRANSACTION_addGnssMeasurementsListener:I = 0xc

.field static final TRANSACTION_addGnssNavigationMessageListener:I = 0xe

.field static final TRANSACTION_addTestProvider:I = 0x1e

.field static final TRANSACTION_clearTestProviderEnabled:I = 0x23

.field static final TRANSACTION_clearTestProviderLocation:I = 0x21

.field static final TRANSACTION_clearTestProviderStatus:I = 0x25

.field static final TRANSACTION_flushGnssBatch:I = 0x15

.field static final TRANSACTION_geocoderIsPresent:I = 0x8

.field static final TRANSACTION_getAllProviders:I = 0x17

.field static final TRANSACTION_getBackgroundThrottlingWhitelist:I = 0x2a

.field static final TRANSACTION_getBestProvider:I = 0x19

.field static final TRANSACTION_getFromLocation:I = 0x9

.field static final TRANSACTION_getFromLocationName:I = 0xa

.field static final TRANSACTION_getGnssBatchSize:I = 0x11

.field static final TRANSACTION_getGnssYearOfHardware:I = 0x10

.field static final TRANSACTION_getLastLocation:I = 0x5

.field static final TRANSACTION_getLocBlacklist:I = 0x2f

.field static final TRANSACTION_getLocWhitelist:I = 0x30

.field static final TRANSACTION_getNetworkProviderPackage:I = 0x1c

.field static final TRANSACTION_getProviderProperties:I = 0x1b

.field static final TRANSACTION_getProviders:I = 0x18

.field static final TRANSACTION_isProviderEnabled:I = 0x1d

.field static final TRANSACTION_isProviderRunning:I = 0x2d

.field static final TRANSACTION_locationCallbackFinished:I = 0x29

.field static final TRANSACTION_notifyNSFLP:I = 0x2e

.field static final TRANSACTION_pauseProvider:I = 0x2b

.field static final TRANSACTION_providerMeetsCriteria:I = 0x1a

.field static final TRANSACTION_registerGnssStatusCallback:I = 0x6

.field static final TRANSACTION_removeGeofence:I = 0x4

.field static final TRANSACTION_removeGnssBatchingCallback:I = 0x13

.field static final TRANSACTION_removeGnssMeasurementsListener:I = 0xd

.field static final TRANSACTION_removeGnssNavigationMessageListener:I = 0xf

.field static final TRANSACTION_removeTestProvider:I = 0x1f

.field static final TRANSACTION_removeUpdates:I = 0x2

.field static final TRANSACTION_reportLocation:I = 0x27

.field static final TRANSACTION_reportLocationBatch:I = 0x28

.field static final TRANSACTION_requestGeofence:I = 0x3

.field static final TRANSACTION_requestLocationUpdates:I = 0x1

.field static final TRANSACTION_resumeProvider:I = 0x2c

.field static final TRANSACTION_sendExtraCommand:I = 0x26

.field static final TRANSACTION_sendNiResponse:I = 0xb

.field static final TRANSACTION_setDataFromNSFLP:I = 0x31

.field static final TRANSACTION_setTestProviderEnabled:I = 0x22

.field static final TRANSACTION_setTestProviderLocation:I = 0x20

.field static final TRANSACTION_setTestProviderStatus:I = 0x24

.field static final TRANSACTION_startGnssBatch:I = 0x14

.field static final TRANSACTION_stopGnssBatch:I = 0x16

.field static final TRANSACTION_unregisterGnssStatusCallback:I = 0x7


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "android.location.ILocationManager"

    invoke-virtual {p0, p0, v0}, Landroid/location/ILocationManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/location/ILocationManager;
    .locals 2

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const-string/jumbo v1, "android.location.ILocationManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/location/ILocationManager;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/location/ILocationManager;

    return-object v0

    :cond_1
    new-instance v1, Landroid/location/ILocationManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/location/ILocationManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 68
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
    const-string/jumbo v7, "android.location.ILocationManager"

    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v7, 0x1

    return v7

    :sswitch_1
    const-string/jumbo v7, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_0

    sget-object v7, Landroid/location/LocationRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v7, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v45

    check-cast v45, Landroid/location/LocationRequest;

    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Landroid/location/ILocationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/ILocationListener;

    move-result-object v51

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_1

    sget-object v7, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v7, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v57

    check-cast v57, Landroid/app/PendingIntent;

    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v59

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    move-object/from16 v2, v51

    move-object/from16 v3, v57

    move-object/from16 v4, v59

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/location/ILocationManager$Stub;->requestLocationUpdates(Landroid/location/LocationRequest;Landroid/location/ILocationListener;Landroid/app/PendingIntent;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v7, 0x1

    return v7

    :cond_0
    const/16 v45, 0x0

    goto :goto_0

    :cond_1
    const/16 v57, 0x0

    goto :goto_1

    :sswitch_2
    const-string/jumbo v7, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Landroid/location/ILocationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/ILocationListener;

    move-result-object v43

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_2

    sget-object v7, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v7, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Landroid/app/PendingIntent;

    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v58

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    move-object/from16 v2, v48

    move-object/from16 v3, v58

    invoke-virtual {v0, v1, v2, v3}, Landroid/location/ILocationManager$Stub;->removeUpdates(Landroid/location/ILocationListener;Landroid/app/PendingIntent;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v7, 0x1

    return v7

    :cond_2
    const/16 v48, 0x0

    goto :goto_2

    :sswitch_3
    const-string/jumbo v7, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_3

    sget-object v7, Landroid/location/LocationRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v7, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v45

    check-cast v45, Landroid/location/LocationRequest;

    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_4

    sget-object v7, Landroid/location/Geofence;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v7, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v50

    check-cast v50, Landroid/location/Geofence;

    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_5

    sget-object v7, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v7, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v57

    check-cast v57, Landroid/app/PendingIntent;

    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v59

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    move-object/from16 v2, v50

    move-object/from16 v3, v57

    move-object/from16 v4, v59

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/location/ILocationManager$Stub;->requestGeofence(Landroid/location/LocationRequest;Landroid/location/Geofence;Landroid/app/PendingIntent;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v7, 0x1

    return v7

    :cond_3
    const/16 v45, 0x0

    goto :goto_3

    :cond_4
    const/16 v50, 0x0

    goto :goto_4

    :cond_5
    const/16 v57, 0x0

    goto :goto_5

    :sswitch_4
    const-string/jumbo v7, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_6

    sget-object v7, Landroid/location/Geofence;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v7, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Landroid/location/Geofence;

    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_7

    sget-object v7, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v7, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Landroid/app/PendingIntent;

    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v58

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v48

    move-object/from16 v3, v58

    invoke-virtual {v0, v1, v2, v3}, Landroid/location/ILocationManager$Stub;->removeGeofence(Landroid/location/Geofence;Landroid/app/PendingIntent;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v7, 0x1

    return v7

    :cond_6
    const/16 v29, 0x0

    goto :goto_6

    :cond_7
    const/16 v48, 0x0

    goto :goto_7

    :sswitch_5
    const-string/jumbo v7, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_8

    sget-object v7, Landroid/location/LocationRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v7, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v45

    check-cast v45, Landroid/location/LocationRequest;

    :goto_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v55

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    move-object/from16 v2, v55

    invoke-virtual {v0, v1, v2}, Landroid/location/ILocationManager$Stub;->getLastLocation(Landroid/location/LocationRequest;Ljava/lang/String;)Landroid/location/Location;

    move-result-object v61

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v61, :cond_9

    const/4 v7, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v7, 0x1

    move-object/from16 v0, v61

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v7}, Landroid/location/Location;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_9
    const/4 v7, 0x1

    return v7

    :cond_8
    const/16 v45, 0x0

    goto :goto_8

    :cond_9
    const/4 v7, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    :sswitch_6
    const-string/jumbo v7, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Landroid/location/IGnssStatusListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/IGnssStatusListener;

    move-result-object v42

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v55

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    move-object/from16 v2, v55

    invoke-virtual {v0, v1, v2}, Landroid/location/ILocationManager$Stub;->registerGnssStatusCallback(Landroid/location/IGnssStatusListener;Ljava/lang/String;)Z

    move-result v66

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v66, :cond_a

    const/4 v7, 0x1

    :goto_a
    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v7, 0x1

    return v7

    :cond_a
    const/4 v7, 0x0

    goto :goto_a

    :sswitch_7
    const-string/jumbo v7, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Landroid/location/IGnssStatusListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/IGnssStatusListener;

    move-result-object v42

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/location/ILocationManager$Stub;->unregisterGnssStatusCallback(Landroid/location/IGnssStatusListener;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v7, 0x1

    return v7

    :sswitch_8
    const-string/jumbo v7, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/location/ILocationManager$Stub;->geocoderIsPresent()Z

    move-result v66

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v66, :cond_b

    const/4 v7, 0x1

    :goto_b
    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v7, 0x1

    return v7

    :cond_b
    const/4 v7, 0x0

    goto :goto_b

    :sswitch_9
    const-string/jumbo v7, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_c

    sget-object v7, Landroid/location/GeocoderParams;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v7, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/location/GeocoderParams;

    :goto_c
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v7, p0

    invoke-virtual/range {v7 .. v14}, Landroid/location/ILocationManager$Stub;->getFromLocation(DDILandroid/location/GeocoderParams;Ljava/util/List;)Ljava/lang/String;

    move-result-object v63

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    const/4 v7, 0x1

    return v7

    :cond_c
    const/4 v13, 0x0

    goto :goto_c

    :sswitch_a
    const-string/jumbo v7, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v20

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v22

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v24

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v26

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_d

    sget-object v7, Landroid/location/GeocoderParams;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v7, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/location/GeocoderParams;

    :goto_d
    new-instance v28, Ljava/util/ArrayList;

    invoke-direct/range {v28 .. v28}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v16, p0

    move-wide/from16 v18, v10

    invoke-virtual/range {v16 .. v28}, Landroid/location/ILocationManager$Stub;->getFromLocationName(Ljava/lang/String;DDDDILandroid/location/GeocoderParams;Ljava/util/List;)Ljava/lang/String;

    move-result-object v63

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object/from16 v0, p3

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    const/4 v7, 0x1

    return v7

    :cond_d
    const/16 v27, 0x0

    goto :goto_d

    :sswitch_b
    const-string/jumbo v7, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v32

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v6, v1}, Landroid/location/ILocationManager$Stub;->sendNiResponse(II)Z

    move-result v66

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v66, :cond_e

    const/4 v7, 0x1

    :goto_e
    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v7, 0x1

    return v7

    :cond_e
    const/4 v7, 0x0

    goto :goto_e

    :sswitch_c
    const-string/jumbo v7, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Landroid/location/IGnssMeasurementsListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/IGnssMeasurementsListener;

    move-result-object v40

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v55

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    move-object/from16 v2, v55

    invoke-virtual {v0, v1, v2}, Landroid/location/ILocationManager$Stub;->addGnssMeasurementsListener(Landroid/location/IGnssMeasurementsListener;Ljava/lang/String;)Z

    move-result v66

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v66, :cond_f

    const/4 v7, 0x1

    :goto_f
    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v7, 0x1

    return v7

    :cond_f
    const/4 v7, 0x0

    goto :goto_f

    :sswitch_d
    const-string/jumbo v7, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Landroid/location/IGnssMeasurementsListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/IGnssMeasurementsListener;

    move-result-object v40

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/location/ILocationManager$Stub;->removeGnssMeasurementsListener(Landroid/location/IGnssMeasurementsListener;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v7, 0x1

    return v7

    :sswitch_e
    const-string/jumbo v7, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Landroid/location/IGnssNavigationMessageListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/IGnssNavigationMessageListener;

    move-result-object v41

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v55

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    move-object/from16 v2, v55

    invoke-virtual {v0, v1, v2}, Landroid/location/ILocationManager$Stub;->addGnssNavigationMessageListener(Landroid/location/IGnssNavigationMessageListener;Ljava/lang/String;)Z

    move-result v66

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v66, :cond_10

    const/4 v7, 0x1

    :goto_10
    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v7, 0x1

    return v7

    :cond_10
    const/4 v7, 0x0

    goto :goto_10

    :sswitch_f
    const-string/jumbo v7, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Landroid/location/IGnssNavigationMessageListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/IGnssNavigationMessageListener;

    move-result-object v41

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/location/ILocationManager$Stub;->removeGnssNavigationMessageListener(Landroid/location/IGnssNavigationMessageListener;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v7, 0x1

    return v7

    :sswitch_10
    const-string/jumbo v7, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/location/ILocationManager$Stub;->getGnssYearOfHardware()I

    move-result v60

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v60

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v7, 0x1

    return v7

    :sswitch_11
    const-string/jumbo v7, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/location/ILocationManager$Stub;->getGnssBatchSize(Ljava/lang/String;)I

    move-result v60

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v60

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v7, 0x1

    return v7

    :sswitch_12
    const-string/jumbo v7, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Landroid/location/IBatchedLocationCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/IBatchedLocationCallback;

    move-result-object v37

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v55

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move-object/from16 v2, v55

    invoke-virtual {v0, v1, v2}, Landroid/location/ILocationManager$Stub;->addGnssBatchingCallback(Landroid/location/IBatchedLocationCallback;Ljava/lang/String;)Z

    move-result v66

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v66, :cond_11

    const/4 v7, 0x1

    :goto_11
    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v7, 0x1

    return v7

    :cond_11
    const/4 v7, 0x0

    goto :goto_11

    :sswitch_13
    const-string/jumbo v7, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/location/ILocationManager$Stub;->removeGnssBatchingCallback()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v7, 0x1

    return v7

    :sswitch_14
    const-string/jumbo v7, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v38

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_12

    const/16 v56, 0x1

    :goto_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v58

    move-object/from16 v0, p0

    move-wide/from16 v1, v38

    move/from16 v3, v56

    move-object/from16 v4, v58

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/location/ILocationManager$Stub;->startGnssBatch(JZLjava/lang/String;)Z

    move-result v66

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v66, :cond_13

    const/4 v7, 0x1

    :goto_13
    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v7, 0x1

    return v7

    :cond_12
    const/16 v56, 0x0

    goto :goto_12

    :cond_13
    const/4 v7, 0x0

    goto :goto_13

    :sswitch_15
    const-string/jumbo v7, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/location/ILocationManager$Stub;->flushGnssBatch(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v7, 0x1

    return v7

    :sswitch_16
    const-string/jumbo v7, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/location/ILocationManager$Stub;->stopGnssBatch()Z

    move-result v66

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v66, :cond_14

    const/4 v7, 0x1

    :goto_14
    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v7, 0x1

    return v7

    :cond_14
    const/4 v7, 0x0

    goto :goto_14

    :sswitch_17
    const-string/jumbo v7, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/location/ILocationManager$Stub;->getAllProviders()Ljava/util/List;

    move-result-object v64

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    const/4 v7, 0x1

    return v7

    :sswitch_18
    const-string/jumbo v7, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_15

    sget-object v7, Landroid/location/Criteria;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v7, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/location/Criteria;

    :goto_15
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_16

    const/16 v56, 0x1

    :goto_16
    move-object/from16 v0, p0

    move/from16 v1, v56

    invoke-virtual {v0, v15, v1}, Landroid/location/ILocationManager$Stub;->getProviders(Landroid/location/Criteria;Z)Ljava/util/List;

    move-result-object v64

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    const/4 v7, 0x1

    return v7

    :cond_15
    const/4 v15, 0x0

    goto :goto_15

    :cond_16
    const/16 v56, 0x0

    goto :goto_16

    :sswitch_19
    const-string/jumbo v7, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_17

    sget-object v7, Landroid/location/Criteria;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v7, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/location/Criteria;

    :goto_17
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_18

    const/16 v56, 0x1

    :goto_18
    move-object/from16 v0, p0

    move/from16 v1, v56

    invoke-virtual {v0, v15, v1}, Landroid/location/ILocationManager$Stub;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v63

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v7, 0x1

    return v7

    :cond_17
    const/4 v15, 0x0

    goto :goto_17

    :cond_18
    const/16 v56, 0x0

    goto :goto_18

    :sswitch_1a
    const-string/jumbo v7, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_19

    sget-object v7, Landroid/location/Criteria;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v7, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v49

    check-cast v49, Landroid/location/Criteria;

    :goto_19
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v49

    invoke-virtual {v0, v1, v2}, Landroid/location/ILocationManager$Stub;->providerMeetsCriteria(Ljava/lang/String;Landroid/location/Criteria;)Z

    move-result v66

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v66, :cond_1a

    const/4 v7, 0x1

    :goto_1a
    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v7, 0x1

    return v7

    :cond_19
    const/16 v49, 0x0

    goto :goto_19

    :cond_1a
    const/4 v7, 0x0

    goto :goto_1a

    :sswitch_1b
    const-string/jumbo v7, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/location/ILocationManager$Stub;->getProviderProperties(Ljava/lang/String;)Lcom/android/internal/location/ProviderProperties;

    move-result-object v62

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v62, :cond_1b

    const/4 v7, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v7, 0x1

    move-object/from16 v0, v62

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v7}, Lcom/android/internal/location/ProviderProperties;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_1b
    const/4 v7, 0x1

    return v7

    :cond_1b
    const/4 v7, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1b

    :sswitch_1c
    const-string/jumbo v7, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/location/ILocationManager$Stub;->getNetworkProviderPackage()Ljava/lang/String;

    move-result-object v63

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v7, 0x1

    return v7

    :sswitch_1d
    const-string/jumbo v7, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/location/ILocationManager$Stub;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v66

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v66, :cond_1c

    const/4 v7, 0x1

    :goto_1c
    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v7, 0x1

    return v7

    :cond_1c
    const/4 v7, 0x0

    goto :goto_1c

    :sswitch_1e
    const-string/jumbo v7, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_1d

    sget-object v7, Lcom/android/internal/location/ProviderProperties;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v7, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v54

    check-cast v54, Lcom/android/internal/location/ProviderProperties;

    :goto_1d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v58

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v54

    move-object/from16 v3, v58

    invoke-virtual {v0, v1, v2, v3}, Landroid/location/ILocationManager$Stub;->addTestProvider(Ljava/lang/String;Lcom/android/internal/location/ProviderProperties;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v7, 0x1

    return v7

    :cond_1d
    const/16 v54, 0x0

    goto :goto_1d

    :sswitch_1f
    const-string/jumbo v7, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v55

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v55

    invoke-virtual {v0, v1, v2}, Landroid/location/ILocationManager$Stub;->removeTestProvider(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v7, 0x1

    return v7

    :sswitch_20
    const-string/jumbo v7, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_1e

    sget-object v7, Landroid/location/Location;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v7, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v52

    check-cast v52, Landroid/location/Location;

    :goto_1e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v58

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v52

    move-object/from16 v3, v58

    invoke-virtual {v0, v1, v2, v3}, Landroid/location/ILocationManager$Stub;->setTestProviderLocation(Ljava/lang/String;Landroid/location/Location;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v7, 0x1

    return v7

    :cond_1e
    const/16 v52, 0x0

    goto :goto_1e

    :sswitch_21
    const-string/jumbo v7, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v55

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v55

    invoke-virtual {v0, v1, v2}, Landroid/location/ILocationManager$Stub;->clearTestProviderLocation(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v7, 0x1

    return v7

    :sswitch_22
    const-string/jumbo v7, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_1f

    const/16 v56, 0x1

    :goto_1f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v58

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v56

    move-object/from16 v3, v58

    invoke-virtual {v0, v1, v2, v3}, Landroid/location/ILocationManager$Stub;->setTestProviderEnabled(Ljava/lang/String;ZLjava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v7, 0x1

    return v7

    :cond_1f
    const/16 v56, 0x0

    goto :goto_1f

    :sswitch_23
    const-string/jumbo v7, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v55

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v55

    invoke-virtual {v0, v1, v2}, Landroid/location/ILocationManager$Stub;->clearTestProviderEnabled(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v7, 0x1

    return v7

    :sswitch_24
    const-string/jumbo v7, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v32

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_20

    sget-object v7, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v7, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Landroid/os/Bundle;

    :goto_20
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v34

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v30, p0

    move-object/from16 v31, v17

    invoke-virtual/range {v30 .. v36}, Landroid/location/ILocationManager$Stub;->setTestProviderStatus(Ljava/lang/String;ILandroid/os/Bundle;JLjava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v7, 0x1

    return v7

    :cond_20
    const/16 v33, 0x0

    goto :goto_20

    :sswitch_25
    const-string/jumbo v7, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v55

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v55

    invoke-virtual {v0, v1, v2}, Landroid/location/ILocationManager$Stub;->clearTestProviderStatus(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v7, 0x1

    return v7

    :sswitch_26
    const-string/jumbo v7, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v55

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_21

    sget-object v7, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v7, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Landroid/os/Bundle;

    :goto_21
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v55

    move-object/from16 v3, v33

    invoke-virtual {v0, v1, v2, v3}, Landroid/location/ILocationManager$Stub;->sendExtraCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v66

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v66, :cond_22

    const/4 v7, 0x1

    :goto_22
    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->writeInt(I)V

    if-eqz v33, :cond_23

    const/4 v7, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v7, 0x1

    move-object/from16 v0, v33

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v7}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_23
    const/4 v7, 0x1

    return v7

    :cond_21
    const/16 v33, 0x0

    goto :goto_21

    :cond_22
    const/4 v7, 0x0

    goto :goto_22

    :cond_23
    const/4 v7, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_23

    :sswitch_27
    const-string/jumbo v7, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_24

    sget-object v7, Landroid/location/Location;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v7, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v44

    check-cast v44, Landroid/location/Location;

    :goto_24
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_25

    const/16 v56, 0x1

    :goto_25
    move-object/from16 v0, p0

    move-object/from16 v1, v44

    move/from16 v2, v56

    invoke-virtual {v0, v1, v2}, Landroid/location/ILocationManager$Stub;->reportLocation(Landroid/location/Location;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v7, 0x1

    return v7

    :cond_24
    const/16 v44, 0x0

    goto :goto_24

    :cond_25
    const/16 v56, 0x0

    goto :goto_25

    :sswitch_28
    const-string/jumbo v7, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    sget-object v7, Landroid/location/Location;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v47

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/location/ILocationManager$Stub;->reportLocationBatch(Ljava/util/List;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v7, 0x1

    return v7

    :sswitch_29
    const-string/jumbo v7, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Landroid/location/ILocationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/ILocationListener;

    move-result-object v43

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/location/ILocationManager$Stub;->locationCallbackFinished(Landroid/location/ILocationListener;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v7, 0x1

    return v7

    :sswitch_2a
    const-string/jumbo v7, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/location/ILocationManager$Stub;->getBackgroundThrottlingWhitelist()[Ljava/lang/String;

    move-result-object v67

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    const/4 v7, 0x1

    return v7

    :sswitch_2b
    const-string/jumbo v7, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/location/ILocationManager$Stub;->pauseProvider(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v7, 0x1

    return v7

    :sswitch_2c
    const-string/jumbo v7, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/location/ILocationManager$Stub;->resumeProvider(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v7, 0x1

    return v7

    :sswitch_2d
    const-string/jumbo v7, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/location/ILocationManager$Stub;->isProviderRunning(Ljava/lang/String;)Z

    move-result v66

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v66, :cond_26

    const/4 v7, 0x1

    :goto_26
    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v7, 0x1

    return v7

    :cond_26
    const/4 v7, 0x0

    goto :goto_26

    :sswitch_2e
    const-string/jumbo v7, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_27

    sget-object v7, Landroid/os/Message;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v7, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Landroid/os/Message;

    :goto_27
    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/location/ILocationManager$Stub;->notifyNSFLP(Landroid/os/Message;)Z

    move-result v66

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v66, :cond_28

    const/4 v7, 0x1

    :goto_28
    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v7, 0x1

    return v7

    :cond_27
    const/16 v46, 0x0

    goto :goto_27

    :cond_28
    const/4 v7, 0x0

    goto :goto_28

    :sswitch_2f
    const-string/jumbo v7, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/location/ILocationManager$Stub;->getLocBlacklist()Ljava/util/Map;

    move-result-object v65

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v65

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    const/4 v7, 0x1

    return v7

    :sswitch_30
    const-string/jumbo v7, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/location/ILocationManager$Stub;->getLocWhitelist()Ljava/util/Map;

    move-result-object v65

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v65

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    const/4 v7, 0x1

    return v7

    :sswitch_31
    const-string/jumbo v7, "android.location.ILocationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_29

    sget-object v7, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v7, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v53

    check-cast v53, Landroid/os/Bundle;

    :goto_29
    move-object/from16 v0, p0

    move-object/from16 v1, v53

    invoke-virtual {v0, v6, v1}, Landroid/location/ILocationManager$Stub;->setDataFromNSFLP(ILandroid/os/Bundle;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v7, 0x1

    return v7

    :cond_29
    const/16 v53, 0x0

    goto :goto_29

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
