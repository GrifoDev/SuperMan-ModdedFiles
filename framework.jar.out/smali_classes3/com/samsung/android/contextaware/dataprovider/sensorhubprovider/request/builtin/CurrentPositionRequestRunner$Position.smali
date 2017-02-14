.class public Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;
.super Ljava/lang/Object;
.source "CurrentPositionRequestRunner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Position"
.end annotation


# instance fields
.field private accuracy:F

.field private altitude:D

.field private distance:D

.field private latitude:D

.field private longitude:D

.field private satelliteCount:I

.field private speed:F

.field private type:I

.field private utcTime:[I


# direct methods
.method static synthetic -set0(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;F)F
    .locals 0

    iput p1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;->accuracy:F

    return p1
.end method

.method static synthetic -set1(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;D)D
    .locals 1

    iput-wide p1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;->altitude:D

    return-wide p1
.end method

.method static synthetic -set2(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;D)D
    .locals 1

    iput-wide p1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;->distance:D

    return-wide p1
.end method

.method static synthetic -set3(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;D)D
    .locals 1

    iput-wide p1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;->latitude:D

    return-wide p1
.end method

.method static synthetic -set4(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;D)D
    .locals 1

    iput-wide p1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;->longitude:D

    return-wide p1
.end method

.method static synthetic -set5(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;->satelliteCount:I

    return p1
.end method

.method static synthetic -set6(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;F)F
    .locals 0

    iput p1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;->speed:F

    return p1
.end method

.method static synthetic -set7(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;->type:I

    return p1
.end method

.method static synthetic -set8(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;[I)[I
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;->utcTime:[I

    return-object p1
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccuracy()F
    .locals 1

    iget v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;->accuracy:F

    return v0
.end method

.method public getAltitude()D
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;->altitude:D

    return-wide v0
.end method

.method public getDistance()D
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;->distance:D

    return-wide v0
.end method

.method public getLatitude()D
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;->latitude:D

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;->longitude:D

    return-wide v0
.end method

.method public getSatelliteCount()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;->satelliteCount:I

    return v0
.end method

.method public getSpeed()F
    .locals 1

    iget v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;->speed:F

    return v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;->type:I

    return v0
.end method

.method public getUtcTime()[I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;->utcTime:[I

    return-object v0
.end method
