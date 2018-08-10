.class public Lcom/samsung/android/location/SemLocationManager;
.super Ljava/lang/Object;
.source "SemLocationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/location/SemLocationManager$CurrentLocListenerTransport;,
        Lcom/samsung/android/location/SemLocationManager$LocListenerTransport;
    }
.end annotation


# static fields
.field public static final ACTION_SERVICE_READY:Ljava/lang/String; = "com.samsung.android.location.SERVICE_READY"

.field public static final CURRENT_LOCATION:Ljava/lang/String; = "currentlocation"

.field public static final CURRENT_LOCATION_ADDRESS:Ljava/lang/String; = "currentlocationaddress"

.field public static final ERROR_ALREADY_STARTED:I = -0x5

.field public static final ERROR_EXCEPTION:I = -0x4

.field public static final ERROR_ID_NOT_EXIST:I = -0x3

.field public static final ERROR_ILLEGAL_ARGUMENT:I = -0x2

.field public static final ERROR_LOCATION_CURRENTLY_UNAVAILABLE:I = -0x64

.field public static final ERROR_NOT_INITIALIZED:I = -0x1

.field public static final ERROR_TOO_MANY_GEOFENCE:I = -0x6

.field public static final GEOFENCE_ENTER:I = 0x1

.field public static final GEOFENCE_EXIT:I = 0x2

.field public static final GEOFENCE_LOCATION:Ljava/lang/String; = "location"

.field public static final GEOFENCE_TRANSITION:Ljava/lang/String; = "transition"

.field public static final GEOFENCE_TYPE_BT:I = 0x3

.field public static final GEOFENCE_TYPE_EVENT:I = 0x4

.field public static final GEOFENCE_TYPE_GEOPOINT:I = 0x1

.field public static final GEOFENCE_TYPE_WIFI:I = 0x2

.field public static final GEOFENCE_UNKNOWN:I = 0x0

.field public static final OPERATION_SUCCESS:I = 0x0

.field public static final PERMISSION_ALWAYS_SCAN:Ljava/lang/String; = "permissionalwaysscan"

.field private static final TAG:Ljava/lang/String; = "SemLocationManager"


# instance fields
.field private mCurrentLocListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/samsung/android/location/SCurrentLocListener;",
            "Lcom/samsung/android/location/SemLocationManager$CurrentLocListenerTransport;",
            ">;"
        }
    .end annotation
.end field

.field private mLocListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/samsung/android/location/SemLocationListener;",
            "Lcom/samsung/android/location/SemLocationManager$LocListenerTransport;",
            ">;"
        }
    .end annotation
.end field

.field private final mService:Lcom/samsung/android/location/ISLocationManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/location/ISLocationManager;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/location/SemLocationManager;->mLocListeners:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/location/SemLocationManager;->mCurrentLocListeners:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    return-void
.end method

.method private isArgumentsValid(Lcom/samsung/android/location/SemGeofence;)Z
    .locals 14

    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    invoke-virtual {p1}, Lcom/samsung/android/location/SemGeofence;->getType()I

    move-result v6

    if-eq v6, v11, :cond_0

    if-eq v6, v12, :cond_0

    if-eq v6, v13, :cond_0

    const/4 v7, 0x4

    if-eq v6, v7, :cond_0

    const-string/jumbo v7, "SemLocationManager"

    const-string/jumbo v8, "geofenceType is not correct"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v10

    :cond_0
    if-ne v6, v11, :cond_5

    invoke-virtual {p1}, Lcom/samsung/android/location/SemGeofence;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p1}, Lcom/samsung/android/location/SemGeofence;->getLongitude()D

    move-result-wide v4

    invoke-virtual {p1}, Lcom/samsung/android/location/SemGeofence;->getRadius()I

    move-result v1

    const-wide v8, -0x3fa9800000000000L    # -90.0

    cmpg-double v7, v2, v8

    if-ltz v7, :cond_1

    const-wide v8, 0x4056800000000000L    # 90.0

    cmpl-double v7, v2, v8

    if-lez v7, :cond_2

    :cond_1
    const-string/jumbo v7, "SemLocationManager"

    const-string/jumbo v8, "latitude is not correct"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v10

    :cond_2
    const-wide v8, -0x3f99800000000000L    # -180.0

    cmpg-double v7, v4, v8

    if-ltz v7, :cond_3

    const-wide v8, 0x4066800000000000L    # 180.0

    cmpl-double v7, v4, v8

    if-lez v7, :cond_4

    :cond_3
    const-string/jumbo v7, "SemLocationManager"

    const-string/jumbo v8, "longitude is not correct"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v10

    :cond_4
    const/16 v7, 0x64

    if-ge v1, v7, :cond_5

    const-string/jumbo v7, "SemLocationManager"

    const-string/jumbo v8, "radius is not correct"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v10

    :cond_5
    if-eq v6, v12, :cond_6

    if-ne v6, v13, :cond_7

    :cond_6
    invoke-virtual {p1}, Lcom/samsung/android/location/SemGeofence;->getBssid()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7

    const-string/jumbo v7, "SemLocationManager"

    const-string/jumbo v8, "bssid is null"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v10

    :cond_7
    return v11
.end method


# virtual methods
.method public addGeofence(Lcom/samsung/android/location/SemGeofence;)I
    .locals 4

    iget-object v1, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    if-nez v1, :cond_0

    const-string/jumbo v1, "SemLocationManager"

    const-string/jumbo v2, "SLocationService is not supported"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    return v1

    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/location/SemLocationManager;->isArgumentsValid(Lcom/samsung/android/location/SemGeofence;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, -0x2

    return v1

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Lcom/samsung/android/location/ISLocationManager;->addGeofence(Lcom/samsung/android/location/SemGeofence;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "SemLocationManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getGeofenceId : RemoteException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x4

    return v1
.end method

.method public addGeofence(Lcom/samsung/android/location/SemGeofence;Ljava/lang/String;)I
    .locals 4

    iget-object v1, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    if-nez v1, :cond_0

    const-string/jumbo v1, "SemLocationManager"

    const-string/jumbo v2, "SLocationService is not supported"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    return v1

    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/location/SemLocationManager;->isArgumentsValid(Lcom/samsung/android/location/SemGeofence;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, -0x2

    return v1

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/location/ISLocationManager;->addGeofence(Lcom/samsung/android/location/SemGeofence;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "SemLocationManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getGeofenceId : RemoteException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x4

    return v1
.end method

.method public checkPassiveLocation()Z
    .locals 5

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    if-nez v1, :cond_0

    const-string/jumbo v1, "SemLocationManager"

    const-string/jumbo v2, "SLocationService is not supported"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_0
    :try_start_0
    const-string/jumbo v1, "SemLocationManager"

    const-string/jumbo v2, "checkPassiveLocation"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    invoke-interface {v1}, Lcom/samsung/android/location/ISLocationManager;->checkPassiveLocation()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "SemLocationManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "checkPassiveLocation: RemoteException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4
.end method

.method public getGeofenceIdList(Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v7, 0x0

    iget-object v4, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    if-nez v4, :cond_0

    const-string/jumbo v4, "SemLocationManager"

    const-string/jumbo v5, "SLocationService is not supported"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v7

    :cond_0
    const/4 v3, 0x0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    invoke-interface {v4, p1}, Lcom/samsung/android/location/ISLocationManager;->getGeofenceIdList(Ljava/lang/String;)[I

    move-result-object v3

    if-eqz v3, :cond_1

    const/4 v1, 0x0

    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_1

    aget v4, v3, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v2

    :catch_0
    move-exception v0

    const-string/jumbo v4, "SemLocationManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getGeofenceIdList: RemoteException "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v7
.end method

.method public removeCurrentLocation(ILcom/samsung/android/location/SCurrentLocListener;)I
    .locals 7

    const/4 v6, -0x4

    iget-object v2, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    if-nez v2, :cond_0

    const-string/jumbo v2, "SemLocationManager"

    const-string/jumbo v3, "SLocationService is not supported"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x1

    return v2

    :cond_0
    if-nez p2, :cond_1

    const-string/jumbo v2, "SemLocationManager"

    const-string/jumbo v3, "parameters are not vaild"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x2

    return v2

    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/location/SemLocationManager;->mCurrentLocListeners:Ljava/util/HashMap;

    monitor-enter v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v2, p0, Lcom/samsung/android/location/SemLocationManager;->mCurrentLocListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/location/SemLocationManager$CurrentLocListenerTransport;

    if-nez v1, :cond_2

    const-string/jumbo v2, "SemLocationManager"

    const-string/jumbo v4, "already removeCurrentLocation"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    return v6

    :cond_2
    :try_start_3
    const-string/jumbo v2, "SemLocationManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "removeCurrentLocation : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    invoke-interface {v2, p1}, Lcom/samsung/android/location/ISLocationManager;->removeCurrentLocation(I)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v2

    :try_start_4
    monitor-exit v3

    return v2

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "SemLocationManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "removeCurrentLocation: RemoteException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v6
.end method

.method public removeGeofence(I)I
    .locals 4

    iget-object v1, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    if-nez v1, :cond_0

    const-string/jumbo v1, "SemLocationManager"

    const-string/jumbo v2, "SLocationService is not supported"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    return v1

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Lcom/samsung/android/location/ISLocationManager;->removeGeofence(ILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "SemLocationManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removeGeofence: RemoteException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x4

    return v1
.end method

.method public removeGeofence(ILjava/lang/String;)I
    .locals 4

    iget-object v1, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    if-nez v1, :cond_0

    const-string/jumbo v1, "SemLocationManager"

    const-string/jumbo v2, "SLocationService is not supported"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    return v1

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/location/ISLocationManager;->removeGeofence(ILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "SemLocationManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removeGeofence: RemoteException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x4

    return v1
.end method

.method public removeLocationUpdates(Lcom/samsung/android/location/SemLocationListener;)I
    .locals 5

    iget-object v2, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    if-nez v2, :cond_0

    const-string/jumbo v2, "SemLocationManager"

    const-string/jumbo v3, "SLocationService is not supported"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x1

    return v2

    :cond_0
    if-nez p1, :cond_1

    const-string/jumbo v2, "SemLocationManager"

    const-string/jumbo v3, "parameters are not vaild"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x2

    return v2

    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/location/SemLocationManager;->mLocListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/location/SemLocationManager$LocListenerTransport;

    if-nez v1, :cond_2

    const-string/jumbo v2, "SemLocationManager"

    const-string/jumbo v3, "Already stopped location"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x3

    return v2

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    invoke-interface {v2, v1}, Lcom/samsung/android/location/ISLocationManager;->removeLocation(Lcom/samsung/android/location/ISLocationListener;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    :catch_0
    move-exception v0

    const-string/jumbo v2, "SemLocationManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "removeLocationUpdates: RemoteException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x4

    return v2
.end method

.method public removeSingleLocation(Landroid/app/PendingIntent;)I
    .locals 4

    iget-object v1, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    if-nez v1, :cond_0

    const-string/jumbo v1, "SemLocationManager"

    const-string/jumbo v2, "SLocationService is not supported"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    return v1

    :cond_0
    if-nez p1, :cond_1

    const-string/jumbo v1, "SemLocationManager"

    const-string/jumbo v2, "parameters are not vaild"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x2

    return v1

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Lcom/samsung/android/location/ISLocationManager;->removeSingleLocation(Landroid/app/PendingIntent;Lcom/samsung/android/location/ISLocationListener;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "SemLocationManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removeSingleLocation: RemoteException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x4

    return v1
.end method

.method public removeSingleLocation(Lcom/samsung/android/location/SemLocationListener;)I
    .locals 5

    iget-object v2, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    if-nez v2, :cond_0

    const-string/jumbo v2, "SemLocationManager"

    const-string/jumbo v3, "SLocationService is not supported"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x1

    return v2

    :cond_0
    if-nez p1, :cond_1

    const-string/jumbo v2, "SemLocationManager"

    const-string/jumbo v3, "parameters are not vaild"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x2

    return v2

    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/location/SemLocationManager;->mLocListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/location/SemLocationManager$LocListenerTransport;

    if-nez v1, :cond_2

    const-string/jumbo v2, "SemLocationManager"

    const-string/jumbo v3, "Already stopped location"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x3

    return v2

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    const/4 v3, 0x0

    invoke-interface {v2, v3, v1}, Lcom/samsung/android/location/ISLocationManager;->removeSingleLocation(Landroid/app/PendingIntent;Lcom/samsung/android/location/ISLocationListener;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    :catch_0
    move-exception v0

    const-string/jumbo v2, "SemLocationManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "removeSingleLocation: RemoteException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x4

    return v2
.end method

.method public requestAddressFromLocation([D[DLandroid/app/PendingIntent;)I
    .locals 4

    iget-object v1, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    if-nez v1, :cond_0

    const-string/jumbo v1, "SemLocationManager"

    const-string/jumbo v2, "SLocationService is not supported"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    return v1

    :cond_0
    if-nez p3, :cond_1

    const-string/jumbo v1, "SemLocationManager"

    const-string/jumbo v2, "parameters are not vaild"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x2

    return v1

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    invoke-interface {v1, p1, p2, p3}, Lcom/samsung/android/location/ISLocationManager;->requestLocationToPoi([D[DLandroid/app/PendingIntent;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "SemLocationManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "requestLocationToPoi: RemoteException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x4

    return v1
.end method

.method public requestBatchOfLocations()I
    .locals 4

    iget-object v1, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    if-nez v1, :cond_0

    const-string/jumbo v1, "SemLocationManager"

    const-string/jumbo v2, "SLocationService is not supported"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    return v1

    :cond_0
    :try_start_0
    const-string/jumbo v1, "SemLocationManager"

    const-string/jumbo v2, "requestBatchOfLocations "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    invoke-interface {v1}, Lcom/samsung/android/location/ISLocationManager;->requestBatchOfLocations()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "SemLocationManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "requestBatchOfLocations: RemoteException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x4

    return v1
.end method

.method public requestCurrentLocation(Lcom/samsung/android/location/SCurrentLocListener;)I
    .locals 5

    iget-object v2, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    if-nez v2, :cond_0

    const-string/jumbo v2, "SemLocationManager"

    const-string/jumbo v3, "SLocationService is not supported"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x1

    return v2

    :cond_0
    if-nez p1, :cond_1

    const-string/jumbo v2, "SemLocationManager"

    const-string/jumbo v3, "parameters are not vaild"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x2

    return v2

    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/location/SemLocationManager;->mCurrentLocListeners:Ljava/util/HashMap;

    monitor-enter v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v2, p0, Lcom/samsung/android/location/SemLocationManager;->mCurrentLocListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/location/SemLocationManager$CurrentLocListenerTransport;

    if-nez v1, :cond_2

    new-instance v1, Lcom/samsung/android/location/SemLocationManager$CurrentLocListenerTransport;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/location/SemLocationManager$CurrentLocListenerTransport;-><init>(Lcom/samsung/android/location/SemLocationManager;Lcom/samsung/android/location/SCurrentLocListener;)V

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/location/SemLocationManager;->mCurrentLocListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "SemLocationManager"

    const-string/jumbo v4, "requestCurrentLocation "

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    invoke-interface {v2, v1}, Lcom/samsung/android/location/ISLocationManager;->requestCurrentLocation(Lcom/samsung/android/location/ISCurrentLocListener;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    :try_start_2
    monitor-exit v3

    return v2

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "SemLocationManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "requestCurrentLocation: RemoteException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x4

    return v2
.end method

.method public requestLocationUpdates(ZLcom/samsung/android/location/SemLocationListener;)I
    .locals 5

    iget-object v2, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    if-nez v2, :cond_0

    const-string/jumbo v2, "SemLocationManager"

    const-string/jumbo v3, "SLocationService is not supported"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x1

    return v2

    :cond_0
    if-nez p2, :cond_1

    const-string/jumbo v2, "SemLocationManager"

    const-string/jumbo v3, "parameters are not vaild"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x2

    return v2

    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/location/SemLocationManager;->mLocListeners:Ljava/util/HashMap;

    monitor-enter v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v2, p0, Lcom/samsung/android/location/SemLocationManager;->mLocListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/location/SemLocationManager$LocListenerTransport;

    if-nez v1, :cond_2

    new-instance v1, Lcom/samsung/android/location/SemLocationManager$LocListenerTransport;

    invoke-direct {v1, p0, p2}, Lcom/samsung/android/location/SemLocationManager$LocListenerTransport;-><init>(Lcom/samsung/android/location/SemLocationManager;Lcom/samsung/android/location/SemLocationListener;)V

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/location/SemLocationManager;->mLocListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    invoke-interface {v2, p1, v1}, Lcom/samsung/android/location/ISLocationManager;->requestLocation(ZLcom/samsung/android/location/ISLocationListener;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    :try_start_2
    monitor-exit v3

    return v2

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "SemLocationManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "requestLocationUpdates: RemoteException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x4

    return v2
.end method

.method public requestSingleLocation(IIZLandroid/app/PendingIntent;)I
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    if-nez v0, :cond_0

    const-string/jumbo v0, "SemLocationManager"

    const-string/jumbo v1, "SLocationService is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    return v0

    :cond_0
    if-nez p4, :cond_1

    const-string/jumbo v0, "SemLocationManager"

    const-string/jumbo v1, "parameters are not vaild"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x2

    return v0

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    const/4 v5, 0x0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/samsung/android/location/ISLocationManager;->requestSingleLocation(IIZLandroid/app/PendingIntent;Lcom/samsung/android/location/ISLocationListener;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v6

    const-string/jumbo v0, "SemLocationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestSingleLocation: RemoteException "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x4

    return v0
.end method

.method public requestSingleLocation(IIZLcom/samsung/android/location/SemLocationListener;)I
    .locals 8

    iget-object v0, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    if-nez v0, :cond_0

    const-string/jumbo v0, "SemLocationManager"

    const-string/jumbo v1, "SLocationService is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    return v0

    :cond_0
    if-nez p4, :cond_1

    const-string/jumbo v0, "SemLocationManager"

    const-string/jumbo v1, "parameters are not vaild"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x2

    return v0

    :cond_1
    :try_start_0
    iget-object v7, p0, Lcom/samsung/android/location/SemLocationManager;->mLocListeners:Ljava/util/HashMap;

    monitor-enter v7
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/location/SemLocationManager;->mLocListeners:Ljava/util/HashMap;

    invoke-virtual {v0, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/location/SemLocationManager$LocListenerTransport;

    if-nez v5, :cond_2

    new-instance v5, Lcom/samsung/android/location/SemLocationManager$LocListenerTransport;

    invoke-direct {v5, p0, p4}, Lcom/samsung/android/location/SemLocationManager$LocListenerTransport;-><init>(Lcom/samsung/android/location/SemLocationManager;Lcom/samsung/android/location/SemLocationListener;)V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/location/SemLocationManager;->mLocListeners:Ljava/util/HashMap;

    invoke-virtual {v0, p4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    const/4 v4, 0x0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-interface/range {v0 .. v5}, Lcom/samsung/android/location/ISLocationManager;->requestSingleLocation(IIZLandroid/app/PendingIntent;Lcom/samsung/android/location/ISLocationListener;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    :try_start_2
    monitor-exit v7

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v7

    throw v0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v6

    const-string/jumbo v0, "SemLocationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestSingleLocation: RemoteException "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x4

    return v0
.end method

.method public startGeofenceMonitoring(ILandroid/app/PendingIntent;)I
    .locals 4

    iget-object v1, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    if-nez v1, :cond_0

    const-string/jumbo v1, "SemLocationManager"

    const-string/jumbo v2, "SLocationService is not supported"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    return v1

    :cond_0
    if-nez p2, :cond_1

    const-string/jumbo v1, "SemLocationManager"

    const-string/jumbo v2, "intent is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x2

    return v1

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/location/ISLocationManager;->startGeofence(ILandroid/app/PendingIntent;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "SemLocationManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startGeofenceMonitoring : RemoteException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x4

    return v1
.end method

.method public startLearning(I)I
    .locals 4

    iget-object v1, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    if-nez v1, :cond_0

    const-string/jumbo v1, "SemLocationManager"

    const-string/jumbo v2, "SLocationService is not supported"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    return v1

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    invoke-interface {v1, p1}, Lcom/samsung/android/location/ISLocationManager;->startLearning(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "SemLocationManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startLearning: RemoteException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x4

    return v1
.end method

.method public startLocationBatching(ILcom/samsung/android/location/SemLocationListener;)I
    .locals 5

    iget-object v2, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    if-nez v2, :cond_0

    const-string/jumbo v2, "SemLocationManager"

    const-string/jumbo v3, "SLocationService is not supported"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x1

    return v2

    :cond_0
    if-eqz p2, :cond_1

    if-gtz p1, :cond_2

    :cond_1
    const-string/jumbo v2, "SemLocationManager"

    const-string/jumbo v3, "parameters are not vaild"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x2

    return v2

    :cond_2
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/location/SemLocationManager;->mLocListeners:Ljava/util/HashMap;

    monitor-enter v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v2, p0, Lcom/samsung/android/location/SemLocationManager;->mLocListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/location/SemLocationManager$LocListenerTransport;

    if-nez v1, :cond_3

    new-instance v1, Lcom/samsung/android/location/SemLocationManager$LocListenerTransport;

    invoke-direct {v1, p0, p2}, Lcom/samsung/android/location/SemLocationManager$LocListenerTransport;-><init>(Lcom/samsung/android/location/SemLocationManager;Lcom/samsung/android/location/SemLocationListener;)V

    :cond_3
    iget-object v2, p0, Lcom/samsung/android/location/SemLocationManager;->mLocListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    invoke-interface {v2, p1, v1}, Lcom/samsung/android/location/ISLocationManager;->startLocationBatching(ILcom/samsung/android/location/ISLocationListener;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    :try_start_2
    monitor-exit v3

    return v2

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "SemLocationManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startBatching: RemoteException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x4

    return v2
.end method

.method public stopGeofenceMonitoring(ILandroid/app/PendingIntent;)I
    .locals 4

    iget-object v1, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    if-nez v1, :cond_0

    const-string/jumbo v1, "SemLocationManager"

    const-string/jumbo v2, "SLocationService is not supported"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    return v1

    :cond_0
    if-nez p2, :cond_1

    const-string/jumbo v1, "SemLocationManager"

    const-string/jumbo v2, "intent is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x2

    return v1

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/location/ISLocationManager;->stopGeofence(ILandroid/app/PendingIntent;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "SemLocationManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "stopGeofenceMonitoring: RemoteException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x4

    return v1
.end method

.method public stopLearning(I)I
    .locals 4

    iget-object v1, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    if-nez v1, :cond_0

    const-string/jumbo v1, "SemLocationManager"

    const-string/jumbo v2, "SLocationService is not supported"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    return v1

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    invoke-interface {v1, p1}, Lcom/samsung/android/location/ISLocationManager;->stopLearning(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "SemLocationManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "stopLearning: RemoteException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x4

    return v1
.end method

.method public stopLocationBatching(ILcom/samsung/android/location/SemLocationListener;)I
    .locals 5

    iget-object v2, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    if-nez v2, :cond_0

    const-string/jumbo v2, "SemLocationManager"

    const-string/jumbo v3, "SLocationService is not supported"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x1

    return v2

    :cond_0
    if-eqz p2, :cond_1

    if-gtz p1, :cond_2

    :cond_1
    const-string/jumbo v2, "SemLocationManager"

    const-string/jumbo v3, "parameters are not vaild"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x2

    return v2

    :cond_2
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/location/SemLocationManager;->mLocListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/location/SemLocationManager$LocListenerTransport;

    if-nez v1, :cond_3

    const-string/jumbo v2, "SemLocationManager"

    const-string/jumbo v3, "Already stopped geofence"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x3

    return v2

    :cond_3
    iget-object v2, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    invoke-interface {v2, p1}, Lcom/samsung/android/location/ISLocationManager;->stopLocationBatching(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    :catch_0
    move-exception v0

    const-string/jumbo v2, "SemLocationManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "stopBatching: RemoteException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x4

    return v2
.end method

.method public syncGeofence(Ljava/util/List;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    iget-object v3, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    if-nez v3, :cond_0

    const-string/jumbo v3, "SemLocationManager"

    const-string/jumbo v4, "SLocationService is not supported"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, -0x1

    return v3

    :cond_0
    if-nez p1, :cond_1

    const-string/jumbo v3, "SemLocationManager"

    const-string/jumbo v4, "geofenceIdList is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, -0x2

    return v3

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    new-array v2, v3, [I

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Lcom/samsung/android/location/ISLocationManager;->syncGeofence([ILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    :catch_0
    move-exception v0

    const-string/jumbo v3, "SemLocationManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "syncGeofence: RemoteException "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, -0x4

    return v3
.end method

.method public syncGeofence(Ljava/util/List;Ljava/lang/String;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    iget-object v3, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    if-nez v3, :cond_0

    const-string/jumbo v3, "SemLocationManager"

    const-string/jumbo v4, "SLocationService is not supported"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, -0x1

    return v3

    :cond_0
    if-nez p1, :cond_1

    const-string/jumbo v3, "SemLocationManager"

    const-string/jumbo v4, "geofenceIdList is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, -0x2

    return v3

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    new-array v2, v3, [I

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    invoke-interface {v3, v2, p2}, Lcom/samsung/android/location/ISLocationManager;->syncGeofence([ILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    :catch_0
    move-exception v0

    const-string/jumbo v3, "SemLocationManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "syncGeofence: RemoteException "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, -0x4

    return v3
.end method

.method public updateBatchingOptions(II)I
    .locals 4

    iget-object v1, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    if-nez v1, :cond_0

    const-string/jumbo v1, "SemLocationManager"

    const-string/jumbo v2, "SLocationService is not supported"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    return v1

    :cond_0
    if-lez p1, :cond_1

    if-gtz p2, :cond_2

    :cond_1
    const-string/jumbo v1, "SemLocationManager"

    const-string/jumbo v2, "parameters are not vaild"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x2

    return v1

    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/location/ISLocationManager;->updateBatchingOptions(II)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "SemLocationManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateBatchingOptions: RemoteException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x4

    return v1
.end method
