.class public final Lcom/samsung/android/allaroundsensing/SemAllAroundSensingManager;
.super Ljava/lang/Object;
.source "SemAllAroundSensingManager.java"


# static fields
.field private static RETURN_ERROR:F = 0.0f

.field private static RETURN_ERROR_INT:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SemAllAroundSensingManager"


# instance fields
.field final mService:Lcom/samsung/android/allaroundsensing/ISemAllAroundSensingManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/high16 v0, -0x40800000    # -1.0f

    sput v0, Lcom/samsung/android/allaroundsensing/SemAllAroundSensingManager;->RETURN_ERROR:F

    const/4 v0, -0x1

    sput v0, Lcom/samsung/android/allaroundsensing/SemAllAroundSensingManager;->RETURN_ERROR_INT:I

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/allaroundsensing/ISemAllAroundSensingManager;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    const-string/jumbo v0, "SemAllAroundSensingManager"

    const-string/jumbo v1, "In Constructor Stub-Service(ISemAllAroundSensingManager) is null"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-object p1, p0, Lcom/samsung/android/allaroundsensing/SemAllAroundSensingManager;->mService:Lcom/samsung/android/allaroundsensing/ISemAllAroundSensingManager;

    return-void
.end method

.method private onError(Ljava/lang/Exception;)V
    .locals 2

    const-string/jumbo v0, "SemAllAroundSensingManager"

    const-string/jumbo v1, "Error SemAllAroundSensingManager"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method


# virtual methods
.method public getBrightnessValue()F
    .locals 2

    iget-object v1, p0, Lcom/samsung/android/allaroundsensing/SemAllAroundSensingManager;->mService:Lcom/samsung/android/allaroundsensing/ISemAllAroundSensingManager;

    if-nez v1, :cond_0

    sget v1, Lcom/samsung/android/allaroundsensing/SemAllAroundSensingManager;->RETURN_ERROR:F

    return v1

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/allaroundsensing/SemAllAroundSensingManager;->mService:Lcom/samsung/android/allaroundsensing/ISemAllAroundSensingManager;

    invoke-interface {v1}, Lcom/samsung/android/allaroundsensing/ISemAllAroundSensingManager;->getBrightnessValue()F
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    sget v1, Lcom/samsung/android/allaroundsensing/SemAllAroundSensingManager;->RETURN_ERROR:F

    return v1
.end method

.method public getBrightnessValueEnable()Z
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/samsung/android/allaroundsensing/SemAllAroundSensingManager;->mService:Lcom/samsung/android/allaroundsensing/ISemAllAroundSensingManager;

    if-nez v1, :cond_0

    return v2

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/allaroundsensing/SemAllAroundSensingManager;->mService:Lcom/samsung/android/allaroundsensing/ISemAllAroundSensingManager;

    invoke-interface {v1}, Lcom/samsung/android/allaroundsensing/ISemAllAroundSensingManager;->getBrightnessValueEnable()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    return v2
.end method

.method public getPlatformBrightnessValue()I
    .locals 2

    iget-object v1, p0, Lcom/samsung/android/allaroundsensing/SemAllAroundSensingManager;->mService:Lcom/samsung/android/allaroundsensing/ISemAllAroundSensingManager;

    if-nez v1, :cond_0

    sget v1, Lcom/samsung/android/allaroundsensing/SemAllAroundSensingManager;->RETURN_ERROR_INT:I

    return v1

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/allaroundsensing/SemAllAroundSensingManager;->mService:Lcom/samsung/android/allaroundsensing/ISemAllAroundSensingManager;

    invoke-interface {v1}, Lcom/samsung/android/allaroundsensing/ISemAllAroundSensingManager;->getPlatformBrightnessValue()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    sget v1, Lcom/samsung/android/allaroundsensing/SemAllAroundSensingManager;->RETURN_ERROR_INT:I

    return v1
.end method

.method public setBrightnessValue(F)V
    .locals 2

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/allaroundsensing/SemAllAroundSensingManager;->mService:Lcom/samsung/android/allaroundsensing/ISemAllAroundSensingManager;

    invoke-interface {v1, p1}, Lcom/samsung/android/allaroundsensing/ISemAllAroundSensingManager;->setBrightnessValue(F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/samsung/android/allaroundsensing/SemAllAroundSensingManager;->onError(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public setBrightnessValue(J)V
    .locals 0

    return-void
.end method

.method public setBrightnessValueEnabled(Z)V
    .locals 2

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/allaroundsensing/SemAllAroundSensingManager;->mService:Lcom/samsung/android/allaroundsensing/ISemAllAroundSensingManager;

    invoke-interface {v1, p1}, Lcom/samsung/android/allaroundsensing/ISemAllAroundSensingManager;->setBrightnessValueEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/samsung/android/allaroundsensing/SemAllAroundSensingManager;->onError(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public setPlatformBrightnessValue(I)V
    .locals 2

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/allaroundsensing/SemAllAroundSensingManager;->mService:Lcom/samsung/android/allaroundsensing/ISemAllAroundSensingManager;

    invoke-interface {v1, p1}, Lcom/samsung/android/allaroundsensing/ISemAllAroundSensingManager;->setPlatformBrightnessValue(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/samsung/android/allaroundsensing/SemAllAroundSensingManager;->onError(Ljava/lang/Exception;)V

    goto :goto_0
.end method
