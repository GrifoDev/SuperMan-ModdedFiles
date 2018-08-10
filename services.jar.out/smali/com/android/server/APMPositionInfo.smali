.class public Lcom/android/server/APMPositionInfo;
.super Ljava/lang/Object;
.source "APMPositionInfo.java"

# interfaces
.implements Landroid/location/LocationListener;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "APMPositionInfo_APM"

.field private static final MIN_DISTANCE_CHANGE_FOR_UPDATES:J = 0xaL

.field private static final MIN_TIME_BW_UPDATES:J = 0xea60L

.field private static final TIMEOUT:I = 0x9c4

.field private static instance:Lcom/android/server/APMPositionInfo;


# instance fields
.field private locationManager:Landroid/location/LocationManager;

.field private final mContext:Landroid/content/Context;

.field private mLatitude:D

.field private mLocation:Landroid/location/Location;

.field private mLongitude:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/APMPositionInfo;->instance:Lcom/android/server/APMPositionInfo;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/APMPositionInfo;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static getLocationManager(Landroid/content/Context;)Lcom/android/server/APMPositionInfo;
    .locals 1

    sget-object v0, Lcom/android/server/APMPositionInfo;->instance:Lcom/android/server/APMPositionInfo;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/APMPositionInfo;

    invoke-direct {v0, p0}, Lcom/android/server/APMPositionInfo;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/APMPositionInfo;->instance:Lcom/android/server/APMPositionInfo;

    :cond_0
    sget-object v0, Lcom/android/server/APMPositionInfo;->instance:Lcom/android/server/APMPositionInfo;

    return-object v0
.end method


# virtual methods
.method public callLocationInfo(Landroid/content/Context;)Z
    .locals 20

    const/16 v18, 0x0

    const/16 v16, 0x0

    const/4 v10, 0x0

    const-wide/16 v2, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/server/APMPositionInfo;->mLongitude:D

    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/server/APMPositionInfo;->mLongitude:D

    const-string/jumbo v2, "location"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/LocationManager;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/APMPositionInfo;->locationManager:Landroid/location/LocationManager;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/APMPositionInfo;->locationManager:Landroid/location/LocationManager;

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/APMPositionInfo;->locationManager:Landroid/location/LocationManager;

    const-string/jumbo v3, "gps"

    invoke-virtual {v2, v3}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/APMPositionInfo;->locationManager:Landroid/location/LocationManager;

    const-string/jumbo v3, "network"

    invoke-virtual {v2, v3}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/APMPositionInfo;->locationManager:Landroid/location/LocationManager;

    const-string/jumbo v3, "passive"

    invoke-virtual {v2, v3}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v15

    const-string/jumbo v2, "APMPositionInfo_APM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isNetworkEnabled : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " isGPSEnabled : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " isPassiveEnabled : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v14, :cond_1

    xor-int/lit8 v2, v13, 0x1

    if-eqz v2, :cond_1

    xor-int/lit8 v2, v15, 0x1

    if-eqz v2, :cond_1

    const-string/jumbo v2, "APMPositionInfo_APM"

    const-string/jumbo v3, "Can\'t get Location information"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v3, :cond_0

    invoke-virtual/range {v18 .. v18}, Landroid/os/HandlerThread;->quit()Z

    const/16 v18, 0x0

    :cond_0
    return v2

    :cond_1
    if-eqz v15, :cond_3

    :try_start_1
    monitor-enter p0
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    new-instance v19, Landroid/os/HandlerThread;

    const-string/jumbo v2, "APMTestLocationUpdates"

    move-object/from16 v0, v19

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual/range {v19 .. v19}, Landroid/os/HandlerThread;->start()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/APMPositionInfo;->locationManager:Landroid/location/LocationManager;

    const-string/jumbo v3, "passive"

    const/high16 v6, 0x41200000    # 10.0f

    invoke-virtual/range {v19 .. v19}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v8

    const-wide/32 v4, 0xea60

    move-object/from16 v7, p0

    invoke-virtual/range {v2 .. v8}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    const-wide/16 v2, 0x9c4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/APMPositionInfo;->wait(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_9

    :try_start_4
    monitor-exit p0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/APMPositionInfo;->locationManager:Landroid/location/LocationManager;

    const-string/jumbo v3, "passive"

    invoke-virtual {v2, v3}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/APMPositionInfo;->mLocation:Landroid/location/Location;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/APMPositionInfo;->mLocation:Landroid/location/Location;

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/APMPositionInfo;->mLocation:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/server/APMPositionInfo;->mLatitude:D

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/APMPositionInfo;->mLocation:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/server/APMPositionInfo;->mLongitude:D

    const-string/jumbo v2, "APMPositionInfo_APM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "passiveenabled.... mLatitude = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/server/APMPositionInfo;->mLatitude:D

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " mLongitude = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/server/APMPositionInfo;->mLongitude:D

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_9
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    :cond_2
    move-object/from16 v18, v19

    :cond_3
    :goto_0
    if-eqz v14, :cond_5

    :try_start_5
    monitor-enter p0
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    new-instance v17, Landroid/os/HandlerThread;

    const-string/jumbo v2, "APMTestLocationUpdates"

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    invoke-virtual/range {v17 .. v17}, Landroid/os/HandlerThread;->start()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/APMPositionInfo;->locationManager:Landroid/location/LocationManager;

    const-string/jumbo v3, "network"

    const/high16 v6, 0x41200000    # 10.0f

    invoke-virtual/range {v17 .. v17}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v8

    const-wide/32 v4, 0xea60

    move-object/from16 v7, p0

    invoke-virtual/range {v2 .. v8}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    const-wide/16 v2, 0x9c4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/APMPositionInfo;->wait(J)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_8

    :try_start_8
    monitor-exit p0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/APMPositionInfo;->locationManager:Landroid/location/LocationManager;

    const-string/jumbo v3, "network"

    invoke-virtual {v2, v3}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/APMPositionInfo;->mLocation:Landroid/location/Location;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/APMPositionInfo;->mLocation:Landroid/location/Location;

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/APMPositionInfo;->mLocation:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/server/APMPositionInfo;->mLatitude:D

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/APMPositionInfo;->mLocation:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/server/APMPositionInfo;->mLongitude:D

    const-string/jumbo v2, "APMPositionInfo_APM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "networkenabled.... mLatitude = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/server/APMPositionInfo;->mLatitude:D

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " mLongitude = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/server/APMPositionInfo;->mLongitude:D

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_8
    .catch Ljava/lang/SecurityException; {:try_start_8 .. :try_end_8} :catch_5
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    :cond_4
    move-object/from16 v16, v17

    :cond_5
    :goto_1
    if-eqz v13, :cond_7

    :try_start_9
    monitor-enter p0
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    new-instance v11, Landroid/os/HandlerThread;

    const-string/jumbo v2, "APMTestLocationUpdates"

    invoke-direct {v11, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :try_start_b
    invoke-virtual {v11}, Landroid/os/HandlerThread;->start()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/APMPositionInfo;->locationManager:Landroid/location/LocationManager;

    const-string/jumbo v3, "gps"

    const/high16 v6, 0x41200000    # 10.0f

    invoke-virtual {v11}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v8

    const-wide/32 v4, 0xea60

    move-object/from16 v7, p0

    invoke-virtual/range {v2 .. v8}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    const-wide/16 v2, 0x9c4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/APMPositionInfo;->wait(J)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    :try_start_c
    monitor-exit p0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/APMPositionInfo;->locationManager:Landroid/location/LocationManager;

    const-string/jumbo v3, "gps"

    invoke-virtual {v2, v3}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/APMPositionInfo;->mLocation:Landroid/location/Location;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/APMPositionInfo;->mLocation:Landroid/location/Location;

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/APMPositionInfo;->mLocation:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/server/APMPositionInfo;->mLatitude:D

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/APMPositionInfo;->mLocation:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/server/APMPositionInfo;->mLongitude:D

    const-string/jumbo v2, "APMPositionInfo_APM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "gpsenabled.... mLatitude = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/server/APMPositionInfo;->mLatitude:D

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " mLongitude = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/server/APMPositionInfo;->mLongitude:D

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_c} :catch_7
    .catch Ljava/lang/SecurityException; {:try_start_c .. :try_end_c} :catch_6
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    :cond_6
    move-object v10, v11

    :cond_7
    :goto_2
    if-eqz v18, :cond_8

    invoke-virtual/range {v18 .. v18}, Landroid/os/HandlerThread;->quit()Z

    const/16 v18, 0x0

    :cond_8
    if-eqz v18, :cond_9

    invoke-virtual/range {v18 .. v18}, Landroid/os/HandlerThread;->quit()Z

    const/16 v18, 0x0

    :cond_9
    if-eqz v10, :cond_a

    invoke-virtual {v10}, Landroid/os/HandlerThread;->quit()Z

    :goto_3
    const/4 v10, 0x0

    :cond_a
    const/4 v2, 0x1

    return v2

    :catchall_0
    move-exception v2

    :goto_4
    :try_start_d
    monitor-exit p0

    throw v2
    :try_end_d
    .catch Ljava/lang/InterruptedException; {:try_start_d .. :try_end_d} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    :catch_0
    move-exception v12

    :goto_5
    if-eqz v18, :cond_b

    :try_start_e
    invoke-virtual/range {v18 .. v18}, Landroid/os/HandlerThread;->quit()Z

    const/16 v18, 0x0

    :cond_b
    invoke-virtual {v12}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_e
    .catch Ljava/lang/SecurityException; {:try_start_e .. :try_end_e} :catch_1
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    goto/16 :goto_0

    :catch_1
    move-exception v9

    :goto_6
    :try_start_f
    invoke-virtual {v9}, Ljava/lang/SecurityException;->printStackTrace()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    if-eqz v18, :cond_c

    invoke-virtual/range {v18 .. v18}, Landroid/os/HandlerThread;->quit()Z

    const/16 v18, 0x0

    :cond_c
    if-eqz v18, :cond_d

    invoke-virtual/range {v18 .. v18}, Landroid/os/HandlerThread;->quit()Z

    const/16 v18, 0x0

    :cond_d
    if-eqz v10, :cond_a

    invoke-virtual {v10}, Landroid/os/HandlerThread;->quit()Z

    goto :goto_3

    :catchall_1
    move-exception v2

    :goto_7
    :try_start_10
    monitor-exit p0

    throw v2
    :try_end_10
    .catch Ljava/lang/InterruptedException; {:try_start_10 .. :try_end_10} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_10 .. :try_end_10} :catch_1
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    :catch_2
    move-exception v12

    :goto_8
    if-eqz v16, :cond_e

    :try_start_11
    invoke-virtual/range {v16 .. v16}, Landroid/os/HandlerThread;->quit()Z

    const/16 v16, 0x0

    :cond_e
    invoke-virtual {v12}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_11
    .catch Ljava/lang/SecurityException; {:try_start_11 .. :try_end_11} :catch_1
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    goto/16 :goto_1

    :catchall_2
    move-exception v2

    :goto_9
    if-eqz v18, :cond_f

    invoke-virtual/range {v18 .. v18}, Landroid/os/HandlerThread;->quit()Z

    const/16 v18, 0x0

    :cond_f
    if-eqz v18, :cond_10

    invoke-virtual/range {v18 .. v18}, Landroid/os/HandlerThread;->quit()Z

    const/16 v18, 0x0

    :cond_10
    if-eqz v10, :cond_11

    invoke-virtual {v10}, Landroid/os/HandlerThread;->quit()Z

    const/4 v10, 0x0

    :cond_11
    throw v2

    :catchall_3
    move-exception v2

    :goto_a
    :try_start_12
    monitor-exit p0

    throw v2
    :try_end_12
    .catch Ljava/lang/InterruptedException; {:try_start_12 .. :try_end_12} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_12 .. :try_end_12} :catch_1
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    :catch_3
    move-exception v12

    :goto_b
    if-eqz v10, :cond_12

    :try_start_13
    invoke-virtual {v10}, Landroid/os/HandlerThread;->quit()Z

    const/4 v10, 0x0

    :cond_12
    invoke-virtual {v12}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_13
    .catch Ljava/lang/SecurityException; {:try_start_13 .. :try_end_13} :catch_1
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    goto :goto_2

    :catchall_4
    move-exception v2

    move-object/from16 v18, v19

    goto :goto_9

    :catchall_5
    move-exception v2

    move-object/from16 v16, v17

    goto :goto_9

    :catchall_6
    move-exception v2

    move-object v10, v11

    goto :goto_9

    :catch_4
    move-exception v9

    move-object/from16 v18, v19

    goto :goto_6

    :catch_5
    move-exception v9

    move-object/from16 v16, v17

    goto :goto_6

    :catch_6
    move-exception v9

    move-object v10, v11

    goto :goto_6

    :catch_7
    move-exception v12

    move-object v10, v11

    goto :goto_b

    :catchall_7
    move-exception v2

    move-object v10, v11

    goto :goto_a

    :catch_8
    move-exception v12

    move-object/from16 v16, v17

    goto :goto_8

    :catchall_8
    move-exception v2

    move-object/from16 v16, v17

    goto :goto_7

    :catch_9
    move-exception v12

    move-object/from16 v18, v19

    goto :goto_5

    :catchall_9
    move-exception v2

    move-object/from16 v18, v19

    goto/16 :goto_4
.end method

.method public getLatitude()D
    .locals 2

    iget-object v0, p0, Lcom/android/server/APMPositionInfo;->mLocation:Landroid/location/Location;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/APMPositionInfo;->mLocation:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/APMPositionInfo;->mLatitude:D

    :cond_0
    iget-wide v0, p0, Lcom/android/server/APMPositionInfo;->mLatitude:D

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    iget-object v0, p0, Lcom/android/server/APMPositionInfo;->mLocation:Landroid/location/Location;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/APMPositionInfo;->mLocation:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/APMPositionInfo;->mLongitude:D

    :cond_0
    iget-wide v0, p0, Lcom/android/server/APMPositionInfo;->mLongitude:D

    return-wide v0
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 0

    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public stopUsingLocationService()V
    .locals 2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/APMPositionInfo;->locationManager:Landroid/location/LocationManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/APMPositionInfo;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {v1, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_0
.end method
