.class public Lcom/android/systemui/qs/QSBrightnessView;
.super Lcom/android/systemui/qs/QSBarItem;
.source "QSBrightnessView.java"

# interfaces
.implements Lcom/android/systemui/tuner/TunerService$Tunable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/QSBrightnessView$1;
    }
.end annotation


# instance fields
.field protected final TAG:Ljava/lang/String;

.field private mAutoLabel:Landroid/widget/TextView;

.field private mBrightnessController:Lcom/android/systemui/settings/BrightnessController;

.field private mBrightnessDetail:Lcom/android/systemui/settings/BrightnessDetail;

.field private mContext:Landroid/content/Context;

.field private mIcon:Landroid/widget/ImageView;

.field private mIsAutoBrightness:Z

.field private mMirrorAutoLabel:Landroid/widget/TextView;

.field private final mSettingsObserver:Landroid/database/ContentObserver;

.field private mSlider:Lcom/android/systemui/settings/ToggleSlider;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/qs/QSBrightnessView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSBrightnessView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/qs/QSBrightnessView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSBrightnessView;->mIsAutoBrightness:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/systemui/qs/QSBrightnessView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/qs/QSBrightnessView;->mIsAutoBrightness:Z

    return p1
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/android/systemui/qs/QSPanel;)V
    .locals 5

    const/4 v4, 0x1

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/QSBarItem;-><init>(Landroid/content/Context;I)V

    const-string/jumbo v0, "QSBrightnessView"

    iput-object v0, p0, Lcom/android/systemui/qs/QSBrightnessView;->TAG:Ljava/lang/String;

    new-instance v0, Lcom/android/systemui/qs/QSBrightnessView$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/QSBrightnessView$1;-><init>(Lcom/android/systemui/qs/QSBrightnessView;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSBrightnessView;->mSettingsObserver:Landroid/database/ContentObserver;

    iput-object p1, p0, Lcom/android/systemui/qs/QSBrightnessView;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/systemui/qs/QSBrightnessView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040142

    invoke-virtual {v0, v1, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const v0, 0x7f1302ff

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSBrightnessView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/qs/QSBrightnessView;->mIcon:Landroid/widget/ImageView;

    const v0, 0x7f130300

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSBrightnessView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/settings/ToggleSlider;

    iput-object v0, p0, Lcom/android/systemui/qs/QSBrightnessView;->mSlider:Lcom/android/systemui/settings/ToggleSlider;

    new-instance v0, Lcom/android/systemui/settings/BrightnessController;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSBrightnessView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/qs/QSBrightnessView;->mIcon:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/systemui/qs/QSBrightnessView;->mSlider:Lcom/android/systemui/settings/ToggleSlider;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/settings/BrightnessController;-><init>(Landroid/content/Context;Landroid/widget/ImageView;Lcom/android/systemui/settings/ToggleSlider;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSBrightnessView;->mBrightnessController:Lcom/android/systemui/settings/BrightnessController;

    iget-object v0, p0, Lcom/android/systemui/qs/QSBrightnessView;->mBrightnessController:Lcom/android/systemui/settings/BrightnessController;

    invoke-virtual {v0}, Lcom/android/systemui/settings/BrightnessController;->registerCallbacks()V

    iget-object v0, p0, Lcom/android/systemui/qs/QSBrightnessView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/tuner/TunerService;->get(Landroid/content/Context;)Lcom/android/systemui/tuner/TunerService;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const-string/jumbo v2, "brightness_on_top"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    const v0, 0x7f130373

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSBrightnessView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/settings/BrightnessDetail;

    iput-object v0, p0, Lcom/android/systemui/qs/QSBrightnessView;->mBrightnessDetail:Lcom/android/systemui/settings/BrightnessDetail;

    iget-object v0, p0, Lcom/android/systemui/qs/QSBrightnessView;->mBrightnessDetail:Lcom/android/systemui/settings/BrightnessDetail;

    invoke-virtual {v0, p3}, Lcom/android/systemui/settings/BrightnessDetail;->setQsPanel(Lcom/android/systemui/qs/QSPanel;)V

    const v0, 0x7f130374

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSBrightnessView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/qs/QSBrightnessView;->mAutoLabel:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/systemui/qs/QSBrightnessView;->mAutoLabel:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const-string/jumbo v0, "QSBrightnessView"

    const-string/jumbo v1, "QSBrightnessView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public getAnimator()Lcom/android/systemui/qs/TouchAnimator;
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/android/systemui/qs/QSBrightnessView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/tuner/TunerService;->get(Landroid/content/Context;)Lcom/android/systemui/tuner/TunerService;

    move-result-object v1

    const-string/jumbo v2, "brightness_on_top"

    invoke-virtual {v1, v2, v5}, Lcom/android/systemui/tuner/TunerService;->getValue(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v6, :cond_0

    new-instance v1, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    invoke-virtual {v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v1, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    const-string/jumbo v2, "alpha"

    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput v4, v3, v5

    const/high16 v4, 0x3f800000    # 1.0f

    aput v4, v3, v6

    invoke-virtual {v1, p0, v2, v3}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v1

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setStartDelay(F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v0

    return-object v0
.end method

.method public getBarHeight()I
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/QSBrightnessView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d037a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public getBarVisibility()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/QSBrightnessView;->mAutoLabel:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/qs/QSBrightnessView;->mAutoLabel:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Lcom/android/systemui/qs/QSBarItem;->onDetachedFromWindow()V

    const-string/jumbo v0, "QSBrightnessView"

    const-string/jumbo v1, "QSBrightnessView onDetachedFromWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/qs/QSBrightnessView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/tuner/TunerService;->get(Landroid/content/Context;)Lcom/android/systemui/tuner/TunerService;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/tuner/TunerService;->removeTunable(Lcom/android/systemui/tuner/TunerService$Tunable;)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSBrightnessView;->mBrightnessController:Lcom/android/systemui/settings/BrightnessController;

    invoke-virtual {v0}, Lcom/android/systemui/settings/BrightnessController;->unregisterCallbacks()V

    return-void
.end method

.method public onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const/16 v4, 0x8

    const/4 v3, 0x0

    const-string/jumbo v1, "brightness_on_top"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/qs/QSBrightnessView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/tuner/TunerService;->get(Landroid/content/Context;)Lcom/android/systemui/tuner/TunerService;

    move-result-object v1

    const-string/jumbo v2, "brightness_on_top"

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/tuner/TunerService;->getValue(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_1

    sget v1, Lcom/android/systemui/qs/QSBarItem;->ON_PANEL:I

    :goto_0
    iput v1, p0, Lcom/android/systemui/qs/QSBrightnessView;->mBarType:I

    iget-object v1, p0, Lcom/android/systemui/qs/QSBrightnessView;->mCallback:Lcom/android/systemui/qs/QSBarItem$Callback;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/QSBrightnessView;->mCallback:Lcom/android/systemui/qs/QSBarItem$Callback;

    invoke-interface {v1}, Lcom/android/systemui/qs/QSBarItem$Callback;->onHeightChanged()V

    :cond_0
    :goto_1
    return-void

    :cond_1
    sget v1, Lcom/android/systemui/qs/QSBarItem;->ON_BOTH:I

    goto :goto_0

    :cond_2
    const-string/jumbo v1, "brightness_auto"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/QSBrightnessView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/tuner/TunerService;->get(Landroid/content/Context;)Lcom/android/systemui/tuner/TunerService;

    move-result-object v1

    invoke-virtual {v1, p1, v3}, Lcom/android/systemui/tuner/TunerService;->getValue(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_6

    const/4 v0, 0x1

    :goto_2
    const-string/jumbo v1, "QSBrightnessView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onTuningChanged key "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/qs/QSBrightnessView;->mAutoLabel:Landroid/widget/TextView;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/systemui/qs/QSBrightnessView;->mAutoLabel:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    :cond_3
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_4
    iget-object v1, p0, Lcom/android/systemui/qs/QSBrightnessView;->mMirrorAutoLabel:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/QSBrightnessView;->mMirrorAutoLabel:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    :cond_5
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_6
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public setBrightnessMirror(Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;)V
    .locals 5

    invoke-super {p0}, Lcom/android/systemui/qs/QSBarItem;->onFinishInflate()V

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->getMirror()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f130300

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/settings/ToggleSlider;

    iget-object v1, p0, Lcom/android/systemui/qs/QSBrightnessView;->mSlider:Lcom/android/systemui/settings/ToggleSlider;

    invoke-virtual {v1, v0}, Lcom/android/systemui/settings/ToggleSlider;->setMirror(Lcom/android/systemui/settings/ToggleSlider;)V

    iget-object v1, p0, Lcom/android/systemui/qs/QSBrightnessView;->mSlider:Lcom/android/systemui/settings/ToggleSlider;

    invoke-virtual {v1, p1}, Lcom/android/systemui/settings/ToggleSlider;->setMirrorController(Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;)V

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->getMirror()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f130374

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/qs/QSBrightnessView;->mMirrorAutoLabel:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/qs/QSBrightnessView;->mMirrorAutoLabel:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/systemui/qs/QSBrightnessView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/tuner/TunerService;->get(Landroid/content/Context;)Lcom/android/systemui/tuner/TunerService;

    move-result-object v2

    const-string/jumbo v3, "brightness_auto"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/systemui/tuner/TunerService;->getValue(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    :cond_0
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public setHost(Lcom/android/systemui/statusbar/phone/QSTileHost;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/systemui/qs/QSBarItem;->setHost(Lcom/android/systemui/statusbar/phone/QSTileHost;)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSBrightnessView;->mSlider:Lcom/android/systemui/settings/ToggleSlider;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QSBrightnessView;->mSlider:Lcom/android/systemui/settings/ToggleSlider;

    iget-object v1, p0, Lcom/android/systemui/qs/QSBrightnessView;->mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

    invoke-virtual {v0, v1}, Lcom/android/systemui/settings/ToggleSlider;->setHost(Lcom/android/systemui/statusbar/phone/QSTileHost;)V

    :cond_0
    return-void
.end method

.method public setPosition(F)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/systemui/qs/QSBarItem;->setPosition(F)V

    iget v0, p0, Lcom/android/systemui/qs/QSBrightnessView;->mBarType:I

    sget v1, Lcom/android/systemui/qs/QSBarItem;->ON_PANEL:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/QSBrightnessView;->mBrightnessController:Lcom/android/systemui/settings/BrightnessController;

    invoke-virtual {v0}, Lcom/android/systemui/settings/BrightnessController;->isSliderEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QSBrightnessView;->mBrightnessController:Lcom/android/systemui/settings/BrightnessController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/settings/BrightnessController;->setSliderEnabled(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/QSBrightnessView;->mBrightnessController:Lcom/android/systemui/settings/BrightnessController;

    invoke-virtual {v0}, Lcom/android/systemui/settings/BrightnessController;->isSliderEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QSBrightnessView;->mBrightnessController:Lcom/android/systemui/settings/BrightnessController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/settings/BrightnessController;->setSliderEnabled(Z)V

    goto :goto_0
.end method
