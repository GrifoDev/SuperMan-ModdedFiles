.class public Lcom/android/incallui/Call$VideoSettings;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/Call;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VideoSettings"
.end annotation


# static fields
.field public static final CAMERA_DIRECTION_BACK_FACING:I = 0x1

.field public static final CAMERA_DIRECTION_FRONT_FACING:I = 0x0

.field public static final CAMERA_DIRECTION_UNKNOWN:I = -0x1

.field public static final CAMERA_ID_BACK:I = 0x0

.field public static final CAMERA_ID_FRONT:I = 0x1

.field public static final CAMERA_ID_UNKNOWN:I = -0x1


# instance fields
.field private mCameraDirection:I

.field private mCameraId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/android/incallui/Call$VideoSettings;->mCameraDirection:I

    iput v0, p0, Lcom/android/incallui/Call$VideoSettings;->mCameraId:I

    return-void
.end method


# virtual methods
.method public getCameraDir()I
    .locals 1

    iget v0, p0, Lcom/android/incallui/Call$VideoSettings;->mCameraDirection:I

    return v0
.end method

.method public getCameraId()I
    .locals 1

    iget v0, p0, Lcom/android/incallui/Call$VideoSettings;->mCameraId:I

    return v0
.end method

.method public getToggledCameraDir()I
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/android/incallui/Call$VideoSettings;->mCameraDirection:I

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget v1, p0, Lcom/android/incallui/Call$VideoSettings;->mCameraDirection:I

    if-ne v1, v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getToggledCameraId()I
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/android/incallui/Call$VideoSettings;->mCameraId:I

    if-ne v1, v0, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/android/incallui/Call$VideoSettings;->mCameraId:I

    if-eqz v1, :cond_0

    const/4 v0, -0x1

    goto :goto_0
.end method

.method public setCameraDir(I)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    :cond_0
    iput p1, p0, Lcom/android/incallui/Call$VideoSettings;->mCameraDirection:I

    :goto_0
    return-void

    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/incallui/Call$VideoSettings;->mCameraDirection:I

    goto :goto_0
.end method

.method public setCameraId(I)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    iput p1, p0, Lcom/android/incallui/Call$VideoSettings;->mCameraId:I

    :goto_0
    return-void

    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/incallui/Call$VideoSettings;->mCameraId:I

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(CameraDir:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/incallui/Call$VideoSettings;->getCameraDir()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "(CameraId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/incallui/Call$VideoSettings;->getCameraId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
