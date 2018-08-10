.class public Lcom/android/systemui/volume/car/CarVolumeDialogController;
.super Lcom/android/systemui/volume/VolumeDialogControllerImpl;
.source "CarVolumeDialogController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/volume/car/CarVolumeDialogController$1;
    }
.end annotation


# instance fields
.field private final mCar:Landroid/car/Car;

.field private mCarAudioManager:Landroid/car/media/CarAudioManager;

.field private final mConnection:Landroid/content/ServiceConnection;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/volume/car/CarVolumeDialogController;)Landroid/car/Car;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/car/CarVolumeDialogController;->mCar:Landroid/car/Car;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/volume/car/CarVolumeDialogController;Landroid/car/media/CarAudioManager;)Landroid/car/media/CarAudioManager;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/volume/car/CarVolumeDialogController;->mCarAudioManager:Landroid/car/media/CarAudioManager;

    return-object p1
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/android/systemui/volume/car/CarVolumeDialogController$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/volume/car/CarVolumeDialogController$1;-><init>(Lcom/android/systemui/volume/car/CarVolumeDialogController;)V

    iput-object v0, p0, Lcom/android/systemui/volume/car/CarVolumeDialogController;->mConnection:Landroid/content/ServiceConnection;

    iget-object v0, p0, Lcom/android/systemui/volume/car/CarVolumeDialogController;->mConnection:Landroid/content/ServiceConnection;

    invoke-static {p1, v0}, Landroid/car/Car;->createCar(Landroid/content/Context;Landroid/content/ServiceConnection;)Landroid/car/Car;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/car/CarVolumeDialogController;->mCar:Landroid/car/Car;

    iget-object v0, p0, Lcom/android/systemui/volume/car/CarVolumeDialogController;->mCar:Landroid/car/Car;

    invoke-virtual {v0}, Landroid/car/Car;->connect()V

    return-void
.end method


# virtual methods
.method public setVolumeController()V
    .locals 3

    iget-object v1, p0, Lcom/android/systemui/volume/car/CarVolumeDialogController;->mCarAudioManager:Landroid/car/media/CarAudioManager;

    if-nez v1, :cond_0

    const-string/jumbo v1, "CarVolumeDialogController"

    const-string/jumbo v2, "Car audio manager is not initialized yet"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/volume/car/CarVolumeDialogController;->mCarAudioManager:Landroid/car/media/CarAudioManager;

    iget-object v2, p0, Lcom/android/systemui/volume/car/CarVolumeDialogController;->mVolumeController:Lcom/android/systemui/volume/VolumeDialogControllerImpl$VC;

    invoke-virtual {v1, v2}, Landroid/car/media/CarAudioManager;->setVolumeController(Landroid/media/IVolumeController;)V
    :try_end_0
    .catch Landroid/car/CarNotConnectedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "CarVolumeDialogController"

    const-string/jumbo v2, "Car is not connected"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
