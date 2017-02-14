.class public Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSeekBarPreference;
.super Lcom/samsung/android/settings/display/DisplayCustomPreference;
.source "BlueLightFilterSeekBarPreference.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Landroid/view/View$OnFocusChangeListener;


# static fields
.field private static BLUE_LIGHT_FILTER_OPACITY:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsFocusable:Z

.field private mSeekBar:Landroid/widget/SeekBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    const/4 v3, 0x0

    const v5, 0x7f0401fe

    const v6, 0x7f110564

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, v3

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/settings/display/DisplayCustomPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIII)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSeekBarPreference;->mContext:Landroid/content/Context;

    iput-boolean v3, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSeekBarPreference;->mIsFocusable:Z

    iput-object p1, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSeekBarPreference;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public onBindView(Landroid/view/View;)V
    .locals 6

    const/4 v5, 0x1

    invoke-super {p0, p1}, Lcom/samsung/android/settings/display/DisplayCustomPreference;->onBindView(Landroid/view/View;)V

    const v2, 0x7f110564

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    iget-object v2, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    if-ne v1, v2, :cond_0

    return-void

    :cond_0
    iput-object v1, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "blue_light_filter_opacity"

    const/4 v4, 0x5

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2, v5}, Landroid/widget/SeekBar;->incrementProgressBy(I)V

    iget-object v2, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setMax(I)V

    iget-object v2, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iget-object v2, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2, p0}, Landroid/widget/SeekBar;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v2, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    iget-object v2, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2, v5}, Landroid/widget/SeekBar;->semSetFluidEnabled(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "blue_light_filter_opacity"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3

    iput-boolean p2, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSeekBarPreference;->mIsFocusable:Z

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "blue_light_filter_opacity"

    iget-object v2, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3

    iget-boolean v0, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSeekBarPreference;->mIsFocusable:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSeekBarPreference;->setOpacityLevel(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100173

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSeekBarPreference;->BLUE_LIGHT_FILTER_OPACITY:I

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSeekBarPreference;->BLUE_LIGHT_FILTER_OPACITY:I

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSeekBarPreference;->mIsFocusable:Z

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSeekBarPreference;->mIsFocusable:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "blue_light_filter_opacity"

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public setOpacityLevel(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "blue_light_filter_opacity"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public setProgress(I)V
    .locals 1

    invoke-super {p0, p1}, Lcom/samsung/android/settings/display/DisplayCustomPreference;->setProgress(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    :cond_0
    return-void
.end method
