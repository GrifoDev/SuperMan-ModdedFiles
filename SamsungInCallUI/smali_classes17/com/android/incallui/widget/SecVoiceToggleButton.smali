.class public Lcom/android/incallui/widget/SecVoiceToggleButton;
.super Landroid/widget/ToggleButton;
.source "SecVoiceToggleButton.java"


# static fields
.field private static final SHOW_BTN_BG:Z


# instance fields
.field private mAnimator:Landroid/animation/ObjectAnimator;

.field private mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mIsAnimatorRunning:Z

.field private mMeasuredHeight:I

.field private mMeasuredWidth:I

.field private mRippleEffectHeight:I

.field private mRippleEffectWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 48
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_SHOW_BUTTON_BG"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/incallui/widget/SecVoiceToggleButton;->SHOW_BTN_BG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 73
    invoke-direct {p0, p1}, Landroid/widget/ToggleButton;-><init>(Landroid/content/Context;)V

    .line 74
    invoke-direct {p0, p1}, Lcom/android/incallui/widget/SecVoiceToggleButton;->init(Landroid/content/Context;)V

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Landroid/widget/ToggleButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 69
    invoke-direct {p0, p1}, Lcom/android/incallui/widget/SecVoiceToggleButton;->init(Landroid/content/Context;)V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 63
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ToggleButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 64
    invoke-direct {p0, p1}, Lcom/android/incallui/widget/SecVoiceToggleButton;->init(Landroid/content/Context;)V

    .line 65
    return-void
.end method

.method static synthetic access$002(Lcom/android/incallui/widget/SecVoiceToggleButton;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/widget/SecVoiceToggleButton;
    .param p1, "x1"    # Z

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/android/incallui/widget/SecVoiceToggleButton;->mIsAnimatorRunning:Z

    return p1
.end method

.method private init(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 78
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 79
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a02c8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/incallui/widget/SecVoiceToggleButton;->mRippleEffectWidth:I

    .line 80
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a02c7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/incallui/widget/SecVoiceToggleButton;->mRippleEffectHeight:I

    .line 88
    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/incallui/widget/SecVoiceToggleButton;->mMeasuredWidth:I

    .line 89
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a013b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/incallui/widget/SecVoiceToggleButton;->mMeasuredHeight:I

    .line 90
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getCallPopupService()Lcom/android/incallui/service/SecCallPopupService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0216

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/incallui/widget/SecVoiceToggleButton;->mMeasuredHeight:I

    .line 92
    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isEnabledShowButtonBackground()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a04c0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/incallui/widget/SecVoiceToggleButton;->mMeasuredHeight:I

    .line 97
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/widget/SecVoiceToggleButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0201b0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/widget/SecVoiceToggleButton;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 99
    iget-object v0, p0, Lcom/android/incallui/widget/SecVoiceToggleButton;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 100
    invoke-direct {p0}, Lcom/android/incallui/widget/SecVoiceToggleButton;->updateButtonBackground()V

    .line 102
    :cond_1
    invoke-direct {p0}, Lcom/android/incallui/widget/SecVoiceToggleButton;->setTextSizeUntilLargeSize()V

    .line 103
    return-void

    .line 81
    :cond_2
    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isOnehandModeOn()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 82
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a02cf

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/incallui/widget/SecVoiceToggleButton;->mRippleEffectWidth:I

    .line 83
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a02ce

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/incallui/widget/SecVoiceToggleButton;->mRippleEffectHeight:I

    goto :goto_0

    .line 85
    :cond_3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0192

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/incallui/widget/SecVoiceToggleButton;->mRippleEffectWidth:I

    .line 86
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0191

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/incallui/widget/SecVoiceToggleButton;->mRippleEffectHeight:I

    goto/16 :goto_0
.end method

.method private setRippleSizeWithDelta(IIII)V
    .locals 10
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "rippleWidth"    # I
    .param p4, "rippleHeight"    # I

    .prologue
    .line 232
    div-int/lit8 v1, p1, 0x2

    .line 233
    .local v1, "centerX":I
    div-int/lit8 v2, p2, 0x4

    .line 234
    .local v2, "centerY":I
    div-int/lit8 v5, p3, 0x2

    .line 235
    .local v5, "half_width":I
    div-int/lit8 v4, p4, 0x2

    .line 236
    .local v4, "half_height":I
    invoke-virtual {p0}, Lcom/android/incallui/widget/SecVoiceToggleButton;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a05b5

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 238
    .local v3, "delta":I
    invoke-virtual {p0}, Lcom/android/incallui/widget/SecVoiceToggleButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 240
    .local v0, "backgroundDrawable":Landroid/graphics/drawable/Drawable;
    instance-of v6, v0, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v6, :cond_0

    .line 241
    sub-int v6, v1, v5

    sub-int v7, v2, v4

    add-int/2addr v7, v3

    add-int v8, v1, v5

    add-int v9, v2, v4

    add-int/2addr v9, v3

    invoke-virtual {v0, v6, v7, v8, v9}, Landroid/graphics/drawable/Drawable;->setHotspotBounds(IIII)V

    .line 248
    :cond_0
    return-void
.end method

.method private setTextSizeUntilLargeSize()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 122
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/UiAdapter;->isShowMultiWindowMode()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 123
    :cond_0
    const/4 v4, 0x0

    invoke-virtual {p0, v6, v4}, Lcom/android/incallui/widget/SecVoiceToggleButton;->setTextSize(IF)V

    .line 146
    :cond_1
    :goto_0
    return-void

    .line 126
    :cond_2
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/InCallPresenter;->getCallPopupService()Lcom/android/incallui/service/SecCallPopupService;

    move-result-object v4

    if-eqz v4, :cond_3

    const-string v4, "popup_call_service_has_icon"

    .line 127
    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    :cond_3
    const-string v4, "tablet_fullscreen_mode"

    .line 128
    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 131
    invoke-virtual {p0}, Lcom/android/incallui/widget/SecVoiceToggleButton;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v3, v4, Landroid/util/DisplayMetrics;->density:F

    .line 132
    .local v3, "mMatrix":F
    invoke-virtual {p0}, Lcom/android/incallui/widget/SecVoiceToggleButton;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a00a9

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    div-float v1, v4, v3

    .line 133
    .local v1, "defaultTextSize":F
    invoke-static {}, Lcom/android/incallui/util/PhoneModeUtils;->isOneHandModeOn()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 134
    invoke-virtual {p0}, Lcom/android/incallui/widget/SecVoiceToggleButton;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a026e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    div-float v1, v4, v3

    .line 136
    :cond_4
    invoke-static {}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getInstance()Lcom/android/incallui/accessory/AccessoryEventHandler;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/accessory/AccessoryEventHandler;->isCoverClosed()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 137
    invoke-virtual {p0}, Lcom/android/incallui/widget/SecVoiceToggleButton;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a024b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    div-float v1, v4, v3

    .line 139
    :cond_5
    const v0, 0x3f99999a    # 1.2f

    .line 140
    .local v0, "MAX_FONT_SCALE":F
    invoke-virtual {p0}, Lcom/android/incallui/widget/SecVoiceToggleButton;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v2, v4, Landroid/content/res/Configuration;->fontScale:F

    .line 141
    .local v2, "fontScale":F
    cmpl-float v4, v2, v0

    if-lez v4, :cond_6

    .line 142
    move v2, v0

    .line 145
    :cond_6
    mul-float v4, v1, v2

    invoke-virtual {p0, v6, v4}, Lcom/android/incallui/widget/SecVoiceToggleButton;->setTextSize(IF)V

    goto :goto_0
.end method

.method private updateButtonBackground()V
    .locals 1

    .prologue
    .line 163
    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isEnabledShowButtonBackground()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 164
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getCallPopupService()Lcom/android/incallui/service/SecCallPopupService;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 165
    const-string v0, "popup_call_service_has_icon"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/android/incallui/widget/SecVoiceToggleButton;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/android/incallui/widget/SecVoiceToggleButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 180
    :goto_0
    return-void

    .line 168
    :cond_0
    const v0, 0x7f0202c9

    invoke-virtual {p0, v0}, Lcom/android/incallui/widget/SecVoiceToggleButton;->setBackgroundResource(I)V

    goto :goto_0

    .line 170
    :cond_1
    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isOnehandModeOn()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 171
    const v0, 0x7f0202d9

    invoke-virtual {p0, v0}, Lcom/android/incallui/widget/SecVoiceToggleButton;->setBackgroundResource(I)V

    goto :goto_0

    .line 172
    :cond_2
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/UiAdapter;->isShowMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 173
    const v0, 0x7f0202d7

    invoke-virtual {p0, v0}, Lcom/android/incallui/widget/SecVoiceToggleButton;->setBackgroundResource(I)V

    goto :goto_0

    .line 175
    :cond_3
    const v0, 0x7f0202d3

    invoke-virtual {p0, v0}, Lcom/android/incallui/widget/SecVoiceToggleButton;->setBackgroundResource(I)V

    goto :goto_0

    .line 178
    :cond_4
    iget-object v0, p0, Lcom/android/incallui/widget/SecVoiceToggleButton;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/android/incallui/widget/SecVoiceToggleButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private updateButtonColor()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 215
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v3, v2}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 216
    .local v0, "call":Lcom/android/incallui/Call;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    invoke-static {v1}, Lcom/android/incallui/Call$State;->isDialing(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_2

    .line 217
    :cond_0
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/UiAdapter;->isDialpadVisible()Z

    move-result v1

    if-nez v1, :cond_2

    .line 218
    const v1, 0x7f0f012a

    invoke-static {p0, v1}, Lcom/android/incallui/util/GraphicResourceUtils;->setRippleColor(Landroid/view/View;I)V

    .line 219
    invoke-virtual {p0}, Lcom/android/incallui/widget/SecVoiceToggleButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 220
    invoke-virtual {p0, v3}, Lcom/android/incallui/widget/SecVoiceToggleButton;->setCompoundDrawableTintList(Landroid/content/res/ColorStateList;)V

    .line 223
    :goto_0
    invoke-virtual {p0}, Lcom/android/incallui/widget/SecVoiceToggleButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0215

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/incallui/widget/SecVoiceToggleButton;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 229
    :goto_1
    return-void

    .line 222
    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/widget/SecVoiceToggleButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0122

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/incallui/widget/SecVoiceToggleButton;->setCompoundDrawableTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 225
    :cond_2
    const v1, 0x7f0f0129

    invoke-static {p0, v1}, Lcom/android/incallui/util/GraphicResourceUtils;->setRippleColor(Landroid/view/View;I)V

    .line 226
    invoke-virtual {p0, v3}, Lcom/android/incallui/widget/SecVoiceToggleButton;->setCompoundDrawableTintList(Landroid/content/res/ColorStateList;)V

    .line 227
    invoke-virtual {p0}, Lcom/android/incallui/widget/SecVoiceToggleButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0216

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/incallui/widget/SecVoiceToggleButton;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_1
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    const v3, 0x7f090097

    .line 150
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 151
    const/4 v0, 0x0

    .line 152
    .local v0, "msg":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/incallui/widget/SecVoiceToggleButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 153
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/incallui/widget/SecVoiceToggleButton;->getTextOn()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/incallui/widget/SecVoiceToggleButton;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/incallui/widget/SecVoiceToggleButton;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0902aa

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 157
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 159
    .end local v0    # "msg":Ljava/lang/String;
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ToggleButton;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v1

    return v1

    .line 155
    .restart local v0    # "msg":Ljava/lang/String;
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/incallui/widget/SecVoiceToggleButton;->getTextOff()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/incallui/widget/SecVoiceToggleButton;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/incallui/widget/SecVoiceToggleButton;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0902a9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 112
    iget v0, p0, Lcom/android/incallui/widget/SecVoiceToggleButton;->mMeasuredWidth:I

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/widget/SecVoiceToggleButton;->getMeasuredWidth()I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/android/incallui/widget/SecVoiceToggleButton;->mMeasuredWidth:I

    .line 113
    iget v0, p0, Lcom/android/incallui/widget/SecVoiceToggleButton;->mMeasuredHeight:I

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/widget/SecVoiceToggleButton;->getMeasuredHeight()I

    move-result v0

    :goto_1
    iput v0, p0, Lcom/android/incallui/widget/SecVoiceToggleButton;->mMeasuredHeight:I

    .line 114
    iget v0, p0, Lcom/android/incallui/widget/SecVoiceToggleButton;->mMeasuredWidth:I

    iget v1, p0, Lcom/android/incallui/widget/SecVoiceToggleButton;->mMeasuredHeight:I

    iget v2, p0, Lcom/android/incallui/widget/SecVoiceToggleButton;->mRippleEffectWidth:I

    iget v3, p0, Lcom/android/incallui/widget/SecVoiceToggleButton;->mRippleEffectHeight:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/incallui/widget/SecVoiceToggleButton;->setRippleSizeWithDelta(IIII)V

    .line 115
    iget-object v0, p0, Lcom/android/incallui/widget/SecVoiceToggleButton;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 116
    invoke-direct {p0}, Lcom/android/incallui/widget/SecVoiceToggleButton;->updateButtonBackground()V

    .line 118
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ToggleButton;->onDraw(Landroid/graphics/Canvas;)V

    .line 119
    return-void

    .line 112
    :cond_1
    iget v0, p0, Lcom/android/incallui/widget/SecVoiceToggleButton;->mMeasuredWidth:I

    goto :goto_0

    .line 113
    :cond_2
    iget v0, p0, Lcom/android/incallui/widget/SecVoiceToggleButton;->mMeasuredHeight:I

    goto :goto_1
.end method

.method public setChecked(Z)V
    .locals 0
    .param p1, "checked"    # Z

    .prologue
    .line 210
    invoke-direct {p0}, Lcom/android/incallui/widget/SecVoiceToggleButton;->updateButtonColor()V

    .line 211
    invoke-super {p0, p1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 212
    return-void
.end method

.method public setEnabled(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 184
    invoke-direct {p0}, Lcom/android/incallui/widget/SecVoiceToggleButton;->updateButtonColor()V

    .line 185
    if-eqz p1, :cond_1

    .line 186
    invoke-virtual {p0}, Lcom/android/incallui/widget/SecVoiceToggleButton;->isEnabled()Z

    move-result v0

    if-eq p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/android/incallui/widget/SecVoiceToggleButton;->mIsAnimatorRunning:Z

    if-nez v0, :cond_0

    .line 187
    iput-boolean v1, p0, Lcom/android/incallui/widget/SecVoiceToggleButton;->mIsAnimatorRunning:Z

    .line 188
    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v1, v1, [F

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v1, v3

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/widget/SecVoiceToggleButton;->mAnimator:Landroid/animation/ObjectAnimator;

    .line 189
    iget-object v0, p0, Lcom/android/incallui/widget/SecVoiceToggleButton;->mAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Lcom/android/incallui/widget/SecVoiceToggleButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0029

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 190
    iget-object v0, p0, Lcom/android/incallui/widget/SecVoiceToggleButton;->mAnimator:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/android/incallui/widget/SecVoiceToggleButton$1;

    invoke-direct {v1, p0}, Lcom/android/incallui/widget/SecVoiceToggleButton$1;-><init>(Lcom/android/incallui/widget/SecVoiceToggleButton;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 197
    invoke-super {p0, p1}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 198
    const v0, 0x3ecccccd    # 0.4f

    invoke-virtual {p0, v0}, Lcom/android/incallui/widget/SecVoiceToggleButton;->setAlpha(F)V

    .line 199
    iget-object v0, p0, Lcom/android/incallui/widget/SecVoiceToggleButton;->mAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 206
    :cond_0
    :goto_0
    return-void

    .line 202
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/widget/SecVoiceToggleButton;->mAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/widget/SecVoiceToggleButton;->mAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 203
    :cond_2
    iput-boolean v3, p0, Lcom/android/incallui/widget/SecVoiceToggleButton;->mIsAnimatorRunning:Z

    .line 204
    invoke-super {p0, p1}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    goto :goto_0
.end method

.method public setMeasuredSizeForRipple(II)V
    .locals 0
    .param p1, "measuredWidth"    # I
    .param p2, "measuredHeight"    # I

    .prologue
    .line 106
    iput p1, p0, Lcom/android/incallui/widget/SecVoiceToggleButton;->mMeasuredWidth:I

    .line 107
    iput p2, p0, Lcom/android/incallui/widget/SecVoiceToggleButton;->mMeasuredHeight:I

    .line 108
    return-void
.end method
