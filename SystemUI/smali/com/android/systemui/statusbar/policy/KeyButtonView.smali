.class public Lcom/android/systemui/statusbar/policy/KeyButtonView;
.super Landroid/widget/ImageView;
.source "KeyButtonView.java"

# interfaces
.implements Lcom/android/systemui/plugins/statusbar/phone/NavBarButtonProvider$ButtonInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/KeyButtonView$1;
    }
.end annotation


# static fields
.field private static final DEBUG:Z


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private final mCheckLongPress:Ljava/lang/Runnable;

.field private mCode:I

.field private mContentDescriptionRes:I

.field private mDownTime:J

.field private mForceActionChecked:Z

.field private mForceActionHandled:Z

.field private mForcePressed:Z

.field private mForcePressing:Z

.field private mGestureAborted:Z

.field private mLongClicked:Z

.field private final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private final mPlaySounds:Z

.field private final mRipple:Lcom/android/systemui/statusbar/policy/KeyButtonRipple;

.field private mSupportsLongpress:Z

.field private mTouchSlop:I


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/policy/KeyButtonView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/policy/KeyButtonView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mSupportsLongpress:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/systemui/statusbar/policy/KeyButtonView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mLongClicked:Z

    return p1
.end method

.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x1

    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    sput-boolean v0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/policy/KeyButtonView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mSupportsLongpress:Z

    const-class v2, Lcom/android/internal/logging/MetricsLogger;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/logging/MetricsLogger;

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    new-instance v2, Lcom/android/systemui/statusbar/policy/KeyButtonView$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/policy/KeyButtonView$1;-><init>(Lcom/android/systemui/statusbar/policy/KeyButtonView;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mCheckLongPress:Ljava/lang/Runnable;

    sget-object v2, Lcom/android/systemui/R$styleable;->KeyButtonView:[I

    invoke-virtual {p1, p2, v2, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mCode:I

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mSupportsLongpress:Z

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mPlaySounds:Z

    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {v0, v4, v1}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, v1, Landroid/util/TypedValue;->resourceId:I

    iput v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mContentDescriptionRes:I

    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->setClickable(Z)V

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mTouchSlop:I

    const-string/jumbo v2, "audio"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mAudioManager:Landroid/media/AudioManager;

    new-instance v2, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;

    invoke-direct {v2, p1, p0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mRipple:Lcom/android/systemui/statusbar/policy/KeyButtonRipple;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mRipple:Lcom/android/systemui/statusbar/policy/KeyButtonRipple;

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public abortCurrentGesture()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->setPressed(Z)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mGestureAborted:Z

    return-void
.end method

.method public loadAsync(Landroid/graphics/drawable/Icon;)V
    .locals 3

    new-instance v0, Lcom/android/systemui/statusbar/policy/KeyButtonView$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/KeyButtonView$2;-><init>(Lcom/android/systemui/statusbar/policy/KeyButtonView;)V

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/graphics/drawable/Icon;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/KeyButtonView$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/ImageView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/widget/ImageView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    iget v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mCode:I

    if-eqz v0, :cond_1

    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    const/16 v1, 0x10

    invoke-direct {v0, v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mSupportsLongpress:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->isLongClickable()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    const/16 v1, 0x20

    invoke-direct {v0, v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14

    const/high16 v13, -0x80000000

    const/high16 v9, 0x100000

    const/16 v6, 0x66

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    iput-boolean v7, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mGestureAborted:Z

    :cond_0
    iget-boolean v10, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mGestureAborted:Z

    if-eqz v10, :cond_1

    return v7

    :cond_1
    sget-boolean v10, Lcom/android/systemui/statusbar/policy/KeyButtonView;->DEBUG:Z

    if-eqz v10, :cond_2

    const/4 v10, 0x2

    if-eq v0, v10, :cond_2

    const-string/jumbo v10, "KeyButtonView"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Motion event="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    packed-switch v0, :pswitch_data_0

    :cond_3
    :goto_0
    return v8

    :pswitch_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    iput-wide v10, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mDownTime:J

    iput-boolean v7, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mLongClicked:Z

    invoke-virtual {p0, v8}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->setPressed(Z)V

    iget v9, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mCode:I

    if-eqz v9, :cond_6

    iget-wide v10, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mDownTime:J

    invoke-virtual {p0, v7, v7, v10, v11}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->sendEvent(IIJ)V

    sget-boolean v9, Lcom/android/systemui/Rune;->NAVBAR_SUPPORT_FORCE_TOUCH:Z

    if-nez v9, :cond_4

    sget-boolean v9, Lcom/android/systemui/Rune;->NAVBAR_SUPPORT_OPEN_THEME:Z

    if-eqz v9, :cond_5

    :goto_1
    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->playSoundEffect(I)V

    :cond_4
    :goto_2
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mForcePressing:Z

    iput-boolean v7, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mForcePressed:Z

    iput-boolean v7, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mForceActionChecked:Z

    iput-boolean v7, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mForceActionHandled:Z

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mCheckLongPress:Ljava/lang/Runnable;

    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mCheckLongPress:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v7

    int-to-long v10, v7

    invoke-virtual {p0, v6, v10, v11}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_5
    move v6, v7

    goto :goto_1

    :cond_6
    const v9, 0xc369

    invoke-virtual {p0, v9}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->performHapticFeedback(I)Z

    sget-boolean v9, Lcom/android/systemui/Rune;->NAVBAR_SUPPORT_OPEN_THEME:Z

    if-eqz v9, :cond_7

    :goto_3
    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->playSoundEffect(I)V

    goto :goto_2

    :cond_7
    move v6, v7

    goto :goto_3

    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v4, v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v5, v6

    iget v6, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mTouchSlop:I

    neg-int v6, v6

    if-lt v4, v6, :cond_a

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->getWidth()I

    move-result v6

    iget v10, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mTouchSlop:I

    add-int/2addr v6, v10

    if-ge v4, v6, :cond_a

    iget v6, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mTouchSlop:I

    neg-int v6, v6

    if-lt v5, v6, :cond_a

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->getHeight()I

    move-result v6

    iget v10, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mTouchSlop:I

    add-int/2addr v6, v10

    if-ge v5, v6, :cond_9

    move v6, v8

    :goto_4
    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->setPressed(Z)V

    sget-boolean v6, Lcom/android/systemui/Rune;->NAVBAR_SUPPORT_FORCE_TOUCH:Z

    if-eqz v6, :cond_3

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mLongClicked:Z

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v1

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mForceActionHandled:Z

    if-nez v6, :cond_b

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mForcePressing:Z

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_b

    and-int v6, v1, v13

    if-eqz v6, :cond_b

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mCheckLongPress:Ljava/lang/Runnable;

    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mCheckLongPress:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v10

    int-to-long v10, v10

    invoke-virtual {p0, v6, v10, v11}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->postDelayed(Ljava/lang/Runnable;J)Z

    const-string/jumbo v6, "KeyButtonView"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Force Pressed. mCode="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mCode:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", mForcePressed="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mForcePressed:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", buttonState=0x"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mForcePressed:Z

    if-eqz v6, :cond_8

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    invoke-virtual {p0, v7, v9, v10, v11}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->sendEvent(IIJ)V

    :cond_8
    iput-boolean v8, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mForceActionChecked:Z

    iput-boolean v8, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mForcePressing:Z

    iput-boolean v8, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mForcePressed:Z

    goto/16 :goto_0

    :cond_9
    move v6, v7

    goto :goto_4

    :cond_a
    move v6, v7

    goto :goto_4

    :cond_b
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mForcePressing:Z

    if-eqz v6, :cond_3

    and-int v6, v1, v13

    if-nez v6, :cond_3

    sget-boolean v6, Lcom/android/systemui/statusbar/policy/KeyButtonView;->DEBUG:Z

    if-eqz v6, :cond_c

    const-string/jumbo v6, "KeyButtonView"

    const-string/jumbo v10, "Force Released"

    invoke-static {v6, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mCheckLongPress:Ljava/lang/Runnable;

    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-virtual {p0, v8, v9}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->sendEvent(II)V

    iput-boolean v7, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mForcePressing:Z

    goto/16 :goto_0

    :pswitch_2
    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->setPressed(Z)V

    iget v6, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mCode:I

    if-eqz v6, :cond_d

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mForcePressing:Z

    if-eqz v6, :cond_e

    move v6, v9

    :goto_5
    invoke-virtual {p0, v8, v6}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->sendEvent(II)V

    :cond_d
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mCheckLongPress:Ljava/lang/Runnable;

    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :cond_e
    const/16 v6, 0x20

    goto :goto_5

    :pswitch_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->isPressed()Z

    move-result v9

    if-eqz v9, :cond_13

    iget-boolean v9, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mLongClicked:Z

    xor-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_13

    iget-boolean v9, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mForcePressed:Z

    if-eqz v9, :cond_f

    iget-boolean v9, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mForcePressing:Z

    if-eqz v9, :cond_13

    :cond_f
    iget-boolean v9, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mForceActionHandled:Z

    xor-int/lit8 v2, v9, 0x1

    :goto_6
    sget-boolean v9, Lcom/android/systemui/statusbar/policy/KeyButtonView;->DEBUG:Z

    if-eqz v9, :cond_10

    const-string/jumbo v9, "KeyButtonView"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "MotionEvent.ACTION_UP mCode="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mCode:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", doIt="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", isPressed()="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->isPressed()Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", mForcePressed="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mForcePressed:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", mForcePressing="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mForcePressing:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", mForceActionHandled="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mForceActionHandled:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->setPressed(Z)V

    iget v9, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mCode:I

    if-eqz v9, :cond_18

    if-eqz v2, :cond_15

    iget-boolean v9, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mForcePressing:Z

    if-eqz v9, :cond_14

    const/high16 v3, 0x100000

    :goto_7
    invoke-virtual {p0, v8, v3}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->sendEvent(II)V

    invoke-virtual {p0, v8}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->sendAccessibilityEvent(I)V

    :cond_11
    :goto_8
    sget-boolean v9, Lcom/android/systemui/Rune;->NAVBAR_SUPPORT_FORCE_TOUCH:Z

    if-eqz v9, :cond_12

    sget-boolean v9, Lcom/android/systemui/Rune;->NAVBAR_SUPPORT_OPEN_THEME:Z

    if-eqz v9, :cond_17

    :goto_9
    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->playSoundEffect(I)V

    :cond_12
    :goto_a
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mCheckLongPress:Ljava/lang/Runnable;

    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :cond_13
    const/4 v2, 0x0

    goto/16 :goto_6

    :cond_14
    const/4 v3, 0x0

    goto :goto_7

    :cond_15
    iget-boolean v9, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mLongClicked:Z

    if-nez v9, :cond_16

    iget-boolean v9, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mForcePressed:Z

    if-nez v9, :cond_11

    iget-boolean v9, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mForceActionHandled:Z

    xor-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_11

    :cond_16
    const/16 v9, 0x20

    invoke-virtual {p0, v8, v9}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->sendEvent(II)V

    goto :goto_8

    :cond_17
    move v6, v7

    goto :goto_9

    :cond_18
    if-eqz v2, :cond_12

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mOnClickListener:Landroid/view/View$OnClickListener;

    if-eqz v6, :cond_12

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v6, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    invoke-virtual {p0, v8}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->sendAccessibilityEvent(I)V

    goto :goto_a

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/ImageView;->onWindowVisibilityChanged(I)V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->jumpDrawablesToCurrentState()V

    :cond_0
    return-void
.end method

.method public performAccessibilityActionInternal(ILandroid/os/Bundle;)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/16 v0, 0x10

    if-ne p1, v0, :cond_1

    iget v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mCode:I

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v2, v2, v0, v1}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->sendEvent(IIJ)V

    invoke-virtual {p0, v3, v2}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->sendEvent(II)V

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->sendAccessibilityEvent(I)V

    sget-boolean v0, Lcom/android/systemui/Rune;->NAVBAR_SUPPORT_OPEN_THEME:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x66

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->playSoundEffect(I)V

    :goto_0
    return v3

    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->playSoundEffect(I)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x20

    if-ne p1, v0, :cond_2

    iget v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mCode:I

    if-eqz v0, :cond_2

    const/16 v0, 0x80

    invoke-virtual {p0, v2, v0}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->sendEvent(II)V

    invoke-virtual {p0, v3, v2}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->sendEvent(II)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->sendAccessibilityEvent(I)V

    return v3

    :cond_2
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->performAccessibilityActionInternal(ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public playSoundEffect(I)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mPlaySounds:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mAudioManager:Landroid/media/AudioManager;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/media/AudioManager;->playSoundEffect(II)V

    return-void
.end method

.method public sendEvent(II)V
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->sendEvent(IIJ)V

    return-void
.end method

.method sendEvent(IIJ)V
    .locals 17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    new-instance v4, Landroid/metrics/LogMaker;

    const/16 v5, 0x3a3

    invoke-direct {v4, v5}, Landroid/metrics/LogMaker;-><init>(I)V

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mCode:I

    invoke-virtual {v4, v5}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object v4

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0x3a5

    invoke-virtual {v4, v6, v5}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v4

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0x3a4

    invoke-virtual {v4, v6, v5}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    sget-boolean v2, Lcom/android/systemui/statusbar/policy/KeyButtonView;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "KeyButtonView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sendEvent() mCode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mCode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", action="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", flags="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", callers="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x5

    invoke-static {v5}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move/from16 v0, p2

    and-int/lit16 v2, v0, 0x80

    if-eqz v2, :cond_1

    const/4 v10, 0x1

    :goto_0
    new-instance v3, Landroid/view/KeyEvent;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mDownTime:J

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mCode:I

    or-int/lit8 v2, p2, 0x8

    or-int/lit8 v14, v2, 0x40

    const/4 v11, 0x0

    const/4 v12, -0x1

    const/4 v13, 0x0

    const/16 v15, 0x101

    move-wide/from16 v6, p3

    move/from16 v8, p1

    invoke-direct/range {v3 .. v15}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    return-void

    :cond_1
    const/4 v10, 0x0

    goto :goto_0
.end method

.method public setCarMode(Z)V
    .locals 0

    return-void
.end method

.method public setCode(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mCode:I

    return-void
.end method

.method public setDarkIntensity(F)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->setDarkIntensity(F)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->invalidate()V

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mRipple:Lcom/android/systemui/statusbar/policy/KeyButtonRipple;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->setDarkIntensity(F)V

    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mOnClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setVertical(Z)V
    .locals 0

    return-void
.end method
