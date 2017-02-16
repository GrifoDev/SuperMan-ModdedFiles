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
    .param p1, "service"    # Lcom/samsung/android/location/ISLocationManager;

    .prologue
    .line 373
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 276
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 275
    iput-object v0, p0, Lcom/samsung/android/location/SemLocationManager;->mLocListeners:Ljava/util/HashMap;

    .line 278
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 277
    iput-object v0, p0, Lcom/samsung/android/location/SemLocationManager;->mCurrentLocListeners:Ljava/util/HashMap;

    .line 374
    iput-object p1, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    .line 373
    return-void
.end method

.method private isArgumentsValid(Lcom/samsung/android/location/SemGeofence;)Z
    .locals 14
    .param p1, "parameter"    # Lcom/samsung/android/location/SemGeofence;

    .prologue
    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 506
    invoke-virtual {p1}, Lcom/samsung/android/location/SemGeofence;->getType()I

    move-result v6

    .line 507
    .local v6, "type":I
    if-eq v6, v11, :cond_0

    if-eq v6, v12, :cond_0

    if-eq v6, v13, :cond_0

    const/4 v7, 0x4

    if-eq v6, v7, :cond_0

    .line 508
    const-string/jumbo v7, "SemLocationManager"

    const-string/jumbo v8, "geofenceType is not correct"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    return v10

    .line 511
    :cond_0
    if-ne v6, v11, :cond_5

    .line 512
    invoke-virtual {p1}, Lcom/samsung/android/location/SemGeofence;->getLatitude()D

    move-result-wide v2

    .line 513
    .local v2, "latitude":D
    invoke-virtual {p1}, Lcom/samsung/android/location/SemGeofence;->getLongitude()D

    move-result-wide v4

    .line 514
    .local v4, "longitude":D
    invoke-virtual {p1}, Lcom/samsung/android/location/SemGeofence;->getRadius()I

    move-result v1

    .line 515
    .local v1, "radius":I
    const-wide v8, -0x3fa9800000000000L    # -90.0

    cmpg-double v7, v2, v8

    if-ltz v7, :cond_1

    const-wide v8, 0x4056800000000000L    # 90.0

    cmpl-double v7, v2, v8

    if-lez v7, :cond_2

    .line 516
    :cond_1
    const-string/jumbo v7, "SemLocationManager"

    const-string/jumbo v8, "latitude is not correct"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    return v10

    .line 519
    :cond_2
    const-wide v8, -0x3f99800000000000L    # -180.0

    cmpg-double v7, v4, v8

    if-ltz v7, :cond_3

    const-wide v8, 0x4066800000000000L    # 180.0

    cmpl-double v7, v4, v8

    if-lez v7, :cond_4

    .line 520
    :cond_3
    const-string/jumbo v7, "SemLocationManager"

    const-string/jumbo v8, "longitude is not correct"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    return v10

    .line 523
    :cond_4
    const/16 v7, 0x64

    if-ge v1, v7, :cond_5

    .line 524
    const-string/jumbo v7, "SemLocationManager"

    const-string/jumbo v8, "radius is not correct"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    return v10

    .line 528
    .end local v1    # "radius":I
    .end local v2    # "latitude":D
    .end local v4    # "longitude":D
    :cond_5
    if-eq v6, v12, :cond_6

    if-ne v6, v13, :cond_7

    .line 529
    :cond_6
    invoke-virtual {p1}, Lcom/samsung/android/location/SemGeofence;->getBssid()Ljava/lang/String;

    move-result-object v0

    .line 530
    .local v0, "bssid":Ljava/lang/String;
    if-nez v0, :cond_7

    .line 531
    const-string/jumbo v7, "SemLocationManager"

    const-string/jumbo v8, "bssid is null"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    return v10

    .line 535
    .end local v0    # "bssid":Ljava/lang/String;
    :cond_7
    return v11
.end method


# virtual methods
.method public addGeofence(Lcom/samsung/android/location/SemGeofence;)I
    .locals 4
    .param p1, "parameter"    # Lcom/samsung/android/location/SemGeofence;

    .prologue
    .line 419
    iget-object v1, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    if-nez v1, :cond_0

    .line 420
    const-string/jumbo v1, "SemLocationManager"

    const-string/jumbo v2, "SLocationService is not supported"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    const/4 v1, -0x1

    return v1

    .line 423
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/location/SemLocationManager;->isArgumentsValid(Lcom/samsung/android/location/SemGeofence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 424
    const/4 v1, -0x2

    return v1

    .line 427
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    invoke-interface {v1, p1}, Lcom/samsung/android/location/ISLocationManager;->addGeofence(Lcom/samsung/android/location/SemGeofence;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 428
    :catch_0
    move-exception v0

    .line 429
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v1, "SemLocationManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getGeofenceId : RemoteException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    const/4 v1, -0x4

    return v1
.end method

.method public checkPassiveLocation()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 893
    iget-object v1, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    if-nez v1, :cond_0

    .line 894
    const-string/jumbo v1, "SemLocationManager"

    const-string/jumbo v2, "SLocationService is not supported"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 895
    return v4

    .line 898
    :cond_0
    :try_start_0
    const-string/jumbo v1, "SemLocationManager"

    const-string/jumbo v2, "checkPassiveLocation"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 899
    iget-object v1, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    invoke-interface {v1}, Lcom/samsung/android/location/ISLocationManager;->checkPassiveLocation()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 901
    :catch_0
    move-exception v0

    .line 902
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v1, "SemLocationManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "checkPassiveLocation: RemoteException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 903
    return v4
.end method

.method public removeCurrentLocation(ILcom/samsung/android/location/SCurrentLocListener;)I
    .locals 7
    .param p1, "requestId"    # I
    .param p2, "listener"    # Lcom/samsung/android/location/SCurrentLocListener;

    .prologue
    const/4 v6, -0x4

    .line 863
    iget-object v2, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    if-nez v2, :cond_0

    .line 864
    const-string/jumbo v2, "SemLocationManager"

    const-string/jumbo v3, "SLocationService is not supported"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 865
    const/4 v2, -0x1

    return v2

    .line 867
    :cond_0
    if-nez p2, :cond_1

    .line 868
    const-string/jumbo v2, "SemLocationManager"

    const-string/jumbo v3, "parameters are not vaild"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    const/4 v2, -0x2

    return v2

    .line 872
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/location/SemLocationManager;->mCurrentLocListeners:Ljava/util/HashMap;

    monitor-enter v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 873
    :try_start_1
    iget-object v2, p0, Lcom/samsung/android/location/SemLocationManager;->mCurrentLocListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/location/SemLocationManager$CurrentLocListenerTransport;

    .line 874
    .local v1, "transport":Lcom/samsung/android/location/SemLocationManager$CurrentLocListenerTransport;
    if-nez v1, :cond_2

    .line 875
    const-string/jumbo v2, "SemLocationManager"

    const-string/jumbo v4, "already removeCurrentLocation"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 876
    return v6

    .line 878
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

    .line 879
    iget-object v2, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    invoke-interface {v2, p1}, Lcom/samsung/android/location/ISLocationManager;->removeCurrentLocation(I)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v2

    :try_start_4
    monitor-exit v3

    return v2

    .line 872
    .end local v1    # "transport":Lcom/samsung/android/location/SemLocationManager$CurrentLocListenerTransport;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    .line 882
    :catch_0
    move-exception v0

    .line 883
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v2, "SemLocationManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "removeCurrentLocation: RemoteException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 884
    return v6
.end method

.method public removeGeofence(I)I
    .locals 4
    .param p1, "geofenceId"    # I

    .prologue
    .line 442
    iget-object v1, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    if-nez v1, :cond_0

    .line 443
    const-string/jumbo v1, "SemLocationManager"

    const-string/jumbo v2, "SLocationService is not supported"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    const/4 v1, -0x1

    return v1

    .line 447
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    invoke-interface {v1, p1}, Lcom/samsung/android/location/ISLocationManager;->removeGeofence(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 448
    :catch_0
    move-exception v0

    .line 449
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v1, "SemLocationManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removeGeofence: RemoteException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    const/4 v1, -0x4

    return v1
.end method

.method public removeLocationUpdates(Lcom/samsung/android/location/SemLocationListener;)I
    .locals 5
    .param p1, "listener"    # Lcom/samsung/android/location/SemLocationListener;

    .prologue
    .line 779
    iget-object v2, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    if-nez v2, :cond_0

    .line 780
    const-string/jumbo v2, "SemLocationManager"

    const-string/jumbo v3, "SLocationService is not supported"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    const/4 v2, -0x1

    return v2

    .line 783
    :cond_0
    if-nez p1, :cond_1

    .line 784
    const-string/jumbo v2, "SemLocationManager"

    const-string/jumbo v3, "parameters are not vaild"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    const/4 v2, -0x2

    return v2

    .line 789
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/location/SemLocationManager;->mLocListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/location/SemLocationManager$LocListenerTransport;

    .line 790
    .local v1, "transport":Lcom/samsung/android/location/SemLocationManager$LocListenerTransport;
    if-nez v1, :cond_2

    .line 791
    const-string/jumbo v2, "SemLocationManager"

    const-string/jumbo v3, "Already stopped location"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    const/4 v2, -0x3

    return v2

    .line 795
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    invoke-interface {v2, v1}, Lcom/samsung/android/location/ISLocationManager;->removeLocation(Lcom/samsung/android/location/ISLocationListener;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 797
    .end local v1    # "transport":Lcom/samsung/android/location/SemLocationManager$LocListenerTransport;
    :catch_0
    move-exception v0

    .line 798
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v2, "SemLocationManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "removeLocationUpdates: RemoteException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    const/4 v2, -0x4

    return v2
.end method

.method public removeSingleLocation(Landroid/app/PendingIntent;)I
    .locals 4
    .param p1, "intent"    # Landroid/app/PendingIntent;

    .prologue
    .line 724
    iget-object v1, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    if-nez v1, :cond_0

    .line 725
    const-string/jumbo v1, "SemLocationManager"

    const-string/jumbo v2, "SLocationService is not supported"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    const/4 v1, -0x1

    return v1

    .line 728
    :cond_0
    if-nez p1, :cond_1

    .line 729
    const-string/jumbo v1, "SemLocationManager"

    const-string/jumbo v2, "parameters are not vaild"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    const/4 v1, -0x2

    return v1

    .line 733
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    invoke-interface {v1, p1}, Lcom/samsung/android/location/ISLocationManager;->removeSingleLocation(Landroid/app/PendingIntent;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 734
    :catch_0
    move-exception v0

    .line 735
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v1, "SemLocationManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removeSingleLocation: RemoteException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    const/4 v1, -0x4

    return v1
.end method

.method public requestAddressFromLocation([D[DLandroid/app/PendingIntent;)I
    .locals 4
    .param p1, "latitude"    # [D
    .param p2, "longitude"    # [D
    .param p3, "intent"    # Landroid/app/PendingIntent;

    .prologue
    .line 812
    iget-object v1, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    if-nez v1, :cond_0

    .line 813
    const-string/jumbo v1, "SemLocationManager"

    const-string/jumbo v2, "SLocationService is not supported"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    const/4 v1, -0x1

    return v1

    .line 816
    :cond_0
    if-nez p3, :cond_1

    .line 817
    const-string/jumbo v1, "SemLocationManager"

    const-string/jumbo v2, "parameters are not vaild"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    const/4 v1, -0x2

    return v1

    .line 821
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    invoke-interface {v1, p1, p2, p3}, Lcom/samsung/android/location/ISLocationManager;->requestLocationToPoi([D[DLandroid/app/PendingIntent;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 822
    :catch_0
    move-exception v0

    .line 823
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v1, "SemLocationManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "requestLocationToPoi: RemoteException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    const/4 v1, -0x4

    return v1
.end method

.method public requestBatchOfLocations()I
    .locals 4

    .prologue
    .line 650
    iget-object v1, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    if-nez v1, :cond_0

    .line 651
    const-string/jumbo v1, "SemLocationManager"

    const-string/jumbo v2, "SLocationService is not supported"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    const/4 v1, -0x1

    return v1

    .line 655
    :cond_0
    :try_start_0
    const-string/jumbo v1, "SemLocationManager"

    const-string/jumbo v2, "requestBatchOfLocations "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    iget-object v1, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    invoke-interface {v1}, Lcom/samsung/android/location/ISLocationManager;->requestBatchOfLocations()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 657
    :catch_0
    move-exception v0

    .line 658
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v1, "SemLocationManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "requestBatchOfLocations: RemoteException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    const/4 v1, -0x4

    return v1
.end method

.method public requestCurrentLocation(Lcom/samsung/android/location/SCurrentLocListener;)I
    .locals 5
    .param p1, "listener"    # Lcom/samsung/android/location/SCurrentLocListener;

    .prologue
    .line 833
    iget-object v2, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    if-nez v2, :cond_0

    .line 834
    const-string/jumbo v2, "SemLocationManager"

    const-string/jumbo v3, "SLocationService is not supported"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    const/4 v2, -0x1

    return v2

    .line 837
    :cond_0
    if-nez p1, :cond_1

    .line 838
    const-string/jumbo v2, "SemLocationManager"

    const-string/jumbo v3, "parameters are not vaild"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    const/4 v2, -0x2

    return v2

    .line 842
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/location/SemLocationManager;->mCurrentLocListeners:Ljava/util/HashMap;

    monitor-enter v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 843
    :try_start_1
    iget-object v2, p0, Lcom/samsung/android/location/SemLocationManager;->mCurrentLocListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/location/SemLocationManager$CurrentLocListenerTransport;

    .line 844
    .local v1, "transport":Lcom/samsung/android/location/SemLocationManager$CurrentLocListenerTransport;
    if-nez v1, :cond_2

    .line 845
    new-instance v1, Lcom/samsung/android/location/SemLocationManager$CurrentLocListenerTransport;

    .end local v1    # "transport":Lcom/samsung/android/location/SemLocationManager$CurrentLocListenerTransport;
    invoke-direct {v1, p0, p1}, Lcom/samsung/android/location/SemLocationManager$CurrentLocListenerTransport;-><init>(Lcom/samsung/android/location/SemLocationManager;Lcom/samsung/android/location/SCurrentLocListener;)V

    .line 847
    .restart local v1    # "transport":Lcom/samsung/android/location/SemLocationManager$CurrentLocListenerTransport;
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/location/SemLocationManager;->mCurrentLocListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 848
    const-string/jumbo v2, "SemLocationManager"

    const-string/jumbo v4, "requestCurrentLocation "

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 849
    iget-object v2, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    invoke-interface {v2, v1}, Lcom/samsung/android/location/ISLocationManager;->requestCurrentLocation(Lcom/samsung/android/location/ISCurrentLocListener;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    :try_start_2
    monitor-exit v3

    return v2

    .line 842
    .end local v1    # "transport":Lcom/samsung/android/location/SemLocationManager$CurrentLocListenerTransport;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 851
    :catch_0
    move-exception v0

    .line 852
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v2, "SemLocationManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "requestCurrentLocation: RemoteException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    const/4 v2, -0x4

    return v2
.end method

.method public requestLocationUpdates(ZLcom/samsung/android/location/SemLocationListener;)I
    .locals 5
    .param p1, "isAddress"    # Z
    .param p2, "listener"    # Lcom/samsung/android/location/SemLocationListener;

    .prologue
    .line 748
    iget-object v2, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    if-nez v2, :cond_0

    .line 749
    const-string/jumbo v2, "SemLocationManager"

    const-string/jumbo v3, "SLocationService is not supported"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    const/4 v2, -0x1

    return v2

    .line 752
    :cond_0
    if-nez p2, :cond_1

    .line 753
    const-string/jumbo v2, "SemLocationManager"

    const-string/jumbo v3, "parameters are not vaild"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    const/4 v2, -0x2

    return v2

    .line 757
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/location/SemLocationManager;->mLocListeners:Ljava/util/HashMap;

    monitor-enter v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 758
    :try_start_1
    iget-object v2, p0, Lcom/samsung/android/location/SemLocationManager;->mLocListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/location/SemLocationManager$LocListenerTransport;

    .line 759
    .local v1, "transport":Lcom/samsung/android/location/SemLocationManager$LocListenerTransport;
    if-nez v1, :cond_2

    .line 760
    new-instance v1, Lcom/samsung/android/location/SemLocationManager$LocListenerTransport;

    .end local v1    # "transport":Lcom/samsung/android/location/SemLocationManager$LocListenerTransport;
    invoke-direct {v1, p0, p2}, Lcom/samsung/android/location/SemLocationManager$LocListenerTransport;-><init>(Lcom/samsung/android/location/SemLocationManager;Lcom/samsung/android/location/SemLocationListener;)V

    .line 762
    .restart local v1    # "transport":Lcom/samsung/android/location/SemLocationManager$LocListenerTransport;
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/location/SemLocationManager;->mLocListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 764
    iget-object v2, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    invoke-interface {v2, p1, v1}, Lcom/samsung/android/location/ISLocationManager;->requestLocation(ZLcom/samsung/android/location/ISLocationListener;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    :try_start_2
    monitor-exit v3

    return v2

    .line 757
    .end local v1    # "transport":Lcom/samsung/android/location/SemLocationManager$LocListenerTransport;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 766
    :catch_0
    move-exception v0

    .line 767
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v2, "SemLocationManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "requestLocationUpdates: RemoteException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    const/4 v2, -0x4

    return v2
.end method

.method public requestSingleLocation(IIZLandroid/app/PendingIntent;)I
    .locals 4
    .param p1, "accuracy"    # I
    .param p2, "timeout"    # I
    .param p3, "isAddress"    # Z
    .param p4, "intent"    # Landroid/app/PendingIntent;

    .prologue
    .line 702
    iget-object v1, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    if-nez v1, :cond_0

    .line 703
    const-string/jumbo v1, "SemLocationManager"

    const-string/jumbo v2, "SLocationService is not supported"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    const/4 v1, -0x1

    return v1

    .line 706
    :cond_0
    if-nez p4, :cond_1

    .line 707
    const-string/jumbo v1, "SemLocationManager"

    const-string/jumbo v2, "parameters are not vaild"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    const/4 v1, -0x2

    return v1

    .line 711
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/samsung/android/location/ISLocationManager;->requestSingleLocation(IIZLandroid/app/PendingIntent;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 712
    :catch_0
    move-exception v0

    .line 713
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v1, "SemLocationManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "requestSingleLocation: RemoteException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    const/4 v1, -0x4

    return v1
.end method

.method public startGeofenceMonitoring(ILandroid/app/PendingIntent;)I
    .locals 4
    .param p1, "geofenceId"    # I
    .param p2, "intent"    # Landroid/app/PendingIntent;

    .prologue
    .line 463
    iget-object v1, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    if-nez v1, :cond_0

    .line 464
    const-string/jumbo v1, "SemLocationManager"

    const-string/jumbo v2, "SLocationService is not supported"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    const/4 v1, -0x1

    return v1

    .line 467
    :cond_0
    if-nez p2, :cond_1

    .line 468
    const-string/jumbo v1, "SemLocationManager"

    const-string/jumbo v2, "intent is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    const/4 v1, -0x2

    return v1

    .line 473
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/location/ISLocationManager;->startGeofence(ILandroid/app/PendingIntent;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 474
    :catch_0
    move-exception v0

    .line 475
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v1, "SemLocationManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startGeofenceMonitoring : RemoteException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    const/4 v1, -0x4

    return v1
.end method

.method public startLearning(I)I
    .locals 4
    .param p1, "geofenceId"    # I

    .prologue
    .line 546
    iget-object v1, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    if-nez v1, :cond_0

    .line 547
    const-string/jumbo v1, "SemLocationManager"

    const-string/jumbo v2, "SLocationService is not supported"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    const/4 v1, -0x1

    return v1

    .line 551
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    invoke-interface {v1, p1}, Lcom/samsung/android/location/ISLocationManager;->startLearning(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 552
    :catch_0
    move-exception v0

    .line 553
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v1, "SemLocationManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startLearning: RemoteException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    const/4 v1, -0x4

    return v1
.end method

.method public startLocationBatching(ILcom/samsung/android/location/SemLocationListener;)I
    .locals 5
    .param p1, "period"    # I
    .param p2, "listener"    # Lcom/samsung/android/location/SemLocationListener;

    .prologue
    .line 588
    iget-object v2, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    if-nez v2, :cond_0

    .line 589
    const-string/jumbo v2, "SemLocationManager"

    const-string/jumbo v3, "SLocationService is not supported"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    const/4 v2, -0x1

    return v2

    .line 592
    :cond_0
    if-eqz p2, :cond_1

    if-gtz p1, :cond_2

    .line 593
    :cond_1
    const-string/jumbo v2, "SemLocationManager"

    const-string/jumbo v3, "parameters are not vaild"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    const/4 v2, -0x2

    return v2

    .line 597
    :cond_2
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/location/SemLocationManager;->mLocListeners:Ljava/util/HashMap;

    monitor-enter v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 598
    :try_start_1
    iget-object v2, p0, Lcom/samsung/android/location/SemLocationManager;->mLocListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/location/SemLocationManager$LocListenerTransport;

    .line 599
    .local v1, "transport":Lcom/samsung/android/location/SemLocationManager$LocListenerTransport;
    if-nez v1, :cond_3

    .line 600
    new-instance v1, Lcom/samsung/android/location/SemLocationManager$LocListenerTransport;

    .end local v1    # "transport":Lcom/samsung/android/location/SemLocationManager$LocListenerTransport;
    invoke-direct {v1, p0, p2}, Lcom/samsung/android/location/SemLocationManager$LocListenerTransport;-><init>(Lcom/samsung/android/location/SemLocationManager;Lcom/samsung/android/location/SemLocationListener;)V

    .line 602
    .restart local v1    # "transport":Lcom/samsung/android/location/SemLocationManager$LocListenerTransport;
    :cond_3
    iget-object v2, p0, Lcom/samsung/android/location/SemLocationManager;->mLocListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 604
    iget-object v2, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    invoke-interface {v2, p1, v1}, Lcom/samsung/android/location/ISLocationManager;->startLocationBatching(ILcom/samsung/android/location/ISLocationListener;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    :try_start_2
    monitor-exit v3

    return v2

    .line 597
    .end local v1    # "transport":Lcom/samsung/android/location/SemLocationManager$LocListenerTransport;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 606
    :catch_0
    move-exception v0

    .line 607
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v2, "SemLocationManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startBatching: RemoteException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    const/4 v2, -0x4

    return v2
.end method

.method public stopGeofenceMonitoring(ILandroid/app/PendingIntent;)I
    .locals 4
    .param p1, "geofenceId"    # I
    .param p2, "intent"    # Landroid/app/PendingIntent;

    .prologue
    .line 489
    iget-object v1, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    if-nez v1, :cond_0

    .line 490
    const-string/jumbo v1, "SemLocationManager"

    const-string/jumbo v2, "SLocationService is not supported"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    const/4 v1, -0x1

    return v1

    .line 493
    :cond_0
    if-nez p2, :cond_1

    .line 494
    const-string/jumbo v1, "SemLocationManager"

    const-string/jumbo v2, "intent is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    const/4 v1, -0x2

    return v1

    .line 498
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/location/ISLocationManager;->stopGeofence(ILandroid/app/PendingIntent;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 499
    :catch_0
    move-exception v0

    .line 500
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v1, "SemLocationManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "stopGeofenceMonitoring: RemoteException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    const/4 v1, -0x4

    return v1
.end method

.method public stopLearning(I)I
    .locals 4
    .param p1, "geofenceId"    # I

    .prologue
    .line 566
    iget-object v1, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    if-nez v1, :cond_0

    .line 567
    const-string/jumbo v1, "SemLocationManager"

    const-string/jumbo v2, "SLocationService is not supported"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    const/4 v1, -0x1

    return v1

    .line 571
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    invoke-interface {v1, p1}, Lcom/samsung/android/location/ISLocationManager;->stopLearning(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 572
    :catch_0
    move-exception v0

    .line 573
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v1, "SemLocationManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "stopLearning: RemoteException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    const/4 v1, -0x4

    return v1
.end method

.method public stopLocationBatching(ILcom/samsung/android/location/SemLocationListener;)I
    .locals 5
    .param p1, "requestId"    # I
    .param p2, "listener"    # Lcom/samsung/android/location/SemLocationListener;

    .prologue
    .line 620
    iget-object v2, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    if-nez v2, :cond_0

    .line 621
    const-string/jumbo v2, "SemLocationManager"

    const-string/jumbo v3, "SLocationService is not supported"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    const/4 v2, -0x1

    return v2

    .line 624
    :cond_0
    if-eqz p2, :cond_1

    if-gtz p1, :cond_2

    .line 625
    :cond_1
    const-string/jumbo v2, "SemLocationManager"

    const-string/jumbo v3, "parameters are not vaild"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    const/4 v2, -0x2

    return v2

    .line 629
    :cond_2
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/location/SemLocationManager;->mLocListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/location/SemLocationManager$LocListenerTransport;

    .line 630
    .local v1, "transport":Lcom/samsung/android/location/SemLocationManager$LocListenerTransport;
    if-nez v1, :cond_3

    .line 631
    const-string/jumbo v2, "SemLocationManager"

    const-string/jumbo v3, "Already stopped geofence"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    const/4 v2, -0x3

    return v2

    .line 635
    :cond_3
    iget-object v2, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    invoke-interface {v2, p1}, Lcom/samsung/android/location/ISLocationManager;->stopLocationBatching(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 638
    .end local v1    # "transport":Lcom/samsung/android/location/SemLocationManager$LocListenerTransport;
    :catch_0
    move-exception v0

    .line 639
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v2, "SemLocationManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "stopBatching: RemoteException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
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

    .prologue
    .line 387
    .local p1, "geofenceIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v3, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    if-nez v3, :cond_0

    .line 388
    const-string/jumbo v3, "SemLocationManager"

    const-string/jumbo v4, "SLocationService is not supported"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    const/4 v3, -0x1

    return v3

    .line 391
    :cond_0
    if-nez p1, :cond_1

    .line 392
    const-string/jumbo v3, "SemLocationManager"

    const-string/jumbo v4, "geofenceIdList is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    const/4 v3, -0x2

    return v3

    .line 395
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    new-array v2, v3, [I

    .line 396
    .local v2, "list":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 397
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v2, v1

    .line 396
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 400
    :cond_2
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    invoke-interface {v3, v2}, Lcom/samsung/android/location/ISLocationManager;->syncGeofence([I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    .line 401
    :catch_0
    move-exception v0

    .line 402
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v3, "SemLocationManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "syncGeofence: RemoteException "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    const/4 v3, -0x4

    return v3
.end method

.method public updateBatchingOptions(II)I
    .locals 4
    .param p1, "requestId"    # I
    .param p2, "period"    # I

    .prologue
    .line 671
    iget-object v1, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    if-nez v1, :cond_0

    .line 672
    const-string/jumbo v1, "SemLocationManager"

    const-string/jumbo v2, "SLocationService is not supported"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    const/4 v1, -0x1

    return v1

    .line 675
    :cond_0
    if-lez p1, :cond_1

    if-gtz p2, :cond_2

    .line 676
    :cond_1
    const-string/jumbo v1, "SemLocationManager"

    const-string/jumbo v2, "parameters are not vaild"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    const/4 v1, -0x2

    return v1

    .line 680
    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/location/SemLocationManager;->mService:Lcom/samsung/android/location/ISLocationManager;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/location/ISLocationManager;->updateBatchingOptions(II)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 681
    :catch_0
    move-exception v0

    .line 682
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v1, "SemLocationManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateBatchingOptions: RemoteException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    const/4 v1, -0x4

    return v1
.end method
