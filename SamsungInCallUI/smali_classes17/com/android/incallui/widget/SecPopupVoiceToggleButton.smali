.class public Lcom/android/incallui/widget/SecPopupVoiceToggleButton;
.super Landroid/widget/ToggleButton;
.source "SecPopupVoiceToggleButton.java"


# static fields
.field private static final SHOW_BTN_BG:Z


# instance fields
.field private isCallPopupService:Z

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

    sput-boolean v0, Lcom/android/incallui/widget/SecPopupVoiceToggleButton;->SHOW_BTN_BG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/ToggleButton;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/widget/SecPopupVoiceToggleButton;->isCallPopupService:Z

    invoke-direct {p0, p1}, Lcom/android/incallui/widget/SecPopupVoiceToggleButton;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/ToggleButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/widget/SecPopupVoiceToggleButton;->isCallPopupService:Z

    invoke-direct {p0, p1}, Lcom/android/incallui/widget/SecPopupVoiceToggleButton;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ToggleButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/widget/SecPopupVoiceToggleButton;->isCallPopupService:Z

    invoke-direct {p0, p1}, Lcom/android/incallui/widget/SecPopupVoiceToggleButton;->init(Landroid/content/Context;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->getCallPopupService()Lcom/android/incallui/service/SecCallPopupService;

    move-result-object v1

    if-eqz v1, :cond_0

    iput-boolean v4, p0, Lcom/android/incallui/widget/SecPopupVoiceToggleButton;->isCallPopupService:Z

    :cond_0
    invoke-virtual {p0, v3}, Lcom/android/incallui/widget/SecPopupVoiceToggleButton;->semSetHoverPopupType(I)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0534

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/incallui/widget/SecPopupVoiceToggleButton;->mRippleEffectWidth:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0533

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/incallui/widget/SecPopupVoiceToggleButton;->mRippleEffectHeight:I

    new-array v0, v4, [I

    const v1, 0x101039c

    aput v1, v0, v3

    if-eqz v0, :cond_1

    invoke-virtual {p1, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/widget/SecPopupVoiceToggleButton;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    :cond_1
    invoke-direct {p0}, Lcom/android/incallui/widget/SecPopupVoiceToggleButton;->updateButtonBackground()V

    return-void
.end method

.method private updateButtonBackground()V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/widget/SecPopupVoiceToggleButton;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isEnabledShowButtonBackground()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0202d6

    invoke-virtual {p0, v0}, Lcom/android/incallui/widget/SecPopupVoiceToggleButton;->setBackgroundResource(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/widget/SecPopupVoiceToggleButton;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/android/incallui/widget/SecPopupVoiceToggleButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 4

    const v3, 0x7f090099

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/widget/SecPopupVoiceToggleButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/incallui/widget/SecPopupVoiceToggleButton;->getTextOn()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/incallui/widget/SecPopupVoiceToggleButton;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/incallui/widget/SecPopupVoiceToggleButton;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0902b7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ToggleButton;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v1

    return v1

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/incallui/widget/SecPopupVoiceToggleButton;->getTextOff()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/incallui/widget/SecPopupVoiceToggleButton;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/incallui/widget/SecPopupVoiceToggleButton;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0902b6

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

    iget v0, p0, Lcom/android/incallui/widget/SecPopupVoiceToggleButton;->mMeasuredWidth:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/widget/SecPopupVoiceToggleButton;->getMeasuredWidth()I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/android/incallui/widget/SecPopupVoiceToggleButton;->mMeasuredWidth:I

    iget v0, p0, Lcom/android/incallui/widget/SecPopupVoiceToggleButton;->mMeasuredHeight:I

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/widget/SecPopupVoiceToggleButton;->getMeasuredHeight()I

    move-result v0

    :goto_1
    iput v0, p0, Lcom/android/incallui/widget/SecPopupVoiceToggleButton;->mMeasuredHeight:I

    iget v0, p0, Lcom/android/incallui/widget/SecPopupVoiceToggleButton;->mMeasuredWidth:I

    iget v1, p0, Lcom/android/incallui/widget/SecPopupVoiceToggleButton;->mMeasuredHeight:I

    iget v2, p0, Lcom/android/incallui/widget/SecPopupVoiceToggleButton;->mRippleEffectWidth:I

    iget v3, p0, Lcom/android/incallui/widget/SecPopupVoiceToggleButton;->mRippleEffectHeight:I

    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/incallui/util/GraphicResourceUtils;->setRippleSize(Landroid/view/View;IIII)V

    invoke-direct {p0}, Lcom/android/incallui/widget/SecPopupVoiceToggleButton;->updateButtonBackground()V

    invoke-super {p0, p1}, Landroid/widget/ToggleButton;->onDraw(Landroid/graphics/Canvas;)V

    return-void

    :cond_0
    iget v0, p0, Lcom/android/incallui/widget/SecPopupVoiceToggleButton;->mMeasuredWidth:I

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/android/incallui/widget/SecPopupVoiceToggleButton;->mMeasuredHeight:I

    goto :goto_1
.end method

.method public setMeasuredSizeForRipple(II)V
    .locals 0

    iput p1, p0, Lcom/android/incallui/widget/SecPopupVoiceToggleButton;->mMeasuredWidth:I

    iput p2, p0, Lcom/android/incallui/widget/SecPopupVoiceToggleButton;->mMeasuredHeight:I

    return-void
.end method
