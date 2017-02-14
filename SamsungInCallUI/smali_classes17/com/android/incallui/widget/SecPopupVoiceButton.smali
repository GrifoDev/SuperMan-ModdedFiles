.class public Lcom/android/incallui/widget/SecPopupVoiceButton;
.super Landroid/widget/Button;
.source "SecPopupVoiceButton.java"


# static fields
.field private static final SHOW_BTN_BG:Z


# instance fields
.field private mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mMeasuredHeight:I

.field private mMeasuredWidth:I

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

    sput-boolean v0, Lcom/android/incallui/widget/SecPopupVoiceButton;->SHOW_BTN_BG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/android/incallui/widget/SecPopupVoiceButton;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0, p1}, Lcom/android/incallui/widget/SecPopupVoiceButton;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0, p1}, Lcom/android/incallui/widget/SecPopupVoiceButton;->init(Landroid/content/Context;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/incallui/widget/SecPopupVoiceButton;->semSetHoverPopupType(I)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0192

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/incallui/widget/SecPopupVoiceButton;->mRippleEffectWidth:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0191

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/incallui/widget/SecPopupVoiceButton;->mRippleEffectHeight:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/incallui/widget/SecPopupVoiceButton;->mMeasuredWidth:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0216

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/incallui/widget/SecPopupVoiceButton;->mMeasuredHeight:I

    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isEnabledShowButtonBackground()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a04c0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/incallui/widget/SecPopupVoiceButton;->mMeasuredHeight:I

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/widget/SecPopupVoiceButton;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0}, Lcom/android/incallui/widget/SecPopupVoiceButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0201b0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/widget/SecPopupVoiceButton;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/android/incallui/widget/SecPopupVoiceButton;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/incallui/widget/SecPopupVoiceButton;->updateButtonBackground()V

    :cond_1
    return-void
.end method

.method private updateButtonBackground()V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/widget/SecPopupVoiceButton;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/android/incallui/widget/SecPopupVoiceButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    iget v0, p0, Lcom/android/incallui/widget/SecPopupVoiceButton;->mMeasuredWidth:I

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/widget/SecPopupVoiceButton;->getMeasuredWidth()I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/android/incallui/widget/SecPopupVoiceButton;->mMeasuredWidth:I

    iget v0, p0, Lcom/android/incallui/widget/SecPopupVoiceButton;->mMeasuredHeight:I

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/widget/SecPopupVoiceButton;->getMeasuredHeight()I

    move-result v0

    :goto_1
    iput v0, p0, Lcom/android/incallui/widget/SecPopupVoiceButton;->mMeasuredHeight:I

    iget v0, p0, Lcom/android/incallui/widget/SecPopupVoiceButton;->mMeasuredWidth:I

    iget v1, p0, Lcom/android/incallui/widget/SecPopupVoiceButton;->mMeasuredHeight:I

    iget v2, p0, Lcom/android/incallui/widget/SecPopupVoiceButton;->mRippleEffectWidth:I

    iget v3, p0, Lcom/android/incallui/widget/SecPopupVoiceButton;->mRippleEffectHeight:I

    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/incallui/util/GraphicResourceUtils;->setRippleSize(Landroid/view/View;IIII)V

    iget-object v0, p0, Lcom/android/incallui/widget/SecPopupVoiceButton;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/widget/SecPopupVoiceButton;->updateButtonBackground()V

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/Button;->onDraw(Landroid/graphics/Canvas;)V

    return-void

    :cond_1
    iget v0, p0, Lcom/android/incallui/widget/SecPopupVoiceButton;->mMeasuredWidth:I

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/android/incallui/widget/SecPopupVoiceButton;->mMeasuredHeight:I

    goto :goto_1
.end method

.method public setMeasuredSizeForRipple(II)V
    .locals 0

    iput p1, p0, Lcom/android/incallui/widget/SecPopupVoiceButton;->mMeasuredWidth:I

    iput p2, p0, Lcom/android/incallui/widget/SecPopupVoiceButton;->mMeasuredHeight:I

    return-void
.end method
