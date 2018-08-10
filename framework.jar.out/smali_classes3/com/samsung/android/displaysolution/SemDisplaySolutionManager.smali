.class public final Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;
.super Ljava/lang/Object;
.source "SemDisplaySolutionManager.java"


# static fields
.field private static RETURN_ERROR:J = 0x0L

.field private static RETURN_ERROR_F:F = 0.0f

.field public static final SUPPORT_CHANGABLE_NORMAL_AUTO_BRIGHTNESS:I = 0x2

.field public static final SUPPORT_CHANGABLE_NUMBER_AUTO_BRIGHTNESS:I = 0x1

.field public static final SUPPORT_ONLY_MANUAL_BRIGHTNESS:I = 0x0

.field public static final SUPPORT_PERSONAL_AUTOBRIGHTNESS_CONTROL:I = 0x3

.field public static final SUPPORT_PERSONAL_AUTOBRIGHTNESS_CONTROL_V3:I = 0x4

.field private static final TAG:Ljava/lang/String; = "SemDisplaySolutionManager"


# instance fields
.field final mService:Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->RETURN_ERROR:J

    const/high16 v0, -0x40800000    # -1.0f

    sput v0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->RETURN_ERROR_F:F

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    const-string/jumbo v0, "SemDisplaySolutionManager"

    const-string/jumbo v1, "In Constructor Stub-Service(ISemDisplaySolutionManager) is null"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->mService:Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;

    return-void
.end method

.method private onError(Ljava/lang/Exception;)V
    .locals 2

    const-string/jumbo v0, "SemDisplaySolutionManager"

    const-string/jumbo v1, "Error SemDisplaySolutionManager"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method


# virtual methods
.method public getAlphaBlendingValue()F
    .locals 2

    iget-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->mService:Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;

    if-nez v1, :cond_0

    sget v1, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->RETURN_ERROR_F:F

    return v1

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->mService:Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;

    invoke-interface {v1}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;->getAlphaBlendingValue()F
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    sget v1, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->RETURN_ERROR_F:F

    return v1
.end method

.method public getGalleryModeEnable()Z
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->mService:Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;

    if-nez v1, :cond_0

    return v2

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->mService:Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;

    invoke-interface {v1}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;->getGalleryModeEnable()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    return v2
.end method

.method public getVideoModeEnable()Z
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->mService:Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;

    if-nez v1, :cond_0

    return v2

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->mService:Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;

    invoke-interface {v1}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;->getVideoModeEnable()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    return v2
.end method

.method public isMdnieScenarioControlServiceEnabled()Z
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->mService:Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;

    if-nez v1, :cond_0

    return v2

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->mService:Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;

    invoke-interface {v1}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;->isMdnieScenarioControlServiceEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    return v2
.end method

.method public onHdrStateChanged(Z)V
    .locals 2

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->mService:Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;

    invoke-interface {v1, p1}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;->onHdrStateChanged(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->onError(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public setGalleryModeEnable(Z)V
    .locals 2

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->mService:Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;

    invoke-interface {v1, p1}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;->setGalleryModeEnable(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->onError(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public setIRCompensationMode(Z)V
    .locals 2

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->mService:Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;

    invoke-interface {v1, p1}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;->setIRCompensationMode(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->onError(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public setMdnieScenarioControlServiceEnable(Z)V
    .locals 2

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->mService:Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;

    invoke-interface {v1, p1}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;->setMdnieScenarioControlServiceEnable(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->onError(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public setMultipleScreenBrightness(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->mService:Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;

    invoke-interface {v1, p1}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;->setMultipleScreenBrightness(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->onError(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public setScreenBrightnessForPreview(I)V
    .locals 2

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->mService:Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;

    invoke-interface {v1, p1}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;->setScreenBrightnessForPreview(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->onError(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public setVideoModeEnable(Z)V
    .locals 2

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->mService:Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;

    invoke-interface {v1, p1}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;->setVideoModeEnable(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->onError(Ljava/lang/Exception;)V

    goto :goto_0
.end method
