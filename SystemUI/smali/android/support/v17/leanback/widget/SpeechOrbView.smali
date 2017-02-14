.class public Landroid/support/v17/leanback/widget/SpeechOrbView;
.super Landroid/support/v17/leanback/widget/SearchOrbView;
.source "SpeechOrbView.java"


# instance fields
.field private mCurrentLevel:I

.field private mListening:Z

.field private final mListeningOrbColors:Landroid/support/v17/leanback/widget/SearchOrbView$Colors;

.field private final mNotListeningOrbColors:Landroid/support/v17/leanback/widget/SearchOrbView$Colors;

.field private final mSoundLevelMaxZoom:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v17/leanback/widget/SpeechOrbView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v17/leanback/widget/SpeechOrbView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    const/4 v2, 0x1

    const/4 v5, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/support/v17/leanback/widget/SearchOrbView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput v5, p0, Landroid/support/v17/leanback/widget/SpeechOrbView;->mCurrentLevel:I

    iput-boolean v5, p0, Landroid/support/v17/leanback/widget/SpeechOrbView;->mListening:Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/v17/leanback/R$fraction;->lb_search_bar_speech_orb_max_level_zoom:I

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v1

    iput v1, p0, Landroid/support/v17/leanback/widget/SpeechOrbView;->mSoundLevelMaxZoom:F

    new-instance v1, Landroid/support/v17/leanback/widget/SearchOrbView$Colors;

    sget v2, Landroid/support/v17/leanback/R$color;->lb_speech_orb_not_recording:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    sget v3, Landroid/support/v17/leanback/R$color;->lb_speech_orb_not_recording_pulsed:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    sget v4, Landroid/support/v17/leanback/R$color;->lb_speech_orb_not_recording_icon:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Landroid/support/v17/leanback/widget/SearchOrbView$Colors;-><init>(III)V

    iput-object v1, p0, Landroid/support/v17/leanback/widget/SpeechOrbView;->mNotListeningOrbColors:Landroid/support/v17/leanback/widget/SearchOrbView$Colors;

    new-instance v1, Landroid/support/v17/leanback/widget/SearchOrbView$Colors;

    sget v2, Landroid/support/v17/leanback/R$color;->lb_speech_orb_recording:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    sget v3, Landroid/support/v17/leanback/R$color;->lb_speech_orb_recording:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-direct {v1, v2, v3, v5}, Landroid/support/v17/leanback/widget/SearchOrbView$Colors;-><init>(III)V

    iput-object v1, p0, Landroid/support/v17/leanback/widget/SpeechOrbView;->mListeningOrbColors:Landroid/support/v17/leanback/widget/SearchOrbView$Colors;

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/SpeechOrbView;->showNotListening()V

    return-void
.end method


# virtual methods
.method getLayoutResourceId()I
    .locals 1

    sget v0, Landroid/support/v17/leanback/R$layout;->lb_speech_orb:I

    return v0
.end method

.method public setSoundLevel(I)V
    .locals 3

    iget-boolean v1, p0, Landroid/support/v17/leanback/widget/SpeechOrbView;->mListening:Z

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget v1, p0, Landroid/support/v17/leanback/widget/SpeechOrbView;->mCurrentLevel:I

    if-le p1, v1, :cond_1

    iget v1, p0, Landroid/support/v17/leanback/widget/SpeechOrbView;->mCurrentLevel:I

    iget v2, p0, Landroid/support/v17/leanback/widget/SpeechOrbView;->mCurrentLevel:I

    sub-int v2, p1, v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iput v1, p0, Landroid/support/v17/leanback/widget/SpeechOrbView;->mCurrentLevel:I

    :goto_0
    iget v1, p0, Landroid/support/v17/leanback/widget/SpeechOrbView;->mSoundLevelMaxZoom:F

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/SpeechOrbView;->getFocusedZoom()F

    move-result v2

    sub-float/2addr v1, v2

    iget v2, p0, Landroid/support/v17/leanback/widget/SpeechOrbView;->mCurrentLevel:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    add-float v0, v2, v1

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/SpeechOrbView;->scaleOrbViewOnly(F)V

    return-void

    :cond_1
    iget v1, p0, Landroid/support/v17/leanback/widget/SpeechOrbView;->mCurrentLevel:I

    int-to-float v1, v1

    const v2, 0x3f333333    # 0.7f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Landroid/support/v17/leanback/widget/SpeechOrbView;->mCurrentLevel:I

    goto :goto_0
.end method

.method public showListening()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/SpeechOrbView;->mListeningOrbColors:Landroid/support/v17/leanback/widget/SearchOrbView$Colors;

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/SpeechOrbView;->setOrbColors(Landroid/support/v17/leanback/widget/SearchOrbView$Colors;)V

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/SpeechOrbView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/v17/leanback/R$drawable;->lb_ic_search_mic:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/SpeechOrbView;->setOrbIcon(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v3}, Landroid/support/v17/leanback/widget/SpeechOrbView;->animateOnFocus(Z)V

    invoke-virtual {p0, v2}, Landroid/support/v17/leanback/widget/SpeechOrbView;->enableOrbColorAnimation(Z)V

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/SpeechOrbView;->scaleOrbViewOnly(F)V

    iput v2, p0, Landroid/support/v17/leanback/widget/SpeechOrbView;->mCurrentLevel:I

    iput-boolean v3, p0, Landroid/support/v17/leanback/widget/SpeechOrbView;->mListening:Z

    return-void
.end method

.method public showNotListening()V
    .locals 2

    iget-object v0, p0, Landroid/support/v17/leanback/widget/SpeechOrbView;->mNotListeningOrbColors:Landroid/support/v17/leanback/widget/SearchOrbView$Colors;

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/SpeechOrbView;->setOrbColors(Landroid/support/v17/leanback/widget/SearchOrbView$Colors;)V

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/SpeechOrbView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/v17/leanback/R$drawable;->lb_ic_search_mic_out:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/SpeechOrbView;->setOrbIcon(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/SpeechOrbView;->hasFocus()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/SpeechOrbView;->animateOnFocus(Z)V

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/SpeechOrbView;->scaleOrbViewOnly(F)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v17/leanback/widget/SpeechOrbView;->mListening:Z

    return-void
.end method
