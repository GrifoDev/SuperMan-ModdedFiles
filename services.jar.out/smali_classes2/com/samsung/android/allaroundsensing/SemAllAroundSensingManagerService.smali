.class public Lcom/samsung/android/allaroundsensing/SemAllAroundSensingManagerService;
.super Lcom/samsung/android/allaroundsensing/ISemAllAroundSensingManager$Stub;
.source "SemAllAroundSensingManagerService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SemAllAroundSensingManagerService"


# instance fields
.field private final DEBUG:Z

.field private aasService:Lcom/samsung/android/allaroundsensing/AllAroundSensingService;

.field private mBVenable:Z

.field private mBrightnessValue:F

.field private final mContext:Landroid/content/Context;

.field private final mLock:Ljava/lang/Object;

.field private mPlatformBrightnessValue:I

.field private mUseAllAroundSensingConfig:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/allaroundsensing/ISemAllAroundSensingManager$Stub;-><init>()V

    const-string/jumbo v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/allaroundsensing/SemAllAroundSensingManagerService;->DEBUG:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/allaroundsensing/SemAllAroundSensingManagerService;->aasService:Lcom/samsung/android/allaroundsensing/AllAroundSensingService;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/allaroundsensing/SemAllAroundSensingManagerService;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/allaroundsensing/SemAllAroundSensingManagerService;->mUseAllAroundSensingConfig:Z

    iput-object p1, p0, Lcom/samsung/android/allaroundsensing/SemAllAroundSensingManagerService;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/samsung/android/allaroundsensing/SemAllAroundSensingManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x112000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/allaroundsensing/SemAllAroundSensingManagerService;->mUseAllAroundSensingConfig:Z

    iget-boolean v0, p0, Lcom/samsung/android/allaroundsensing/SemAllAroundSensingManagerService;->mUseAllAroundSensingConfig:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;

    invoke-direct {v0, p1}, Lcom/samsung/android/allaroundsensing/AllAroundSensingService;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/allaroundsensing/SemAllAroundSensingManagerService;->aasService:Lcom/samsung/android/allaroundsensing/AllAroundSensingService;

    :cond_0
    return-void
.end method


# virtual methods
.method public getBrightnessValue()F
    .locals 1

    iget v0, p0, Lcom/samsung/android/allaroundsensing/SemAllAroundSensingManagerService;->mBrightnessValue:F

    return v0
.end method

.method public getBrightnessValueEnable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/allaroundsensing/SemAllAroundSensingManagerService;->mBVenable:Z

    return v0
.end method

.method public getPlatformBrightnessValue()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/allaroundsensing/SemAllAroundSensingManagerService;->mPlatformBrightnessValue:I

    return v0
.end method

.method public setBrightnessValue(F)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/allaroundsensing/SemAllAroundSensingManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput p1, p0, Lcom/samsung/android/allaroundsensing/SemAllAroundSensingManagerService;->mBrightnessValue:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public setBrightnessValueEnabled(Z)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/allaroundsensing/SemAllAroundSensingManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-boolean p1, p0, Lcom/samsung/android/allaroundsensing/SemAllAroundSensingManagerService;->mBVenable:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public setPlatformBrightnessValue(I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/allaroundsensing/SemAllAroundSensingManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput p1, p0, Lcom/samsung/android/allaroundsensing/SemAllAroundSensingManagerService;->mPlatformBrightnessValue:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
