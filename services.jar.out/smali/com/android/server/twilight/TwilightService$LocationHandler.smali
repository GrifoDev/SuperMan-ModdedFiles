.class final Lcom/android/server/twilight/TwilightService$LocationHandler;
.super Landroid/os/Handler;
.source "TwilightService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/twilight/TwilightService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LocationHandler"
.end annotation


# static fields
.field private static final FACTOR_GMT_OFFSET_LONGITUDE:D = 0.004166666666666667

.field private static final LOCATION_UPDATE_DISTANCE_METER:F = 20000.0f

.field private static final LOCATION_UPDATE_ENABLE_INTERVAL_MAX:J = 0xdbba0L

.field private static final LOCATION_UPDATE_ENABLE_INTERVAL_MIN:J = 0x1388L

.field private static final LOCATION_UPDATE_MS:J = 0x5265c00L

.field private static final MIN_LOCATION_UPDATE_MS:J = 0x1b7740L

.field private static final MSG_DISABLE_LOCATION_UPDATES:I = 0x5

.field private static final MSG_DO_TWILIGHT_UPDATE:I = 0x4

.field private static final MSG_ENABLE_LOCATION_UPDATES:I = 0x1

.field private static final MSG_GET_NEW_LOCATION_UPDATE:I = 0x2

.field private static final MSG_PROCESS_NEW_LOCATION:I = 0x3


# instance fields
.field private mDidFirstInit:Z

.field private mLastNetworkRegisterTime:J

.field private mLastUpdateInterval:J

.field private mLocation:Landroid/location/Location;

.field private mNetworkListenerEnabled:Z

.field private mPassiveListenerEnabled:Z

.field private final mTwilightCalculator:Lcom/android/server/TwilightCalculator;

.field final synthetic this$0:Lcom/android/server/twilight/TwilightService;


# direct methods
.method private constructor <init>(Lcom/android/server/twilight/TwilightService;)V
    .locals 2

    iput-object p1, p0, Lcom/android/server/twilight/TwilightService$LocationHandler;->this$0:Lcom/android/server/twilight/TwilightService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const-wide/32 v0, -0x1b7740

    iput-wide v0, p0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mLastNetworkRegisterTime:J

    new-instance v0, Lcom/android/server/TwilightCalculator;

    invoke-direct {v0}, Lcom/android/server/TwilightCalculator;-><init>()V

    iput-object v0, p0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mTwilightCalculator:Lcom/android/server/TwilightCalculator;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/twilight/TwilightService;Lcom/android/server/twilight/TwilightService$LocationHandler;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/twilight/TwilightService$LocationHandler;-><init>(Lcom/android/server/twilight/TwilightService;)V

    return-void
.end method

.method private retrieveLocation()V
    .locals 12

    const/4 v7, 0x0

    const/4 v4, 0x0

    iget-object v6, p0, Lcom/android/server/twilight/TwilightService$LocationHandler;->this$0:Lcom/android/server/twilight/TwilightService;

    iget-object v6, v6, Lcom/android/server/twilight/TwilightService;->mLocationManager:Landroid/location/LocationManager;

    new-instance v8, Landroid/location/Criteria;

    invoke-direct {v8}, Landroid/location/Criteria;-><init>()V

    const/4 v9, 0x1

    invoke-virtual {v6, v8, v9}, Landroid/location/LocationManager;->getProviders(Landroid/location/Criteria;Z)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/server/twilight/TwilightService$LocationHandler;->this$0:Lcom/android/server/twilight/TwilightService;

    iget-object v8, v6, Lcom/android/server/twilight/TwilightService;->mLocationManager:Landroid/location/LocationManager;

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v8, v6}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    if-eqz v4, :cond_1

    if-eqz v1, :cond_0

    invoke-virtual {v4}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v8

    invoke-virtual {v1}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v10

    cmp-long v6, v8, v10

    if-gez v6, :cond_0

    :cond_1
    move-object v4, v1

    goto :goto_0

    :cond_2
    if-nez v4, :cond_3

    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v0, v8, v9}, Landroid/text/format/Time;->set(J)V

    iget-wide v8, v0, Landroid/text/format/Time;->gmtoff:J

    iget v6, v0, Landroid/text/format/Time;->isDst:I

    if-lez v6, :cond_4

    const/16 v6, 0xe10

    :goto_1
    int-to-long v6, v6

    sub-long v6, v8, v6

    long-to-double v6, v6

    const-wide v8, 0x3f71111111111111L    # 0.004166666666666667

    mul-double v2, v8, v6

    new-instance v4, Landroid/location/Location;

    const-string/jumbo v6, "fake"

    invoke-direct {v4, v6}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2, v3}, Landroid/location/Location;->setLongitude(D)V

    const-wide/16 v6, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/location/Location;->setLatitude(D)V

    const v6, 0x48cb9d00    # 417000.0f

    invoke-virtual {v4, v6}, Landroid/location/Location;->setAccuracy(F)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Landroid/location/Location;->setTime(J)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Landroid/location/Location;->setElapsedRealtimeNanos(J)V

    :cond_3
    invoke-direct {p0, v4}, Lcom/android/server/twilight/TwilightService$LocationHandler;->setLocation(Landroid/location/Location;)V

    return-void

    :cond_4
    move v6, v7

    goto :goto_1
.end method

.method private setLocation(Landroid/location/Location;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mLocation:Landroid/location/Location;

    invoke-direct {p0}, Lcom/android/server/twilight/TwilightService$LocationHandler;->updateTwilightState()V

    return-void
.end method

.method private updateTwilightState()V
    .locals 26

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mLocation:Landroid/location/Location;

    if-nez v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/twilight/TwilightService$LocationHandler;->this$0:Lcom/android/server/twilight/TwilightService;

    const/4 v6, 0x0

    invoke-static {v3, v6}, Lcom/android/server/twilight/TwilightService;->-wrap4(Lcom/android/server/twilight/TwilightService;Lcom/android/server/twilight/TwilightState;)V

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mTwilightCalculator:Lcom/android/server/TwilightCalculator;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mLocation:Landroid/location/Location;

    invoke-virtual {v6}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mLocation:Landroid/location/Location;

    invoke-virtual {v8}, Landroid/location/Location;->getLongitude()D

    move-result-wide v8

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/TwilightCalculator;->calculateTwilight(JDD)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mTwilightCalculator:Lcom/android/server/TwilightCalculator;

    iget v3, v3, Lcom/android/server/TwilightCalculator;->mState:I

    const/4 v6, 0x1

    if-ne v3, v6, :cond_4

    const/4 v14, 0x1

    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mTwilightCalculator:Lcom/android/server/TwilightCalculator;

    iget-wide v0, v3, Lcom/android/server/TwilightCalculator;->mSunrise:J

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mTwilightCalculator:Lcom/android/server/TwilightCalculator;

    iget-wide v0, v3, Lcom/android/server/TwilightCalculator;->mSunset:J

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mTwilightCalculator:Lcom/android/server/TwilightCalculator;

    const-wide/32 v8, 0x5265c00

    add-long/2addr v8, v4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mLocation:Landroid/location/Location;

    invoke-virtual {v3}, Landroid/location/Location;->getLatitude()D

    move-result-wide v10

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mLocation:Landroid/location/Location;

    invoke-virtual {v3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v12

    invoke-virtual/range {v7 .. v13}, Lcom/android/server/TwilightCalculator;->calculateTwilight(JDD)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mTwilightCalculator:Lcom/android/server/TwilightCalculator;

    iget-wide v0, v3, Lcom/android/server/TwilightCalculator;->mSunrise:J

    move-wide/from16 v24, v0

    const/4 v2, 0x0

    if-eqz v14, :cond_2

    const-wide/16 v6, -0x1

    cmp-long v3, v20, v6

    if-eqz v3, :cond_1

    const-wide/16 v6, -0x1

    cmp-long v3, v22, v6

    if-nez v3, :cond_5

    :cond_1
    const/high16 v2, 0x3f800000    # 1.0f

    :cond_2
    :goto_1
    new-instance v18, Lcom/android/server/twilight/TwilightState;

    move-object/from16 v0, v18

    invoke-direct {v0, v14, v2}, Lcom/android/server/twilight/TwilightState;-><init>(ZF)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/twilight/TwilightService$LocationHandler;->this$0:Lcom/android/server/twilight/TwilightService;

    move-object/from16 v0, v18

    invoke-static {v3, v0}, Lcom/android/server/twilight/TwilightService;->-wrap4(Lcom/android/server/twilight/TwilightService;Lcom/android/server/twilight/TwilightState;)V

    const-wide/16 v6, -0x1

    cmp-long v3, v20, v6

    if-eqz v3, :cond_3

    const-wide/16 v6, -0x1

    cmp-long v3, v22, v6

    if-nez v3, :cond_7

    :cond_3
    const-wide/32 v6, 0x2932e00

    add-long v16, v4, v6

    :goto_2
    new-instance v19, Landroid/content/Intent;

    const-string/jumbo v3, "com.android.server.action.UPDATE_TWILIGHT_STATE"

    move-object/from16 v0, v19

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/twilight/TwilightService$LocationHandler;->this$0:Lcom/android/server/twilight/TwilightService;

    invoke-virtual {v3}, Lcom/android/server/twilight/TwilightService;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, v19

    invoke-static {v3, v6, v0, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/twilight/TwilightService$LocationHandler;->this$0:Lcom/android/server/twilight/TwilightService;

    iget-object v3, v3, Lcom/android/server/twilight/TwilightService;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v3, v15}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/twilight/TwilightService$LocationHandler;->this$0:Lcom/android/server/twilight/TwilightService;

    iget-object v3, v3, Lcom/android/server/twilight/TwilightService;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v6, 0x1

    move-wide/from16 v0, v16

    invoke-virtual {v3, v6, v0, v1, v15}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    return-void

    :cond_4
    const/4 v14, 0x0

    goto/16 :goto_0

    :cond_5
    cmp-long v3, v4, v22

    if-lez v3, :cond_6

    const/high16 v3, 0x3f800000    # 1.0f

    sub-long v6, v4, v22

    long-to-float v6, v6

    const v7, 0x4adbba00    # 7200000.0f

    div-float/2addr v6, v7

    invoke-static {v3, v6}, Ljava/lang/Math;->min(FF)F

    move-result v2

    goto :goto_1

    :cond_6
    const/4 v3, 0x0

    sub-long v6, v20, v4

    long-to-float v6, v6

    const v7, 0x4adbba00    # 7200000.0f

    div-float/2addr v6, v7

    const/high16 v7, 0x3f800000    # 1.0f

    sub-float v6, v7, v6

    invoke-static {v3, v6}, Ljava/lang/Math;->max(FF)F

    move-result v2

    goto :goto_1

    :cond_7
    const-wide/32 v16, 0xea60

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v3, v2, v3

    if-eqz v3, :cond_8

    const/4 v3, 0x0

    cmpl-float v3, v2, v3

    if-nez v3, :cond_b

    :cond_8
    cmp-long v3, v4, v22

    if-lez v3, :cond_9

    add-long v16, v16, v24

    goto :goto_2

    :cond_9
    cmp-long v3, v4, v20

    if-lez v3, :cond_a

    add-long v16, v16, v22

    goto :goto_2

    :cond_a
    add-long v16, v16, v20

    goto :goto_2

    :cond_b
    const-wide/32 v6, 0x83d60

    add-long v16, v16, v6

    goto :goto_2
.end method


# virtual methods
.method public disableLocationUpdates()V
    .locals 1

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/server/twilight/TwilightService$LocationHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public enableLocationUpdates()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/twilight/TwilightService$LocationHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 12

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/location/Location;

    iget-object v0, p0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mLocation:Landroid/location/Location;

    invoke-static {v0, v9}, Lcom/android/server/twilight/TwilightService;->-wrap0(Landroid/location/Location;Landroid/location/Location;)Z

    move-result v8

    iget-object v0, p0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mLocation:Landroid/location/Location;

    if-eqz v0, :cond_2

    invoke-virtual {v9}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    iget-object v1, p0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mLocation:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    const/4 v7, 0x1

    :goto_1
    if-nez v8, :cond_1

    if-eqz v7, :cond_0

    :cond_1
    invoke-direct {p0, v9}, Lcom/android/server/twilight/TwilightService$LocationHandler;->setLocation(Landroid/location/Location;)V

    goto :goto_0

    :cond_2
    const/4 v7, 0x1

    goto :goto_1

    :cond_3
    const/4 v7, 0x0

    goto :goto_1

    :pswitch_1
    iget-boolean v0, p0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mNetworkListenerEnabled:Z

    if-nez v0, :cond_4

    return-void

    :cond_4
    iget-wide v0, p0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mLastNetworkRegisterTime:J

    const-wide/32 v2, 0x1b7740

    add-long/2addr v0, v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mNetworkListenerEnabled:Z

    iget-object v0, p0, Lcom/android/server/twilight/TwilightService$LocationHandler;->this$0:Lcom/android/server/twilight/TwilightService;

    iget-object v0, v0, Lcom/android/server/twilight/TwilightService;->mLocationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/android/server/twilight/TwilightService$LocationHandler;->this$0:Lcom/android/server/twilight/TwilightService;

    invoke-static {v1}, Lcom/android/server/twilight/TwilightService;->-get1(Lcom/android/server/twilight/TwilightService;)Landroid/location/LocationListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    :pswitch_2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/twilight/TwilightService$LocationHandler;->this$0:Lcom/android/server/twilight/TwilightService;

    iget-object v0, v0, Lcom/android/server/twilight/TwilightService;->mLocationManager:Landroid/location/LocationManager;

    const-string/jumbo v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    :goto_2
    iget-boolean v0, p0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mNetworkListenerEnabled:Z

    if-nez v0, :cond_6

    if-eqz v10, :cond_6

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mNetworkListenerEnabled:Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mLastNetworkRegisterTime:J

    iget-object v0, p0, Lcom/android/server/twilight/TwilightService$LocationHandler;->this$0:Lcom/android/server/twilight/TwilightService;

    iget-object v0, v0, Lcom/android/server/twilight/TwilightService;->mLocationManager:Landroid/location/LocationManager;

    const-string/jumbo v1, "network"

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/server/twilight/TwilightService$LocationHandler;->this$0:Lcom/android/server/twilight/TwilightService;

    invoke-static {v2}, Lcom/android/server/twilight/TwilightService;->-get1(Lcom/android/server/twilight/TwilightService;)Landroid/location/LocationListener;

    move-result-object v5

    const-wide/32 v2, 0x5265c00

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    iget-boolean v0, p0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mDidFirstInit:Z

    if-nez v0, :cond_6

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mDidFirstInit:Z

    iget-object v0, p0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mLocation:Landroid/location/Location;

    if-nez v0, :cond_6

    invoke-direct {p0}, Lcom/android/server/twilight/TwilightService$LocationHandler;->retrieveLocation()V

    :cond_6
    :try_start_1
    iget-object v0, p0, Lcom/android/server/twilight/TwilightService$LocationHandler;->this$0:Lcom/android/server/twilight/TwilightService;

    iget-object v0, v0, Lcom/android/server/twilight/TwilightService;->mLocationManager:Landroid/location/LocationManager;

    const-string/jumbo v1, "passive"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v11

    :goto_3
    iget-boolean v0, p0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mPassiveListenerEnabled:Z

    if-nez v0, :cond_7

    if-eqz v11, :cond_7

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mPassiveListenerEnabled:Z

    iget-object v0, p0, Lcom/android/server/twilight/TwilightService$LocationHandler;->this$0:Lcom/android/server/twilight/TwilightService;

    iget-object v0, v0, Lcom/android/server/twilight/TwilightService;->mLocationManager:Landroid/location/LocationManager;

    const-string/jumbo v1, "passive"

    const-wide/16 v2, 0x0

    iget-object v4, p0, Lcom/android/server/twilight/TwilightService$LocationHandler;->this$0:Lcom/android/server/twilight/TwilightService;

    invoke-static {v4}, Lcom/android/server/twilight/TwilightService;->-get2(Lcom/android/server/twilight/TwilightService;)Landroid/location/LocationListener;

    move-result-object v5

    const v4, 0x469c4000    # 20000.0f

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    :cond_7
    iget-boolean v0, p0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mNetworkListenerEnabled:Z

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mPassiveListenerEnabled:Z

    :goto_4
    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mLastUpdateInterval:J

    long-to-double v0, v0

    const-wide/high16 v2, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v0, v2

    double-to-long v0, v0

    iput-wide v0, p0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mLastUpdateInterval:J

    iget-wide v0, p0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mLastUpdateInterval:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_a

    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mLastUpdateInterval:J

    :cond_8
    :goto_5
    iget-wide v0, p0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mLastUpdateInterval:J

    const/4 v2, 0x1

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/twilight/TwilightService$LocationHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :catch_0
    move-exception v6

    const/4 v10, 0x0

    goto/16 :goto_2

    :catch_1
    move-exception v6

    const/4 v11, 0x0

    goto :goto_3

    :cond_9
    const/4 v0, 0x0

    goto :goto_4

    :cond_a
    iget-wide v0, p0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mLastUpdateInterval:J

    const-wide/32 v2, 0xdbba0

    cmp-long v0, v0, v2

    if-lez v0, :cond_8

    const-wide/32 v0, 0xdbba0

    iput-wide v0, p0, Lcom/android/server/twilight/TwilightService$LocationHandler;->mLastUpdateInterval:J

    goto :goto_5

    :pswitch_3
    iget-object v0, p0, Lcom/android/server/twilight/TwilightService$LocationHandler;->this$0:Lcom/android/server/twilight/TwilightService;

    iget-object v0, v0, Lcom/android/server/twilight/TwilightService;->mLocationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/android/server/twilight/TwilightService$LocationHandler;->this$0:Lcom/android/server/twilight/TwilightService;

    invoke-static {v1}, Lcom/android/server/twilight/TwilightService;->-get2(Lcom/android/server/twilight/TwilightService;)Landroid/location/LocationListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/twilight/TwilightService$LocationHandler;->removeMessages(I)V

    goto/16 :goto_0

    :pswitch_4
    invoke-direct {p0}, Lcom/android/server/twilight/TwilightService$LocationHandler;->updateTwilightState()V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public processNewLocation(Landroid/location/Location;)V
    .locals 2

    const/4 v1, 0x3

    invoke-virtual {p0, v1, p1}, Lcom/android/server/twilight/TwilightService$LocationHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/twilight/TwilightService$LocationHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public requestLocationUpdate()V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/server/twilight/TwilightService$LocationHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public requestTwilightUpdate()V
    .locals 1

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/server/twilight/TwilightService$LocationHandler;->sendEmptyMessage(I)Z

    return-void
.end method
