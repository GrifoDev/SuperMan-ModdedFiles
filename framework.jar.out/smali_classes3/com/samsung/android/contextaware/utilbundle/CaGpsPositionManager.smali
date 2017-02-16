.class public Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;
.super Ljava/lang/Object;
.source "CaGpsPositionManager.java"

# interfaces
.implements Lcom/samsung/android/contextaware/utilbundle/ICurrentPositionObservable;
.implements Lcom/samsung/android/contextaware/utilbundle/IUtilManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager$1;
    }
.end annotation


# instance fields
.field private mDisabler:Landroid/os/Handler;

.field private mEnable:Z

.field private mGpsManager:Landroid/location/LocationManager;

.field private mGpsTime:J

.field private final mLocationListener:Landroid/location/LocationListener;

.field private final mLooper:Landroid/os/Looper;

.field private mObserver:Lcom/samsung/android/contextaware/manager/ICurrrentPositionObserver;

.field private preLatitude:D

.field private preLongitude:D


# direct methods
.method static synthetic -get0(Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;)Landroid/location/LocationManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;->mGpsManager:Landroid/location/LocationManager;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;)Landroid/location/LocationListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;->mLocationListener:Landroid/location/LocationListener;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;)Landroid/os/Looper;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;->mLooper:Landroid/os/Looper;

    return-object v0
.end method

.method static synthetic -set0(Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;D)D
    .locals 1

    iput-wide p1, p0, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;->preLatitude:D

    return-wide p1
.end method

.method static synthetic -set1(Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;D)D
    .locals 1

    iput-wide p1, p0, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;->preLongitude:D

    return-wide p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;Landroid/location/Location;)V
    .locals 0
    .param p1, "loc"    # Landroid/location/Location;

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;->notifyListener(Landroid/location/Location;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/contextaware/manager/ICurrrentPositionObserver;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "observer"    # Lcom/samsung/android/contextaware/manager/ICurrrentPositionObserver;

    .prologue
    const-wide/16 v2, 0x0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;->mGpsTime:J

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;->mEnable:Z

    .line 53
    iput-wide v2, p0, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;->preLatitude:D

    .line 56
    iput-wide v2, p0, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;->preLongitude:D

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;->mDisabler:Landroid/os/Handler;

    .line 122
    new-instance v0, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager$1;-><init>(Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;->mLocationListener:Landroid/location/LocationListener;

    .line 73
    iput-object p2, p0, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;->mLooper:Landroid/os/Looper;

    .line 74
    invoke-virtual {p0, p1}, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;->initializeManager(Landroid/content/Context;)V

    .line 75
    invoke-virtual {p0, p3}, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;->registerCurrentPositionObserver(Lcom/samsung/android/contextaware/manager/ICurrrentPositionObserver;)V

    .line 71
    return-void
.end method

.method private notifyListener(Landroid/location/Location;)V
    .locals 19
    .param p1, "loc"    # Landroid/location/Location;

    .prologue
    .line 166
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;->mObserver:Lcom/samsung/android/contextaware/manager/ICurrrentPositionObserver;

    if-nez v2, :cond_0

    .line 167
    return-void

    .line 170
    :cond_0
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/CaCurrentUtcTimeManager;->getInstance()Lcom/samsung/android/contextaware/utilbundle/CaCurrentUtcTimeManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/contextaware/utilbundle/CaCurrentUtcTimeManager;->getUtcTime()[I

    move-result-object v18

    .line 173
    .local v18, "utcTime":[I
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v17

    .line 175
    .local v17, "bun":Landroid/os/Bundle;
    const/16 v16, 0x0

    .line 176
    .local v16, "numSat":I
    if-eqz v17, :cond_1

    .line 177
    const-string/jumbo v2, "satellites"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v16

    .line 181
    :cond_1
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;->preLatitude:D

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;->preLongitude:D

    .line 182
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v8

    .line 180
    invoke-static/range {v2 .. v9}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->calculationDistance(DDDD)D

    move-result-wide v12

    .line 184
    .local v12, "distance":D
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;->mObserver:Lcom/samsung/android/contextaware/manager/ICurrrentPositionObserver;

    .line 186
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    .line 187
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v8

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v10

    .line 188
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getSpeed()F

    move-result v14

    .line 189
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getAccuracy()F

    move-result v15

    .line 185
    const/4 v4, 0x1

    move-object/from16 v5, v18

    .line 184
    invoke-interface/range {v3 .. v16}, Lcom/samsung/android/contextaware/manager/ICurrrentPositionObserver;->updateCurrentPosition(I[IDDDDFFI)V

    .line 164
    return-void
.end method


# virtual methods
.method public disable()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 241
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;->mGpsManager:Landroid/location/LocationManager;

    if-nez v0, :cond_0

    .line 242
    const-string/jumbo v0, "cannot unregister the gps listener"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 243
    return-void

    .line 246
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;->mEnable:Z

    if-nez v0, :cond_1

    .line 247
    return-void

    .line 250
    :cond_1
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 252
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;->mLooper:Landroid/os/Looper;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager$5;

    invoke-direct {v1, p0}, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager$5;-><init>(Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;)V

    .line 257
    const-wide/16 v2, 0x0

    .line 252
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 259
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;->mEnable:Z

    .line 262
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;->mDisabler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 263
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;->mDisabler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 240
    :cond_2
    return-void
.end method

.method public final enable()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 196
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;->mGpsManager:Landroid/location/LocationManager;

    if-nez v0, :cond_0

    .line 197
    const-string/jumbo v0, "mGpsManager is null"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 198
    return-void

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;->mLooper:Landroid/os/Looper;

    if-nez v0, :cond_1

    .line 202
    const-string/jumbo v0, "Looper is null"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 203
    return-void

    .line 206
    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;->mEnable:Z

    if-eqz v0, :cond_2

    .line 207
    const-string/jumbo v0, "mEnable value is true."

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->warning(Ljava/lang/String;)V

    .line 208
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;->disable()V

    .line 211
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;->mEnable:Z

    .line 214
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;->mDisabler:Landroid/os/Handler;

    if-eqz v0, :cond_3

    .line 215
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;->mDisabler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 218
    :cond_3
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;->mLooper:Landroid/os/Looper;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager$3;-><init>(Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;)V

    .line 224
    const-wide/16 v2, 0x0

    .line 218
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 227
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;->mLooper:Landroid/os/Looper;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;->mDisabler:Landroid/os/Handler;

    .line 228
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;->mDisabler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager$4;-><init>(Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;)V

    .line 233
    iget-wide v2, p0, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;->mGpsTime:J

    .line 228
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 195
    return-void
.end method

.method public final initializeManager(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 89
    const-string/jumbo v0, "location"

    .line 88
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;->mGpsManager:Landroid/location/LocationManager;

    .line 91
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;->mGpsManager:Landroid/location/LocationManager;

    if-nez v0, :cond_0

    .line 92
    const-string/jumbo v0, "cannot create the GpsManager object"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 95
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;->mEnable:Z

    .line 86
    return-void
.end method

.method public isEnable()Z
    .locals 1

    .prologue
    .line 274
    iget-boolean v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;->mEnable:Z

    return v0
.end method

.method public notifyCurrentPositionObserver()V
    .locals 0

    .prologue
    .line 295
    return-void
.end method

.method public registerCurrentPositionObserver(Lcom/samsung/android/contextaware/manager/ICurrrentPositionObserver;)V
    .locals 0
    .param p1, "observer"    # Lcom/samsung/android/contextaware/manager/ICurrrentPositionObserver;

    .prologue
    .line 285
    iput-object p1, p0, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;->mObserver:Lcom/samsung/android/contextaware/manager/ICurrrentPositionObserver;

    .line 283
    return-void
.end method

.method public setGpsUpdateTime(J)V
    .locals 1
    .param p1, "time"    # J

    .prologue
    .line 278
    iput-wide p1, p0, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;->mGpsTime:J

    .line 277
    return-void
.end method

.method public final terminateManager()V
    .locals 4

    .prologue
    .line 108
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;->mGpsManager:Landroid/location/LocationManager;

    if-nez v0, :cond_0

    .line 109
    const-string/jumbo v0, "mGpsManager is null"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 110
    return-void

    .line 113
    :cond_0
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;->mLooper:Landroid/os/Looper;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager$2;-><init>(Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;)V

    .line 118
    const-wide/16 v2, 0x0

    .line 113
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 107
    return-void
.end method

.method public unregisterCurrentPositionObserver()V
    .locals 1

    .prologue
    .line 291
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaGpsPositionManager;->mObserver:Lcom/samsung/android/contextaware/manager/ICurrrentPositionObserver;

    .line 289
    return-void
.end method
