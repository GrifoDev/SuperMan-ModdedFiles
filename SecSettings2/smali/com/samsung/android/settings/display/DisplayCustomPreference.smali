.class public Lcom/samsung/android/settings/display/DisplayCustomPreference;
.super Landroid/preference/Preference;
.source "DisplayCustomPreference.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/display/DisplayCustomPreference$SavedState;
    }
.end annotation


# instance fields
.field private mMax:I

.field private mProgress:I

.field private mSeekBarId:I

.field private mTrackingTouch:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/display/DisplayCustomPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x1160027

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/settings/display/DisplayCustomPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/settings/display/DisplayCustomPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 7

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/settings/display/DisplayCustomPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIII)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IIII)V
    .locals 3

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    sget-object v1, Lcom/android/internal/R$styleable;->ProgressBar:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/settings/display/DisplayCustomPreference;->mMax:I

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/display/DisplayCustomPreference;->setMax(I)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    iput p6, p0, Lcom/samsung/android/settings/display/DisplayCustomPreference;->mSeekBarId:I

    invoke-virtual {p0, p5}, Lcom/samsung/android/settings/display/DisplayCustomPreference;->setLayoutResource(I)V

    return-void
.end method

.method private setProgress(IZ)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/display/DisplayCustomPreference;->mMax:I

    if-le p1, v0, :cond_0

    iget p1, p0, Lcom/samsung/android/settings/display/DisplayCustomPreference;->mMax:I

    :cond_0
    if-gez p1, :cond_1

    const/4 p1, 0x0

    :cond_1
    iget v0, p0, Lcom/samsung/android/settings/display/DisplayCustomPreference;->mProgress:I

    if-eq p1, v0, :cond_2

    iput p1, p0, Lcom/samsung/android/settings/display/DisplayCustomPreference;->mProgress:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/display/DisplayCustomPreference;->persistInt(I)Z

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/DisplayCustomPreference;->notifyChanged()V

    :cond_2
    return-void
.end method


# virtual methods
.method public getProgress()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/display/DisplayCustomPreference;->mProgress:I

    return v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    iget v1, p0, Lcom/samsung/android/settings/display/DisplayCustomPreference;->mSeekBarId:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iget v1, p0, Lcom/samsung/android/settings/display/DisplayCustomPreference;->mMax:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    iget v1, p0, Lcom/samsung/android/settings/display/DisplayCustomPreference;->mProgress:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/DisplayCustomPreference;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1

    if-eqz p3, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/settings/display/DisplayCustomPreference;->mTrackingTouch:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/display/DisplayCustomPreference;->syncProgress(Landroid/widget/SeekBar;)V

    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/samsung/android/settings/display/DisplayCustomPreference$SavedState;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-super {p0, p1}, Landroid/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/samsung/android/settings/display/DisplayCustomPreference$SavedState;

    invoke-virtual {v0}, Lcom/samsung/android/settings/display/DisplayCustomPreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget v1, v0, Lcom/samsung/android/settings/display/DisplayCustomPreference$SavedState;->progress:I

    iput v1, p0, Lcom/samsung/android/settings/display/DisplayCustomPreference;->mProgress:I

    iget v1, v0, Lcom/samsung/android/settings/display/DisplayCustomPreference$SavedState;->max:I

    iput v1, p0, Lcom/samsung/android/settings/display/DisplayCustomPreference;->mMax:I

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/DisplayCustomPreference;->notifyChanged()V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    invoke-super {p0}, Landroid/preference/Preference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/DisplayCustomPreference;->isPersistent()Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    new-instance v0, Lcom/samsung/android/settings/display/DisplayCustomPreference$SavedState;

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/display/DisplayCustomPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    iget v2, p0, Lcom/samsung/android/settings/display/DisplayCustomPreference;->mProgress:I

    iput v2, v0, Lcom/samsung/android/settings/display/DisplayCustomPreference$SavedState;->progress:I

    iget v2, p0, Lcom/samsung/android/settings/display/DisplayCustomPreference;->mMax:I

    iput v2, v0, Lcom/samsung/android/settings/display/DisplayCustomPreference$SavedState;->max:I

    return-object v0
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 1

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/samsung/android/settings/display/DisplayCustomPreference;->mProgress:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/display/DisplayCustomPreference;->getPersistedInt(I)I

    move-result v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/display/DisplayCustomPreference;->setProgress(I)V

    return-void

    :cond_0
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/display/DisplayCustomPreference;->mTrackingTouch:Z

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/display/DisplayCustomPreference;->mTrackingTouch:Z

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    iget v1, p0, Lcom/samsung/android/settings/display/DisplayCustomPreference;->mProgress:I

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/display/DisplayCustomPreference;->syncProgress(Landroid/widget/SeekBar;)V

    :cond_0
    return-void
.end method

.method public setMax(I)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/display/DisplayCustomPreference;->mMax:I

    if-eq p1, v0, :cond_0

    iput p1, p0, Lcom/samsung/android/settings/display/DisplayCustomPreference;->mMax:I

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/DisplayCustomPreference;->notifyChanged()V

    :cond_0
    return-void
.end method

.method public setProgress(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/display/DisplayCustomPreference;->setProgress(IZ)V

    return-void
.end method

.method syncProgress(Landroid/widget/SeekBar;)V
    .locals 2

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    iget v1, p0, Lcom/samsung/android/settings/display/DisplayCustomPreference;->mProgress:I

    if-eq v0, v1, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/display/DisplayCustomPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/settings/display/DisplayCustomPreference;->setProgress(IZ)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v1, p0, Lcom/samsung/android/settings/display/DisplayCustomPreference;->mProgress:I

    invoke-virtual {p1, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_0
.end method
