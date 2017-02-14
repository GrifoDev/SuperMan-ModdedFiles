.class public Lcom/android/settings/PointerSpeedPreference;
.super Landroid/preference/SeekBarPreference;
.source "PointerSpeedPreference.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/PointerSpeedPreference$Callback;
    }
.end annotation


# instance fields
.field private mCallback:Lcom/android/settings/PointerSpeedPreference$Callback;

.field private mContext:Landroid/content/Context;

.field private mFromTouch:Z

.field private final mIm:Landroid/hardware/input/InputManager;

.field private mOldSpeed:I

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mTouchInProgress:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/preference/SeekBarPreference;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/PointerSpeedPreference;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/android/settings/PointerSpeedPreference;->mContext:Landroid/content/Context;

    const v0, 0x7f0401bb

    invoke-virtual {p0, v0}, Lcom/android/settings/PointerSpeedPreference;->setLayoutResource(I)V

    invoke-virtual {p0}, Lcom/android/settings/PointerSpeedPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "input"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManager;

    iput-object v0, p0, Lcom/android/settings/PointerSpeedPreference;->mIm:Landroid/hardware/input/InputManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/preference/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/PointerSpeedPreference;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/android/settings/PointerSpeedPreference;->mContext:Landroid/content/Context;

    const v0, 0x7f0401bb

    invoke-virtual {p0, v0}, Lcom/android/settings/PointerSpeedPreference;->setLayoutResource(I)V

    invoke-virtual {p0}, Lcom/android/settings/PointerSpeedPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "input"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManager;

    iput-object v0, p0, Lcom/android/settings/PointerSpeedPreference;->mIm:Landroid/hardware/input/InputManager;

    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/preference/SeekBarPreference;->onBindView(Landroid/view/View;)V

    const v1, 0x1020456

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/android/settings/PointerSpeedPreference;->mSeekBar:Landroid/widget/SeekBar;

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iput-object v0, p0, Lcom/android/settings/PointerSpeedPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/android/settings/PointerSpeedPreference;->mSeekBar:Landroid/widget/SeekBar;

    const/16 v2, 0xe

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setMax(I)V

    iget-object v1, p0, Lcom/android/settings/PointerSpeedPreference;->mIm:Landroid/hardware/input/InputManager;

    invoke-virtual {p0}, Lcom/android/settings/PointerSpeedPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/hardware/input/InputManager;->getPointerSpeed(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/android/settings/PointerSpeedPreference;->mOldSpeed:I

    iget-object v1, p0, Lcom/android/settings/PointerSpeedPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget v2, p0, Lcom/android/settings/PointerSpeedPreference;->mOldSpeed:I

    add-int/lit8 v2, v2, 0x7

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    iget-object v1, p0, Lcom/android/settings/PointerSpeedPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iget-object v1, p0, Lcom/android/settings/PointerSpeedPreference;->mSeekBar:Landroid/widget/SeekBar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->semSetFluidEnabled(Z)V

    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3

    iput-boolean p3, p0, Lcom/android/settings/PointerSpeedPreference;->mFromTouch:Z

    iget-boolean v0, p0, Lcom/android/settings/PointerSpeedPreference;->mTouchInProgress:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/PointerSpeedPreference;->mFromTouch:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/PointerSpeedPreference;->mIm:Landroid/hardware/input/InputManager;

    add-int/lit8 v1, p2, -0x7

    invoke-virtual {v0, v1}, Landroid/hardware/input/InputManager;->tryPointerSpeed(I)V

    iget-object v0, p0, Lcom/android/settings/PointerSpeedPreference;->mIm:Landroid/hardware/input/InputManager;

    invoke-virtual {p0}, Lcom/android/settings/PointerSpeedPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    add-int/lit8 v2, p2, -0x7

    invoke-virtual {v0, v1, v2}, Landroid/hardware/input/InputManager;->setPointerSpeed(Landroid/content/Context;I)V

    const-string/jumbo v0, "PointerSpeed"

    const-string/jumbo v1, "PointerSpeed change not touched"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/PointerSpeedPreference;->mTouchInProgress:Z

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/PointerSpeedPreference;->mTouchInProgress:Z

    iget-object v0, p0, Lcom/android/settings/PointerSpeedPreference;->mIm:Landroid/hardware/input/InputManager;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    add-int/lit8 v1, v1, -0x7

    invoke-virtual {v0, v1}, Landroid/hardware/input/InputManager;->tryPointerSpeed(I)V

    iget-object v0, p0, Lcom/android/settings/PointerSpeedPreference;->mIm:Landroid/hardware/input/InputManager;

    invoke-virtual {p0}, Lcom/android/settings/PointerSpeedPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/PointerSpeedPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    add-int/lit8 v2, v2, -0x7

    invoke-virtual {v0, v1, v2}, Landroid/hardware/input/InputManager;->setPointerSpeed(Landroid/content/Context;I)V

    return-void
.end method

.method public setCallback(Lcom/android/settings/PointerSpeedPreference$Callback;)V
    .locals 2

    iput-object p1, p0, Lcom/android/settings/PointerSpeedPreference;->mCallback:Lcom/android/settings/PointerSpeedPreference$Callback;

    const-string/jumbo v0, "PointerSpeed"

    const-string/jumbo v1, "setCallback called"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
