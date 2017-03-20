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
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x8

    const v2, 0x3f666666    # 0.9f

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    .line 43
    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/InCallCameraManager;->mCameraSelectionListeners:Ljava/util/Set;

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/InCallCameraManager;->mIsInitialized:Z

    .line 77
    iput-boolean v3, p0, Lcom/android/incallui/InCallCameraManager;->mUseFrontFacingCamera:Z

    .line 78
    iput-object p1, p0, Lcom/android/incallui/InCallCameraManager;->mContext:Landroid/content/Context;

    .line 79
    return-void
.end method

.method private maybeInitializeCameraList(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x1

    .line 123
    iget-boolean v6, p0, Lcom/android/incallui/InCallCameraManager;->mIsInitialized:Z

    if-nez v6, :cond_0

    if-nez p1, :cond_1

    .line 175
    :cond_0
    :goto_0
    return-void

    .line 126
    :cond_1
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallControl;->isSecVT()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 127
    invoke-direct {p0}, Lcom/android/incallui/InCallCameraManager;->secMaybeInitializeCameraList()V

    goto :goto_0

    .line 130
    :cond_2
    const-string v6, "PSTNVT-InCallCameraManager"

    const-string v7, "initializeCameraList"

    invoke-static {v6, v7}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    const/4 v2, 0x0

    .line 134
    .local v2, "cameraManager":Landroid/hardware/camera2/CameraManager;
    :try_start_0
    const-string v6, "camera"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "cameraManager":Landroid/hardware/camera2/CameraManager;
    check-cast v2, Landroid/hardware/camera2/CameraManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    .restart local v2    # "cameraManager":Landroid/hardware/camera2/CameraManager;
    if-eqz v2, :cond_0

    .line 145
    const/4 v6, 0x0

    new-array v1, v6, [Ljava/lang/String;

    .line 147
    .local v1, "cameraIds":[Ljava/lang/String;
    :try_start_1
    invoke-virtual {v2}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;
    :try_end_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 154
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    array-length v6, v1

    if-ge v5, v6, :cond_5

    .line 155
    const/4 v0, 0x0

    .line 157
    .local v0, "c":Landroid/hardware/camera2/CameraCharacteristics;
    :try_start_2
    aget-object v6, v1, v5

    invoke-virtual {v2, v6}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    .line 163
    :goto_2
    if-eqz v0, :cond_3

    .line 164
    sget-object v6, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v6}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 165
    .local v4, "facingCharacteristic":I
    if-nez v4, :cond_4

    .line 166
    aget-object v6, v1, v5

    iput-object v6, p0, Lcom/android/incallui/InCallCameraManager;->mFrontFacingCameraId:Ljava/lang/String;

    .line 154
    .end local v4    # "facingCharacteristic":I
    :cond_3
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 136
    .end local v0    # "c":Landroid/hardware/camera2/CameraCharacteristics;
    .end local v1    # "cameraIds":[Ljava/lang/String;
    .end local v2    # "cameraManager":Landroid/hardware/camera2/CameraManager;
    .end local v5    # "i":I
    :catch_0
    move-exception v3

    .line 137
    .local v3, "e":Ljava/lang/Exception;
    const-string v6, "PSTNVT-InCallCameraManager"

    const-string v7, "Could not get camera service."

    invoke-static {v6, v7}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 148
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v1    # "cameraIds":[Ljava/lang/String;
    .restart local v2    # "cameraManager":Landroid/hardware/camera2/CameraManager;
    :catch_1
    move-exception v3

    .line 149
    .local v3, "e":Landroid/hardware/camera2/CameraAccessException;
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

    .line 167
    .end local v3    # "e":Landroid/hardware/camera2/CameraAccessException;
    .restart local v0    # "c":Landroid/hardware/camera2/CameraCharacteristics;
    .restart local v4    # "facingCharacteristic":I
    .restart local v5    # "i":I
    :cond_4
    if-ne v4, v8, :cond_3

    .line 168
    aget-object v6, v1, v5

    iput-object v6, p0, Lcom/android/incallui/InCallCameraManager;->mRearFacingCameraId:Ljava/lang/String;

    goto :goto_3

    .line 173
    .end local v0    # "c":Landroid/hardware/camera2/CameraCharacteristics;
    .end local v4    # "facingCharacteristic":I
    :cond_5
    iput-boolean v8, p0, Lcom/android/incallui/InCallCameraManager;->mIsInitialized:Z

    .line 174
    const-string v6, "PSTNVT-InCallCameraManager"

    const-string v7, "initializeCameraList : done"

    invoke-static {v6, v7}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 160
    .restart local v0    # "c":Landroid/hardware/camera2/CameraCharacteristics;
    :catch_2
    move-exception v6

    goto :goto_2

    .line 158
    :catch_3
    move-exception v6

    goto :goto_2
.end method

.method private secMaybeInitializeCameraList()V
    .locals 2

    .prologue
    .line 178
    const-string v0, "PSTNVT-InCallCameraManager"

    const-string v1, "secMaybeInitializeCameraList"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    const-string v0, "1"

    iput-object v0, p0, Lcom/android/incallui/InCallCameraManager;->mFrontFacingCameraId:Ljava/lang/String;

    .line 180
    const-string v0, "0"

    iput-object v0, p0, Lcom/android/incallui/InCallCameraManager;->mRearFacingCameraId:Ljava/lang/String;

    .line 181
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/InCallCameraManager;->mIsInitialized:Z

    .line 182
    const-string v0, "PSTNVT-InCallCameraManager"

    const-string v1, "secMaybeInitializeCameraList : done"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    return-void
.end method


# virtual methods
.method public addCameraSelectionListener(Lcom/android/incallui/InCallCameraManager$Listener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/incallui/InCallCameraManager$Listener;

    .prologue
    .line 186
    if-eqz p1, :cond_0

    .line 187
    iget-object v0, p0, Lcom/android/incallui/InCallCameraManager;->mCameraSelectionListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 189
    :cond_0
    return-void
.end method

.method public getActiveCameraId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/incallui/InCallCameraManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/incallui/InCallCameraManager;->maybeInitializeCameraList(Landroid/content/Context;)V

    .line 110
    iget-boolean v0, p0, Lcom/android/incallui/InCallCameraManager;->mUseFrontFacingCamera:Z

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/android/incallui/InCallCameraManager;->mFrontFacingCameraId:Ljava/lang/String;

    .line 113
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/InCallCameraManager;->mRearFacingCameraId:Ljava/lang/String;

    goto :goto_0
.end method

.method public isUsingFrontFacingCamera()Z
    .locals 1

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/android/incallui/InCallCameraManager;->mUseFrontFacingCamera:Z

    return v0
.end method

.method public removeCameraSelectionListener(Lcom/android/incallui/InCallCameraManager$Listener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/incallui/InCallCameraManager$Listener;

    .prologue
    .line 192
    if-eqz p1, :cond_0

    .line 193
    iget-object v0, p0, Lcom/android/incallui/InCallCameraManager;->mCameraSelectionListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 195
    :cond_0
    return-void
.end method

.method public setUseFrontFacingCamera(Z)V
    .locals 3
    .param p1, "useFrontFacingCamera"    # Z

    .prologue
    .line 87
    iput-boolean p1, p0, Lcom/android/incallui/InCallCameraManager;->mUseFrontFacingCamera:Z

    .line 88
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

    .line 89
    .local v0, "listener":Lcom/android/incallui/InCallCameraManager$Listener;
    iget-boolean v2, p0, Lcom/android/incallui/InCallCameraManager;->mUseFrontFacingCamera:Z

    invoke-interface {v0, v2}, Lcom/android/incallui/InCallCameraManager$Listener;->onActiveCameraSelectionChanged(Z)V

    goto :goto_0

    .line 91
    .end local v0    # "listener":Lcom/android/incallui/InCallCameraManager$Listener;
    :cond_0
    return-void
.end method
