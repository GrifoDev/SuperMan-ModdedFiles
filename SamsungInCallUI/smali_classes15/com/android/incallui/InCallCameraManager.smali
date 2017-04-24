.class public Lcom/android/incallui/InCallCameraManager;
.super Ljava/lang/Object;
.source "InCallCameraManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/InCallCameraManager$Listener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PSTNVT-InCallCameraManager"


# instance fields
.field private final mCameraSelectionListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/incallui/InCallCameraManager$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mFrontFacingCameraId:Ljava/lang/String;

.field private mIsInitialized:Z

.field private mRearFacingCameraId:Ljava/lang/String;

.field private mUseFrontFacingCamera:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x8

    const v2, 0x3f666666    # 0.9f

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/InCallCameraManager;->mCameraSelectionListeners:Ljava/util/Set;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/InCallCameraManager;->mIsInitialized:Z

    iput-boolean v3, p0, Lcom/android/incallui/InCallCameraManager;->mUseFrontFacingCamera:Z

    iput-object p1, p0, Lcom/android/incallui/InCallCameraManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method private maybeInitializeCameraList(Landroid/content/Context;)V
    .locals 9

    const/4 v8, 0x1

    iget-boolean v6, p0, Lcom/android/incallui/InCallCameraManager;->mIsInitialized:Z

    if-nez v6, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallControl;->isSecVT()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-direct {p0}, Lcom/android/incallui/InCallCameraManager;->secMaybeInitializeCameraList()V

    goto :goto_0

    :cond_2
    const-string v6, "PSTNVT-InCallCameraManager"

    const-string v7, "initializeCameraList"

    invoke-static {v6, v7}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    :try_start_0
    const-string v6, "camera"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/CameraManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    const/4 v6, 0x0

    new-array v1, v6, [Ljava/lang/String;

    :try_start_1
    invoke-virtual {v2}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;
    :try_end_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    const/4 v5, 0x0

    :goto_1
    array-length v6, v1

    if-ge v5, v6, :cond_5

    const/4 v0, 0x0

    :try_start_2
    aget-object v6, v1, v5

    invoke-virtual {v2, v6}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    :goto_2
    if-eqz v0, :cond_3

    sget-object v6, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v6}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-nez v4, :cond_4

    aget-object v6, v1, v5

    iput-object v6, p0, Lcom/android/incallui/InCallCameraManager;->mFrontFacingCameraId:Ljava/lang/String;

    :cond_3
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :catch_0
    move-exception v3

    const-string v6, "PSTNVT-InCallCameraManager"

    const-string v7, "Could not get camera service."

    invoke-static {v6, v7}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v3

    const-string v6, "PSTNVT-InCallCameraManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Could not access camera: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    if-ne v4, v8, :cond_3

    aget-object v6, v1, v5

    iput-object v6, p0, Lcom/android/incallui/InCallCameraManager;->mRearFacingCameraId:Ljava/lang/String;

    goto :goto_3

    :cond_5
    iput-boolean v8, p0, Lcom/android/incallui/InCallCameraManager;->mIsInitialized:Z

    const-string v6, "PSTNVT-InCallCameraManager"

    const-string v7, "initializeCameraList : done"

    invoke-static {v6, v7}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_2
    move-exception v6

    goto :goto_2

    :catch_3
    move-exception v6

    goto :goto_2
.end method

.method private secMaybeInitializeCameraList()V
    .locals 2

    const-string v0, "PSTNVT-InCallCameraManager"

    const-string v1, "secMaybeInitializeCameraList"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "1"

    iput-object v0, p0, Lcom/android/incallui/InCallCameraManager;->mFrontFacingCameraId:Ljava/lang/String;

    const-string v0, "0"

    iput-object v0, p0, Lcom/android/incallui/InCallCameraManager;->mRearFacingCameraId:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/InCallCameraManager;->mIsInitialized:Z

    const-string v0, "PSTNVT-InCallCameraManager"

    const-string v1, "secMaybeInitializeCameraList : done"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public addCameraSelectionListener(Lcom/android/incallui/InCallCameraManager$Listener;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallCameraManager;->mCameraSelectionListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public getActiveCameraId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/InCallCameraManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/incallui/InCallCameraManager;->maybeInitializeCameraList(Landroid/content/Context;)V

    iget-boolean v0, p0, Lcom/android/incallui/InCallCameraManager;->mUseFrontFacingCamera:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallCameraManager;->mFrontFacingCameraId:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/InCallCameraManager;->mRearFacingCameraId:Ljava/lang/String;

    goto :goto_0
.end method

.method public isUsingFrontFacingCamera()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/InCallCameraManager;->mUseFrontFacingCamera:Z

    return v0
.end method

.method public removeCameraSelectionListener(Lcom/android/incallui/InCallCameraManager$Listener;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallCameraManager;->mCameraSelectionListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public setUseFrontFacingCamera(Z)V
    .locals 3

    iput-boolean p1, p0, Lcom/android/incallui/InCallCameraManager;->mUseFrontFacingCamera:Z

    iget-object v1, p0, Lcom/android/incallui/InCallCameraManager;->mCameraSelectionListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallCameraManager$Listener;

    iget-boolean v2, p0, Lcom/android/incallui/InCallCameraManager;->mUseFrontFacingCamera:Z

    invoke-interface {v0, v2}, Lcom/android/incallui/InCallCameraManager$Listener;->onActiveCameraSelectionChanged(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method
