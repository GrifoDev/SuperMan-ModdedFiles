.class public abstract Lcom/android/incallui/service/vt/InCallRotationEventListener;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/service/vt/InCallRotationEventListener$InCallDisplayListener;
    }
.end annotation


# static fields
.field private static final ANGLE_ROTATION_180:I = 0xb4

.field private static final ANGLE_ROTATION_270:I = 0x5a

.field private static final ANGLE_ROTATION_90:I = 0x10e

.field private static final BOUNDARY:I = 0x2d

.field private static final MAX_ANGLE:I = 0x168

.field private static final RANGE:I = 0x5a

.field private static final THRESHOLD:I = 0x46


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDisplayListener:Lcom/android/incallui/service/vt/InCallRotationEventListener$InCallDisplayListener;

.field protected mOrientation:I

.field private mOrientationEventListener:Landroid/view/OrientationEventListener;

.field protected mRotation:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/android/incallui/service/vt/InCallRotationEventListener;->mOrientation:I

    iput v0, p0, Lcom/android/incallui/service/vt/InCallRotationEventListener;->mRotation:I

    iput-object v1, p0, Lcom/android/incallui/service/vt/InCallRotationEventListener;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    iput-object v1, p0, Lcom/android/incallui/service/vt/InCallRotationEventListener;->mDisplayListener:Lcom/android/incallui/service/vt/InCallRotationEventListener$InCallDisplayListener;

    const-string v0, "InCallRotationEventListener - Created"

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->rotation(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/incallui/service/vt/InCallRotationEventListener;->mContext:Landroid/content/Context;

    const-string v1, "ril.ims.rotation"

    invoke-virtual {p0}, Lcom/android/incallui/service/vt/InCallRotationEventListener;->isEnabledAutoRotation()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "true"

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SemSystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "false"

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/incallui/service/vt/InCallRotationEventListener;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/incallui/service/vt/InCallRotationEventListener;->onChanged(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/incallui/service/vt/InCallRotationEventListener;)I
    .locals 1

    invoke-direct {p0}, Lcom/android/incallui/service/vt/InCallRotationEventListener;->getDisplayRotation()I

    move-result v0

    return v0
.end method

.method private disableDisplayListener()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/service/vt/InCallRotationEventListener;->mDisplayListener:Lcom/android/incallui/service/vt/InCallRotationEventListener$InCallDisplayListener;

    if-eqz v0, :cond_0

    const-string v0, "InCallRotationEventListener - disableDisplayListener"

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->rotation(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/service/vt/InCallRotationEventListener;->mContext:Landroid/content/Context;

    const-string v1, "display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iget-object v1, p0, Lcom/android/incallui/service/vt/InCallRotationEventListener;->mDisplayListener:Lcom/android/incallui/service/vt/InCallRotationEventListener$InCallDisplayListener;

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/service/vt/InCallRotationEventListener;->mDisplayListener:Lcom/android/incallui/service/vt/InCallRotationEventListener$InCallDisplayListener;

    :cond_0
    return-void
.end method

.method private disableOrientationEventListener()V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/service/vt/InCallRotationEventListener;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_0

    const-string v0, "InCallRotationEventListener - disableOrientationEventListener"

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->rotation(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/service/vt/InCallRotationEventListener;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/service/vt/InCallRotationEventListener;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    :cond_0
    return-void
.end method

.method private enableDisplayListener()V
    .locals 3

    iget-object v0, p0, Lcom/android/incallui/service/vt/InCallRotationEventListener;->mDisplayListener:Lcom/android/incallui/service/vt/InCallRotationEventListener$InCallDisplayListener;

    if-nez v0, :cond_0

    const-string v0, "InCallRotationEventListener - setDisplayType :  enableDisplayListener"

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->rotation(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/incallui/service/vt/InCallRotationEventListener;->getDisplayRotation()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/service/vt/InCallRotationEventListener;->notifyRotationChanged(I)V

    new-instance v0, Lcom/android/incallui/service/vt/InCallRotationEventListener$InCallDisplayListener;

    invoke-direct {v0, p0}, Lcom/android/incallui/service/vt/InCallRotationEventListener$InCallDisplayListener;-><init>(Lcom/android/incallui/service/vt/InCallRotationEventListener;)V

    iput-object v0, p0, Lcom/android/incallui/service/vt/InCallRotationEventListener;->mDisplayListener:Lcom/android/incallui/service/vt/InCallRotationEventListener$InCallDisplayListener;

    iget-object v0, p0, Lcom/android/incallui/service/vt/InCallRotationEventListener;->mContext:Landroid/content/Context;

    const-string v1, "display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iget-object v1, p0, Lcom/android/incallui/service/vt/InCallRotationEventListener;->mDisplayListener:Lcom/android/incallui/service/vt/InCallRotationEventListener$InCallDisplayListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    :cond_0
    return-void
.end method

.method private enableOrientationEventListener()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/service/vt/InCallRotationEventListener;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    if-nez v0, :cond_1

    const-string v0, "InCallRotationEventListener - setSensorType : enableOrientationEventListener"

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->rotation(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/incallui/service/vt/InCallRotationEventListener;->mRotation:I

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/service/vt/InCallRotationEventListener;->resetDeviceRotatoin()V

    :cond_0
    new-instance v0, Lcom/android/incallui/service/vt/InCallRotationEventListener$1;

    iget-object v1, p0, Lcom/android/incallui/service/vt/InCallRotationEventListener;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/incallui/service/vt/InCallRotationEventListener$1;-><init>(Lcom/android/incallui/service/vt/InCallRotationEventListener;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/incallui/service/vt/InCallRotationEventListener;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    iget-object v0, p0, Lcom/android/incallui/service/vt/InCallRotationEventListener;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    :cond_1
    return-void
.end method

.method private getDisplayRotation()I
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/service/vt/InCallRotationEventListener;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onChanged(I)V
    .locals 6

    const/4 v5, -0x1

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v0, 0x1

    const/4 v4, 0x0

    iget v3, p0, Lcom/android/incallui/service/vt/InCallRotationEventListener;->mRotation:I

    if-ne p1, v5, :cond_0

    iput v5, p0, Lcom/android/incallui/service/vt/InCallRotationEventListener;->mOrientation:I

    :goto_0
    return-void

    :cond_0
    iget v5, p0, Lcom/android/incallui/service/vt/InCallRotationEventListener;->mRotation:I

    packed-switch v5, :pswitch_data_0

    move v0, v4

    :cond_1
    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/incallui/service/vt/InCallRotationEventListener;->notifyRotationChanged(I)V

    goto :goto_0

    :pswitch_0
    const/16 v4, 0xc8

    if-ge v4, p1, :cond_2

    const/16 v4, 0x122

    if-lt p1, v4, :cond_1

    :cond_2
    const/16 v0, 0x46

    if-ge v0, p1, :cond_3

    const/16 v0, 0xa0

    if-ge p1, v0, :cond_3

    move v0, v1

    goto :goto_1

    :cond_3
    const/16 v0, 0x87

    if-ge v0, p1, :cond_d

    const/16 v0, 0xe1

    if-ge p1, v0, :cond_d

    move v0, v2

    goto :goto_1

    :pswitch_1
    const/16 v0, 0x154

    if-lt v0, p1, :cond_4

    const/16 v0, 0x46

    if-ge p1, v0, :cond_5

    :cond_4
    move v0, v4

    goto :goto_1

    :cond_5
    const/16 v0, 0x6e

    if-ge v0, p1, :cond_6

    const/16 v0, 0xc8

    if-ge p1, v0, :cond_6

    move v0, v2

    goto :goto_1

    :cond_6
    const/16 v0, 0x2d

    if-ge v0, p1, :cond_d

    const/16 v0, 0x87

    if-ge p1, v0, :cond_d

    move v0, v1

    goto :goto_1

    :pswitch_2
    const/16 v2, 0xfa

    if-ge v2, p1, :cond_7

    const/16 v2, 0x154

    if-lt p1, v2, :cond_1

    :cond_7
    const/16 v0, 0x14

    if-ge v0, p1, :cond_8

    const/16 v0, 0x6e

    if-ge p1, v0, :cond_8

    move v0, v1

    goto :goto_1

    :cond_8
    const/16 v0, 0x2d

    if-gt v0, p1, :cond_9

    const/16 v0, 0x13b

    if-le p1, v0, :cond_d

    :cond_9
    move v0, v4

    goto :goto_1

    :pswitch_3
    const/16 v1, 0x14

    if-gt v1, p1, :cond_a

    const/16 v1, 0x122

    if-le p1, v1, :cond_b

    :cond_a
    move v0, v4

    goto :goto_1

    :cond_b
    const/16 v1, 0xa0

    if-ge v1, p1, :cond_c

    const/16 v1, 0xfa

    if-ge p1, v1, :cond_c

    move v0, v2

    goto :goto_1

    :cond_c
    const/16 v1, 0xe1

    if-ge v1, p1, :cond_d

    const/16 v1, 0x13b

    if-lt p1, v1, :cond_1

    :cond_d
    move v0, v3

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private setDisplayType()V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/service/vt/InCallRotationEventListener;->disableOrientationEventListener()V

    invoke-direct {p0}, Lcom/android/incallui/service/vt/InCallRotationEventListener;->enableDisplayListener()V

    return-void
.end method

.method private setSensorType()V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/service/vt/InCallRotationEventListener;->disableDisplayListener()V

    invoke-direct {p0}, Lcom/android/incallui/service/vt/InCallRotationEventListener;->enableOrientationEventListener()V

    return-void
.end method


# virtual methods
.method public disable()V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/service/vt/InCallRotationEventListener;->disableDisplayListener()V

    invoke-direct {p0}, Lcom/android/incallui/service/vt/InCallRotationEventListener;->disableOrientationEventListener()V

    return-void
.end method

.method public getDeviceRotation()I
    .locals 1

    iget v0, p0, Lcom/android/incallui/service/vt/InCallRotationEventListener;->mRotation:I

    return v0
.end method

.method public isDisplayType()Z
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/service/vt/InCallRotationEventListener;->mDisplayListener:Lcom/android/incallui/service/vt/InCallRotationEventListener$InCallDisplayListener;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnabled()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/service/vt/InCallRotationEventListener;->isSensorType()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/service/vt/InCallRotationEventListener;->isDisplayType()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnabledAutoRotation()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/incallui/service/vt/InCallRotationEventListener;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "accelerometer_rotation"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isSensorType()Z
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/service/vt/InCallRotationEventListener;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyRotationChanged(I)V
    .locals 1

    iget v0, p0, Lcom/android/incallui/service/vt/InCallRotationEventListener;->mRotation:I

    if-eq p1, v0, :cond_0

    iput p1, p0, Lcom/android/incallui/service/vt/InCallRotationEventListener;->mRotation:I

    iget v0, p0, Lcom/android/incallui/service/vt/InCallRotationEventListener;->mRotation:I

    invoke-virtual {p0, v0}, Lcom/android/incallui/service/vt/InCallRotationEventListener;->onRotationChanged(I)V

    :cond_0
    return-void
.end method

.method public abstract onRotationChanged(I)V
.end method

.method public onUiShowing(Z)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/service/vt/InCallRotationEventListener;->isEnabledAutoRotation()Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v0

    :goto_0
    if-nez v2, :cond_1

    sget-boolean v3, Lcom/android/incallui/service/vt/VideoCallConfig;->DEVICE_ROTATION_ACCELEROMETER:Z

    if-eqz v3, :cond_1

    :goto_1
    if-eqz v2, :cond_2

    invoke-direct {p0}, Lcom/android/incallui/service/vt/InCallRotationEventListener;->setDisplayType()V

    :goto_2
    return-void

    :cond_0
    move v2, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/android/incallui/service/vt/InCallRotationEventListener;->setSensorType()V

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Lcom/android/incallui/service/vt/InCallRotationEventListener;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/incallui/service/vt/InCallRotationEventListener;->disable()V

    :cond_4
    invoke-virtual {p0}, Lcom/android/incallui/service/vt/InCallRotationEventListener;->resetDeviceRotatoin()V

    goto :goto_2
.end method

.method public resetDeviceRotatoin()V
    .locals 2

    const-string v1, "ril.ims.rotation"

    invoke-virtual {p0}, Lcom/android/incallui/service/vt/InCallRotationEventListener;->isEnabledAutoRotation()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "true"

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SemSystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/incallui/service/vt/InCallRotationEventListener;->getDisplayRotation()I

    move-result v0

    iput v0, p0, Lcom/android/incallui/service/vt/InCallRotationEventListener;->mRotation:I

    iget v0, p0, Lcom/android/incallui/service/vt/InCallRotationEventListener;->mRotation:I

    invoke-virtual {p0, v0}, Lcom/android/incallui/service/vt/InCallRotationEventListener;->onRotationChanged(I)V

    return-void

    :cond_0
    const-string v0, "false"

    goto :goto_0
.end method
