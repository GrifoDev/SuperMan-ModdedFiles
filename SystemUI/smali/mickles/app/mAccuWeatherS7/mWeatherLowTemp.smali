.class public Lmickles/app/mAccuWeatherS7/mWeatherLowTemp;
.super Landroid/widget/TextView;
.source "mWeatherLowTemp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmickles/app/mAccuWeatherS7/mWeatherLowTemp$BroadCastReceiver;
    }
.end annotation


# instance fields
.field DAEMON_AUTOREFRESH_END:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mParamAttributeSet:Landroid/util/AttributeSet;

.field private mReceiver:Lmickles/app/mAccuWeatherS7/mWeatherLowTemp$BroadCastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 10

    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string v0, "com.samsung.android.weather.widget.action.DAEMON_AUTOREFRESH_END"

    iput-object v0, p0, Lmickles/app/mAccuWeatherS7/mWeatherLowTemp;->DAEMON_AUTOREFRESH_END:Ljava/lang/String;

    iput-object p1, p0, Lmickles/app/mAccuWeatherS7/mWeatherLowTemp;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lmickles/app/mAccuWeatherS7/mWeatherLowTemp;->mParamAttributeSet:Landroid/util/AttributeSet;

    iget-object v0, p0, Lmickles/app/mAccuWeatherS7/mWeatherLowTemp;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lmickles/app/mAccuWeatherS7/mWeatherLowTemp;->isWeatherTrueS7(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lmickles/app/mAccuWeatherS7/mWeatherLowTemp;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lmickles/app/mAccuWeatherS7/mWeatherLowTemp;->getLowTemperatureS7(Landroid/content/Context;)Ljava/lang/Float;

    move-result-object v1

    iget-object v2, p0, Lmickles/app/mAccuWeatherS7/mWeatherLowTemp;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v2}, Lmickles/app/mAccuWeatherS7/mWeatherLowTemp;->getTempScaleS7(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lmickles/app/mAccuWeatherS7/mWeatherLowTemp;->getTemp(Ljava/lang/Float;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u00b0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmickles/app/mAccuWeatherS7/mWeatherLowTemp;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "color_low_temp"

    const v9, -0x1

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {p0, v7}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmickles/app/mAccuWeatherS7/mWeatherLowTemp;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lmickles/app/mAccuWeatherS7/mWeatherLowTemp;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic access$100(Lmickles/app/mAccuWeatherS7/mWeatherLowTemp;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lmickles/app/mAccuWeatherS7/mWeatherLowTemp;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method getLowTemperatureS7(Landroid/content/Context;)Ljava/lang/Float;
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

    const-string v6, "COL_WEATHER_LOW_TEMP"

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

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getFloat(I)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    goto :goto_0

    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v8
.end method

.method getTemp(Ljava/lang/Float;I)I
    .locals 11

    const/4 v10, 0x0

    const-wide/high16 v8, 0x4040000000000000L    # 32.0

    const-wide v6, 0x3ffccccccccccccdL    # 1.8

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    const/4 v1, 0x1

    if-ne p2, v1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    cmpg-float v1, v1, v10

    if-gez v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    float-to-double v2, v1

    sub-double/2addr v2, v4

    double-to-int v0, v2

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    float-to-double v2, v1

    add-double/2addr v2, v4

    double-to-int v0, v2

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    float-to-double v2, v1

    mul-double/2addr v2, v6

    add-double/2addr v2, v8

    double-to-float v1, v2

    cmpg-float v1, v1, v10

    if-gez v1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    float-to-double v2, v1

    mul-double/2addr v2, v6

    add-double/2addr v2, v8

    double-to-float v1, v2

    float-to-double v2, v1

    sub-double/2addr v2, v4

    double-to-int v0, v2

    :goto_1
    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    float-to-double v2, v1

    mul-double/2addr v2, v6

    add-double/2addr v2, v8

    double-to-float v1, v2

    float-to-double v2, v1

    add-double/2addr v2, v4

    double-to-int v0, v2

    goto :goto_1
.end method

.method getTempScaleS7(Landroid/content/Context;)I
    .locals 9

    const/4 v3, 0x0

    const/4 v8, 0x1

    const-string v2, "content://com.sec.android.daemonapp.ap.accuweather.provider/settings"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v6, "COL_SETTING_TEMP_SCALE"

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

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    goto :goto_0

    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_1
    return v8
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

    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    new-instance v1, Lmickles/app/mAccuWeatherS7/mWeatherLowTemp$BroadCastReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lmickles/app/mAccuWeatherS7/mWeatherLowTemp$BroadCastReceiver;-><init>(Lmickles/app/mAccuWeatherS7/mWeatherLowTemp;Lmickles/app/mAccuWeatherS7/mWeatherLowTemp$1;)V

    iput-object v1, p0, Lmickles/app/mAccuWeatherS7/mWeatherLowTemp;->mReceiver:Lmickles/app/mAccuWeatherS7/mWeatherLowTemp$BroadCastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iget-object v1, p0, Lmickles/app/mAccuWeatherS7/mWeatherLowTemp;->DAEMON_AUTOREFRESH_END:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lmickles/app/mAccuWeatherS7/mWeatherLowTemp;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lmickles/app/mAccuWeatherS7/mWeatherLowTemp;->mReceiver:Lmickles/app/mAccuWeatherS7/mWeatherLowTemp$BroadCastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    iget-object v0, p0, Lmickles/app/mAccuWeatherS7/mWeatherLowTemp;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lmickles/app/mAccuWeatherS7/mWeatherLowTemp;->mReceiver:Lmickles/app/mAccuWeatherS7/mWeatherLowTemp$BroadCastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
