.class public Lcom/samsung/android/settings/location/SatelliteView;
.super Lcom/android/settings/InstrumentedActivity;
.source "SatelliteView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/location/SatelliteView$1;,
        Lcom/samsung/android/settings/location/SatelliteView$2;,
        Lcom/samsung/android/settings/location/SatelliteView$3;,
        Lcom/samsung/android/settings/location/SatelliteView$SatelliteDrawView;,
        Lcom/samsung/android/settings/location/SatelliteView$SetHandler;,
        Lcom/samsung/android/settings/location/SatelliteView$UserGpsSatellite;
    }
.end annotation


# static fields
.field private static ANIMATION_COUNT:I

.field private static ANIMATION_TIME:I

.field private static CIRCLE_RADIUS:I

.field private static final DEBUG:Ljava/lang/Boolean;

.field private static ICON_RADIUS:I

.field private static a:[D

.field static ani_count:I

.field static ani_gap_x:D

.field static ani_gap_y:D

.field private static azimuth:[F

.field private static b:[D

.field private static circlePaint:Landroid/graphics/Paint;

.field private static elevation:[F

.field private static mAltitude:D

.field private static mBearing:F

.field private static mCenter_X:I

.field private static mCenter_Y:I

.field private static mLatitude:D

.field private static mLongitude:D

.field static mNoOfSat:I

.field public static mStartMode:I

.field static mSvInformation:Ljava/lang/String;

.field private static px:[I

.field private static py:[I

.field private static snr:[F


# instance fields
.field private btn_log:Landroid/widget/Button;

.field calendarDate:Ljava/lang/String;

.field private drawView:Lcom/samsung/android/settings/location/SatelliteView$SatelliteDrawView;

.field private mAccuracy:F

.field mGpsStatusListener:Landroid/location/GpsStatus$Listener;

.field mHandler:Lcom/samsung/android/settings/location/SatelliteView$SetHandler;

.field private mIsWhiteTheme:Ljava/lang/Boolean;

.field mLocation:Landroid/location/Location;

.field mLocationListener:Landroid/location/LocationListener;

.field mLocationManager:Landroid/location/LocationManager;

.field mNmeaListener:Landroid/location/GpsStatus$NmeaListener;

.field private mRect_gap:I

.field private mRect_text_size:I

.field private mRect_width:I

.field private mScrHeight:I

.field private mScrWidth:I

.field private mSpeed:D

.field private mTime:J

.field sv_list:[Landroid/location/GpsSatellite;

.field sv_list_mask:I

.field private text:Landroid/widget/TextView;

.field private ttff:I


# direct methods
.method static synthetic -get0()I
    .locals 1

    sget v0, Lcom/samsung/android/settings/location/SatelliteView;->ANIMATION_COUNT:I

    return v0
.end method

.method static synthetic -get1()I
    .locals 1

    sget v0, Lcom/samsung/android/settings/location/SatelliteView;->ANIMATION_TIME:I

    return v0
.end method

.method static synthetic -get10()I
    .locals 1

    sget v0, Lcom/samsung/android/settings/location/SatelliteView;->mCenter_Y:I

    return v0
.end method

.method static synthetic -get11(Lcom/samsung/android/settings/location/SatelliteView;)Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/location/SatelliteView;->mIsWhiteTheme:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic -get12()D
    .locals 2

    sget-wide v0, Lcom/samsung/android/settings/location/SatelliteView;->mLatitude:D

    return-wide v0
.end method

.method static synthetic -get13()D
    .locals 2

    sget-wide v0, Lcom/samsung/android/settings/location/SatelliteView;->mLongitude:D

    return-wide v0
.end method

.method static synthetic -get14(Lcom/samsung/android/settings/location/SatelliteView;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/location/SatelliteView;->mRect_gap:I

    return v0
.end method

.method static synthetic -get15(Lcom/samsung/android/settings/location/SatelliteView;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/location/SatelliteView;->mRect_text_size:I

    return v0
.end method

.method static synthetic -get16(Lcom/samsung/android/settings/location/SatelliteView;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/location/SatelliteView;->mRect_width:I

    return v0
.end method

.method static synthetic -get17(Lcom/samsung/android/settings/location/SatelliteView;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/location/SatelliteView;->mScrHeight:I

    return v0
.end method

.method static synthetic -get18(Lcom/samsung/android/settings/location/SatelliteView;)D
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/settings/location/SatelliteView;->mSpeed:D

    return-wide v0
.end method

.method static synthetic -get19(Lcom/samsung/android/settings/location/SatelliteView;)J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/settings/location/SatelliteView;->mTime:J

    return-wide v0
.end method

.method static synthetic -get2()I
    .locals 1

    sget v0, Lcom/samsung/android/settings/location/SatelliteView;->CIRCLE_RADIUS:I

    return v0
.end method

.method static synthetic -get20()[I
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/location/SatelliteView;->px:[I

    return-object v0
.end method

.method static synthetic -get21()[I
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/location/SatelliteView;->py:[I

    return-object v0
.end method

.method static synthetic -get22()[F
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/location/SatelliteView;->snr:[F

    return-object v0
.end method

.method static synthetic -get23(Lcom/samsung/android/settings/location/SatelliteView;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/location/SatelliteView;->text:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get3()Ljava/lang/Boolean;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/location/SatelliteView;->DEBUG:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic -get4()I
    .locals 1

    sget v0, Lcom/samsung/android/settings/location/SatelliteView;->ICON_RADIUS:I

    return v0
.end method

.method static synthetic -get5()Landroid/graphics/Paint;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/location/SatelliteView;->circlePaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic -get6(Lcom/samsung/android/settings/location/SatelliteView;)Lcom/samsung/android/settings/location/SatelliteView$SatelliteDrawView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/location/SatelliteView;->drawView:Lcom/samsung/android/settings/location/SatelliteView$SatelliteDrawView;

    return-object v0
.end method

.method static synthetic -get7()D
    .locals 2

    sget-wide v0, Lcom/samsung/android/settings/location/SatelliteView;->mAltitude:D

    return-wide v0
.end method

.method static synthetic -get8()F
    .locals 1

    sget v0, Lcom/samsung/android/settings/location/SatelliteView;->mBearing:F

    return v0
.end method

.method static synthetic -get9()I
    .locals 1

    sget v0, Lcom/samsung/android/settings/location/SatelliteView;->mCenter_X:I

    return v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/location/SatelliteView;F)F
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/location/SatelliteView;->mAccuracy:F

    return p1
.end method

.method static synthetic -set1(D)D
    .locals 0

    sput-wide p0, Lcom/samsung/android/settings/location/SatelliteView;->mAltitude:D

    return-wide p0
.end method

.method static synthetic -set2(F)F
    .locals 0

    sput p0, Lcom/samsung/android/settings/location/SatelliteView;->mBearing:F

    return p0
.end method

.method static synthetic -set3(D)D
    .locals 0

    sput-wide p0, Lcom/samsung/android/settings/location/SatelliteView;->mLatitude:D

    return-wide p0
.end method

.method static synthetic -set4(D)D
    .locals 0

    sput-wide p0, Lcom/samsung/android/settings/location/SatelliteView;->mLongitude:D

    return-wide p0
.end method

.method static synthetic -set5(Lcom/samsung/android/settings/location/SatelliteView;D)D
    .locals 1

    iput-wide p1, p0, Lcom/samsung/android/settings/location/SatelliteView;->mSpeed:D

    return-wide p1
.end method

.method static synthetic -set6(Lcom/samsung/android/settings/location/SatelliteView;J)J
    .locals 1

    iput-wide p1, p0, Lcom/samsung/android/settings/location/SatelliteView;->mTime:J

    return-wide p1
.end method

.method static synthetic -set7(Lcom/samsung/android/settings/location/SatelliteView;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/location/SatelliteView;->ttff:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/location/SatelliteView;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/location/SatelliteView;->calcRectDimension()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 6

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const/16 v1, 0xc

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/location/SatelliteView;->DEBUG:Ljava/lang/Boolean;

    sput v2, Lcom/samsung/android/settings/location/SatelliteView;->mCenter_X:I

    sput v2, Lcom/samsung/android/settings/location/SatelliteView;->mCenter_Y:I

    const/16 v0, 0x25

    sput v0, Lcom/samsung/android/settings/location/SatelliteView;->ICON_RADIUS:I

    const/16 v0, 0xc8

    sput v0, Lcom/samsung/android/settings/location/SatelliteView;->CIRCLE_RADIUS:I

    const/16 v0, 0x64

    sput v0, Lcom/samsung/android/settings/location/SatelliteView;->ANIMATION_TIME:I

    const/16 v0, 0x28

    sput v0, Lcom/samsung/android/settings/location/SatelliteView;->ANIMATION_COUNT:I

    sput-wide v4, Lcom/samsung/android/settings/location/SatelliteView;->mAltitude:D

    const/4 v0, 0x0

    sput v0, Lcom/samsung/android/settings/location/SatelliteView;->mBearing:F

    sput-wide v4, Lcom/samsung/android/settings/location/SatelliteView;->mLongitude:D

    sput-wide v4, Lcom/samsung/android/settings/location/SatelliteView;->mLatitude:D

    sput v2, Lcom/samsung/android/settings/location/SatelliteView;->mNoOfSat:I

    const-string/jumbo v0, ""

    sput-object v0, Lcom/samsung/android/settings/location/SatelliteView;->mSvInformation:Ljava/lang/String;

    new-array v0, v1, [F

    sput-object v0, Lcom/samsung/android/settings/location/SatelliteView;->azimuth:[F

    new-array v0, v1, [F

    sput-object v0, Lcom/samsung/android/settings/location/SatelliteView;->elevation:[F

    new-array v0, v1, [F

    sput-object v0, Lcom/samsung/android/settings/location/SatelliteView;->snr:[F

    new-array v0, v1, [I

    sput-object v0, Lcom/samsung/android/settings/location/SatelliteView;->px:[I

    new-array v0, v1, [I

    sput-object v0, Lcom/samsung/android/settings/location/SatelliteView;->py:[I

    new-array v0, v1, [D

    sput-object v0, Lcom/samsung/android/settings/location/SatelliteView;->a:[D

    new-array v0, v1, [D

    sput-object v0, Lcom/samsung/android/settings/location/SatelliteView;->b:[D

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/settings/InstrumentedActivity;-><init>()V

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/location/SatelliteView;->mIsWhiteTheme:Ljava/lang/Boolean;

    iput v2, p0, Lcom/samsung/android/settings/location/SatelliteView;->mScrWidth:I

    iput v2, p0, Lcom/samsung/android/settings/location/SatelliteView;->mScrHeight:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/settings/location/SatelliteView;->mSpeed:D

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/settings/location/SatelliteView;->mTime:J

    iput v2, p0, Lcom/samsung/android/settings/location/SatelliteView;->ttff:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/settings/location/SatelliteView;->mAccuracy:F

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/android/settings/location/SatelliteView;->calendarDate:Ljava/lang/String;

    iput-object v3, p0, Lcom/samsung/android/settings/location/SatelliteView;->mLocationManager:Landroid/location/LocationManager;

    iput-object v3, p0, Lcom/samsung/android/settings/location/SatelliteView;->mLocation:Landroid/location/Location;

    iput v2, p0, Lcom/samsung/android/settings/location/SatelliteView;->sv_list_mask:I

    const/16 v0, 0x20

    new-array v0, v0, [Landroid/location/GpsSatellite;

    iput-object v0, p0, Lcom/samsung/android/settings/location/SatelliteView;->sv_list:[Landroid/location/GpsSatellite;

    new-instance v0, Lcom/samsung/android/settings/location/SatelliteView$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/location/SatelliteView$1;-><init>(Lcom/samsung/android/settings/location/SatelliteView;)V

    iput-object v0, p0, Lcom/samsung/android/settings/location/SatelliteView;->mGpsStatusListener:Landroid/location/GpsStatus$Listener;

    new-instance v0, Lcom/samsung/android/settings/location/SatelliteView$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/location/SatelliteView$2;-><init>(Lcom/samsung/android/settings/location/SatelliteView;)V

    iput-object v0, p0, Lcom/samsung/android/settings/location/SatelliteView;->mNmeaListener:Landroid/location/GpsStatus$NmeaListener;

    new-instance v0, Lcom/samsung/android/settings/location/SatelliteView$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/location/SatelliteView$3;-><init>(Lcom/samsung/android/settings/location/SatelliteView;)V

    iput-object v0, p0, Lcom/samsung/android/settings/location/SatelliteView;->mLocationListener:Landroid/location/LocationListener;

    iput v2, p0, Lcom/samsung/android/settings/location/SatelliteView;->mRect_width:I

    iput v2, p0, Lcom/samsung/android/settings/location/SatelliteView;->mRect_gap:I

    iput v2, p0, Lcom/samsung/android/settings/location/SatelliteView;->mRect_text_size:I

    return-void
.end method

.method private Min(II)I
    .locals 1

    move v0, p1

    if-le p1, p2, :cond_0

    move v0, p2

    :cond_0
    return v0
.end method

.method private adajustBgForTheme()V
    .locals 2

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/location/SatelliteView;->mIsWhiteTheme:Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/samsung/android/settings/location/SatelliteView;->text:Landroid/widget/TextView;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method private calcRectDimension()V
    .locals 3

    iget v0, p0, Lcom/samsung/android/settings/location/SatelliteView;->mScrWidth:I

    div-int/lit8 v0, v0, 0x14

    iput v0, p0, Lcom/samsung/android/settings/location/SatelliteView;->mRect_width:I

    iget v0, p0, Lcom/samsung/android/settings/location/SatelliteView;->mScrWidth:I

    div-int/lit8 v0, v0, 0x3c

    iput v0, p0, Lcom/samsung/android/settings/location/SatelliteView;->mRect_gap:I

    iget v0, p0, Lcom/samsung/android/settings/location/SatelliteView;->mRect_width:I

    mul-int/lit8 v0, v0, 0x2

    div-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/samsung/android/settings/location/SatelliteView;->mRect_text_size:I

    const-string/jumbo v0, "GPS_SATELLITE_VIEW"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Rect Width : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/settings/location/SatelliteView;->mRect_width:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "GPS_SATELLITE_VIEW"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Rect Gap : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/settings/location/SatelliteView;->mRect_gap:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "GPS_SATELLITE_VIEW"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Rect TEXT SIZE : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/settings/location/SatelliteView;->mRect_text_size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private init()V
    .locals 12

    const/4 v11, 0x4

    const/4 v10, 0x1

    const-wide/16 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x0

    sput v6, Lcom/samsung/android/settings/location/SatelliteView;->mStartMode:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/samsung/android/settings/location/SatelliteView;->mTime:J

    const/4 v1, 0x0

    :goto_0
    const/16 v3, 0xc

    if-ge v1, v3, :cond_0

    sget-object v3, Lcom/samsung/android/settings/location/SatelliteView;->azimuth:[F

    aput v7, v3, v1

    sget-object v3, Lcom/samsung/android/settings/location/SatelliteView;->elevation:[F

    aput v7, v3, v1

    sget-object v3, Lcom/samsung/android/settings/location/SatelliteView;->snr:[F

    aput v7, v3, v1

    sget-object v3, Lcom/samsung/android/settings/location/SatelliteView;->a:[D

    aput-wide v8, v3, v1

    sget-object v3, Lcom/samsung/android/settings/location/SatelliteView;->b:[D

    aput-wide v8, v3, v1

    sget-object v3, Lcom/samsung/android/settings/location/SatelliteView;->px:[I

    aput v6, v3, v1

    sget-object v3, Lcom/samsung/android/settings/location/SatelliteView;->py:[I

    aput v6, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/location/SatelliteView;->startGPS()V

    new-instance v0, Ljava/util/Date;

    iget-wide v4, p0, Lcom/samsung/android/settings/location/SatelliteView;->mTime:J

    invoke-direct {v0, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-static {}, Ljava/text/DateFormat;->getDateInstance()Ljava/text/DateFormat;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/location/SatelliteView;->calendarDate:Ljava/lang/String;

    const v3, 0x7f1105fa

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/location/SatelliteView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/samsung/android/settings/location/SatelliteView;->btn_log:Landroid/widget/Button;

    const v3, 0x7f1105f8

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/location/SatelliteView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/samsung/android/settings/location/SatelliteView;->text:Landroid/widget/TextView;

    new-array v3, v11, [Ljava/lang/Object;

    sget-wide v4, Lcom/samsung/android/settings/location/SatelliteView;->mAltitude:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v3, v6

    iget-wide v4, p0, Lcom/samsung/android/settings/location/SatelliteView;->mSpeed:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v3, v10

    sget v4, Lcom/samsung/android/settings/location/SatelliteView;->mBearing:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/samsung/android/settings/location/SatelliteView;->calendarDate:Ljava/lang/String;

    const/4 v5, 0x3

    aput-object v4, v3, v5

    const v4, 0x7f0b0b17

    invoke-virtual {p0, v4, v3}, Lcom/samsung/android/settings/location/SatelliteView;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/location/SatelliteView;->text:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3, v10}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v3, Lcom/samsung/android/settings/location/SatelliteView;->circlePaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/samsung/android/settings/location/SatelliteView;->btn_log:Landroid/widget/Button;

    new-instance v4, Lcom/samsung/android/settings/location/SatelliteView$4;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/location/SatelliteView$4;-><init>(Lcom/samsung/android/settings/location/SatelliteView;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/samsung/android/settings/location/SatelliteView;->btn_log:Landroid/widget/Button;

    invoke-virtual {v3, v11}, Landroid/widget/Button;->setVisibility(I)V

    invoke-direct {p0}, Lcom/samsung/android/settings/location/SatelliteView;->adajustBgForTheme()V

    return-void
.end method

.method private initDimension()V
    .locals 8

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/location/SatelliteView;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v2, p0, Lcom/samsung/android/settings/location/SatelliteView;->mScrWidth:I

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v2, p0, Lcom/samsung/android/settings/location/SatelliteView;->mScrHeight:I

    iget v2, p0, Lcom/samsung/android/settings/location/SatelliteView;->mScrWidth:I

    div-int/lit8 v2, v2, 0x2

    sput v2, Lcom/samsung/android/settings/location/SatelliteView;->mCenter_X:I

    iget v2, p0, Lcom/samsung/android/settings/location/SatelliteView;->mScrHeight:I

    int-to-double v2, v2

    const-wide v4, 0x3fdd4fdf3b645a1dL    # 0.458

    mul-double/2addr v2, v4

    double-to-int v2, v2

    sput v2, Lcom/samsung/android/settings/location/SatelliteView;->mCenter_Y:I

    sget v2, Lcom/samsung/android/settings/location/SatelliteView;->mCenter_X:I

    iget v3, p0, Lcom/samsung/android/settings/location/SatelliteView;->mScrWidth:I

    int-to-double v4, v3

    const-wide v6, 0x3fb5532617c1bda5L    # 0.0833

    mul-double/2addr v4, v6

    double-to-int v3, v4

    sub-int/2addr v2, v3

    sget v3, Lcom/samsung/android/settings/location/SatelliteView;->mCenter_Y:I

    iget v4, p0, Lcom/samsung/android/settings/location/SatelliteView;->mScrHeight:I

    mul-int/lit8 v4, v4, 0x0

    sub-int/2addr v3, v4

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/settings/location/SatelliteView;->Min(II)I

    move-result v2

    sput v2, Lcom/samsung/android/settings/location/SatelliteView;->CIRCLE_RADIUS:I

    const v2, 0x7f1105f9

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/location/SatelliteView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    new-instance v2, Lcom/samsung/android/settings/location/SatelliteView$SatelliteDrawView;

    invoke-direct {v2, p0, p0}, Lcom/samsung/android/settings/location/SatelliteView$SatelliteDrawView;-><init>(Lcom/samsung/android/settings/location/SatelliteView;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/samsung/android/settings/location/SatelliteView;->drawView:Lcom/samsung/android/settings/location/SatelliteView$SatelliteDrawView;

    iget-object v2, p0, Lcom/samsung/android/settings/location/SatelliteView;->drawView:Lcom/samsung/android/settings/location/SatelliteView$SatelliteDrawView;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v2, p0, Lcom/samsung/android/settings/location/SatelliteView;->drawView:Lcom/samsung/android/settings/location/SatelliteView$SatelliteDrawView;

    invoke-virtual {v2}, Lcom/samsung/android/settings/location/SatelliteView$SatelliteDrawView;->invalidate()V

    return-void
.end method

.method private resetLocationInfo()V
    .locals 4

    const-wide/16 v2, 0x0

    sput-wide v2, Lcom/samsung/android/settings/location/SatelliteView;->mLongitude:D

    sput-wide v2, Lcom/samsung/android/settings/location/SatelliteView;->mLatitude:D

    sput-wide v2, Lcom/samsung/android/settings/location/SatelliteView;->mAltitude:D

    const/4 v0, 0x0

    sput v0, Lcom/samsung/android/settings/location/SatelliteView;->mBearing:F

    iput-wide v2, p0, Lcom/samsung/android/settings/location/SatelliteView;->mSpeed:D

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/settings/location/SatelliteView;->ttff:I

    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    const/16 v0, 0x40

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/InstrumentedActivity;->onCreate(Landroid/os/Bundle;)V

    new-instance v1, Lcom/samsung/android/settings/location/SatelliteView$SetHandler;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/location/SatelliteView$SetHandler;-><init>(Lcom/samsung/android/settings/location/SatelliteView;)V

    iput-object v1, p0, Lcom/samsung/android/settings/location/SatelliteView;->mHandler:Lcom/samsung/android/settings/location/SatelliteView$SetHandler;

    const v1, 0x7f04024e

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/location/SatelliteView;->setContentView(I)V

    const v1, 0x7f1105f7

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/location/SatelliteView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    invoke-direct {p0}, Lcom/samsung/android/settings/location/SatelliteView;->initDimension()V

    invoke-direct {p0}, Lcom/samsung/android/settings/location/SatelliteView;->init()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/samsung/android/settings/location/SatelliteView;->mNoOfSat:I

    invoke-virtual {p0}, Lcom/samsung/android/settings/location/SatelliteView;->stopGPS()V

    iget-object v0, p0, Lcom/samsung/android/settings/location/SatelliteView;->drawView:Lcom/samsung/android/settings/location/SatelliteView$SatelliteDrawView;

    invoke-virtual {v0}, Lcom/samsung/android/settings/location/SatelliteView$SatelliteDrawView;->destroyDrawingCache()V

    invoke-super {p0}, Lcom/android/settings/InstrumentedActivity;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/location/SatelliteView;->mHandler:Lcom/samsung/android/settings/location/SatelliteView$SetHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/location/SatelliteView$SetHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/location/SatelliteView;->mHandler:Lcom/samsung/android/settings/location/SatelliteView$SetHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/location/SatelliteView$SetHandler;->removeMessages(I)V

    invoke-super {p0}, Lcom/android/settings/InstrumentedActivity;->onPause()V

    return-void
.end method

.method showSVStatus()V
    .locals 14

    const/4 v1, 0x0

    const/4 v0, 0x0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    const/4 v1, 0x0

    :goto_0
    const/16 v6, 0x20

    if-ge v1, v6, :cond_2

    iget v6, p0, Lcom/samsung/android/settings/location/SatelliteView;->sv_list_mask:I

    const/4 v7, 0x1

    shl-int/2addr v7, v1

    and-int/2addr v6, v7

    if-nez v6, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v6, p0, Lcom/samsung/android/settings/location/SatelliteView;->sv_list:[Landroid/location/GpsSatellite;

    aget-object v4, v6, v1

    new-instance v6, Lcom/samsung/android/settings/location/SatelliteView$UserGpsSatellite;

    invoke-direct {v6, v4, v0}, Lcom/samsung/android/settings/location/SatelliteView$UserGpsSatellite;-><init>(Landroid/location/GpsSatellite;I)V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    sget-object v6, Lcom/samsung/android/settings/location/SatelliteView;->DEBUG:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_0

    const-string/jumbo v6, "GPS_SATELLITE_VIEW"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "ShowSVStatus: Number = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v6, "GPS_SATELLITE_VIEW"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "snr : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/settings/location/SatelliteView;->sv_list:[Landroid/location/GpsSatellite;

    aget-object v8, v8, v1

    invoke-virtual {v8}, Landroid/location/GpsSatellite;->getSnr()F

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v6, "GPS_SATELLITE_VIEW"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "azimuth : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/settings/location/SatelliteView;->sv_list:[Landroid/location/GpsSatellite;

    aget-object v8, v8, v1

    invoke-virtual {v8}, Landroid/location/GpsSatellite;->getAzimuth()F

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v6, "GPS_SATELLITE_VIEW"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "elevation : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/settings/location/SatelliteView;->sv_list:[Landroid/location/GpsSatellite;

    aget-object v8, v8, v1

    invoke-virtual {v8}, Landroid/location/GpsSatellite;->getElevation()F

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v6, "GPS_SATELLITE_VIEW"

    const-string/jumbo v7, "*******************************"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_2
    new-array v5, v0, [Lcom/samsung/android/settings/location/SatelliteView$UserGpsSatellite;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    const/16 v6, 0xc

    if-le v0, v6, :cond_4

    const/16 v6, 0xc

    sput v6, Lcom/samsung/android/settings/location/SatelliteView;->mNoOfSat:I

    :goto_2
    const/4 v1, 0x0

    :goto_3
    sget v6, Lcom/samsung/android/settings/location/SatelliteView;->mNoOfSat:I

    if-ge v1, v6, :cond_5

    aget-object v6, v5, v1

    invoke-virtual {v6}, Lcom/samsung/android/settings/location/SatelliteView$UserGpsSatellite;->getSat()Landroid/location/GpsSatellite;

    move-result-object v4

    invoke-virtual {v4}, Landroid/location/GpsSatellite;->getSnr()F

    move-result v6

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-lez v6, :cond_3

    invoke-virtual {v4}, Landroid/location/GpsSatellite;->getSnr()F

    move-result v6

    const/high16 v7, 0x42c80000    # 100.0f

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_3

    sget-object v6, Lcom/samsung/android/settings/location/SatelliteView;->azimuth:[F

    invoke-virtual {v4}, Landroid/location/GpsSatellite;->getAzimuth()F

    move-result v7

    aput v7, v6, v1

    sget-object v6, Lcom/samsung/android/settings/location/SatelliteView;->elevation:[F

    invoke-virtual {v4}, Landroid/location/GpsSatellite;->getElevation()F

    move-result v7

    aput v7, v6, v1

    sget-object v6, Lcom/samsung/android/settings/location/SatelliteView;->snr:[F

    invoke-virtual {v4}, Landroid/location/GpsSatellite;->getSnr()F

    move-result v7

    aput v7, v6, v1

    sget-object v6, Lcom/samsung/android/settings/location/SatelliteView;->a:[D

    sget-object v7, Lcom/samsung/android/settings/location/SatelliteView;->elevation:[F

    aget v7, v7, v1

    float-to-double v8, v7

    const-wide v10, 0x3f91df3300de4c51L    # 0.017453

    mul-double/2addr v8, v10

    aput-wide v8, v6, v1

    sget-object v6, Lcom/samsung/android/settings/location/SatelliteView;->b:[D

    sget-object v7, Lcom/samsung/android/settings/location/SatelliteView;->azimuth:[F

    aget v7, v7, v1

    const/high16 v8, 0x42b40000    # 90.0f

    sub-float/2addr v7, v8

    float-to-double v8, v7

    const-wide v10, 0x3f91df3300de4c51L    # 0.017453

    mul-double/2addr v8, v10

    aput-wide v8, v6, v1

    sget-object v6, Lcom/samsung/android/settings/location/SatelliteView;->px:[I

    sget v7, Lcom/samsung/android/settings/location/SatelliteView;->mCenter_X:I

    int-to-double v8, v7

    sget v7, Lcom/samsung/android/settings/location/SatelliteView;->CIRCLE_RADIUS:I

    int-to-double v10, v7

    sget-object v7, Lcom/samsung/android/settings/location/SatelliteView;->a:[D

    aget-wide v12, v7, v1

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    mul-double/2addr v10, v12

    sget-object v7, Lcom/samsung/android/settings/location/SatelliteView;->b:[D

    aget-wide v12, v7, v1

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    double-to-int v7, v8

    aput v7, v6, v1

    sget-object v6, Lcom/samsung/android/settings/location/SatelliteView;->py:[I

    sget v7, Lcom/samsung/android/settings/location/SatelliteView;->mCenter_Y:I

    int-to-double v8, v7

    sget v7, Lcom/samsung/android/settings/location/SatelliteView;->CIRCLE_RADIUS:I

    int-to-double v10, v7

    sget-object v7, Lcom/samsung/android/settings/location/SatelliteView;->a:[D

    aget-wide v12, v7, v1

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    mul-double/2addr v10, v12

    sget-object v7, Lcom/samsung/android/settings/location/SatelliteView;->b:[D

    aget-wide v12, v7, v1

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    double-to-int v7, v8

    aput v7, v6, v1

    sget-object v6, Lcom/samsung/android/settings/location/SatelliteView;->px:[I

    aget v6, v6, v1

    sget v7, Lcom/samsung/android/settings/location/SatelliteView;->mCenter_X:I

    sub-int/2addr v6, v7

    int-to-double v6, v6

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    sget-object v8, Lcom/samsung/android/settings/location/SatelliteView;->py:[I

    aget v8, v8, v1

    sget v9, Lcom/samsung/android/settings/location/SatelliteView;->mCenter_Y:I

    sub-int/2addr v8, v9

    int-to-double v8, v8

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    add-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    sget v8, Lcom/samsung/android/settings/location/SatelliteView;->CIRCLE_RADIUS:I

    int-to-double v8, v8

    cmpl-double v6, v6, v8

    if-lez v6, :cond_3

    sget-object v6, Lcom/samsung/android/settings/location/SatelliteView;->px:[I

    sget v7, Lcom/samsung/android/settings/location/SatelliteView;->mCenter_X:I

    aput v7, v6, v1

    sget-object v6, Lcom/samsung/android/settings/location/SatelliteView;->py:[I

    sget v7, Lcom/samsung/android/settings/location/SatelliteView;->mCenter_Y:I

    aput v7, v6, v1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_3

    :cond_4
    sput v0, Lcom/samsung/android/settings/location/SatelliteView;->mNoOfSat:I

    goto/16 :goto_2

    :cond_5
    new-instance v3, Landroid/os/Message;

    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    const/4 v6, 0x3

    iput v6, v3, Landroid/os/Message;->what:I

    iget-object v6, p0, Lcom/samsung/android/settings/location/SatelliteView;->mHandler:Lcom/samsung/android/settings/location/SatelliteView$SetHandler;

    sget v7, Lcom/samsung/android/settings/location/SatelliteView;->ANIMATION_TIME:I

    int-to-long v8, v7

    invoke-virtual {v6, v3, v8, v9}, Lcom/samsung/android/settings/location/SatelliteView$SetHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method startGPS()V
    .locals 6

    invoke-direct {p0}, Lcom/samsung/android/settings/location/SatelliteView;->resetLocationInfo()V

    const-string/jumbo v0, "location"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/location/SatelliteView;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/samsung/android/settings/location/SatelliteView;->mLocationManager:Landroid/location/LocationManager;

    iget-object v0, p0, Lcom/samsung/android/settings/location/SatelliteView;->mLocationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/samsung/android/settings/location/SatelliteView;->mGpsStatusListener:Landroid/location/GpsStatus$Listener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->addGpsStatusListener(Landroid/location/GpsStatus$Listener;)Z

    iget-object v0, p0, Lcom/samsung/android/settings/location/SatelliteView;->mLocationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/samsung/android/settings/location/SatelliteView;->mNmeaListener:Landroid/location/GpsStatus$NmeaListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->addNmeaListener(Landroid/location/GpsStatus$NmeaListener;)Z

    iget-object v0, p0, Lcom/samsung/android/settings/location/SatelliteView;->mLocationManager:Landroid/location/LocationManager;

    const-string/jumbo v1, "gps"

    const-wide/16 v2, 0x3e8

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/samsung/android/settings/location/SatelliteView;->mLocationListener:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    return-void
.end method

.method stopGPS()V
    .locals 8

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/samsung/android/settings/location/SatelliteView;->mLocationManager:Landroid/location/LocationManager;

    iget-object v2, p0, Lcom/samsung/android/settings/location/SatelliteView;->mLocationListener:Landroid/location/LocationListener;

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    iget-object v1, p0, Lcom/samsung/android/settings/location/SatelliteView;->mLocationManager:Landroid/location/LocationManager;

    iget-object v2, p0, Lcom/samsung/android/settings/location/SatelliteView;->mGpsStatusListener:Landroid/location/GpsStatus$Listener;

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->removeGpsStatusListener(Landroid/location/GpsStatus$Listener;)V

    iget-object v1, p0, Lcom/samsung/android/settings/location/SatelliteView;->mLocationManager:Landroid/location/LocationManager;

    iget-object v2, p0, Lcom/samsung/android/settings/location/SatelliteView;->mNmeaListener:Landroid/location/GpsStatus$NmeaListener;

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->removeNmeaListener(Landroid/location/GpsStatus$NmeaListener;)V

    iput-object v5, p0, Lcom/samsung/android/settings/location/SatelliteView;->mLocation:Landroid/location/Location;

    iput-object v5, p0, Lcom/samsung/android/settings/location/SatelliteView;->mLocationManager:Landroid/location/LocationManager;

    sput v4, Lcom/samsung/android/settings/location/SatelliteView;->mNoOfSat:I

    invoke-direct {p0}, Lcom/samsung/android/settings/location/SatelliteView;->resetLocationInfo()V

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0xc

    if-ge v0, v1, :cond_0

    sget-object v1, Lcom/samsung/android/settings/location/SatelliteView;->azimuth:[F

    aput v3, v1, v0

    sget-object v1, Lcom/samsung/android/settings/location/SatelliteView;->elevation:[F

    aput v3, v1, v0

    sget-object v1, Lcom/samsung/android/settings/location/SatelliteView;->snr:[F

    aput v3, v1, v0

    sget-object v1, Lcom/samsung/android/settings/location/SatelliteView;->a:[D

    aput-wide v6, v1, v0

    sget-object v1, Lcom/samsung/android/settings/location/SatelliteView;->b:[D

    aput-wide v6, v1, v0

    sget-object v1, Lcom/samsung/android/settings/location/SatelliteView;->px:[I

    aput v4, v1, v0

    sget-object v1, Lcom/samsung/android/settings/location/SatelliteView;->py:[I

    aput v4, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
