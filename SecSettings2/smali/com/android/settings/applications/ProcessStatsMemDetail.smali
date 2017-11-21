.class public Lcom/android/settings/applications/ProcessStatsMemDetail;
.super Lcom/android/settings/InstrumentedFragment;
.source "ProcessStatsMemDetail.java"


# instance fields
.field mMemCachedWeight:D

.field mMemFreeWeight:D

.field mMemKernelWeight:D

.field mMemNativeWeight:D

.field private mMemStateParent:Landroid/view/ViewGroup;

.field mMemStateWeights:[D

.field mMemTimes:[J

.field mMemTotalWeight:D

.field private mMemUseParent:Landroid/view/ViewGroup;

.field mMemZRamWeight:D

.field private mRootView:Landroid/view/View;

.field mTotalTime:J

.field mUseUss:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/InstrumentedFragment;-><init>()V

    return-void
.end method

.method private addDetailsItem(Landroid/view/ViewGroup;Ljava/lang/CharSequence;FLjava/lang/CharSequence;)V
    .locals 7

    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsMemDetail;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v5, 0x7f040036

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    const v5, 0x1020018

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    const v6, 0x7f04031d

    invoke-virtual {v0, v6, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const v5, 0x1020006

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    const v5, 0x1020016

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v5, 0x1020014

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v4, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v5, 0x102000d

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    const/high16 v5, 0x42c80000    # 100.0f

    mul-float/2addr v5, p3

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/ProgressBar;->setProgress(I)V

    return-void
.end method

.method private addMemUseDetailsItem(Landroid/view/ViewGroup;Ljava/lang/CharSequence;D)V
    .locals 9

    const-wide/16 v2, 0x0

    cmpl-double v2, p3, v2

    if-lez v2, :cond_0

    iget-wide v2, p0, Lcom/android/settings/applications/ProcessStatsMemDetail;->mMemTotalWeight:D

    div-double v2, p3, v2

    double-to-float v0, v2

    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsMemDetail;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-wide/high16 v4, 0x4090000000000000L    # 1024.0

    mul-double/2addr v4, p3

    iget-wide v6, p0, Lcom/android/settings/applications/ProcessStatsMemDetail;->mTotalTime:J

    long-to-double v6, v6

    div-double/2addr v4, v6

    double-to-long v4, v4

    invoke-static {v2, v4, v5}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/settings/applications/ProcessStatsMemDetail;->addDetailsItem(Landroid/view/ViewGroup;Ljava/lang/CharSequence;FLjava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private createDetails()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsMemDetail;->mRootView:Landroid/view/View;

    const v1, 0x7f110596

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/settings/applications/ProcessStatsMemDetail;->mMemStateParent:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsMemDetail;->mRootView:Landroid/view/View;

    const v1, 0x7f110597

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/settings/applications/ProcessStatsMemDetail;->mMemUseParent:Landroid/view/ViewGroup;

    invoke-direct {p0}, Lcom/android/settings/applications/ProcessStatsMemDetail;->fillMemStateSection()V

    invoke-direct {p0}, Lcom/android/settings/applications/ProcessStatsMemDetail;->fillMemUseSection()V

    return-void
.end method

.method private fillMemStateSection()V
    .locals 8

    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsMemDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c00ae

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v0, 0x0

    :goto_0
    const/4 v3, 0x4

    if-ge v0, v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/applications/ProcessStatsMemDetail;->mMemTimes:[J

    aget-wide v4, v3, v0

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/applications/ProcessStatsMemDetail;->mMemTimes:[J

    aget-wide v4, v3, v0

    long-to-float v3, v4

    iget-wide v4, p0, Lcom/android/settings/applications/ProcessStatsMemDetail;->mTotalTime:J

    long-to-float v4, v4

    div-float v2, v3, v4

    iget-object v3, p0, Lcom/android/settings/applications/ProcessStatsMemDetail;->mMemStateParent:Landroid/view/ViewGroup;

    aget-object v4, v1, v0

    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsMemDetail;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/applications/ProcessStatsMemDetail;->mMemTimes:[J

    aget-wide v6, v6, v0

    invoke-static {v5, v6, v7}, Landroid/text/format/Formatter;->formatShortElapsedTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/android/settings/applications/ProcessStatsMemDetail;->addDetailsItem(Landroid/view/ViewGroup;Ljava/lang/CharSequence;FLjava/lang/CharSequence;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private fillMemUseSection()V
    .locals 6

    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsMemDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c00af

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/applications/ProcessStatsMemDetail;->mMemUseParent:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsMemDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b16da

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/settings/applications/ProcessStatsMemDetail;->mMemKernelWeight:D

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/android/settings/applications/ProcessStatsMemDetail;->addMemUseDetailsItem(Landroid/view/ViewGroup;Ljava/lang/CharSequence;D)V

    iget-object v2, p0, Lcom/android/settings/applications/ProcessStatsMemDetail;->mMemUseParent:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsMemDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b16dd

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/settings/applications/ProcessStatsMemDetail;->mMemZRamWeight:D

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/android/settings/applications/ProcessStatsMemDetail;->addMemUseDetailsItem(Landroid/view/ViewGroup;Ljava/lang/CharSequence;D)V

    iget-object v2, p0, Lcom/android/settings/applications/ProcessStatsMemDetail;->mMemUseParent:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsMemDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b16db

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/settings/applications/ProcessStatsMemDetail;->mMemNativeWeight:D

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/android/settings/applications/ProcessStatsMemDetail;->addMemUseDetailsItem(Landroid/view/ViewGroup;Ljava/lang/CharSequence;D)V

    const/4 v0, 0x0

    :goto_0
    const/16 v2, 0xe

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/applications/ProcessStatsMemDetail;->mMemUseParent:Landroid/view/ViewGroup;

    aget-object v3, v1, v0

    iget-object v4, p0, Lcom/android/settings/applications/ProcessStatsMemDetail;->mMemStateWeights:[D

    aget-wide v4, v4, v0

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/android/settings/applications/ProcessStatsMemDetail;->addMemUseDetailsItem(Landroid/view/ViewGroup;Ljava/lang/CharSequence;D)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/settings/applications/ProcessStatsMemDetail;->mMemUseParent:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsMemDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b16dc

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/settings/applications/ProcessStatsMemDetail;->mMemCachedWeight:D

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/android/settings/applications/ProcessStatsMemDetail;->addMemUseDetailsItem(Landroid/view/ViewGroup;Ljava/lang/CharSequence;D)V

    iget-object v2, p0, Lcom/android/settings/applications/ProcessStatsMemDetail;->mMemUseParent:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsMemDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b16de

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/settings/applications/ProcessStatsMemDetail;->mMemFreeWeight:D

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/android/settings/applications/ProcessStatsMemDetail;->addMemUseDetailsItem(Landroid/view/ViewGroup;Ljava/lang/CharSequence;D)V

    iget-object v2, p0, Lcom/android/settings/applications/ProcessStatsMemDetail;->mMemUseParent:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsMemDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b16df

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/settings/applications/ProcessStatsMemDetail;->mMemTotalWeight:D

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/android/settings/applications/ProcessStatsMemDetail;->addMemUseDetailsItem(Landroid/view/ViewGroup;Ljava/lang/CharSequence;D)V

    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    const/16 v0, 0x16

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/settings/InstrumentedFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsMemDetail;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "mem_times"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/applications/ProcessStatsMemDetail;->mMemTimes:[J

    const-string/jumbo v1, "mem_state_weights"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/applications/ProcessStatsMemDetail;->mMemStateWeights:[D

    const-string/jumbo v1, "mem_cached_weight"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/settings/applications/ProcessStatsMemDetail;->mMemCachedWeight:D

    const-string/jumbo v1, "mem_free_weight"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/settings/applications/ProcessStatsMemDetail;->mMemFreeWeight:D

    const-string/jumbo v1, "mem_zram_weight"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/settings/applications/ProcessStatsMemDetail;->mMemZRamWeight:D

    const-string/jumbo v1, "mem_kernel_weight"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/settings/applications/ProcessStatsMemDetail;->mMemKernelWeight:D

    const-string/jumbo v1, "mem_native_weight"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/settings/applications/ProcessStatsMemDetail;->mMemNativeWeight:D

    const-string/jumbo v1, "mem_total_weight"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/settings/applications/ProcessStatsMemDetail;->mMemTotalWeight:D

    const-string/jumbo v1, "use_uss"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/applications/ProcessStatsMemDetail;->mUseUss:Z

    const-string/jumbo v1, "total_time"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/settings/applications/ProcessStatsMemDetail;->mTotalTime:J

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const/4 v2, 0x0

    const v1, 0x7f040228

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-static {p2, v0, v0, v2}, Lcom/android/settings/Utils;->prepareCustomPreferencesList(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;Z)V

    iput-object v0, p0, Lcom/android/settings/applications/ProcessStatsMemDetail;->mRootView:Landroid/view/View;

    invoke-direct {p0}, Lcom/android/settings/applications/ProcessStatsMemDetail;->createDetails()V

    return-object v0
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/InstrumentedFragment;->onPause()V

    return-void
.end method
