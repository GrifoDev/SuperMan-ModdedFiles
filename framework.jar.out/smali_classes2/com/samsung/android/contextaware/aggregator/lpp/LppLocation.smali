.class public Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;
.super Ljava/lang/Object;
.source "LppLocation.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field public Capturedtime:J

.field private Updated:Z

.field private final filteredVelocity:[D

.field private loc:Landroid/location/Location;

.field private mOrgHei:D

.field private mOrgLat:D

.field private mOrgLon:D

.field private mPosECEF_X:D

.field private mPosECEF_Y:D

.field private mPosECEF_Z:D

.field private mPosEast:D

.field private mPosNorth:D

.field private mPosUp:D

.field private movingStatus:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-string/jumbo v0, "LppLocation"

    sput-object v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->TAG:Ljava/lang/String;

    .line 10
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const-wide/16 v0, 0x0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-wide v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->mOrgLat:D

    .line 17
    iput-wide v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->mOrgLon:D

    .line 18
    iput-wide v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->mOrgHei:D

    .line 28
    iput-boolean v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->Updated:Z

    .line 29
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->Capturedtime:J

    .line 31
    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->movingStatus:I

    .line 32
    const/4 v0, 0x3

    new-array v0, v0, [D

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->filteredVelocity:[D

    .line 47
    new-instance v0, Landroid/location/Location;

    const-string/jumbo v1, "NOPROVIDER"

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->loc:Landroid/location/Location;

    .line 48
    iput-boolean v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->Updated:Z

    .line 46
    return-void

    .line 32
    :array_0
    .array-data 8
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public constructor <init>(Landroid/location/Location;)V
    .locals 8
    .param p1, "l"    # Landroid/location/Location;

    .prologue
    const/4 v2, 0x1

    const-wide/16 v0, 0x0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-wide v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->mOrgLat:D

    .line 17
    iput-wide v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->mOrgLon:D

    .line 18
    iput-wide v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->mOrgHei:D

    .line 28
    iput-boolean v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->Updated:Z

    .line 29
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->Capturedtime:J

    .line 31
    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->movingStatus:I

    .line 32
    const/4 v0, 0x3

    new-array v0, v0, [D

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->filteredVelocity:[D

    .line 35
    if-eqz p1, :cond_0

    .line 36
    new-instance v0, Landroid/location/Location;

    invoke-direct {v0, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->loc:Landroid/location/Location;

    .line 37
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->Capturedtime:J

    .line 38
    iput-boolean v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->Updated:Z

    .line 39
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-virtual {p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v6

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->setOrigin(DDD)V

    .line 34
    :goto_0
    return-void

    .line 41
    :cond_0
    new-instance v0, Landroid/location/Location;

    const-string/jumbo v1, "NOPROVIDER"

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->loc:Landroid/location/Location;

    .line 42
    iput-boolean v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->Updated:Z

    goto :goto_0

    .line 32
    :array_0
    .array-data 8
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public constructor <init>(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;)V
    .locals 2
    .param p1, "l"    # Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    .prologue
    const-wide/16 v0, 0x0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-wide v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->mOrgLat:D

    .line 17
    iput-wide v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->mOrgLon:D

    .line 18
    iput-wide v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->mOrgHei:D

    .line 28
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->Updated:Z

    .line 29
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->Capturedtime:J

    .line 31
    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->movingStatus:I

    .line 32
    const/4 v0, 0x3

    new-array v0, v0, [D

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->filteredVelocity:[D

    .line 52
    new-instance v0, Landroid/location/Location;

    iget-object v1, p1, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->loc:Landroid/location/Location;

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->loc:Landroid/location/Location;

    .line 53
    invoke-virtual {p0, p1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->set(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;)V

    .line 51
    return-void

    .line 32
    :array_0
    .array-data 8
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private CalCoordinate()V
    .locals 9

    .prologue
    const/4 v4, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 170
    iput-boolean v6, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->Updated:Z

    .line 172
    new-array v2, v4, [D

    .line 173
    .local v2, "llh":[D
    new-array v3, v4, [D

    .line 176
    .local v3, "orgllh":[D
    iget-object v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->loc:Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    aput-wide v4, v2, v6

    .line 177
    iget-object v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->loc:Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    aput-wide v4, v2, v7

    .line 178
    iget-object v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->loc:Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->getAltitude()D

    move-result-wide v4

    aput-wide v4, v2, v8

    .line 179
    iget-wide v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->mOrgLat:D

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    aput-wide v4, v3, v6

    .line 180
    iget-wide v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->mOrgLon:D

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    aput-wide v4, v3, v7

    .line 181
    iget-wide v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->mOrgHei:D

    aput-wide v4, v3, v8

    .line 183
    invoke-static {v2, v3}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/CoordinateTransform;->llh2enu([D[D)[D

    move-result-object v1

    .line 184
    .local v1, "enu":[D
    aget-wide v4, v1, v6

    iput-wide v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->mPosEast:D

    .line 185
    aget-wide v4, v1, v7

    iput-wide v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->mPosNorth:D

    .line 186
    aget-wide v4, v1, v8

    iput-wide v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->mPosUp:D

    .line 188
    invoke-static {v2}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/CoordinateTransform;->llh2xyz([D)[D

    move-result-object v0

    .line 189
    .local v0, "XYZ":[D
    aget-wide v4, v0, v6

    iput-wide v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->mPosECEF_X:D

    .line 190
    aget-wide v4, v0, v7

    iput-wide v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->mPosECEF_Y:D

    .line 191
    aget-wide v4, v0, v8

    iput-wide v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->mPosECEF_Z:D

    .line 169
    return-void
.end method

.method private SendStatus(Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 358
    sget-object v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    return-void
.end method


# virtual methods
.method public PosPropation(DD)V
    .locals 13
    .param p1, "bearing"    # D
    .param p3, "stepLength"    # D

    .prologue
    .line 197
    iget-boolean v7, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->Updated:Z

    if-eqz v7, :cond_0

    .line 198
    invoke-direct {p0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->CalCoordinate()V

    .line 200
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    .line 201
    .local v0, "HeadVec_E":D
    invoke-static {p1, p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    .line 204
    .local v2, "HeadVec_N":D
    iget-wide v8, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->mPosEast:D

    mul-double v10, v0, p3

    add-double/2addr v8, v10

    iput-wide v8, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->mPosEast:D

    .line 205
    iget-wide v8, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->mPosNorth:D

    mul-double v10, v2, p3

    add-double/2addr v8, v10

    iput-wide v8, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->mPosNorth:D

    .line 208
    const/4 v7, 0x3

    new-array v6, v7, [D

    .line 209
    .local v6, "orgllh":[D
    const/4 v7, 0x3

    new-array v4, v7, [D

    .line 211
    .local v4, "enu":[D
    iget-wide v8, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->mPosEast:D

    const/4 v7, 0x0

    aput-wide v8, v4, v7

    .line 212
    iget-wide v8, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->mPosNorth:D

    const/4 v7, 0x1

    aput-wide v8, v4, v7

    .line 213
    iget-wide v8, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->mPosUp:D

    const/4 v7, 0x2

    aput-wide v8, v4, v7

    .line 214
    iget-wide v8, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->mOrgLat:D

    invoke-static {v8, v9}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v8

    const/4 v7, 0x0

    aput-wide v8, v6, v7

    .line 215
    iget-wide v8, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->mOrgLon:D

    invoke-static {v8, v9}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v8

    const/4 v7, 0x1

    aput-wide v8, v6, v7

    .line 216
    iget-wide v8, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->mOrgHei:D

    const/4 v7, 0x2

    aput-wide v8, v6, v7

    .line 218
    invoke-static {v4, v6}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/CoordinateTransform;->enu2llh([D[D)[D

    move-result-object v5

    .line 219
    .local v5, "llh":[D
    iget-object v7, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->loc:Landroid/location/Location;

    const/4 v8, 0x0

    aget-wide v8, v5, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Landroid/location/Location;->setLatitude(D)V

    .line 220
    iget-object v7, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->loc:Landroid/location/Location;

    const/4 v8, 0x1

    aget-wide v8, v5, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Landroid/location/Location;->setLongitude(D)V

    .line 221
    iget-object v7, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->loc:Landroid/location/Location;

    const/4 v8, 0x2

    aget-wide v8, v5, v8

    invoke-virtual {v7, v8, v9}, Landroid/location/Location;->setAltitude(D)V

    .line 223
    invoke-direct {p0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->CalCoordinate()V

    .line 195
    return-void
.end method

.method public distanceTo(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;)D
    .locals 12
    .param p1, "lppLoc2"    # Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    .prologue
    .line 274
    new-instance v1, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    invoke-direct {v1, p1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;-><init>(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;)V

    .line 275
    .local v1, "lppLoc3":Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getOriginLat()D

    move-result-wide v2

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getOriginLon()D

    move-result-wide v4

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getOriginAltitude()D

    move-result-wide v6

    invoke-virtual/range {v1 .. v7}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->setOrigin(DDD)V

    .line 276
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getPosEastLocal()D

    move-result-wide v2

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getPosEastLocal()D

    move-result-wide v4

    sub-double/2addr v2, v4

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getPosEastLocal()D

    move-result-wide v4

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getPosEastLocal()D

    move-result-wide v6

    sub-double/2addr v4, v6

    mul-double/2addr v2, v4

    .line 277
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getPosNorthLocal()D

    move-result-wide v4

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getPosNorthLocal()D

    move-result-wide v6

    sub-double/2addr v4, v6

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getPosNorthLocal()D

    move-result-wide v6

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getPosNorthLocal()D

    move-result-wide v10

    sub-double/2addr v6, v10

    mul-double/2addr v4, v6

    .line 276
    add-double v8, v2, v4

    .line 279
    .local v8, "squreDist":D
    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    return-wide v2
.end method

.method public estimateVelocity(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;)V
    .locals 40
    .param p1, "filterdOlderLoc"    # Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;
    .param p2, "currentLoc"    # Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    .prologue
    .line 282
    const/high16 v2, 0x41700000    # 15.0f

    .line 283
    .local v2, "GPS_USEFUL_VEL":F
    new-instance v3, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;-><init>(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;)V

    .line 284
    .local v3, "lppLoc0":Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;
    new-instance v24, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    move-object/from16 v0, v24

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;-><init>(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;)V

    .line 286
    .local v24, "lppLoc2":Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getLatitude()D

    move-result-wide v4

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getLongitude()D

    move-result-wide v6

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getAltitude()D

    move-result-wide v8

    invoke-virtual/range {v3 .. v9}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->setOrigin(DDD)V

    .line 287
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getLatitude()D

    move-result-wide v6

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getLongitude()D

    move-result-wide v8

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getAltitude()D

    move-result-wide v10

    move-object/from16 v5, v24

    invoke-virtual/range {v5 .. v11}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->setOrigin(DDD)V

    .line 290
    invoke-virtual {v3}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getTime()J

    move-result-wide v30

    .line 291
    .local v30, "t0_long":J
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getTime()J

    move-result-wide v34

    .line 292
    .local v34, "t1_long":J
    invoke-virtual/range {v24 .. v24}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getTime()J

    move-result-wide v38

    .line 293
    .local v38, "t2_long":J
    move-wide/from16 v0, v30

    long-to-double v4, v0

    const-wide v6, 0x3f50624dd2f1a9fcL    # 0.001

    mul-double v28, v4, v6

    .line 294
    .local v28, "t0":D
    move-wide/from16 v0, v34

    long-to-double v4, v0

    const-wide v6, 0x3f50624dd2f1a9fcL    # 0.001

    mul-double v32, v4, v6

    .line 295
    .local v32, "t1":D
    move-wide/from16 v0, v38

    long-to-double v4, v0

    const-wide v6, 0x3f50624dd2f1a9fcL    # 0.001

    mul-double v36, v4, v6

    .line 299
    .local v36, "t2":D
    cmp-long v4, v34, v30

    if-eqz v4, :cond_0

    cmp-long v4, v38, v34

    if-nez v4, :cond_1

    .line 300
    :cond_0
    const-string/jumbo v4, "WARNING: estimateVelocity - abnormal t0, t1, t2"

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->SendStatus(Ljava/lang/String;)V

    .line 301
    const-wide/16 v14, 0x0

    .line 302
    .local v14, "X_D1_DiffAvg":D
    const-wide/16 v20, 0x0

    .line 320
    .local v20, "Y_D1_DiffAvg":D
    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->loc:Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->getSpeed()F

    move-result v4

    const/high16 v5, 0x41700000    # 15.0f

    cmpl-float v4, v4, v5

    if-lez v4, :cond_3

    .line 321
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->loc:Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->getBearing()F

    move-result v4

    const/high16 v5, 0x43340000    # 180.0f

    div-float/2addr v4, v5

    float-to-double v4, v4

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v16

    .line 322
    .local v16, "X_D1_GPS":D
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->loc:Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->getBearing()F

    move-result v4

    const/high16 v5, 0x43340000    # 180.0f

    div-float/2addr v4, v5

    float-to-double v4, v4

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v22

    .line 331
    .local v22, "Y_D1_GPS":D
    :goto_1
    cmp-long v4, v38, v30

    if-nez v4, :cond_4

    .line 332
    const-string/jumbo v4, "WARNING: estimateVelocity - abnormal t0, t2"

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->SendStatus(Ljava/lang/String;)V

    .line 333
    const-wide/16 v12, 0x0

    .line 334
    .local v12, "X_D1_Diff":D
    const-wide/16 v18, 0x0

    .line 342
    .local v18, "Y_D1_Diff":D
    :goto_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->loc:Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->getSpeed()F

    move-result v4

    const/high16 v5, 0x41700000    # 15.0f

    cmpl-float v4, v4, v5

    if-lez v4, :cond_5

    .line 343
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->filteredVelocity:[D

    const-wide/16 v6, 0x0

    mul-double/2addr v6, v14

    const-wide v8, 0x3fe6666666666666L    # 0.7

    mul-double v8, v8, v16

    add-double/2addr v6, v8

    const-wide v8, 0x3fd3333333333333L    # 0.3

    mul-double/2addr v8, v12

    add-double/2addr v6, v8

    const/4 v5, 0x0

    aput-wide v6, v4, v5

    .line 344
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->filteredVelocity:[D

    const-wide/16 v6, 0x0

    mul-double v6, v6, v20

    const-wide v8, 0x3fe6666666666666L    # 0.7

    mul-double v8, v8, v22

    add-double/2addr v6, v8

    const-wide v8, 0x3fd3333333333333L    # 0.3

    mul-double v8, v8, v18

    add-double/2addr v6, v8

    const/4 v5, 0x1

    aput-wide v6, v4, v5

    .line 281
    :goto_3
    return-void

    .line 305
    .end local v12    # "X_D1_Diff":D
    .end local v14    # "X_D1_DiffAvg":D
    .end local v16    # "X_D1_GPS":D
    .end local v18    # "Y_D1_Diff":D
    .end local v20    # "Y_D1_DiffAvg":D
    .end local v22    # "Y_D1_GPS":D
    :cond_1
    invoke-virtual/range {v24 .. v24}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getPosEastLocal()D

    move-result-wide v4

    sub-double v6, v36, v32

    div-double/2addr v4, v6

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getPosEastLocal()D

    move-result-wide v6

    const-wide/16 v8, 0x0

    sub-double v6, v8, v6

    sub-double v8, v32, v28

    div-double/2addr v6, v8

    add-double/2addr v4, v6

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double v14, v4, v6

    .line 306
    .restart local v14    # "X_D1_DiffAvg":D
    invoke-virtual/range {v24 .. v24}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getPosNorthLocal()D

    move-result-wide v4

    sub-double v6, v36, v32

    div-double/2addr v4, v6

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getPosNorthLocal()D

    move-result-wide v6

    const-wide/16 v8, 0x0

    sub-double v6, v8, v6

    sub-double v8, v32, v28

    div-double/2addr v6, v8

    add-double/2addr v4, v6

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double v20, v4, v6

    .line 307
    .restart local v20    # "Y_D1_DiffAvg":D
    mul-double v4, v14, v14

    mul-double v6, v20, v20

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v26

    .line 308
    .local v26, "norm":D
    const-wide v4, 0x3f50624dd2f1a9fcL    # 0.001

    cmpl-double v4, v26, v4

    if-lez v4, :cond_2

    .line 309
    div-double v14, v14, v26

    .line 310
    div-double v20, v20, v26

    goto/16 :goto_0

    .line 313
    :cond_2
    const-wide/16 v14, 0x0

    .line 314
    const-wide/16 v20, 0x0

    goto/16 :goto_0

    .line 325
    .end local v26    # "norm":D
    :cond_3
    const-wide/16 v16, 0x0

    .line 326
    .restart local v16    # "X_D1_GPS":D
    const-wide/16 v22, 0x0

    .restart local v22    # "Y_D1_GPS":D
    goto/16 :goto_1

    .line 337
    :cond_4
    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->distanceTo(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;)D

    move-result-wide v26

    .line 338
    .restart local v26    # "norm":D
    invoke-virtual/range {v24 .. v24}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getPosEastLocal()D

    move-result-wide v4

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getPosEastLocal()D

    move-result-wide v6

    sub-double/2addr v4, v6

    sub-double v6, v36, v28

    div-double/2addr v4, v6

    div-double v12, v4, v26

    .line 339
    .restart local v12    # "X_D1_Diff":D
    invoke-virtual/range {v24 .. v24}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getPosNorthLocal()D

    move-result-wide v4

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getPosNorthLocal()D

    move-result-wide v6

    sub-double/2addr v4, v6

    sub-double v6, v36, v28

    div-double/2addr v4, v6

    div-double v18, v4, v26

    .restart local v18    # "Y_D1_Diff":D
    goto/16 :goto_2

    .line 348
    .end local v26    # "norm":D
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->filteredVelocity:[D

    const/4 v5, 0x0

    aput-wide v14, v4, v5

    .line 349
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->filteredVelocity:[D

    const/4 v5, 0x1

    aput-wide v20, v4, v5

    goto/16 :goto_3
.end method

.method public getAccuracy()F
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->loc:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    return v0
.end method

.method public getAltitude()D
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->loc:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getAltitude()D

    move-result-wide v0

    return-wide v0
.end method

.method public getFilteredVelocity()[D
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->filteredVelocity:[D

    return-object v0
.end method

.method public getLatitude()D
    .locals 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->loc:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    return-wide v0
.end method

.method public getLoc()Landroid/location/Location;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->loc:Landroid/location/Location;

    return-object v0
.end method

.method public getLongitude()D
    .locals 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->loc:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    return-wide v0
.end method

.method public getMovingStatus()I
    .locals 1

    .prologue
    .line 251
    iget v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->movingStatus:I

    return v0
.end method

.method public getOriginAltitude()D
    .locals 2

    .prologue
    .line 97
    iget-wide v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->mOrgHei:D

    return-wide v0
.end method

.method public getOriginLat()D
    .locals 2

    .prologue
    .line 87
    iget-wide v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->mOrgLat:D

    return-wide v0
.end method

.method public getOriginLon()D
    .locals 2

    .prologue
    .line 92
    iget-wide v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->mOrgLon:D

    return-wide v0
.end method

.method public getPosECEF_X()D
    .locals 2

    .prologue
    .line 152
    iget-boolean v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->Updated:Z

    if-eqz v0, :cond_0

    .line 153
    invoke-direct {p0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->CalCoordinate()V

    .line 154
    :cond_0
    iget-wide v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->mPosECEF_X:D

    return-wide v0
.end method

.method public getPosECEF_Y()D
    .locals 2

    .prologue
    .line 158
    iget-boolean v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->Updated:Z

    if-eqz v0, :cond_0

    .line 159
    invoke-direct {p0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->CalCoordinate()V

    .line 160
    :cond_0
    iget-wide v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->mPosECEF_Y:D

    return-wide v0
.end method

.method public getPosECEF_Z()D
    .locals 2

    .prologue
    .line 164
    iget-boolean v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->Updated:Z

    if-eqz v0, :cond_0

    .line 165
    invoke-direct {p0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->CalCoordinate()V

    .line 166
    :cond_0
    iget-wide v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->mPosECEF_Z:D

    return-wide v0
.end method

.method public getPosEastLocal()D
    .locals 2

    .prologue
    .line 134
    iget-boolean v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->Updated:Z

    if-eqz v0, :cond_0

    .line 135
    invoke-direct {p0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->CalCoordinate()V

    .line 136
    :cond_0
    iget-wide v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->mPosEast:D

    return-wide v0
.end method

.method public getPosNorthLocal()D
    .locals 2

    .prologue
    .line 140
    iget-boolean v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->Updated:Z

    if-eqz v0, :cond_0

    .line 141
    invoke-direct {p0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->CalCoordinate()V

    .line 142
    :cond_0
    iget-wide v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->mPosNorth:D

    return-wide v0
.end method

.method public getPosUpLocal()D
    .locals 2

    .prologue
    .line 146
    iget-boolean v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->Updated:Z

    if-eqz v0, :cond_0

    .line 147
    invoke-direct {p0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->CalCoordinate()V

    .line 148
    :cond_0
    iget-wide v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->mPosUp:D

    return-wide v0
.end method

.method public getSystemTime()J
    .locals 2

    .prologue
    .line 105
    iget-wide v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->Capturedtime:J

    return-wide v0
.end method

.method public getTime()J
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->loc:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public set(Landroid/location/Location;)V
    .locals 2
    .param p1, "l"    # Landroid/location/Location;

    .prologue
    .line 110
    if-nez p1, :cond_0

    return-void

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->loc:Landroid/location/Location;

    invoke-virtual {v0, p1}, Landroid/location/Location;->set(Landroid/location/Location;)V

    .line 114
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->Capturedtime:J

    .line 115
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->setSystemTime()V

    .line 116
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->Updated:Z

    .line 108
    return-void
.end method

.method public set(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;)V
    .locals 11
    .param p1, "lpploc"    # Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 122
    iget-object v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->loc:Landroid/location/Location;

    iget-object v2, p1, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->loc:Landroid/location/Location;

    invoke-virtual {v1, v2}, Landroid/location/Location;->set(Landroid/location/Location;)V

    .line 123
    invoke-virtual {p1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getOriginLat()D

    move-result-wide v2

    invoke-virtual {p1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getOriginLon()D

    move-result-wide v4

    invoke-virtual {p1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getOriginAltitude()D

    move-result-wide v6

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->setOrigin(DDD)V

    .line 124
    invoke-virtual {p1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getSystemTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->Capturedtime:J

    .line 125
    invoke-virtual {p1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getMovingStatus()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->movingStatus:I

    .line 126
    invoke-virtual {p1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getFilteredVelocity()[D

    move-result-object v0

    .line 127
    .local v0, "filteredV":[D
    iget-object v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->filteredVelocity:[D

    aget-wide v2, v0, v9

    aput-wide v2, v1, v9

    .line 128
    iget-object v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->filteredVelocity:[D

    aget-wide v2, v0, v8

    aput-wide v2, v1, v8

    .line 129
    iget-object v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->filteredVelocity:[D

    aget-wide v2, v0, v10

    aput-wide v2, v1, v10

    .line 130
    iput-boolean v8, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->Updated:Z

    .line 120
    return-void
.end method

.method public setAltitude(D)V
    .locals 1
    .param p1, "d"    # D

    .prologue
    .line 269
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->loc:Landroid/location/Location;

    invoke-virtual {v0, p1, p2}, Landroid/location/Location;->setAltitude(D)V

    .line 270
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->Updated:Z

    .line 268
    return-void
.end method

.method public setLatitude(D)V
    .locals 1
    .param p1, "d"    # D

    .prologue
    .line 259
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->loc:Landroid/location/Location;

    invoke-virtual {v0, p1, p2}, Landroid/location/Location;->setLatitude(D)V

    .line 260
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->Updated:Z

    .line 258
    return-void
.end method

.method public setLongitude(D)V
    .locals 1
    .param p1, "d"    # D

    .prologue
    .line 264
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->loc:Landroid/location/Location;

    invoke-virtual {v0, p1, p2}, Landroid/location/Location;->setLongitude(D)V

    .line 265
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->Updated:Z

    .line 263
    return-void
.end method

.method public setMovingStatus(I)V
    .locals 0
    .param p1, "MS"    # I

    .prologue
    .line 247
    iput p1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->movingStatus:I

    .line 246
    return-void
.end method

.method public setOrigin(DDD)V
    .locals 1
    .param p1, "OrgLat"    # D
    .param p3, "OrgLon"    # D
    .param p5, "OrgHeight"    # D

    .prologue
    .line 79
    iput-wide p1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->mOrgLat:D

    .line 80
    iput-wide p3, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->mOrgLon:D

    .line 81
    iput-wide p5, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->mOrgHei:D

    .line 82
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->Updated:Z

    .line 77
    return-void
.end method

.method public setPosENU(DDD)V
    .locals 9
    .param p1, "PosEast"    # D
    .param p3, "PosNorth"    # D
    .param p5, "PosUp"    # D

    .prologue
    const/4 v3, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 364
    new-array v2, v3, [D

    .line 365
    .local v2, "orgllh":[D
    new-array v0, v3, [D

    .line 367
    .local v0, "enu":[D
    aput-wide p1, v0, v6

    .line 368
    aput-wide p3, v0, v7

    .line 369
    aput-wide p5, v0, v8

    .line 370
    iget-wide v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->mOrgLat:D

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    aput-wide v4, v2, v6

    .line 371
    iget-wide v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->mOrgLon:D

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    aput-wide v4, v2, v7

    .line 372
    iget-wide v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->mOrgHei:D

    aput-wide v4, v2, v8

    .line 374
    invoke-static {v0, v2}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/CoordinateTransform;->enu2llh([D[D)[D

    move-result-object v1

    .line 375
    .local v1, "llh":[D
    iget-object v3, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->loc:Landroid/location/Location;

    aget-wide v4, v1, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/location/Location;->setLatitude(D)V

    .line 376
    iget-object v3, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->loc:Landroid/location/Location;

    aget-wide v4, v1, v7

    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/location/Location;->setLongitude(D)V

    .line 377
    iget-object v3, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->loc:Landroid/location/Location;

    aget-wide v4, v1, v8

    invoke-virtual {v3, v4, v5}, Landroid/location/Location;->setAltitude(D)V

    .line 379
    invoke-direct {p0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->CalCoordinate()V

    .line 361
    return-void
.end method

.method public setSystemTime()V
    .locals 2

    .prologue
    .line 101
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->Capturedtime:J

    .line 100
    return-void
.end method

.method public setSystemTime(J)V
    .locals 9
    .param p1, "systemtime"    # J

    .prologue
    .line 230
    iget-wide v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->Capturedtime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 231
    sget-object v2, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "setSystemTime() - Abnormal method calling"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    :goto_0
    return-void

    .line 234
    :cond_0
    iget-wide v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->Capturedtime:J

    sub-long v2, p1, v2

    long-to-double v0, v2

    .line 235
    .local v0, "timediff":D
    const-wide v2, 0x430c6bf526340000L    # 1.0E15

    cmpl-double v2, v0, v2

    if-lez v2, :cond_1

    .line 236
    sget-object v2, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "systemtime"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "     Capturedtime"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->Capturedtime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    sget-object v2, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setSystemTime() - systemtime overflow or propagation error timediff"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 240
    :cond_1
    iput-wide p1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->Capturedtime:J

    .line 241
    iget-object v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->loc:Landroid/location/Location;

    iget-object v3, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->loc:Landroid/location/Location;

    invoke-virtual {v3}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    const-wide v6, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    mul-double/2addr v6, v0

    double-to-long v6, v6

    add-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Landroid/location/Location;->setTime(J)V

    goto :goto_0
.end method
