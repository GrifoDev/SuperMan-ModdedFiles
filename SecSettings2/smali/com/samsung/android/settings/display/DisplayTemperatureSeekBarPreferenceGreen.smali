.class public Lcom/samsung/android/settings/display/DisplayTemperatureSeekBarPreferenceGreen;
.super Lcom/samsung/android/settings/display/DisplayCustomPreference;
.source "DisplayTemperatureSeekBarPreferenceGreen.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsFocusable:Z

.field private mSeekBar:Landroid/widget/SeekBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/display/DisplayCustomPreference;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/display/DisplayTemperatureSeekBarPreferenceGreen;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/display/DisplayTemperatureSeekBarPreferenceGreen;->mIsFocusable:Z

    iput-object p1, p0, Lcom/samsung/android/settings/display/DisplayTemperatureSeekBarPreferenceGreen;->mContext:Landroid/content/Context;

    const v0, 0x7f040201

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/display/DisplayTemperatureSeekBarPreferenceGreen;->setLayoutResource(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/display/DisplayCustomPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/display/DisplayTemperatureSeekBarPreferenceGreen;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/display/DisplayTemperatureSeekBarPreferenceGreen;->mIsFocusable:Z

    iput-object p1, p0, Lcom/samsung/android/settings/display/DisplayTemperatureSeekBarPreferenceGreen;->mContext:Landroid/content/Context;

    const v0, 0x7f040201

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/display/DisplayTemperatureSeekBarPreferenceGreen;->setLayoutResource(I)V

    return-void
.end method

.method private colorToColorStateList(I)Landroid/content/res/ColorStateList;
    .locals 4

    const/4 v2, 0x1

    const/4 v3, 0x0

    new-array v0, v2, [[I

    new-array v1, v3, [I

    aput-object v1, v0, v3

    new-instance v1, Landroid/content/res/ColorStateList;

    new-array v2, v2, [I

    aput p1, v2, v3

    invoke-direct {v1, v0, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v1
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 6

    const v5, 0x7f0d0133

    invoke-super {p0, p1}, Lcom/samsung/android/settings/display/DisplayCustomPreference;->onBindView(Landroid/view/View;)V

    const v3, 0x7f11052d

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    iget-object v3, p0, Lcom/samsung/android/settings/display/DisplayTemperatureSeekBarPreferenceGreen;->mSeekBar:Landroid/widget/SeekBar;

    if-ne v1, v3, :cond_0

    return-void

    :cond_0
    iput-object v1, p0, Lcom/samsung/android/settings/display/DisplayTemperatureSeekBarPreferenceGreen;->mSeekBar:Landroid/widget/SeekBar;

    iget-object v3, p0, Lcom/samsung/android/settings/display/DisplayTemperatureSeekBarPreferenceGreen;->mSeekBar:Landroid/widget/SeekBar;

    iget-object v4, p0, Lcom/samsung/android/settings/display/DisplayTemperatureSeekBarPreferenceGreen;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    iget-object v3, p0, Lcom/samsung/android/settings/display/DisplayTemperatureSeekBarPreferenceGreen;->mSeekBar:Landroid/widget/SeekBar;

    iget-object v4, p0, Lcom/samsung/android/settings/display/DisplayTemperatureSeekBarPreferenceGreen;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    const v3, -0xff0100

    invoke-direct {p0, v3}, Lcom/samsung/android/settings/display/DisplayTemperatureSeekBarPreferenceGreen;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/display/DisplayTemperatureSeekBarPreferenceGreen;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v3, v2}, Landroid/widget/SeekBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/DisplayTemperatureSeekBarPreferenceGreen;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "sec_display_temperature_green"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    add-int/lit8 v0, v3, 0xb

    iget-object v3, p0, Lcom/samsung/android/settings/display/DisplayTemperatureSeekBarPreferenceGreen;->mSeekBar:Landroid/widget/SeekBar;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->incrementProgressBy(I)V

    iget-object v3, p0, Lcom/samsung/android/settings/display/DisplayTemperatureSeekBarPreferenceGreen;->mSeekBar:Landroid/widget/SeekBar;

    const/16 v4, 0xb

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setMax(I)V

    iget-object v3, p0, Lcom/samsung/android/settings/display/DisplayTemperatureSeekBarPreferenceGreen;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v3, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iget-object v3, p0, Lcom/samsung/android/settings/display/DisplayTemperatureSeekBarPreferenceGreen;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v3, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3

    iget-boolean v0, p0, Lcom/samsung/android/settings/display/DisplayTemperatureSeekBarPreferenceGreen;->mIsFocusable:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/DisplayTemperatureSeekBarPreferenceGreen;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "sec_display_temperature_green"

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    add-int/lit8 v2, v2, -0xb

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/display/DisplayTemperatureSeekBarPreferenceGreen;->mIsFocusable:Z

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/display/DisplayTemperatureSeekBarPreferenceGreen;->mIsFocusable:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/DisplayTemperatureSeekBarPreferenceGreen;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "sec_display_temperature_green"

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    add-int/lit8 v2, v2, -0xb

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public setProgress(I)V
    .locals 1

    invoke-super {p0, p1}, Lcom/samsung/android/settings/display/DisplayCustomPreference;->setProgress(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/DisplayTemperatureSeekBarPreferenceGreen;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/display/DisplayTemperatureSeekBarPreferenceGreen;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    :cond_0
    return-void
.end method
