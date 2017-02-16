.class public abstract Lcom/android/incallui/service/vt/InCallRotationEventListener;
.super Ljava/lang/Object;
.source "InCallRotationEventListener.java"


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
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput v0, p0, Lcom/android/incallui/service/vt/InCallRotationEventListener;->mOrientation:I

    .line 39
    iput v0, p0, Lcom/android/incallui/service/vt/InCallRotationEventListener;->mRotation:I

    .line 40
    iput-object v1, p0, Lcom/android/incallui/service/vt/InCallRotationEventListener;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    .line 41
    iput-object v1, p0, Lcom/android/incallui/service/vt/InCallRotationEventListener;->mDisplayListener:Lcom/android/incallui/service/vt/InCallRotationEventListener$InCallDisplayListener;

    .line 44
    const-string v0, "InCallRotationEventListener - Created"

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->rotation(Ljava/lang/String;)V

    .line 45
    iput-object p1, p0, Lcom/android/incallui/service/vt/InCallRotationEventListener;->mContext:Landroid/content/Context;

    .line 46
    const-string v1, "ril.ims.rotation"

    invoke-virtual {p0}, Lcom/android/incallui/service/vt/InCallRotationEventListener;->isEnabledAutoRotation()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "true"

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SemSystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    return-void

    .line 46
    :cond_0
    const-string v0, "false"

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/incallui/service/vt/InCallRotationEventListener;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/service/vt/InCallRotationEventListener;
    .param p1, "x1"    # I

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/android/incallui/service/vt/InCallRotationEventListener;->onChanged(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/incallui/service/vt/InCallRotationEventListener;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/service/vt/InCallRotationEventListener;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/android/incallui/service/vt/InCallRotationEventListener;->getDisplayRotation()I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/incallui/service/vt/InCallRotationEventListener;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/service/vt/InCallRotationEventListener;
    .param p1, "x1"    # I

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/android/incallui/service/vt/InCallRotationEventListener;->notifyRotationChanged(I)V

    return-void
.end method

.method private disableDisplayListener()V
    .locals 3

    .prologue
    .line 208
    iget-object v1, p0, Lcom/android/incallui/service/vt/InCallRotationEventListener;->mDisplayListener:Lcom/android/incallui/service/vt/InCallRotationEventListener$InCallDisplayListener;

    if-eqz v1, :cond_0

    .line 209
    const-string v1, "InCallRotationEventListener - disableDisplayListener"

    invoke-static {v1}, Lcom/android/incallui/service/vt/VideoCallLog;->rotation(Ljava/lang/String;)V

    .line 210
    iget-object v1, p0, Lcom/android/incallui/service/vt/InCallRotationEventListener;->mContext:Landroid/content/Context;

    const-string v2, "display"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 211
    .local v0, "displayManager":Landroid/hardware/display/DisplayManager;
    iget-object v1, p0, Lcom/android/incallui/service/vt/InCallRotationEventListener;->mDisplayListener:Lcom/android/incallui/service/vt/InCallRotationEventListener$InCallDisplayListener;

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    .line 212
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/incallui/service/vt/InCallRotationEventListener;->mDisplayListener:Lcom/android/incallui/service/vt/InCallRotationEventListener$InCallDisplayListener;

    .line 214
    .end local v0    # "displayManager":Landroid/hardware/display/DisplayManager;
    :cond_0
    return-void
.end method

.method private disableOrientationEventListener()V
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/incallui/service/vt/InCallRotationEventListener;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_0

    .line 118
    const-string v0, "InCallRotationEventListener - disableOrientationEventListener"

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->rotation(Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lcom/android/incallui/service/vt/InCallRotationEventListener;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    .line 120
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/service/vt/InCallRotationEventListener;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    .line 122
    :cond_0
    return-void
.end method

.method private enableDisplayListener()V
    .locals 3

    .prologue
    .line 198
    iget-object v1, p0, Lcom/android/incallui/service/vt/InCallRotationEventListener;->mDisplayListener:Lcom/android/incallui/service/vt/InCallRotationEventListener$InCallDisplayListener;

    if-nez v1, :cond_0

    .line 199
    const-string v1, "InCallRotationEventListener - setDisplayType :  enableDisplayListener"

    invoke-static {v1}, Lcom/android/incallui/service/vt/VideoCallLog;->rotation(Ljava/lang/String;)V

    .line 200
    invoke-direct {p0}, Lcom/android/incallui/service/vt/InCallRotationEventListener;->getDisplayRotation()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/incallui/service/vt/InCallRotationEventListener;->notifyRotationChanged(I)V

    .line 201
    new-instance v1, Lcom/android/incallui/service/vt/InCallRotationEventListener$InCallDisplayListener;

    invoke-direct {v1, p0}, Lcom/android/incallui/service/vt/InCallRotationEventListener$InCallDisplayListener;-><init>(Lcom/android/incallui/service/vt/InCallRotationEventListener;)V

    iput-object v1, p0, Lcom/android/incallui/service/vt/InCallRotationEventListener;->mDisplayListener:Lcom/android/incallui/service/vt/InCallRotationEventListener$InCallDisplayListener;

    .line 202
    iget-object v1, p0, Lcom/android/incallui/service/vt/InCallRotationEventListener;->mContext:Landroid/content/Context;

    const-string v2, "display"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 203
    .local v0, "displayManager":Landroid/hardware/display/DisplayManager;
    iget-object v1, p0, Lcom/android/incallui/service/vt/InCallRotationEventListener;->mDisplayListener:Lcom/android/incallui/service/vt/InCallRotationEventListener$InCallDisplayListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 205
    .end local v0    # "displayManager":Landroid/hardware/display/DisplayManager;
    :cond_0
    return-void
.end method

.method private enableOrientationEventListener()V
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/incallui/service/vt/InCallRotationEventListener;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    if-nez v0, :cond_1

    .line 102
    const-string v0, "InCallRotationEventListener - setSensorType : enableOrientationEventListener"

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->rotation(Ljava/lang/String;)V

    .line 103
    iget v0, p0, Lcom/android/incallui/service/vt/InCallRotationEventListener;->mRotation:I

    if-gez v0, :cond_0

    .line 104
    invoke-direct {p0}, Lcom/android/incallui/service/vt/InCallRotationEventListener;->getDisplayRotation()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/incallui/service/vt/InCallRotationEventListener;->notifyRotationChanged(I)V

    .line 106
    :cond_0
    new-instance v0, Lcom/android/incallui/service/vt/InCallRotationEventListener$1;

    iget-object v1, p0, Lcom/android/incallui/service/vt/InCallRotationEventListener;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/incallui/service/vt/InCallRotationEventListener$1;-><init>(Lcom/android/incallui/service/vt/InCallRotationEventListener;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/incallui/service/vt/InCallRotationEventListener;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    .line 112
    iget-object v0, p0, Lcom/android/incallui/service/vt/InCallRotationEventListener;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    .line 114
    :cond_1
    return-void
.end method

.method private getDisplayRotation()I
    .locals 3

    .prologue
    .line 217
    iget-object v1, p0, Lcom/android/incallui/service/vt/InCallRotationEventListener;->mContext:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 218
    .local v0, "display":Landroid/view/Display;
    if-eqz v0, :cond_0

    .line 219
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v1

    .line 220
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private notifyRotationChanged(I)V
    .locals 1
    .param p1, "rotation"    # I

    .prologue
    .line 224
    iget v0, p0, Lcom/android/incallui/service/vt/InCallRotationEventListener;->mRotation:I

    if-eq p1, v0, :cond_0

    .line 225
    iput p1, p0, Lcom/android/incallui/service/vt/InCallRotationEventListener;->mRotation:I

    .line 226
    iget v0, p0, Lcom/android/incallui/service/vt/InCallRotationEventListener;->mRotation:I

    invoke-virtual {p0, v0}, Lcom/android/incallui/service/vt/InCallRotationEventListener;->onRotationChanged(I)V

    .line 228
    :cond_0
    return-void
.end method

.method private onChanged(I)V
    .locals 6
    .param p1, "orientation"    # I

    .prologue
    const/16 v5, 0x6e

    const/16 v4, 0x46

    const/16 v3, 0x2d

    const/16 v2, 0x14

    const/4 v1, -0x1

    .line 125
    iget v0, p0, Lcom/android/incallui/service/vt/InCallRotationEventListener;->mRotation:I

    .line 126
    .local v0, "rotation":I
    if-ne p1, v1, :cond_0

    .line 127
    iput v1, p0, Lcom/android/incallui/service/vt/InCallRotationEventListener;->mOrientation:I

    .line 176
    :goto_0
    return-void

    .line 130
    :cond_0
    iget v1, p0, Lcom/android/incallui/service/vt/InCallRotationEventListener;->mRotation:I

    packed-switch v1, :pswitch_data_0

    .line 172
    const/4 v0, 0x0

    .line 175
    :cond_1
    :goto_1
    invoke-direct {p0, v0}, Lcom/android/incallui/service/vt/InCallRotationEventListener;->notifyRotationChanged(I)V

    goto :goto_0

    .line 132
    :pswitch_0
    const/16 v1, 0xc8

    if-ge v1, p1, :cond_2

    const/16 v1, 0x122

    if-ge p1, v1, :cond_2

    .line 133
    const/4 v0, 0x1

    goto :goto_1

    .line 134
    :cond_2
    if-ge v4, p1, :cond_3

    const/16 v1, 0xa0

    if-ge p1, v1, :cond_3

    .line 135
    const/4 v0, 0x3

    goto :goto_1

    .line 136
    :cond_3
    const/16 v1, 0x87

    if-ge v1, p1, :cond_1

    const/16 v1, 0xe1

    if-ge p1, v1, :cond_1

    .line 137
    const/4 v0, 0x2

    goto :goto_1

    .line 142
    :pswitch_1
    const/16 v1, 0x154

    if-lt v1, p1, :cond_4

    if-ge p1, v4, :cond_5

    .line 143
    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    .line 144
    :cond_5
    if-ge v5, p1, :cond_6

    const/16 v1, 0xc8

    if-ge p1, v1, :cond_6

    .line 145
    const/4 v0, 0x2

    goto :goto_1

    .line 146
    :cond_6
    if-ge v3, p1, :cond_1

    const/16 v1, 0x87

    if-ge p1, v1, :cond_1

    .line 147
    const/4 v0, 0x3

    goto :goto_1

    .line 152
    :pswitch_2
    const/16 v1, 0xfa

    if-ge v1, p1, :cond_7

    const/16 v1, 0x154

    if-ge p1, v1, :cond_7

    .line 153
    const/4 v0, 0x1

    goto :goto_1

    .line 154
    :cond_7
    if-ge v2, p1, :cond_8

    if-ge p1, v5, :cond_8

    .line 155
    const/4 v0, 0x3

    goto :goto_1

    .line 156
    :cond_8
    if-gt v3, p1, :cond_9

    const/16 v1, 0x13b

    if-le p1, v1, :cond_1

    .line 157
    :cond_9
    const/4 v0, 0x0

    goto :goto_1

    .line 162
    :pswitch_3
    if-gt v2, p1, :cond_a

    const/16 v1, 0x122

    if-le p1, v1, :cond_b

    .line 163
    :cond_a
    const/4 v0, 0x0

    goto :goto_1

    .line 164
    :cond_b
    const/16 v1, 0xa0

    if-ge v1, p1, :cond_c

    const/16 v1, 0xfa

    if-ge p1, v1, :cond_c

    .line 165
    const/4 v0, 0x2

    goto :goto_1

    .line 166
    :cond_c
    const/16 v1, 0xe1

    if-ge v1, p1, :cond_1

    const/16 v1, 0x13b

    if-ge p1, v1, :cond_1

    .line 167
    const/4 v0, 0x1

    goto :goto_1

    .line 130
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

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/android/incallui/service/vt/InCallRotationEventListener;->disableOrientationEventListener()V

    .line 92
    invoke-direct {p0}, Lcom/android/incallui/service/vt/InCallRotationEventListener;->enableDisplayListener()V

    .line 93
    return-void
.end method

.method private setSensorType()V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/android/incallui/service/vt/InCallRotationEventListener;->disableDisplayListener()V

    .line 87
    invoke-direct {p0}, Lcom/android/incallui/service/vt/InCallRotationEventListener;->enableOrientationEventListener()V

    .line 88
    return-void
.end method


# virtual methods
.method public disable()V
    .locals 0

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/android/incallui/service/vt/InCallRotationEventListener;->disableDisplayListener()V

    .line 97
    invoke-direct {p0}, Lcom/android/incallui/service/vt/InCallRotationEventListener;->disableOrientationEventListener()V

    .line 98
    return-void
.end method

.method public getDeviceRotation()I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lcom/android/incallui/service/vt/InCallRotationEventListener;->mRotation:I

    return v0
.end method

.method public isDisplayType()Z
    .locals 1

    .prologue
    .line 54
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

    .prologue
    .line 78
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

    .prologue
    const/4 v0, 0x0

    .line 231
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

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/incallui/service/vt/InCallRotationEventListener;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract onRotationChanged(I)V
.end method

.method public onUiShowing(Z)V
    .locals 5
    .param p1, "showing"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 58
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/service/vt/InCallRotationEventListener;->isEnabledAutoRotation()Z

    move-result v4

    if-eqz v4, :cond_1

    move v0, v1

    .line 59
    .local v0, "canDisplayType":Z
    :goto_0
    if-nez v0, :cond_2

    sget-boolean v4, Lcom/android/incallui/service/vt/VideoCallConfig;->DEVICE_ROTATION_ACCELEROMETER:Z

    if-eqz v4, :cond_2

    .line 60
    .local v1, "canSensorType":Z
    :goto_1
    if-eqz v0, :cond_3

    .line 61
    invoke-direct {p0}, Lcom/android/incallui/service/vt/InCallRotationEventListener;->setDisplayType()V

    .line 75
    :cond_0
    :goto_2
    return-void

    .end local v0    # "canDisplayType":Z
    .end local v1    # "canSensorType":Z
    :cond_1
    move v0, v3

    .line 58
    goto :goto_0

    .restart local v0    # "canDisplayType":Z
    :cond_2
    move v1, v3

    .line 59
    goto :goto_1

    .line 63
    .restart local v1    # "canSensorType":Z
    :cond_3
    if-eqz v1, :cond_4

    .line 64
    invoke-direct {p0}, Lcom/android/incallui/service/vt/InCallRotationEventListener;->setSensorType()V

    goto :goto_2

    .line 66
    :cond_4
    invoke-virtual {p0}, Lcom/android/incallui/service/vt/InCallRotationEventListener;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 67
    invoke-virtual {p0}, Lcom/android/incallui/service/vt/InCallRotationEventListener;->disable()V

    .line 69
    :cond_5
    invoke-direct {p0}, Lcom/android/incallui/service/vt/InCallRotationEventListener;->getDisplayRotation()I

    move-result v2

    .line 70
    .local v2, "displayRotatioin":I
    iget v3, p0, Lcom/android/incallui/service/vt/InCallRotationEventListener;->mRotation:I

    if-eq v3, v2, :cond_0

    .line 71
    invoke-direct {p0, v2}, Lcom/android/incallui/service/vt/InCallRotationEventListener;->notifyRotationChanged(I)V

    goto :goto_2
.end method

.method public resetDeviceRotatoin()V
    .locals 2

    .prologue
    .line 235
    const-string v1, "ril.ims.rotation"

    invoke-virtual {p0}, Lcom/android/incallui/service/vt/InCallRotationEventListener;->isEnabledAutoRotation()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "true"

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SemSystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    iget v0, p0, Lcom/android/incallui/service/vt/InCallRotationEventListener;->mRotation:I

    if-gez v0, :cond_0

    .line 237
    invoke-direct {p0}, Lcom/android/incallui/service/vt/InCallRotationEventListener;->getDisplayRotation()I

    move-result v0

    iput v0, p0, Lcom/android/incallui/service/vt/InCallRotationEventListener;->mRotation:I

    .line 239
    :cond_0
    iget v0, p0, Lcom/android/incallui/service/vt/InCallRotationEventListener;->mRotation:I

    invoke-virtual {p0, v0}, Lcom/android/incallui/service/vt/InCallRotationEventListener;->onRotationChanged(I)V

    .line 240
    return-void

    .line 235
    :cond_1
    const-string v0, "false"

    goto :goto_0
.end method
