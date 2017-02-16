.class public Lcom/android/incallui/widget/SecVoiceButton;
.super Landroid/widget/Button;
.source "SecVoiceButton.java"


# static fields
.field private static final SHOW_BTN_BG:Z


# instance fields
.field private mAnimator:Landroid/animation/ObjectAnimator;

.field private mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mIsAnimatorRunning:Z

.field private mMeasuredHeight:I

.field private mMeasuredWidth:I

.field private mRippleEffectHeight:I

.field private mRippleEffectWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 50
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
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 66
    invoke-direct {p0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 67
    invoke-direct {p0, p1}, Lcom/android/incallui/widget/SecVoiceButton;->init(Landroid/content/Context;)V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 72
    invoke-direct {p0, p1}, Lcom/android/incallui/widget/SecVoiceButton;->init(Landroid/content/Context;)V

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 76
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 77
    invoke-direct {p0, p1}, Lcom/android/incallui/widget/SecVoiceButton;->init(Landroid/content/Context;)V

    .line 78
    return-void
.end method

.method static synthetic access$002(Lcom/android/incallui/widget/SecVoiceButton;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/widget/SecVoiceButton;
    .param p1, "x1"    # Z

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/android/incallui/widget/SecVoiceButton;->mIsAnimatorRunning:Z

    return p1
.end method

.method private init(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 81
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/incallui/widget/SecVoiceButton;->semSetHoverPopupType(I)V

    .line 82
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 83
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a02c8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/incallui/widget/SecVoiceButton;->mRippleEffectWidth:I

    .line 84
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a02c7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/incallui/widget/SecVoiceButton;->mRippleEffectHeight:I

    .line 92
    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/incallui/widget/SecVoiceButton;->mMeasuredWidth:I

    .line 93
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a013b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/incallui/widget/SecVoiceButton;->mMeasuredHeight:I

    .line 94
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getCallPopupService()Lcom/android/incallui/service/SecCallPopupService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0216

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/incallui/widget/SecVoiceButton;->mMeasuredHeight:I

    .line 96
    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isEnabledShowButtonBackground()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a04c0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/incallui/widget/SecVoiceButton;->mMeasuredHeight:I

    .line 101
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/widget/SecVoiceButton;->mContentResolver:Landroid/content/ContentResolver;

    .line 102
    invoke-virtual {p0}, Lcom/android/incallui/widget/SecVoiceButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0201b0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/widget/SecVoiceButton;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 104
    iget-object v0, p0, Lcom/android/incallui/widget/SecVoiceButton;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 105
    invoke-direct {p0}, Lcom/android/incallui/widget/SecVoiceButton;->updateButtonBackground()V

    .line 107
    :cond_1
    invoke-direct {p0}, Lcom/android/incallui/widget/SecVoiceButton;->setTextSizeUntilLargeSize()V

    .line 108
    return-void

    .line 85
    :cond_2
    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isOnehandModeOn()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 86
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a02cf

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/incallui/widget/SecVoiceButton;->mRippleEffectWidth:I

    .line 87
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a02ce

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/incallui/widget/SecVoiceButton;->mRippleEffectHeight:I

    goto :goto_0

    .line 89
    :cond_3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0192

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/incallui/widget/SecVoiceButton;->mRippleEffectWidth:I

    .line 90
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0191

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/incallui/widget/SecVoiceButton;->mRippleEffectHeight:I

    goto/16 :goto_0
.end method

.method private setRippleSizeWithDelta(IIII)V
    .locals 10
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "rippleWidth"    # I
    .param p4, "rippleHeight"    # I

    .prologue
    .line 227
    div-int/lit8 v1, p1, 0x2

    .line 228
    .local v1, "centerX":I
    div-int/lit8 v2, p2, 0x4

    .line 229
    .local v2, "centerY":I
    div-int/lit8 v5, p3, 0x2

    .line 230
    .local v5, "half_width":I
    div-int/lit8 v4, p4, 0x2

    .line 231
    .local v4, "half_height":I
    invoke-virtual {p0}, Lcom/android/incallui/widget/SecVoiceButton;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a05b5

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 233
    .local v3, "delta":I
    invoke-virtual {p0}, Lcom/android/incallui/widget/SecVoiceButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 235
    .local v0, "backgroundDrawable":Landroid/graphics/drawable/Drawable;
    instance-of v6, v0, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v6, :cond_0

    .line 236
    sub-int v6, v1, v5

    sub-int v7, v2, v4

    add-int/2addr v7, v3

    add-int v8, v1, v5

    add-int v9, v2, v4

    add-int/2addr v9, v3

    invoke-virtual {v0, v6, v7, v8, v9}, Landroid/graphics/drawable/Drawable;->setHotspotBounds(IIII)V

    .line 243
    :cond_0
    return-void
.end method

.method private setTextSizeUntilLargeSize()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 132
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/widget/SecVoiceButton;->isInMultiWindowMode()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 133
    :cond_0
    const/4 v4, 0x0

    invoke-virtual {p0, v6, v4}, Lcom/android/incallui/widget/SecVoiceButton;->setTextSize(IF)V

    .line 153
    :cond_1
    :goto_0
    return-void

    .line 136
    :cond_2
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/InCallPresenter;->getCallPopupService()Lcom/android/incallui/service/SecCallPopupService;

    move-result-object v4

    if-eqz v4, :cond_3

    const-string v4, "popup_call_service_has_icon"

    .line 137
    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    :cond_3
    const-string v4, "tablet_fullscreen_mode"

    .line 138
    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 141
    invoke-virtual {p0}, Lcom/android/incallui/widget/SecVoiceButton;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v3, v4, Landroid/util/DisplayMetrics;->density:F

    .line 142
    .local v3, "mMatrix":F
    invoke-virtual {p0}, Lcom/android/incallui/widget/SecVoiceButton;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a00a9

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    div-float v1, v4, v3

    .line 143
    .local v1, "defaultTextSize":F
    invoke-static {}, Lcom/android/incallui/util/PhoneModeUtils;->isOneHandModeOn()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 144
    invoke-virtual {p0}, Lcom/android/incallui/widget/SecVoiceButton;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a026e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    div-float v1, v4, v3

    .line 146
    :cond_4
    const v0, 0x3f99999a    # 1.2f

    .line 147
    .local v0, "MAX_FONT_SCALE":F
    invoke-virtual {p0}, Lcom/android/incallui/widget/SecVoiceButton;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v2, v4, Landroid/content/res/Configuration;->fontScale:F

    .line 148
    .local v2, "fontScale":F
    cmpl-float v4, v2, v0

    if-lez v4, :cond_5

    .line 149
    move v2, v0

    .line 152
    :cond_5
    mul-float v4, v1, v2

    invoke-virtual {p0, v6, v4}, Lcom/android/incallui/widget/SecVoiceButton;->setTextSize(IF)V

    goto :goto_0
.end method

.method private updateButtonBackground()V
    .locals 1

    .prologue
    .line 160
    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isEnabledShowButtonBackground()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 161
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getCallPopupService()Lcom/android/incallui/service/SecCallPopupService;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 162
    const-string v0, "popup_call_service_has_icon"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/android/incallui/widget/SecVoiceButton;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/android/incallui/widget/SecVoiceButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 177
    :goto_0
    return-void

    .line 165
    :cond_0
    const v0, 0x7f0202c9

    invoke-virtual {p0, v0}, Lcom/android/incallui/widget/SecVoiceButton;->setBackgroundResource(I)V

    goto :goto_0

    .line 167
    :cond_1
    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isOnehandModeOn()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 168
    const v0, 0x7f0202d9

    invoke-virtual {p0, v0}, Lcom/android/incallui/widget/SecVoiceButton;->setBackgroundResource(I)V

    goto :goto_0

    .line 169
    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/widget/SecVoiceButton;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 170
    const v0, 0x7f0202d7

    invoke-virtual {p0, v0}, Lcom/android/incallui/widget/SecVoiceButton;->setBackgroundResource(I)V

    goto :goto_0

    .line 172
    :cond_3
    const v0, 0x7f0202d3

    invoke-virtual {p0, v0}, Lcom/android/incallui/widget/SecVoiceButton;->setBackgroundResource(I)V

    goto :goto_0

    .line 175
    :cond_4
    iget-object v0, p0, Lcom/android/incallui/widget/SecVoiceButton;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/android/incallui/widget/SecVoiceButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private updateButtonColor()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 212
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v3, v2}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 213
    .local v0, "call":Lcom/android/incallui/Call;
    if-nez v0, :cond_0

    .line 224
    :goto_0
    return-void

    .line 214
    :cond_0
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    invoke-static {v1}, Lcom/android/incallui/Call$State;->isDialing(I)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_2

    .line 215
    :cond_1
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/UiAdapter;->isDialpadVisible()Z

    move-result v1

    if-nez v1, :cond_2

    .line 216
    const v1, 0x7f0f012a

    invoke-static {p0, v1}, Lcom/android/incallui/util/GraphicResourceUtils;->setRippleColor(Landroid/view/View;I)V

    .line 217
    invoke-virtual {p0}, Lcom/android/incallui/widget/SecVoiceButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0122

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/incallui/widget/SecVoiceButton;->setCompoundDrawableTintList(Landroid/content/res/ColorStateList;)V

    .line 218
    invoke-virtual {p0}, Lcom/android/incallui/widget/SecVoiceButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0215

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/incallui/widget/SecVoiceButton;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 220
    :cond_2
    const v1, 0x7f0f0129

    invoke-static {p0, v1}, Lcom/android/incallui/util/GraphicResourceUtils;->setRippleColor(Landroid/view/View;I)V

    .line 221
    invoke-virtual {p0, v3}, Lcom/android/incallui/widget/SecVoiceButton;->setCompoundDrawableTintList(Landroid/content/res/ColorStateList;)V

    .line 222
    invoke-virtual {p0}, Lcom/android/incallui/widget/SecVoiceButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0216

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/incallui/widget/SecVoiceButton;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0
.end method


# virtual methods
.method protected isInMultiWindowMode()Z
    .locals 1

    .prologue
    .line 156
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/UiAdapter;->isShowMultiWindowMode()Z

    move-result v0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 122
    iget v0, p0, Lcom/android/incallui/widget/SecVoiceButton;->mMeasuredWidth:I

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/widget/SecVoiceButton;->getMeasuredWidth()I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/android/incallui/widget/SecVoiceButton;->mMeasuredWidth:I

    .line 123
    iget v0, p0, Lcom/android/incallui/widget/SecVoiceButton;->mMeasuredHeight:I

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/widget/SecVoiceButton;->getMeasuredHeight()I

    move-result v0

    :goto_1
    iput v0, p0, Lcom/android/incallui/widget/SecVoiceButton;->mMeasuredHeight:I

    .line 124
    iget v0, p0, Lcom/android/incallui/widget/SecVoiceButton;->mMeasuredWidth:I

    iget v1, p0, Lcom/android/incallui/widget/SecVoiceButton;->mMeasuredHeight:I

    iget v2, p0, Lcom/android/incallui/widget/SecVoiceButton;->mRippleEffectWidth:I

    iget v3, p0, Lcom/android/incallui/widget/SecVoiceButton;->mRippleEffectHeight:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/incallui/widget/SecVoiceButton;->setRippleSizeWithDelta(IIII)V

    .line 125
    iget-object v0, p0, Lcom/android/incallui/widget/SecVoiceButton;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 126
    invoke-direct {p0}, Lcom/android/incallui/widget/SecVoiceButton;->updateButtonBackground()V

    .line 128
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/Button;->onDraw(Landroid/graphics/Canvas;)V

    .line 129
    return-void

    .line 122
    :cond_1
    iget v0, p0, Lcom/android/incallui/widget/SecVoiceButton;->mMeasuredWidth:I

    goto :goto_0

    .line 123
    :cond_2
    iget v0, p0, Lcom/android/incallui/widget/SecVoiceButton;->mMeasuredHeight:I

    goto :goto_1
.end method

.method public setEnabled(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 187
    invoke-direct {p0}, Lcom/android/incallui/widget/SecVoiceButton;->updateButtonColor()V

    .line 188
    if-eqz p1, :cond_1

    .line 189
    invoke-virtual {p0}, Lcom/android/incallui/widget/SecVoiceButton;->isEnabled()Z

    move-result v0

    if-eq p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/android/incallui/widget/SecVoiceButton;->mIsAnimatorRunning:Z

    if-nez v0, :cond_0

    .line 190
    iput-boolean v1, p0, Lcom/android/incallui/widget/SecVoiceButton;->mIsAnimatorRunning:Z

    .line 191
    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v1, v1, [F

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v1, v3

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/widget/SecVoiceButton;->mAnimator:Landroid/animation/ObjectAnimator;

    .line 192
    iget-object v0, p0, Lcom/android/incallui/widget/SecVoiceButton;->mAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Lcom/android/incallui/widget/SecVoiceButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0029

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 193
    iget-object v0, p0, Lcom/android/incallui/widget/SecVoiceButton;->mAnimator:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/android/incallui/widget/SecVoiceButton$1;

    invoke-direct {v1, p0}, Lcom/android/incallui/widget/SecVoiceButton$1;-><init>(Lcom/android/incallui/widget/SecVoiceButton;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 200
    invoke-super {p0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 201
    const v0, 0x3ecccccd    # 0.4f

    invoke-virtual {p0, v0}, Lcom/android/incallui/widget/SecVoiceButton;->setAlpha(F)V

    .line 202
    iget-object v0, p0, Lcom/android/incallui/widget/SecVoiceButton;->mAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 209
    :cond_0
    :goto_0
    return-void

    .line 205
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/widget/SecVoiceButton;->mAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/widget/SecVoiceButton;->mAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 206
    :cond_2
    iput-boolean v3, p0, Lcom/android/incallui/widget/SecVoiceButton;->mIsAnimatorRunning:Z

    .line 207
    invoke-super {p0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method public setEnabledAndAlpha(ZF)V
    .locals 0
    .param p1, "enabled"    # Z
    .param p2, "alpha"    # F

    .prologue
    .line 180
    invoke-direct {p0}, Lcom/android/incallui/widget/SecVoiceButton;->updateButtonColor()V

    .line 181
    invoke-super {p0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 182
    invoke-virtual {p0, p2}, Lcom/android/incallui/widget/SecVoiceButton;->setAlpha(F)V

    .line 183
    return-void
.end method

.method public setMeasuredSizeForRipple(II)V
    .locals 0
    .param p1, "measuredWidth"    # I
    .param p2, "measuredHeight"    # I

    .prologue
    .line 111
    iput p1, p0, Lcom/android/incallui/widget/SecVoiceButton;->mMeasuredWidth:I

    .line 112
    iput p2, p0, Lcom/android/incallui/widget/SecVoiceButton;->mMeasuredHeight:I

    .line 113
    return-void
.end method

.method public setRippleEffectSize(II)V
    .locals 0
    .param p1, "rippleWidth"    # I
    .param p2, "rippleHeight"    # I

    .prologue
    .line 116
    iput p1, p0, Lcom/android/incallui/widget/SecVoiceButton;->mRippleEffectWidth:I

    .line 117
    iput p2, p0, Lcom/android/incallui/widget/SecVoiceButton;->mRippleEffectHeight:I

    .line 118
    return-void
.end method
