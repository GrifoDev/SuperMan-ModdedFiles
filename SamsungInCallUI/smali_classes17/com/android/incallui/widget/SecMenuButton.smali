.class public Lcom/android/incallui/widget/SecMenuButton;
.super Landroid/widget/Button;
.source "SecMenuButton.java"


# static fields
.field private static final SHOW_BTN_BG:Z


# instance fields
.field private mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mRippleEffectHeight:I

.field private mRippleEffectWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 41
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_SHOW_BUTTON_BG"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/incallui/widget/SecMenuButton;->SHOW_BTN_BG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 49
    invoke-direct {p0, p1}, Lcom/android/incallui/widget/SecMenuButton;->init(Landroid/content/Context;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    invoke-direct {p0, p1}, Lcom/android/incallui/widget/SecMenuButton;->init(Landroid/content/Context;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 58
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 59
    invoke-direct {p0, p1}, Lcom/android/incallui/widget/SecMenuButton;->init(Landroid/content/Context;)V

    .line 60
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 63
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0143

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/incallui/widget/SecMenuButton;->mRippleEffectWidth:I

    .line 64
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0142

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/incallui/widget/SecMenuButton;->mRippleEffectHeight:I

    .line 66
    const/4 v2, 0x1

    new-array v0, v2, [I

    const v2, 0x101039c

    aput v2, v0, v4

    .line 69
    .local v0, "BG_ATTRS":[I
    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {p1, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 71
    .local v1, "a":Landroid/content/res/TypedArray;
    if-eqz v1, :cond_0

    .line 72
    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/widget/SecMenuButton;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 73
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 76
    .end local v1    # "a":Landroid/content/res/TypedArray;
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/widget/SecMenuButton;->mContentResolver:Landroid/content/ContentResolver;

    .line 78
    iget-object v2, p0, Lcom/android/incallui/widget/SecMenuButton;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    .line 79
    invoke-direct {p0}, Lcom/android/incallui/widget/SecMenuButton;->updateButtonBackground()V

    .line 81
    :cond_1
    return-void
.end method

.method private updateButtonBackground()V
    .locals 1

    .prologue
    .line 94
    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isEnabledShowButtonBackground()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 95
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->isQCIF()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    const v0, 0x7f0202d1

    invoke-virtual {p0, v0}, Lcom/android/incallui/widget/SecMenuButton;->setBackgroundResource(I)V

    .line 105
    :goto_0
    return-void

    .line 97
    :cond_0
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getCallPopupService()Lcom/android/incallui/service/SecCallPopupService;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 98
    const v0, 0x7f0202c9

    invoke-virtual {p0, v0}, Lcom/android/incallui/widget/SecMenuButton;->setBackgroundResource(I)V

    goto :goto_0

    .line 100
    :cond_1
    const v0, 0x7f0202c7

    invoke-virtual {p0, v0}, Lcom/android/incallui/widget/SecMenuButton;->setBackgroundResource(I)V

    goto :goto_0

    .line 103
    :cond_2
    iget-object v0, p0, Lcom/android/incallui/widget/SecMenuButton;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/android/incallui/widget/SecMenuButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/android/incallui/widget/SecMenuButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0287

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 86
    .local v0, "padding":I
    iget v1, p0, Lcom/android/incallui/widget/SecMenuButton;->mRippleEffectWidth:I

    iget v2, p0, Lcom/android/incallui/widget/SecMenuButton;->mRippleEffectHeight:I

    invoke-static {p0, v1, v2, v0, v0}, Lcom/android/incallui/util/GraphicResourceUtils;->setRippleSizeWithViewWidth(Landroid/view/View;IIII)V

    .line 87
    iget-object v1, p0, Lcom/android/incallui/widget/SecMenuButton;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 88
    invoke-direct {p0}, Lcom/android/incallui/widget/SecMenuButton;->updateButtonBackground()V

    .line 90
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/Button;->onDraw(Landroid/graphics/Canvas;)V

    .line 91
    return-void
.end method
