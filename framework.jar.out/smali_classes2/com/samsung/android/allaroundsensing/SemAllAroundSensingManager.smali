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

    .prologue
    .line 29
    const/high16 v0, -0x40800000    # -1.0f

    sput v0, Lcom/samsung/android/allaroundsensing/SemAllAroundSensingManager;->RETURN_ERROR:F

    .line 30
    const/4 v0, -0x1

    sput v0, Lcom/samsung/android/allaroundsensing/SemAllAroundSensingManager;->RETURN_ERROR_INT:I

    .line 27
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/allaroundsensing/ISemAllAroundSensingManager;)V
    .locals 2
    .param p1, "service"    # Lcom/samsung/android/allaroundsensing/ISemAllAroundSensingManager;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    if-nez p1, :cond_0

    .line 38
    const-string/jumbo v0, "SemAllAroundSensingManager"

    const-string/jumbo v1, "In Constructor Stub-Service(ISemAllAroundSensingManager) is null"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/allaroundsensing/SemAllAroundSensingManager;->mService:Lcom/samsung/android/allaroundsensing/ISemAllAroundSensingManager;

    .line 36
    return-void
.end method

.method private onError(Ljava/lang/Exception;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 131
    const-string/jumbo v0, "SemAllAroundSensingManager"

    const-string/jumbo v1, "Error SemAllAroundSensingManager"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 130
    return-void
.end method


# virtual methods
.method public getBrightnessValue()F
    .locals 2

    .prologue
    .line 46
    iget-object v1, p0, Lcom/samsung/android/allaroundsensing/SemAllAroundSensingManager;->mService:Lcom/samsung/android/allaroundsensing/ISemAllAroundSensingManager;

    if-nez v1, :cond_0

    .line 47
    sget v1, Lcom/samsung/android/allaroundsensing/SemAllAroundSensingManager;->RETURN_ERROR:F

    return v1

    .line 51
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/allaroundsensing/SemAllAroundSensingManager;->mService:Lcom/samsung/android/allaroundsensing/ISemAllAroundSensingManager;

    invoke-interface {v1}, Lcom/samsung/android/allaroundsensing/ISemAllAroundSensingManager;->getBrightnessValue()F
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 52
    :catch_0
    move-exception v0

    .line 53
    .local v0, "e":Landroid/os/RemoteException;
    sget v1, Lcom/samsung/android/allaroundsensing/SemAllAroundSensingManager;->RETURN_ERROR:F

    return v1
.end method

.method public getBrightnessValueEnable()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 77
    iget-object v1, p0, Lcom/samsung/android/allaroundsensing/SemAllAroundSensingManager;->mService:Lcom/samsung/android/allaroundsensing/ISemAllAroundSensingManager;

    if-nez v1, :cond_0

    .line 78
    return v2

    .line 82
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/allaroundsensing/SemAllAroundSensingManager;->mService:Lcom/samsung/android/allaroundsensing/ISemAllAroundSensingManager;

    invoke-interface {v1}, Lcom/samsung/android/allaroundsensing/ISemAllAroundSensingManager;->getBrightnessValueEnable()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 83
    :catch_0
    move-exception v0

    .line 84
    .local v0, "e":Landroid/os/RemoteException;
    return v2
.end method

.method public getPlatformBrightnessValue()I
    .locals 2

    .prologue
    .line 62
    iget-object v1, p0, Lcom/samsung/android/allaroundsensing/SemAllAroundSensingManager;->mService:Lcom/samsung/android/allaroundsensing/ISemAllAroundSensingManager;

    if-nez v1, :cond_0

    .line 63
    sget v1, Lcom/samsung/android/allaroundsensing/SemAllAroundSensingManager;->RETURN_ERROR_INT:I

    return v1

    .line 67
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/allaroundsensing/SemAllAroundSensingManager;->mService:Lcom/samsung/android/allaroundsensing/ISemAllAroundSensingManager;

    invoke-interface {v1}, Lcom/samsung/android/allaroundsensing/ISemAllAroundSensingManager;->getPlatformBrightnessValue()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 68
    :catch_0
    move-exception v0

    .line 69
    .local v0, "e":Landroid/os/RemoteException;
    sget v1, Lcom/samsung/android/allaroundsensing/SemAllAroundSensingManager;->RETURN_ERROR_INT:I

    return v1
.end method

.method public setBrightnessValue(F)V
    .locals 2
    .param p1, "value"    # F

    .prologue
    .line 94
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/allaroundsensing/SemAllAroundSensingManager;->mService:Lcom/samsung/android/allaroundsensing/ISemAllAroundSensingManager;

    invoke-interface {v1, p1}, Lcom/samsung/android/allaroundsensing/ISemAllAroundSensingManager;->setBrightnessValue(F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    :goto_0
    return-void

    .line 95
    :catch_0
    move-exception v0

    .line 96
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/android/allaroundsensing/SemAllAroundSensingManager;->onError(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public setBrightnessValue(J)V
    .locals 0
    .param p1, "value"    # J

    .prologue
    .line 103
    return-void
.end method

.method public setBrightnessValueEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 124
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/allaroundsensing/SemAllAroundSensingManager;->mService:Lcom/samsung/android/allaroundsensing/ISemAllAroundSensingManager;

    invoke-interface {v1, p1}, Lcom/samsung/android/allaroundsensing/ISemAllAroundSensingManager;->setBrightnessValueEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    :goto_0
    return-void

    .line 125
    :catch_0
    move-exception v0

    .line 126
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/android/allaroundsensing/SemAllAroundSensingManager;->onError(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public setPlatformBrightnessValue(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 112
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/allaroundsensing/SemAllAroundSensingManager;->mService:Lcom/samsung/android/allaroundsensing/ISemAllAroundSensingManager;

    invoke-interface {v1, p1}, Lcom/samsung/android/allaroundsensing/ISemAllAroundSensingManager;->setPlatformBrightnessValue(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    :goto_0
    return-void

    .line 113
    :catch_0
    move-exception v0

    .line 114
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/android/allaroundsensing/SemAllAroundSensingManager;->onError(Ljava/lang/Exception;)V

    goto :goto_0
.end method
