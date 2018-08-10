.class public Lcom/android/server/policy/NaviBarForceTouchManager;
.super Ljava/lang/Object;
.source "NaviBarForceTouchManager.java"


# static fields
.field public static final CENTER_KEY:I = 0x2

.field private static final DEBUG:Z = true

.field private static final EPSILON:F = 1.0E-5f

.field public static final LEFT_KEY:I = 0x1

.field private static final NAVBAR_INVISIBLE_BUTTON_HALF_LENGTH_RATIO:D = 0.16670000553131104

.field private static final NAVBAR_VISIBLE_BUTTON_HALF_LENGTH_RATIO:D = 0.11110000312328339

.field private static final NOTIFY_TOUCH_CANCEL:Z = false

.field private static final PENDING_DISMISS_KEYGUARD_TIMEOUT_DURATION:I = 0x5dc

.field public static final RIGHT_KEY:I = 0x3

.field private static final SAFE_DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "NaviBarForceTouchMgr"


# instance fields
.field mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mHapticPlayed:Z

.field private mHomeConsumed:Z

.field private mInitScreenHeight:I

.field private mInitScreenWidth:I

.field private mNaviBarVisible:Z

.field private mPWM:Lcom/android/server/policy/PhoneWindowManager;

.field private mPendingDissmissKeyguard:Z

.field private mSPWM:Lcom/android/server/policy/SamsungPhoneWindowManager;

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private mVibrator:Landroid/os/Vibrator;


# direct methods
.method static synthetic -get0(Lcom/android/server/policy/NaviBarForceTouchManager;)Lcom/android/server/policy/PhoneWindowManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/NaviBarForceTouchManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/policy/PhoneWindowManager;Lcom/android/server/policy/SamsungPhoneWindowManager;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/NaviBarForceTouchManager;->mPendingDissmissKeyguard:Z

    iput-object p1, p0, Lcom/android/server/policy/NaviBarForceTouchManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/policy/NaviBarForceTouchManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iput-object p3, p0, Lcom/android/server/policy/NaviBarForceTouchManager;->mSPWM:Lcom/android/server/policy/SamsungPhoneWindowManager;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/NaviBarForceTouchManager;->mHandler:Landroid/os/Handler;

    const-string/jumbo v0, "vibrator"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/server/policy/NaviBarForceTouchManager;->mVibrator:Landroid/os/Vibrator;

    const-string/jumbo v0, "accessibility"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lcom/android/server/policy/NaviBarForceTouchManager;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    return-void
.end method

.method private dismissKeyguard()V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/server/policy/NaviBarForceTouchManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "navigationbar_unlock_with_home_button"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_0

    const-string/jumbo v1, "NaviBarForceTouchMgr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "dismissKeyguard, caller="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x4

    invoke-static {v3}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/policy/NaviBarForceTouchManager;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/policy/NaviBarForceTouchManager$1;

    invoke-direct {v2, p0}, Lcom/android/server/policy/NaviBarForceTouchManager$1;-><init>(Lcom/android/server/policy/NaviBarForceTouchManager;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private forceClickImmersive(I)Z
    .locals 6

    const/16 v1, 0xbb

    const/4 v2, 0x4

    const-string/jumbo v3, "NaviBarForceTouchMgr"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "forceClickImmersive() buttonId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " mNavigationBarKeyOrder = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/policy/NaviBarForceTouchManager;->mSPWM:Lcom/android/server/policy/SamsungPhoneWindowManager;

    iget v5, v5, Lcom/android/server/policy/SamsungPhoneWindowManager;->mNavigationBarKeyOrder:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return v0

    :pswitch_0
    const/4 v0, 0x0

    iget-object v3, p0, Lcom/android/server/policy/NaviBarForceTouchManager;->mSPWM:Lcom/android/server/policy/SamsungPhoneWindowManager;

    iget v3, v3, Lcom/android/server/policy/SamsungPhoneWindowManager;->mNavigationBarKeyOrder:I

    if-nez v3, :cond_1

    :goto_1
    invoke-direct {p0, v1}, Lcom/android/server/policy/NaviBarForceTouchManager;->injectKeyEvent(I)V

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    :pswitch_1
    iget-boolean v1, p0, Lcom/android/server/policy/NaviBarForceTouchManager;->mHomeConsumed:Z

    if-nez v1, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/android/server/policy/NaviBarForceTouchManager;->injectKeyEvent(I)V

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x0

    iget-object v3, p0, Lcom/android/server/policy/NaviBarForceTouchManager;->mSPWM:Lcom/android/server/policy/SamsungPhoneWindowManager;

    iget v3, v3, Lcom/android/server/policy/SamsungPhoneWindowManager;->mNavigationBarKeyOrder:I

    if-nez v3, :cond_2

    :goto_2
    invoke-direct {p0, v2}, Lcom/android/server/policy/NaviBarForceTouchManager;->injectKeyEvent(I)V

    goto :goto_0

    :cond_2
    move v2, v1

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getEventId(IIZ)I
    .locals 16

    const/4 v5, -0x1

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/policy/NaviBarForceTouchManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v10, v10, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v10, :cond_0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/policy/NaviBarForceTouchManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v10, v10, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v10}, Landroid/view/WindowManagerPolicy$WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v10

    if-nez v10, :cond_1

    :cond_0
    const/4 v10, -0x1

    return v10

    :cond_1
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/policy/NaviBarForceTouchManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v10, v10, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v10}, Landroid/view/WindowManagerPolicy$WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v6

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/server/policy/NaviBarForceTouchManager;->mInitScreenHeight:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/server/policy/NaviBarForceTouchManager;->mInitScreenWidth:I

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v10

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    mul-int/2addr v10, v8

    int-to-float v10, v10

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/server/policy/NaviBarForceTouchManager;->mScreenHeight:I

    int-to-float v11, v11

    div-float/2addr v10, v11

    float-to-int v7, v10

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/policy/NaviBarForceTouchManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-boolean v10, v10, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnFully:Z

    if-eqz v10, :cond_2

    if-eqz p3, :cond_2

    int-to-float v10, v7

    const/high16 v11, 0x3e400000    # 0.1875f

    mul-float/2addr v10, v11

    const/high16 v11, 0x3f000000    # 0.5f

    add-float/2addr v10, v11

    float-to-int v4, v10

    :goto_0
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/policy/NaviBarForceTouchManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-boolean v10, v10, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnFully:Z

    if-eqz v10, :cond_3

    if-eqz p3, :cond_3

    const-wide v2, 0x3fbc710cc0000000L    # 0.11110000312328339

    :goto_1
    const-string/jumbo v10, "NaviBarForceTouchMgr"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "getEventId() x="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p1

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ", y="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ", mPWM.mScreenOnFully="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/policy/NaviBarForceTouchManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-boolean v12, v12, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnFully:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ", isNaviVisible="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p3

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ", screenH="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ", currentHeight="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/server/policy/NaviBarForceTouchManager;->mScreenHeight:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ", screenW="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ", height="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ", deadzone="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ", frame="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sub-int v10, v7, v4

    sub-int v10, v8, v10

    move/from16 v0, p2

    if-ge v0, v10, :cond_4

    const/4 v10, -0x1

    return v10

    :cond_2
    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_3
    const-wide v2, 0x3fc5566d00000000L    # 0.16670000553131104

    goto/16 :goto_1

    :cond_4
    div-int/lit8 v10, v9, 0x3

    move/from16 v0, p1

    if-ge v0, v10, :cond_6

    const/4 v5, 0x1

    :cond_5
    :goto_2
    return v5

    :cond_6
    move/from16 v0, p1

    int-to-double v10, v0

    div-int/lit8 v12, v9, 0x2

    int-to-double v12, v12

    int-to-double v14, v9

    mul-double/2addr v14, v2

    sub-double/2addr v12, v14

    cmpl-double v10, v10, v12

    if-lez v10, :cond_7

    move/from16 v0, p1

    int-to-double v10, v0

    div-int/lit8 v12, v9, 0x2

    int-to-double v12, v12

    int-to-double v14, v9

    mul-double/2addr v14, v2

    add-double/2addr v12, v14

    cmpg-double v10, v10, v12

    if-gez v10, :cond_7

    const/4 v5, 0x2

    goto :goto_2

    :cond_7
    mul-int/lit8 v10, v9, 0x2

    div-int/lit8 v10, v10, 0x3

    move/from16 v0, p1

    if-le v0, v10, :cond_5

    const/4 v5, 0x3

    goto :goto_2
.end method

.method private injectKeyEvent(I)V
    .locals 6

    const/high16 v3, 0x100000

    const/4 v2, 0x0

    if-gez p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/policy/NaviBarForceTouchManager;->sendEvent(IIIJ)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const/4 v2, 0x1

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/policy/NaviBarForceTouchManager;->sendEvent(IIIJ)V

    return-void
.end method

.method private isConventionalMode()Z
    .locals 3

    iget v0, p0, Lcom/android/server/policy/NaviBarForceTouchManager;->mInitScreenHeight:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/server/policy/NaviBarForceTouchManager;->mInitScreenWidth:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget v1, p0, Lcom/android/server/policy/NaviBarForceTouchManager;->mScreenHeight:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/server/policy/NaviBarForceTouchManager;->mScreenWidth:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x3727c5ac    # 1.0E-5f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isGamePressureTouchLocked(Landroid/content/Context;)Z
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/policy/NaviBarForceTouchManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "game_pressure_touch_lock"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "NaviBarForceTouchMgr"

    const-string/jumbo v3, "Exception on isGamePressureTouchLocked"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isTalkBackEnabled(Landroid/content/Context;)Z
    .locals 3

    iget-object v1, p0, Lcom/android/server/policy/NaviBarForceTouchManager;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityManager;->semIsAccessibilityServiceEnabled(I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/NaviBarForceTouchManager;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityManager;->semIsAccessibilityServiceEnabled(I)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
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
.method public clearPendingDismissKeyguard(Ljava/lang/String;)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/policy/NaviBarForceTouchManager;->mPendingDissmissKeyguard:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string/jumbo v0, "NaviBarForceTouchMgr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "clearPendingDismissKeyguard, reason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/NaviBarForceTouchManager;->mPendingDissmissKeyguard:Z

    return-void
.end method

.method public dismissKeyguardByPendingRequest()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/NaviBarForceTouchManager;->mPendingDissmissKeyguard:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "dismissKeyguardByPendingRequest"

    invoke-virtual {p0, v0}, Lcom/android/server/policy/NaviBarForceTouchManager;->clearPendingDismissKeyguard(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/policy/NaviBarForceTouchManager;->dismissKeyguard()V

    :cond_0
    return-void
.end method

.method synthetic lambda$-com_android_server_policy_NaviBarForceTouchManager_9697()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/policy/NaviBarForceTouchManager;->mPendingDissmissKeyguard:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "NaviBarForceTouchMgr"

    const-string/jumbo v1, "dismissKeyguard, pending to dismissKeyguard by going to sleep"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "timeout"

    invoke-virtual {p0, v0}, Lcom/android/server/policy/NaviBarForceTouchManager;->clearPendingDismissKeyguard(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onForcePressed(II)Z
    .locals 10

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v8, -0x1

    const/4 v3, 0x1

    iget-object v5, p0, Lcom/android/server/policy/NaviBarForceTouchManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v5, v5, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/server/policy/NaviBarForceTouchManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v5, v5, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v5}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v1

    :goto_0
    invoke-direct {p0, p1, p2, v1}, Lcom/android/server/policy/NaviBarForceTouchManager;->getEventId(IIZ)I

    move-result v0

    iput-boolean v4, p0, Lcom/android/server/policy/NaviBarForceTouchManager;->mHomeConsumed:Z

    const-string/jumbo v5, "onForcePressed(initializing)"

    invoke-virtual {p0, v5}, Lcom/android/server/policy/NaviBarForceTouchManager;->clearPendingDismissKeyguard(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/policy/NaviBarForceTouchManager;->isConventionalMode()Z

    move-result v5

    if-eqz v5, :cond_1

    const-string/jumbo v4, "NaviBarForceTouchMgr"

    const-string/jumbo v5, "conventional mode , ignore force touch"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const-string/jumbo v5, "NaviBarForceTouchMgr"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onForcePressed(), x = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", y = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", NaviBarvisible = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", event = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", mHomeConsumed = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/server/policy/NaviBarForceTouchManager;->mHomeConsumed:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v4, p0, Lcom/android/server/policy/NaviBarForceTouchManager;->mHapticPlayed:Z

    iput-boolean v1, p0, Lcom/android/server/policy/NaviBarForceTouchManager;->mNaviBarVisible:Z

    iget-object v5, p0, Lcom/android/server/policy/NaviBarForceTouchManager;->mSPWM:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-virtual {v5}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isEasyOneHandRunning()Z

    move-result v5

    if-eqz v5, :cond_2

    return v3

    :cond_2
    iget-object v5, p0, Lcom/android/server/policy/NaviBarForceTouchManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, v5}, Lcom/android/server/policy/NaviBarForceTouchManager;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string/jumbo v4, "NaviBarForceTouchMgr"

    const-string/jumbo v5, "Talkback enabled, skip force action"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_3
    iget-object v5, p0, Lcom/android/server/policy/NaviBarForceTouchManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v5}, Lcom/android/server/policy/PhoneWindowManager;->isScreenOn()Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/server/policy/NaviBarForceTouchManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, v5}, Lcom/android/server/policy/NaviBarForceTouchManager;->isGamePressureTouchLocked(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string/jumbo v4, "NaviBarForceTouchMgr"

    const-string/jumbo v5, "Force touch disabled by GameTools. skip force action"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_4
    if-eq v0, v8, :cond_7

    const/4 v2, 0x1

    :goto_1
    if-eqz v2, :cond_5

    iget-object v5, p0, Lcom/android/server/policy/NaviBarForceTouchManager;->mVibrator:Landroid/os/Vibrator;

    sget-object v6, Landroid/os/Vibrator$SemMagnitudeTypes;->TYPE_FORCE:Landroid/os/Vibrator$SemMagnitudeTypes;

    const v7, 0xc376

    invoke-virtual {v5, v7, v8, v9, v6}, Landroid/os/Vibrator;->semVibrate(IILandroid/media/AudioAttributes;Landroid/os/Vibrator$SemMagnitudeTypes;)V

    iput-boolean v3, p0, Lcom/android/server/policy/NaviBarForceTouchManager;->mHapticPlayed:Z

    :cond_5
    if-nez v1, :cond_8

    iget-object v5, p0, Lcom/android/server/policy/NaviBarForceTouchManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v5}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-direct {p0}, Lcom/android/server/policy/NaviBarForceTouchManager;->dismissKeyguard()V

    :cond_6
    :goto_2
    if-ne v0, v8, :cond_9

    :goto_3
    return v3

    :cond_7
    const/4 v2, 0x0

    goto :goto_1

    :cond_8
    invoke-virtual {p0}, Lcom/android/server/policy/NaviBarForceTouchManager;->pendingDismissKeyugard()Z

    move-result v5

    if-eqz v5, :cond_6

    const-string/jumbo v5, "NaviBarForceTouchMgr"

    const-string/jumbo v6, "onForcePressed, pending dismiss dismissKeyguard"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_9
    move v3, v4

    goto :goto_3
.end method

.method public onForcePressedSleep()V
    .locals 2

    const-string/jumbo v0, "NaviBarForceTouchMgr"

    const-string/jumbo v1, "onForcePressedSleep()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "onForcePressedSleep(initializing)"

    invoke-virtual {p0, v0}, Lcom/android/server/policy/NaviBarForceTouchManager;->clearPendingDismissKeyguard(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/policy/NaviBarForceTouchManager;->dismissKeyguard()V

    return-void
.end method

.method public onForceReleased(II)Z
    .locals 8

    const/4 v7, 0x0

    const/4 v6, -0x1

    const-string/jumbo v3, "NaviBarForceTouchMgr"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onForceReleased() x = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", y = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", mHapticPlayed = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/server/policy/NaviBarForceTouchManager;->mHapticPlayed:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " mHomeConsumed = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/server/policy/NaviBarForceTouchManager;->mHomeConsumed:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    iget-boolean v3, p0, Lcom/android/server/policy/NaviBarForceTouchManager;->mHapticPlayed:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/policy/NaviBarForceTouchManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v3, v3, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/server/policy/NaviBarForceTouchManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v3, v3, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v3}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v2

    :goto_0
    invoke-direct {p0, p1, p2, v2}, Lcom/android/server/policy/NaviBarForceTouchManager;->getEventId(IIZ)I

    move-result v0

    if-eq v0, v6, :cond_0

    iget-object v3, p0, Lcom/android/server/policy/NaviBarForceTouchManager;->mVibrator:Landroid/os/Vibrator;

    sget-object v4, Landroid/os/Vibrator$SemMagnitudeTypes;->TYPE_FORCE:Landroid/os/Vibrator$SemMagnitudeTypes;

    const v5, 0xc377

    invoke-virtual {v3, v5, v6, v7, v4}, Landroid/os/Vibrator;->semVibrate(IILandroid/media/AudioAttributes;Landroid/os/Vibrator$SemMagnitudeTypes;)V

    :cond_0
    if-eqz v2, :cond_1

    iget-boolean v3, p0, Lcom/android/server/policy/NaviBarForceTouchManager;->mNaviBarVisible:Z

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_2

    :cond_1
    invoke-direct {p0, v0}, Lcom/android/server/policy/NaviBarForceTouchManager;->forceClickImmersive(I)Z

    move-result v1

    :cond_2
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/policy/NaviBarForceTouchManager;->mHapticPlayed:Z

    return v1

    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onForceReleasedSleep(Z)V
    .locals 5

    const-string/jumbo v0, "NaviBarForceTouchMgr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onForceReleasedSleep() playHaptic = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/NaviBarForceTouchManager;->mVibrator:Landroid/os/Vibrator;

    sget-object v1, Landroid/os/Vibrator$SemMagnitudeTypes;->TYPE_FORCE:Landroid/os/Vibrator$SemMagnitudeTypes;

    const v2, 0xc377

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/os/Vibrator;->semVibrate(IILandroid/media/AudioAttributes;Landroid/os/Vibrator$SemMagnitudeTypes;)V

    :cond_0
    return-void
.end method

.method public pendingDismissKeyugard()Z
    .locals 7

    const/4 v6, 0x1

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/server/policy/NaviBarForceTouchManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "navigationbar_unlock_with_home_button"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/policy/NaviBarForceTouchManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-boolean v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mGoingToSleep:Z

    if-eqz v1, :cond_1

    iput-boolean v6, p0, Lcom/android/server/policy/NaviBarForceTouchManager;->mPendingDissmissKeyguard:Z

    iget-object v1, p0, Lcom/android/server/policy/NaviBarForceTouchManager;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/policy/-$Lambda$SXLmG13sR9n4EYcWEhTqiPD_Umg;

    invoke-direct {v2, p0}, Lcom/android/server/policy/-$Lambda$SXLmG13sR9n4EYcWEhTqiPD_Umg;-><init>(Ljava/lang/Object;)V

    const-wide/16 v4, 0x5dc

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return v6

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    return v3
.end method

.method public setHomeConsumed()V
    .locals 2

    const-string/jumbo v0, "NaviBarForceTouchMgr"

    const-string/jumbo v1, "setHomeConsumed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/NaviBarForceTouchManager;->mHomeConsumed:Z

    return-void
.end method

.method public setInitialDisplaySize(IIII)V
    .locals 0

    iput p1, p0, Lcom/android/server/policy/NaviBarForceTouchManager;->mInitScreenWidth:I

    iput p2, p0, Lcom/android/server/policy/NaviBarForceTouchManager;->mInitScreenHeight:I

    iput p3, p0, Lcom/android/server/policy/NaviBarForceTouchManager;->mScreenWidth:I

    iput p4, p0, Lcom/android/server/policy/NaviBarForceTouchManager;->mScreenHeight:I

    return-void
.end method
