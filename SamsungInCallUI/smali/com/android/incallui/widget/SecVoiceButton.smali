.class public Lcom/android/incallui/widget/SecVoiceButton;
.super Landroid/widget/Button;


# static fields
.field private static final SHOW_BTN_BG:Z


# instance fields
.field private mAnimator:Landroid/animation/ObjectAnimator;

.field private mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mIsAnimatorRunning:Z

.field private mMeasuredHeight:I

.field private mRippleEffectHeight:I

.field private mRippleEffectWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_SHOW_BUTTON_BG"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/incallui/widget/SecVoiceButton;->SHOW_BTN_BG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/android/incallui/widget/SecVoiceButton;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0, p1}, Lcom/android/incallui/widget/SecVoiceButton;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0, p1}, Lcom/android/incallui/widget/SecVoiceButton;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$002(Lcom/android/incallui/widget/SecVoiceButton;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/incallui/widget/SecVoiceButton;->mIsAnimatorRunning:Z

    return p1
.end method

.method private init(Landroid/content/Context;)V
    .locals 4

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/incallui/widget/SecVoiceButton;->semSetHoverPopupType(I)V

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a029f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/incallui/widget/SecVoiceButton;->mRippleEffectWidth:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a029e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/incallui/widget/SecVoiceButton;->mRippleEffectHeight:I

    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a024b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/incallui/widget/SecVoiceButton;->mMeasuredHeight:I

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getCallPopupService()Lcom/android/incallui/service/SecCallPopupService;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0508

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/incallui/widget/SecVoiceButton;->mMeasuredHeight:I

    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isEnabledShowButtonBackground()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0540

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/incallui/widget/SecVoiceButton;->mMeasuredHeight:I

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/widget/SecVoiceButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020230

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/widget/SecVoiceButton;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/android/incallui/widget/SecVoiceButton;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/incallui/widget/SecVoiceButton;->updateButtonBackground()V

    :cond_1
    invoke-direct {p0}, Lcom/android/incallui/widget/SecVoiceButton;->setTextSizeUntilLargeSize()V

    invoke-direct {p0}, Lcom/android/incallui/widget/SecVoiceButton;->updateButtonColor()V

    invoke-virtual {p0}, Lcom/android/incallui/widget/SecVoiceButton;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Lcom/android/incallui/widget/SecVoiceButton;->mMeasuredHeight:I

    iget v2, p0, Lcom/android/incallui/widget/SecVoiceButton;->mRippleEffectWidth:I

    iget v3, p0, Lcom/android/incallui/widget/SecVoiceButton;->mRippleEffectHeight:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/incallui/widget/SecVoiceButton;->setRippleSizeWithDelta(IIII)V

    return-void

    :cond_2
    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isOnehandModeOn()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a02a5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/incallui/widget/SecVoiceButton;->mRippleEffectWidth:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a02a4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/incallui/widget/SecVoiceButton;->mRippleEffectHeight:I

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0676

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/incallui/widget/SecVoiceButton;->mRippleEffectWidth:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0675

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/incallui/widget/SecVoiceButton;->mRippleEffectHeight:I

    goto/16 :goto_0
.end method

.method private setRippleSizeWithDelta(IIII)V
    .locals 8

    div-int/lit8 v0, p1, 0x2

    div-int/lit8 v1, p2, 0x4

    div-int/lit8 v2, p3, 0x2

    div-int/lit8 v3, p4, 0x2

    invoke-virtual {p0}, Lcom/android/incallui/widget/SecVoiceButton;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0674

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {p0}, Lcom/android/incallui/widget/SecVoiceButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    instance-of v6, v5, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v6, :cond_0

    sub-int v6, v0, v2

    sub-int v7, v1, v3

    add-int/2addr v7, v4

    add-int/2addr v0, v2

    add-int/2addr v1, v3

    add-int/2addr v1, v4

    invoke-virtual {v5, v6, v7, v0, v1}, Landroid/graphics/drawable/Drawable;->setHotspotBounds(IIII)V

    :cond_0
    return-void
.end method

.method private setTextSizeUntilLargeSize()V
    .locals 5

    const/4 v4, 0x1

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/UiAdapter;->isShowMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v4, v0}, Lcom/android/incallui/widget/SecVoiceButton;->setTextSize(IF)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getCallPopupService()Lcom/android/incallui/service/SecCallPopupService;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v0, "popup_call_service_has_icon"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_3
    const-string v0, "tablet_fullscreen_mode"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/widget/SecVoiceButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {p0}, Lcom/android/incallui/widget/SecVoiceButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0a00ac

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    div-float/2addr v0, v1

    invoke-static {}, Lcom/android/incallui/util/PhoneModeUtils;->isOneHandModeOn()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/android/incallui/widget/SecVoiceButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0a024c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    div-float/2addr v0, v1

    :cond_4
    const v1, 0x3f99999a    # 1.2f

    invoke-virtual {p0}, Lcom/android/incallui/widget/SecVoiceButton;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->fontScale:F

    cmpl-float v3, v2, v1

    if-lez v3, :cond_5

    :goto_1
    mul-float/2addr v0, v1

    invoke-virtual {p0, v4, v0}, Lcom/android/incallui/widget/SecVoiceButton;->setTextSize(IF)V

    goto :goto_0

    :cond_5
    move v1, v2

    goto :goto_1
.end method

.method private updateButtonBackground()V
    .locals 1

    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isEnabledShowButtonBackground()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getCallPopupService()Lcom/android/incallui/service/SecCallPopupService;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "popup_call_service_has_icon"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/widget/SecVoiceButton;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/android/incallui/widget/SecVoiceButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void

    :cond_0
    const v0, 0x7f020377

    invoke-virtual {p0, v0}, Lcom/android/incallui/widget/SecVoiceButton;->setBackgroundResource(I)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isOnehandModeOn()Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f020389

    invoke-virtual {p0, v0}, Lcom/android/incallui/widget/SecVoiceButton;->setBackgroundResource(I)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/UiAdapter;->isShowMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x7f020387

    invoke-virtual {p0, v0}, Lcom/android/incallui/widget/SecVoiceButton;->setBackgroundResource(I)V

    goto :goto_0

    :cond_3
    const v0, 0x7f020383

    invoke-virtual {p0, v0}, Lcom/android/incallui/widget/SecVoiceButton;->setBackgroundResource(I)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/incallui/widget/SecVoiceButton;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/android/incallui/widget/SecVoiceButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private updateButtonColor()V
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v2, v1}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    invoke-static {v1}, Lcom/android/incallui/Call$State;->isDialing(I)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_2

    :cond_1
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/UiAdapter;->isDialpadVisible()Z

    move-result v0

    if-nez v0, :cond_2

    const v0, 0x7f0e016b

    invoke-static {p0, v0}, Lcom/android/incallui/util/GraphicResourceUtils;->setRippleColor(Landroid/view/View;I)V

    invoke-virtual {p0}, Lcom/android/incallui/widget/SecVoiceButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0163

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/widget/SecVoiceButton;->setCompoundDrawableTintList(Landroid/content/res/ColorStateList;)V

    invoke-virtual {p0}, Lcom/android/incallui/widget/SecVoiceButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e027b

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/widget/SecVoiceButton;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    :cond_2
    const v0, 0x7f0e016a

    invoke-static {p0, v0}, Lcom/android/incallui/util/GraphicResourceUtils;->setRippleColor(Landroid/view/View;I)V

    invoke-virtual {p0}, Lcom/android/incallui/widget/SecVoiceButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e016c

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/widget/SecVoiceButton;->setCompoundDrawableTintList(Landroid/content/res/ColorStateList;)V

    invoke-virtual {p0}, Lcom/android/incallui/widget/SecVoiceButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e027c

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/widget/SecVoiceButton;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    iget v0, p0, Lcom/android/incallui/widget/SecVoiceButton;->mMeasuredHeight:I

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/widget/SecVoiceButton;->getMeasuredHeight()I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/android/incallui/widget/SecVoiceButton;->mMeasuredHeight:I

    invoke-virtual {p0}, Lcom/android/incallui/widget/SecVoiceButton;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Lcom/android/incallui/widget/SecVoiceButton;->mMeasuredHeight:I

    iget v2, p0, Lcom/android/incallui/widget/SecVoiceButton;->mRippleEffectWidth:I

    iget v3, p0, Lcom/android/incallui/widget/SecVoiceButton;->mRippleEffectHeight:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/incallui/widget/SecVoiceButton;->setRippleSizeWithDelta(IIII)V

    iget-object v0, p0, Lcom/android/incallui/widget/SecVoiceButton;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/widget/SecVoiceButton;->updateButtonBackground()V

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/Button;->onDraw(Landroid/graphics/Canvas;)V

    return-void

    :cond_1
    iget v0, p0, Lcom/android/incallui/widget/SecVoiceButton;->mMeasuredHeight:I

    goto :goto_0
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/widget/SecVoiceButton;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/Button;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :pswitch_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/incallui/widget/SecVoiceButton;->setHovered(Z)V

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/incallui/widget/SecVoiceButton;->setHovered(Z)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setEnabled(Z)V
    .locals 4

    const/4 v1, 0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/android/incallui/widget/SecVoiceButton;->updateButtonColor()V

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/widget/SecVoiceButton;->isEnabled()Z

    move-result v0

    if-eq p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/android/incallui/widget/SecVoiceButton;->mIsAnimatorRunning:Z

    if-nez v0, :cond_0

    iput-boolean v1, p0, Lcom/android/incallui/widget/SecVoiceButton;->mIsAnimatorRunning:Z

    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v1, v1, [F

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v1, v3

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/widget/SecVoiceButton;->mAnimator:Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/android/incallui/widget/SecVoiceButton;->mAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Lcom/android/incallui/widget/SecVoiceButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f004b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/android/incallui/widget/SecVoiceButton;->mAnimator:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/android/incallui/widget/SecVoiceButton$1;

    invoke-direct {v1, p0}, Lcom/android/incallui/widget/SecVoiceButton$1;-><init>(Lcom/android/incallui/widget/SecVoiceButton;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-super {p0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    const v0, 0x3ecccccd    # 0.4f

    invoke-virtual {p0, v0}, Lcom/android/incallui/widget/SecVoiceButton;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/incallui/widget/SecVoiceButton;->mAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/widget/SecVoiceButton;->mAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/widget/SecVoiceButton;->mAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_2
    iput-boolean v3, p0, Lcom/android/incallui/widget/SecVoiceButton;->mIsAnimatorRunning:Z

    invoke-super {p0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method public setEnabledAndAlpha(ZF)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/widget/SecVoiceButton;->updateButtonColor()V

    invoke-super {p0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    invoke-virtual {p0, p2}, Lcom/android/incallui/widget/SecVoiceButton;->setAlpha(F)V

    return-void
.end method
