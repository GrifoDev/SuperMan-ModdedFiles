.class public Lcom/android/settings/PointerSpeedPreferenceSamsung;
.super Lcom/android/settings/SeekBarPreference;
.source "PointerSpeedPreferenceSamsung.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/PointerSpeedPreferenceSamsung$Callback;
    }
.end annotation


# instance fields
.field private mCallback:Lcom/android/settings/PointerSpeedPreferenceSamsung$Callback;

.field private mContext:Landroid/content/Context;

.field private mFromTouch:Z

.field private final mIm:Landroid/hardware/input/InputManager;

.field private mOldSpeed:I

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mTouchInProgress:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/settings/SeekBarPreference;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/PointerSpeedPreferenceSamsung;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/android/settings/PointerSpeedPreferenceSamsung;->mContext:Landroid/content/Context;

    const v0, 0x7f0d01de

    invoke-virtual {p0, v0}, Lcom/android/settings/PointerSpeedPreferenceSamsung;->setLayoutResource(I)V

    invoke-virtual {p0}, Lcom/android/settings/PointerSpeedPreferenceSamsung;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "input"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManager;

    iput-object v0, p0, Lcom/android/settings/PointerSpeedPreferenceSamsung;->mIm:Landroid/hardware/input/InputManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/android/settings/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/PointerSpeedPreferenceSamsung;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/android/settings/PointerSpeedPreferenceSamsung;->mContext:Landroid/content/Context;

    const v0, 0x7f0d01de

    invoke-virtual {p0, v0}, Lcom/android/settings/PointerSpeedPreferenceSamsung;->setLayoutResource(I)V

    invoke-virtual {p0}, Lcom/android/settings/PointerSpeedPreferenceSamsung;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "input"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManager;

    iput-object v0, p0, Lcom/android/settings/PointerSpeedPreferenceSamsung;->mIm:Landroid/hardware/input/InputManager;

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settings/SeekBarPreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    const v1, 0x1020463

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/android/settings/PointerSpeedPreferenceSamsung;->mSeekBar:Landroid/widget/SeekBar;

    if-eq v0, v1, :cond_0

    iput-object v0, p0, Lcom/android/settings/PointerSpeedPreferenceSamsung;->mSeekBar:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/android/settings/PointerSpeedPreferenceSamsung;->mIm:Landroid/hardware/input/InputManager;

    invoke-virtual {p0}, Lcom/android/settings/PointerSpeedPreferenceSamsung;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/hardware/input/InputManager;->getPointerSpeed(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/android/settings/PointerSpeedPreferenceSamsung;->mOldSpeed:I

    iget-object v1, p0, Lcom/android/settings/PointerSpeedPreferenceSamsung;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iget-object v1, p0, Lcom/android/settings/PointerSpeedPreferenceSamsung;->mSeekBar:Landroid/widget/SeekBar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->semSetFluidEnabled(Z)V

    :cond_0
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3

    iput-boolean p3, p0, Lcom/android/settings/PointerSpeedPreferenceSamsung;->mFromTouch:Z

    iget-boolean v0, p0, Lcom/android/settings/PointerSpeedPreferenceSamsung;->mTouchInProgress:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/PointerSpeedPreferenceSamsung;->mFromTouch:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/PointerSpeedPreferenceSamsung;->mIm:Landroid/hardware/input/InputManager;

    add-int/lit8 v1, p2, -0x7

    invoke-virtual {v0, v1}, Landroid/hardware/input/InputManager;->tryPointerSpeed(I)V

    iget-object v0, p0, Lcom/android/settings/PointerSpeedPreferenceSamsung;->mIm:Landroid/hardware/input/InputManager;

    invoke-virtual {p0}, Lcom/android/settings/PointerSpeedPreferenceSamsung;->getContext()Landroid/content/Context;

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

    iput-boolean v0, p0, Lcom/android/settings/PointerSpeedPreferenceSamsung;->mTouchInProgress:Z

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/PointerSpeedPreferenceSamsung;->mTouchInProgress:Z

    iget-object v0, p0, Lcom/android/settings/PointerSpeedPreferenceSamsung;->mIm:Landroid/hardware/input/InputManager;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    add-int/lit8 v1, v1, -0x7

    invoke-virtual {v0, v1}, Landroid/hardware/input/InputManager;->tryPointerSpeed(I)V

    iget-object v0, p0, Lcom/android/settings/PointerSpeedPreferenceSamsung;->mIm:Landroid/hardware/input/InputManager;

    invoke-virtual {p0}, Lcom/android/settings/PointerSpeedPreferenceSamsung;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/PointerSpeedPreferenceSamsung;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    add-int/lit8 v2, v2, -0x7

    invoke-virtual {v0, v1, v2}, Landroid/hardware/input/InputManager;->setPointerSpeed(Landroid/content/Context;I)V

    return-void
.end method

.method public setCallback(Lcom/android/settings/PointerSpeedPreferenceSamsung$Callback;)V
    .locals 2

    iput-object p1, p0, Lcom/android/settings/PointerSpeedPreferenceSamsung;->mCallback:Lcom/android/settings/PointerSpeedPreferenceSamsung$Callback;

    const-string/jumbo v0, "PointerSpeed"

    const-string/jumbo v1, "setCallback called"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
