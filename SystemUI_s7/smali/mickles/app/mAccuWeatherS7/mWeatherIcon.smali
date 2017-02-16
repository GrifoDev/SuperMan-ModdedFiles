.class public Lmickles/app/mAccuWeatherS7/mWeatherIcon;
.super Landroid/widget/ImageView;
.source "mWeatherIcon.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmickles/app/mAccuWeatherS7/mWeatherIcon$BroadCastReceiver;
    }
.end annotation


# instance fields
.field DAEMON_AUTOREFRESH_END:Ljava/lang/String;

.field Res_drawable_weather_level_analog:I

.field private mContext:Landroid/content/Context;

.field private mParamAttributeSet:Landroid/util/AttributeSet;

.field private mReceiver:Lmickles/app/mAccuWeatherS7/mWeatherIcon$BroadCastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string v4, "weather_level_analog"

    const-string v5, "drawable"

    invoke-static {v4, v5}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lmickles/app/mAccuWeatherS7/mWeatherIcon;->Res_drawable_weather_level_analog:I

    const-string v0, "com.samsung.android.weather.widget.action.DAEMON_AUTOREFRESH_END"

    iput-object v0, p0, Lmickles/app/mAccuWeatherS7/mWeatherIcon;->DAEMON_AUTOREFRESH_END:Ljava/lang/String;

    iput-object p1, p0, Lmickles/app/mAccuWeatherS7/mWeatherIcon;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lmickles/app/mAccuWeatherS7/mWeatherIcon;->mParamAttributeSet:Landroid/util/AttributeSet;

    iget-object v0, p0, Lmickles/app/mAccuWeatherS7/mWeatherIcon;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lmickles/app/mAccuWeatherS7/mWeatherIcon;->isWeatherTrueS7(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmickles/app/mAccuWeatherS7/mWeatherIcon;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lmickles/app/mAccuWeatherS7/mWeatherIcon;->getSunRiseTimeS7(Landroid/content/Context;)J

    move-result-wide v0

    iget-object v2, p0, Lmickles/app/mAccuWeatherS7/mWeatherIcon;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v2}, Lmickles/app/mAccuWeatherS7/mWeatherIcon;->getSunSetTimeS7(Landroid/content/Context;)J

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lmickles/app/mAccuWeatherS7/mWeatherIcon;->isDayS7(JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmickles/app/mAccuWeatherS7/mWeatherIcon;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lmickles/app/mAccuWeatherS7/mWeatherIcon;->getWeatherIconS7(Landroid/content/Context;)I

    move-result v0

    add-int/lit8 v0, v0, 0x64

    invoke-virtual {p0, v0}, Lmickles/app/mAccuWeatherS7/mWeatherIcon;->setImageLevel(I)V

    :goto_0
    iget v0, p0, Lmickles/app/mAccuWeatherS7/mWeatherIcon;->Res_drawable_weather_level_analog:I

    invoke-virtual {p0, v0}, Lmickles/app/mAccuWeatherS7/mWeatherIcon;->setImageResource(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmickles/app/mAccuWeatherS7/mWeatherIcon;->setVisibility(I)V

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lmickles/app/mAccuWeatherS7/mWeatherIcon;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lmickles/app/mAccuWeatherS7/mWeatherIcon;->getWeatherIconS7(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0, v0}, Lmickles/app/mAccuWeatherS7/mWeatherIcon;->setImageLevel(I)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lmickles/app/mAccuWeatherS7/mWeatherIcon;->setVisibility(I)V

    goto :goto_1
.end method

.method static synthetic access$100(Lmickles/app/mAccuWeatherS7/mWeatherIcon;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lmickles/app/mAccuWeatherS7/mWeatherIcon;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method getSunRiseTimeS7(Landroid/content/Context;)J
    .locals 10

    const/4 v3, 0x0

    const-wide/16 v8, 0x0

    const-string v2, "content://com.sec.android.daemonapp.ap.accuweather.provider/weatherinfo"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v6, "COL_WEATHER_SUNRISE_TIME"

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v6, v2, v4

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_1

    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v7, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    goto :goto_0

    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_1
    return-wide v8
.end method

.method getSunSetTimeS7(Landroid/content/Context;)J
    .locals 10

    const/4 v3, 0x0

    const-wide/16 v8, 0x0

    const-string v2, "content://com.sec.android.daemonapp.ap.accuweather.provider/weatherinfo"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v6, "COL_WEATHER_SUNSET_TIME"

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v6, v2, v4

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_1

    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v7, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    goto :goto_0

    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_1
    return-wide v8
.end method

.method getWeatherIconS7(Landroid/content/Context;)I
    .locals 12

    const/4 v4, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v8, 0x0

    const-string v2, "content://com.sec.android.daemonapp.ap.accuweather.provider/weatherinfo"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "COL_WEATHER_KEY=\"%s\""

    new-array v5, v11, [Ljava/lang/Object;

    const-string v9, "cityId:current"

    aput-object v9, v5, v10

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v6, "COL_WEATHER_ICON_NUM"

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-array v2, v11, [Ljava/lang/String;

    aput-object v6, v2, v10

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_1

    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v7, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    goto :goto_0

    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_1
    return v8
.end method

.method isDayS7(JJ)Z
    .locals 7

    const-wide/32 v4, 0x5265c00

    const/4 v2, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    rem-long/2addr v0, v4

    rem-long/2addr p1, v4

    rem-long/2addr p3, v4

    cmp-long v3, v0, p1

    if-ltz v3, :cond_0

    cmp-long v3, v0, p3

    if-gez v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method isWeatherTrueS7(Landroid/content/Context;)Z
    .locals 10

    const/4 v9, 0x0

    const-string v2, "content://com.sec.android.daemonapp.ap.accuweather.provider/weatherinfo"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "COL_WEATHER_KEY=\"%s\""

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "cityId:current"

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-eqz v8, :cond_2

    :cond_0
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, v6

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_0

    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v9, 0x1

    goto :goto_1

    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catch_0
    move-exception v2

    :cond_2
    :goto_2
    return v9

    :cond_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v2

    throw v2
.end method

.method protected onAttachedToWindow()V
    .locals 3

    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    new-instance v1, Lmickles/app/mAccuWeatherS7/mWeatherIcon$BroadCastReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lmickles/app/mAccuWeatherS7/mWeatherIcon$BroadCastReceiver;-><init>(Lmickles/app/mAccuWeatherS7/mWeatherIcon;Lmickles/app/mAccuWeatherS7/mWeatherIcon$1;)V

    iput-object v1, p0, Lmickles/app/mAccuWeatherS7/mWeatherIcon;->mReceiver:Lmickles/app/mAccuWeatherS7/mWeatherIcon$BroadCastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iget-object v1, p0, Lmickles/app/mAccuWeatherS7/mWeatherIcon;->DAEMON_AUTOREFRESH_END:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lmickles/app/mAccuWeatherS7/mWeatherIcon;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lmickles/app/mAccuWeatherS7/mWeatherIcon;->mReceiver:Lmickles/app/mAccuWeatherS7/mWeatherIcon$BroadCastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    iget-object v0, p0, Lmickles/app/mAccuWeatherS7/mWeatherIcon;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lmickles/app/mAccuWeatherS7/mWeatherIcon;->mReceiver:Lmickles/app/mAccuWeatherS7/mWeatherIcon$BroadCastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
