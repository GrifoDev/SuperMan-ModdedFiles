.class public Lcom/android/settings/fingerprint/FingerprintProgressEffectView;
.super Landroid/widget/FrameLayout;
.source "FingerprintProgressEffectView.java"


# static fields
.field private static strokeWidth:I


# instance fields
.field private final TAG:Ljava/lang/String;

.field private bShowError:Z

.field private mContext:Landroid/content/Context;

.field private mEffectHeight:I

.field private mEffectWidth:I

.field private mFingerEffect:Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;

.field private mPercent:I

.field private mWarnEffect:Lcom/samsung/android/visualeffect/progressfingerscan/FingerScanWarningEffect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->strokeWidth:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const-string/jumbo v0, "FpstFingerprintProgressEffectView"

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->TAG:Ljava/lang/String;

    iput v1, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mPercent:I

    iput-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->bShowError:Z

    iput v1, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mEffectWidth:I

    iput v1, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mEffectHeight:I

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string/jumbo v0, "FpstFingerprintProgressEffectView"

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->TAG:Ljava/lang/String;

    iput v1, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mPercent:I

    iput-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->bShowError:Z

    iput v1, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mEffectWidth:I

    iput v1, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mEffectHeight:I

    invoke-direct {p0, p1, p2}, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string/jumbo v0, "FpstFingerprintProgressEffectView"

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->TAG:Ljava/lang/String;

    iput v1, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mPercent:I

    iput-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->bShowError:Z

    iput v1, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mEffectWidth:I

    iput v1, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mEffectHeight:I

    invoke-direct {p0, p1, p2}, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    const/4 v3, 0x0

    const-string/jumbo v1, "FpstFingerprintProgressEffectView"

    const-string/jumbo v2, "[init]"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mContext:Landroid/content/Context;

    if-nez p2, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "attrs is null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    sget-object v1, Lcom/android/settings/R$styleable;->FingerprintEffectView:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mEffectWidth:I

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mEffectHeight:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100357

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->strokeWidth:I

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->reset()V

    return-void
.end method


# virtual methods
.method public removeFingerMark()V
    .locals 5

    const/4 v4, 0x0

    const-string/jumbo v1, "FpstFingerprintProgressEffectView"

    const-string/jumbo v2, "[removeFingerMark]"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mFingerEffect:Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->bShowError:Z

    if-eqz v1, :cond_0

    iput-boolean v4, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->bShowError:Z

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const v1, 0x3e19999a    # 0.15f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    invoke-virtual {p0, v4}, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->setFingerStatus(I)V

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mFingerEffect:Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;

    invoke-virtual {v1}, Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;->showFinger()V

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mFingerEffect:Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;

    invoke-virtual {v1, v0}, Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;->startAnimation(Landroid/view/animation/Animation;)V

    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mPercent:I

    invoke-virtual {p0, v1}, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->setPercent(I)V

    const/16 v1, 0x64

    invoke-virtual {p0, v1}, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->setWarningStatus(I)V

    :cond_0
    return-void
.end method

.method public reset()V
    .locals 18

    const-string/jumbo v1, "FpstFingerprintProgressEffectView"

    const-string/jumbo v2, "[reset]"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mPercent:I

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->bShowError:Z

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mFingerEffect:Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mFingerEffect:Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->removeView(Landroid/view/View;)V

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mFingerEffect:Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;

    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mWarnEffect:Lcom/samsung/android/visualeffect/progressfingerscan/FingerScanWarningEffect;

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mWarnEffect:Lcom/samsung/android/visualeffect/progressfingerscan/FingerScanWarningEffect;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->removeView(Landroid/view/View;)V

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mWarnEffect:Lcom/samsung/android/visualeffect/progressfingerscan/FingerScanWarningEffect;

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x7f02010f

    invoke-virtual {v1, v3, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v14

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v13

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mEffectWidth:I

    sub-int/2addr v1, v14

    div-int/lit8 v15, v1, 0x2

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mEffectHeight:I

    sub-int/2addr v1, v13

    div-int/lit8 v16, v1, 0x2

    new-instance v1, Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mEffectWidth:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mEffectHeight:I

    sget v9, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->strokeWidth:I

    const v5, -0xfc4d15

    const v6, -0xff541d

    const v7, -0x1b1b1c

    const v8, -0xff2d5d

    const v10, 0x7f02010f

    const v11, 0x7f020108

    const v12, 0x7f020109

    invoke-direct/range {v1 .. v12}, Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;-><init>(Landroid/content/Context;IIIIIIIIII)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mFingerEffect:Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;

    new-instance v1, Lcom/samsung/android/visualeffect/progressfingerscan/FingerScanWarningEffect;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/samsung/android/visualeffect/progressfingerscan/FingerScanWarningEffect;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mWarnEffect:Lcom/samsung/android/visualeffect/progressfingerscan/FingerScanWarningEffect;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mWarnEffect:Lcom/samsung/android/visualeffect/progressfingerscan/FingerScanWarningEffect;

    int-to-float v2, v15

    invoke-virtual {v1, v2}, Lcom/samsung/android/visualeffect/progressfingerscan/FingerScanWarningEffect;->setX(F)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mWarnEffect:Lcom/samsung/android/visualeffect/progressfingerscan/FingerScanWarningEffect;

    move/from16 v0, v16

    int-to-float v2, v0

    invoke-virtual {v1, v2}, Lcom/samsung/android/visualeffect/progressfingerscan/FingerScanWarningEffect;->setY(F)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mFingerEffect:Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mEffectWidth:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mEffectHeight:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->addView(Landroid/view/View;II)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mWarnEffect:Lcom/samsung/android/visualeffect/progressfingerscan/FingerScanWarningEffect;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v14, v13}, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->addView(Landroid/view/View;II)V

    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->setLayoutDirection(I)V

    return-void
.end method

.method public setFingerStatus(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mFingerEffect:Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mFingerEffect:Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;

    invoke-virtual {v0, p1}, Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;->setFingerStatus(I)V

    :cond_0
    return-void
.end method

.method public setPercent(I)V
    .locals 3

    const-string/jumbo v0, "FpstFingerprintProgressEffectView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[setPercent] percent = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mPercent:I

    if-le v0, p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mFingerEffect:Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mFingerEffect:Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;->setPercent(F)V

    :cond_1
    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->bShowError:Z

    if-nez v0, :cond_2

    iput p1, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mPercent:I

    :cond_2
    return-void
.end method

.method public setWarningStatus(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mFingerEffect:Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;

    if-eqz v0, :cond_0

    const/16 v0, 0x64

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mFingerEffect:Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;

    invoke-virtual {v0}, Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;->hideFinger()V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mWarnEffect:Lcom/samsung/android/visualeffect/progressfingerscan/FingerScanWarningEffect;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mWarnEffect:Lcom/samsung/android/visualeffect/progressfingerscan/FingerScanWarningEffect;

    invoke-virtual {v0, p1}, Lcom/samsung/android/visualeffect/progressfingerscan/FingerScanWarningEffect;->setWarningStatus(I)V

    :cond_1
    return-void
.end method

.method public showErrorEffect()V
    .locals 5

    const/4 v4, 0x1

    const-string/jumbo v2, "FpstFingerprintProgressEffectView"

    const-string/jumbo v3, "[showErrorEffect]"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mPercent:I

    add-int/lit8 v1, v2, 0x5

    const/16 v2, 0x64

    if-lt v1, v2, :cond_0

    const/16 v1, 0x62

    :cond_0
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3e19999a    # 0.15f

    invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    invoke-virtual {v0, v4}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mFingerEffect:Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->bShowError:Z

    if-eqz v2, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iput-boolean v4, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->bShowError:Z

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->mFingerEffect:Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;

    invoke-virtual {v2, v0}, Lcom/samsung/android/visualeffect/progressfingerscan/ProgressFingerScanEffect;->startAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {p0, v1}, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->setPercent(I)V

    goto :goto_0
.end method
