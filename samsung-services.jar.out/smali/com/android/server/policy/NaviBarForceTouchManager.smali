.class public Lcom/android/server/policy/NaviBarForceTouchManager;
.super Ljava/lang/Object;
.source "NaviBarForceTouchManager.java"


# static fields
.field public static final CENTER_KEY:I = 0x2

.field private static final DEBUG:Z = true

.field public static final LEFT_KEY:I = 0x1

.field public static final RIGHT_KEY:I = 0x3

.field private static final SAFE_DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "NaviBarForceTouchManager"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHapticPlayed:Z

.field private mPWM:Lcom/android/server/policy/PhoneWindowManager;

.field private mSPWM:Lcom/android/server/policy/SamsungPhoneWindowManager;

.field private mVibrator:Landroid/os/Vibrator;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/policy/PhoneWindowManager;Lcom/android/server/policy/SamsungPhoneWindowManager;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/policy/NaviBarForceTouchManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/policy/NaviBarForceTouchManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iput-object p3, p0, Lcom/android/server/policy/NaviBarForceTouchManager;->mSPWM:Lcom/android/server/policy/SamsungPhoneWindowManager;

    const-string/jumbo v0, "vibrator"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/server/policy/NaviBarForceTouchManager;->mVibrator:Landroid/os/Vibrator;

    return-void
.end method

.method private forceClickImmersive(I)V
    .locals 3

    const-string/jumbo v0, "NaviBarForceTouchManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "forceClickImmersive() buttonId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const/16 v0, 0xbb

    invoke-direct {p0, v0}, Lcom/android/server/policy/NaviBarForceTouchManager;->injectKeyEvent(I)V

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/server/policy/NaviBarForceTouchManager;->injectKeyEvent(I)V

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/server/policy/NaviBarForceTouchManager;->injectKeyEvent(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getEventId(II)I
    .locals 2

    const/4 v0, -0x1

    const/16 v1, 0xa8c

    if-ge p2, v1, :cond_0

    return v0

    :cond_0
    const/16 v1, 0xdc

    if-le p1, v1, :cond_2

    const/16 v1, 0x1e0

    if-ge p1, v1, :cond_2

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0

    :cond_2
    const/16 v1, 0x244

    if-le p1, v1, :cond_3

    const/16 v1, 0x370

    if-ge p1, v1, :cond_3

    const/4 v0, 0x2

    goto :goto_0

    :cond_3
    const/16 v1, 0x3c0

    if-le p1, v1, :cond_1

    const/16 v1, 0x4e2

    if-ge p1, v1, :cond_1

    const/4 v0, 0x3

    goto :goto_0
.end method

.method private injectKeyEvent(I)V
    .locals 10

    const/4 v2, 0x0

    if-gez p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move-object v0, p0

    move v1, p1

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/policy/NaviBarForceTouchManager;->sendEvent(IIIJ)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    const/4 v6, 0x1

    move-object v4, p0

    move v5, p1

    move v7, v2

    invoke-direct/range {v4 .. v9}, Lcom/android/server/policy/NaviBarForceTouchManager;->sendEvent(IIIJ)V

    return-void
.end method

.method private sendEvent(IIIJ)V
    .locals 16

    move/from16 v0, p3

    and-int/lit16 v2, v0, 0x80

    if-eqz v2, :cond_0

    const/4 v10, 0x1

    :goto_0
    new-instance v3, Landroid/view/KeyEvent;

    or-int/lit8 v2, p3, 0x8

    or-int/lit8 v14, v2, 0x40

    const/4 v11, 0x0

    const/4 v12, -0x1

    const/4 v13, 0x0

    const/16 v15, 0x101

    move-wide/from16 v4, p4

    move-wide/from16 v6, p4

    move/from16 v8, p2

    move/from16 v9, p1

    invoke-direct/range {v3 .. v15}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    return-void

    :cond_0
    const/4 v10, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onForcePressed(II)V
    .locals 10

    const/4 v2, 0x0

    const/4 v9, -0x1

    const/4 v4, 0x1

    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/NaviBarForceTouchManager;->getEventId(II)I

    move-result v0

    iget-object v5, p0, Lcom/android/server/policy/NaviBarForceTouchManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v5, v5, Lcom/android/server/policy/PhoneWindowManager;->mLastSystemUiFlags:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_0

    const/4 v1, 0x1

    :goto_0
    iget-object v5, p0, Lcom/android/server/policy/NaviBarForceTouchManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v5, v5, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v5}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v3

    const-string/jumbo v5, "NaviBarForceTouchManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onForcePressed() x="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", y="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", immersive="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", visible="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", event="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v0, v9, :cond_1

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    if-nez v3, :cond_2

    if-nez v1, :cond_2

    const/4 v5, 0x2

    if-ne v0, v5, :cond_3

    :cond_2
    move v2, v4

    :cond_3
    if-eqz v2, :cond_4

    iget-object v5, p0, Lcom/android/server/policy/NaviBarForceTouchManager;->mVibrator:Landroid/os/Vibrator;

    sget-object v6, Landroid/os/Vibrator$SemMagnitudeTypes;->TYPE_MAX:Landroid/os/Vibrator$SemMagnitudeTypes;

    const v7, 0xc376

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v9, v8, v6}, Landroid/os/Vibrator;->semVibrate(IILandroid/media/AudioAttributes;Landroid/os/Vibrator$SemMagnitudeTypes;)V

    iput-boolean v4, p0, Lcom/android/server/policy/NaviBarForceTouchManager;->mHapticPlayed:Z

    :cond_4
    if-nez v1, :cond_5

    if-eqz v3, :cond_5

    :goto_1
    return-void

    :cond_5
    invoke-direct {p0, v0}, Lcom/android/server/policy/NaviBarForceTouchManager;->forceClickImmersive(I)V

    goto :goto_1
.end method

.method public onForceReleased(II)V
    .locals 5

    const-string/jumbo v0, "NaviBarForceTouchManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onForceReleased() x="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", y="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", mHapticPlayed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/policy/NaviBarForceTouchManager;->mHapticPlayed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/server/policy/NaviBarForceTouchManager;->mHapticPlayed:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/NaviBarForceTouchManager;->mVibrator:Landroid/os/Vibrator;

    sget-object v1, Landroid/os/Vibrator$SemMagnitudeTypes;->TYPE_MAX:Landroid/os/Vibrator$SemMagnitudeTypes;

    const v2, 0xc377

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/os/Vibrator;->semVibrate(IILandroid/media/AudioAttributes;Landroid/os/Vibrator$SemMagnitudeTypes;)V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/NaviBarForceTouchManager;->mHapticPlayed:Z

    return-void
.end method
