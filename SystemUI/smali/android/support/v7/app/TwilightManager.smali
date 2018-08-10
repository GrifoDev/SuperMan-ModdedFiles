.class Landroid/support/v7/app/TwilightManager;
.super Ljava/lang/Object;
.source "TwilightManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/app/TwilightManager$TwilightState;
    }
.end annotation


# static fields
.field private static sInstance:Landroid/support/v7/app/TwilightManager;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mLocationManager:Landroid/location/LocationManager;

.field private final mTwilightState:Landroid/support/v7/app/TwilightManager$TwilightState;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/location/LocationManager;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/location/LocationManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/support/v7/app/TwilightManager$TwilightState;

    invoke-direct {v0}, Landroid/support/v7/app/TwilightManager$TwilightState;-><init>()V

    iput-object v0, p0, Landroid/support/v7/app/TwilightManager;->mTwilightState:Landroid/support/v7/app/TwilightManager$TwilightState;

    iput-object p1, p0, Landroid/support/v7/app/TwilightManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/support/v7/app/TwilightManager;->mLocationManager:Landroid/location/LocationManager;

    return-void
.end method

.method static getInstance(Landroid/content/Context;)Landroid/support/v7/app/TwilightManager;
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Landroid/support/v7/app/TwilightManager;->sInstance:Landroid/support/v7/app/TwilightManager;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    new-instance v1, Landroid/support/v7/app/TwilightManager;

    const-string/jumbo v0, "location"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    invoke-direct {v1, p0, v0}, Landroid/support/v7/app/TwilightManager;-><init>(Landroid/content/Context;Landroid/location/LocationManager;)V

    sput-object v1, Landroid/support/v7/app/TwilightManager;->sInstance:Landroid/support/v7/app/TwilightManager;

    :cond_0
    sget-object v0, Landroid/support/v7/app/TwilightManager;->sInstance:Landroid/support/v7/app/TwilightManager;

    return-object v0
.end method

.method private getLastKnownLocation()Landroid/location/Location;
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v3, p0, Landroid/support/v7/app/TwilightManager;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {v3, v4}, Landroid/support/v4/content/PermissionChecker;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v3, "network"

    invoke-direct {p0, v3}, Landroid/support/v7/app/TwilightManager;->getLastKnownLocationForProvider(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    :cond_0
    iget-object v3, p0, Landroid/support/v7/app/TwilightManager;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v3, v4}, Landroid/support/v4/content/PermissionChecker;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v3, "gps"

    invoke-direct {p0, v3}, Landroid/support/v7/app/TwilightManager;->getLastKnownLocationForProvider(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    :cond_1
    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    invoke-virtual {v1}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-lez v3, :cond_2

    :goto_0
    return-object v1

    :cond_2
    move-object v1, v0

    goto :goto_0

    :cond_3
    if-eqz v1, :cond_4

    :goto_1
    return-object v1

    :cond_4
    move-object v1, v0

    goto :goto_1
.end method

.method private getLastKnownLocationForProvider(Ljava/lang/String;)Landroid/location/Location;
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Landroid/support/v7/app/TwilightManager;->mLocationManager:Landroid/location/LocationManager;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/support/v7/app/TwilightManager;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v1, p1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/app/TwilightManager;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v1, p1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "TwilightManager"

    const-string/jumbo v2, "Failed to get last known location"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-object v3
.end method

.method private isStateValid()Z
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/support/v7/app/TwilightManager;->mTwilightState:Landroid/support/v7/app/TwilightManager$TwilightState;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/app/TwilightManager;->mTwilightState:Landroid/support/v7/app/TwilightManager$TwilightState;

    iget-wide v2, v1, Landroid/support/v7/app/TwilightManager$TwilightState;->nextUpdate:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method static setInstance(Landroid/support/v7/app/TwilightManager;)V
    .locals 0
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    sput-object p0, Landroid/support/v7/app/TwilightManager;->sInstance:Landroid/support/v7/app/TwilightManager;

    return-void
.end method

.method private updateState(Landroid/location/Location;)V
    .locals 24
    .param p1    # Landroid/location/Location;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/support/v7/app/TwilightManager;->mTwilightState:Landroid/support/v7/app/TwilightManager$TwilightState;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-static {}, Landroid/support/v7/app/TwilightCalculator;->getInstance()Landroid/support/v7/app/TwilightCalculator;

    move-result-object v3

    const-wide/32 v4, 0x5265c00

    sub-long v4, v12, v4

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v8

    invoke-virtual/range {v3 .. v9}, Landroid/support/v7/app/TwilightCalculator;->calculateTwilight(JDD)V

    iget-wide v0, v3, Landroid/support/v7/app/TwilightCalculator;->sunset:J

    move-wide/from16 v22, v0

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v8

    move-wide v4, v12

    invoke-virtual/range {v3 .. v9}, Landroid/support/v7/app/TwilightCalculator;->calculateTwilight(JDD)V

    iget v4, v3, Landroid/support/v7/app/TwilightCalculator;->state:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    const/4 v2, 0x1

    :goto_0
    iget-wide v0, v3, Landroid/support/v7/app/TwilightCalculator;->sunrise:J

    move-wide/from16 v16, v0

    iget-wide v0, v3, Landroid/support/v7/app/TwilightCalculator;->sunset:J

    move-wide/from16 v18, v0

    const-wide/32 v4, 0x5265c00

    add-long/2addr v4, v12

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v8

    invoke-virtual/range {v3 .. v9}, Landroid/support/v7/app/TwilightCalculator;->calculateTwilight(JDD)V

    iget-wide v0, v3, Landroid/support/v7/app/TwilightCalculator;->sunrise:J

    move-wide/from16 v20, v0

    const-wide/16 v10, 0x0

    const-wide/16 v4, -0x1

    cmp-long v4, v16, v4

    if-eqz v4, :cond_0

    const-wide/16 v4, -0x1

    cmp-long v4, v18, v4

    if-nez v4, :cond_2

    :cond_0
    const-wide/32 v4, 0x2932e00

    add-long v10, v12, v4

    :goto_1
    iput-boolean v2, v14, Landroid/support/v7/app/TwilightManager$TwilightState;->isNight:Z

    move-wide/from16 v0, v22

    iput-wide v0, v14, Landroid/support/v7/app/TwilightManager$TwilightState;->yesterdaySunset:J

    move-wide/from16 v0, v16

    iput-wide v0, v14, Landroid/support/v7/app/TwilightManager$TwilightState;->todaySunrise:J

    move-wide/from16 v0, v18

    iput-wide v0, v14, Landroid/support/v7/app/TwilightManager$TwilightState;->todaySunset:J

    move-wide/from16 v0, v20

    iput-wide v0, v14, Landroid/support/v7/app/TwilightManager$TwilightState;->tomorrowSunrise:J

    iput-wide v10, v14, Landroid/support/v7/app/TwilightManager$TwilightState;->nextUpdate:J

    return-void

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    cmp-long v4, v12, v18

    if-lez v4, :cond_3

    const-wide/16 v4, 0x0

    add-long v10, v4, v20

    :goto_2
    const-wide/32 v4, 0xea60

    add-long/2addr v10, v4

    goto :goto_1

    :cond_3
    cmp-long v4, v12, v16

    if-lez v4, :cond_4

    const-wide/16 v4, 0x0

    add-long v10, v4, v18

    goto :goto_2

    :cond_4
    const-wide/16 v4, 0x0

    add-long v10, v4, v16

    goto :goto_2
.end method


# virtual methods
.method isNight()Z
    .locals 7

    const/4 v4, 0x1

    iget-object v3, p0, Landroid/support/v7/app/TwilightManager;->mTwilightState:Landroid/support/v7/app/TwilightManager$TwilightState;

    invoke-direct {p0}, Landroid/support/v7/app/TwilightManager;->isStateValid()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-boolean v4, v3, Landroid/support/v7/app/TwilightManager$TwilightState;->isNight:Z

    return v4

    :cond_0
    invoke-direct {p0}, Landroid/support/v7/app/TwilightManager;->getLastKnownLocation()Landroid/location/Location;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-direct {p0, v2}, Landroid/support/v7/app/TwilightManager;->updateState(Landroid/location/Location;)V

    iget-boolean v4, v3, Landroid/support/v7/app/TwilightManager$TwilightState;->isNight:Z

    return v4

    :cond_1
    const-string/jumbo v5, "TwilightManager"

    const-string/jumbo v6, "Could not get last known location. This is probably because the app does not have any location permissions. Falling back to hardcoded sunrise/sunset values."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v5, 0xb

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v5, 0x6

    if-lt v1, v5, :cond_2

    const/16 v5, 0x16

    if-lt v1, v5, :cond_3

    :cond_2
    :goto_0
    return v4

    :cond_3
    const/4 v4, 0x0

    goto :goto_0
.end method
