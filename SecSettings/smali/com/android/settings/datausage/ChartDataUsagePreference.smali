.class public Lcom/android/settings/datausage/ChartDataUsagePreference;
.super Landroid/support/v7/preference/Preference;
.source "ChartDataUsagePreference.java"


# instance fields
.field private mEnd:J

.field private final mLimitColor:I

.field private mNetwork:Landroid/net/NetworkStatsHistory;

.field private mPolicy:Landroid/net/NetworkPolicy;

.field private mSecondaryColor:I

.field private mSeriesColor:I

.field private mStart:J

.field private final mWarningColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/datausage/ChartDataUsagePreference;->setSelectable(Z)V

    const v0, 0x1010543

    invoke-static {p1, v0}, Lcom/android/settings/Utils;->getColorAttr(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mLimitColor:I

    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mWarningColor:I

    const v0, 0x7f0d00b8

    invoke-virtual {p0, v0}, Lcom/android/settings/datausage/ChartDataUsagePreference;->setLayoutResource(I)V

    return-void
.end method

.method private bindNetworkPolicy(Lcom/android/settingslib/graph/UsageView;Landroid/net/NetworkPolicy;I)V
    .locals 10

    const/4 v5, 0x3

    new-array v1, v5, [Ljava/lang/CharSequence;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-wide v6, p2, Landroid/net/NetworkPolicy;->limitBytes:J

    const-wide/16 v8, -0x1

    cmp-long v5, v6, v8

    if-eqz v5, :cond_1

    invoke-static {}, Lcom/android/settings/Utils;->isSupportCHNSmartManager()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_1

    iget v3, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mLimitColor:I

    iget-wide v6, p2, Landroid/net/NetworkPolicy;->limitBytes:J

    iget v5, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mLimitColor:I

    const v8, 0x7f120743

    invoke-direct {p0, v6, v7, v8, v5}, Lcom/android/settings/datausage/ChartDataUsagePreference;->getLabel(JII)Ljava/lang/CharSequence;

    move-result-object v5

    const/4 v6, 0x2

    aput-object v5, v1, v6

    :cond_1
    iget-wide v6, p2, Landroid/net/NetworkPolicy;->warningBytes:J

    const-wide/16 v8, -0x1

    cmp-long v5, v6, v8

    if-eqz v5, :cond_2

    invoke-static {}, Lcom/android/settings/Utils;->isSupportCHNSmartManager()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_2

    iget-wide v6, p2, Landroid/net/NetworkPolicy;->warningBytes:J

    const-wide/32 v8, 0x80000

    div-long/2addr v6, v8

    long-to-int v5, v6

    invoke-virtual {p1, v5}, Lcom/android/settingslib/graph/UsageView;->setDividerLoc(I)V

    iget-wide v6, p2, Landroid/net/NetworkPolicy;->warningBytes:J

    const-wide/32 v8, 0x80000

    div-long/2addr v6, v8

    long-to-float v5, v6

    int-to-float v6, p3

    div-float v4, v5, v6

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float v0, v5, v4

    invoke-virtual {p1, v0, v4}, Lcom/android/settingslib/graph/UsageView;->setSideLabelWeights(FF)V

    iget v2, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mWarningColor:I

    iget-wide v6, p2, Landroid/net/NetworkPolicy;->warningBytes:J

    iget v5, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mWarningColor:I

    const v8, 0x7f120744

    invoke-direct {p0, v6, v7, v8, v5}, Lcom/android/settings/datausage/ChartDataUsagePreference;->getLabel(JII)Ljava/lang/CharSequence;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v1, v6

    :cond_2
    invoke-virtual {p1, v1}, Lcom/android/settingslib/graph/UsageView;->setSideLabels([Ljava/lang/CharSequence;)V

    invoke-virtual {p1, v2, v3}, Lcom/android/settingslib/graph/UsageView;->setDividerColors(II)V

    return-void
.end method

.method private calcPoints(Lcom/android/settingslib/graph/UsageView;)V
    .locals 18

    new-instance v7, Landroid/util/SparseIntArray;

    invoke-direct {v7}, Landroid/util/SparseIntArray;-><init>()V

    const/4 v3, 0x0

    const-wide/16 v12, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mNetwork:Landroid/net/NetworkStatsHistory;

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mStart:J

    invoke-virtual {v9, v14, v15}, Landroid/net/NetworkStatsHistory;->getIndexAfter(J)I

    move-result v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mNetwork:Landroid/net/NetworkStatsHistory;

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mEnd:J

    invoke-virtual {v9, v14, v15}, Landroid/net/NetworkStatsHistory;->getIndexAfter(J)I

    move-result v2

    if-gez v8, :cond_0

    return-void

    :cond_0
    move v6, v8

    :goto_0
    if-gt v6, v2, :cond_2

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mNetwork:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v9, v6, v3}, Landroid/net/NetworkStatsHistory;->getValues(ILandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v3

    iget-wide v10, v3, Landroid/net/NetworkStatsHistory$Entry;->bucketStart:J

    iget-wide v14, v3, Landroid/net/NetworkStatsHistory$Entry;->bucketDuration:J

    add-long v4, v10, v14

    const-wide/16 v14, 0x0

    cmp-long v9, v12, v14

    if-nez v9, :cond_1

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mStart:J

    sub-long v14, v10, v14

    iget-wide v0, v3, Landroid/net/NetworkStatsHistory$Entry;->bucketDuration:J

    move-wide/from16 v16, v0

    sub-long v14, v14, v16

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/android/settings/datausage/ChartDataUsagePreference;->toInt(J)I

    move-result v9

    const/4 v14, 0x0

    invoke-virtual {v7, v9, v14}, Landroid/util/SparseIntArray;->put(II)V

    :cond_1
    iget-wide v14, v3, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v0, v3, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    move-wide/from16 v16, v0

    add-long v14, v14, v16

    add-long/2addr v12, v14

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mStart:J

    sub-long v14, v10, v14

    const-wide/16 v16, 0x1

    add-long v14, v14, v16

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/android/settings/datausage/ChartDataUsagePreference;->toInt(J)I

    move-result v9

    const-wide/32 v14, 0x80000

    div-long v14, v12, v14

    long-to-int v14, v14

    invoke-virtual {v7, v9, v14}, Landroid/util/SparseIntArray;->put(II)V

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mStart:J

    sub-long v14, v4, v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/android/settings/datausage/ChartDataUsagePreference;->toInt(J)I

    move-result v9

    const-wide/32 v14, 0x80000

    div-long v14, v12, v14

    long-to-int v14, v14

    invoke-virtual {v7, v9, v14}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v7}, Landroid/util/SparseIntArray;->size()I

    move-result v9

    const/4 v14, 0x1

    if-le v9, v14, :cond_3

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Lcom/android/settingslib/graph/UsageView;->addPath(Landroid/util/SparseIntArray;)V

    :cond_3
    return-void
.end method

.method private getLabel(JII)Ljava/lang/CharSequence;
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/android/settings/datausage/ChartDataUsagePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, p1, p2, v6}, Lcom/android/settings/datausage/Formatter;->formatBytes(Landroid/content/res/Resources;JI)Lcom/android/settings/datausage/Formatter$BytesResult;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/datausage/ChartDataUsagePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, p3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/CharSequence;

    iget-object v4, v1, Lcom/android/settings/datausage/Formatter$BytesResult;->value:Ljava/lang/String;

    aput-object v4, v3, v5

    iget-object v4, v1, Lcom/android/settings/datausage/Formatter$BytesResult;->units:Ljava/lang/String;

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v3, p4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v2, v0, v3, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;Ljava/lang/Object;I)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    return-object v2
.end method

.method private toInt(J)I
    .locals 3

    const-wide/32 v0, 0xea60

    div-long v0, p1, v0

    long-to-int v0, v0

    return v0
.end method


# virtual methods
.method public getInspectEnd()J
    .locals 2

    iget-wide v0, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mEnd:J

    return-wide v0
.end method

.method public getInspectStart()J
    .locals 2

    iget-wide v0, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mStart:J

    return-wide v0
.end method

.method public getTop()I
    .locals 12

    const/4 v1, 0x0

    const-wide/16 v6, 0x0

    iget-object v8, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mNetwork:Landroid/net/NetworkStatsHistory;

    iget-wide v10, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mStart:J

    invoke-virtual {v8, v10, v11}, Landroid/net/NetworkStatsHistory;->getIndexBefore(J)I

    move-result v3

    iget-object v8, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mNetwork:Landroid/net/NetworkStatsHistory;

    iget-wide v10, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mEnd:J

    invoke-virtual {v8, v10, v11}, Landroid/net/NetworkStatsHistory;->getIndexAfter(J)I

    move-result v0

    move v2, v3

    :goto_0
    if-gt v2, v0, :cond_0

    iget-object v8, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mNetwork:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v8, v2, v1}, Landroid/net/NetworkStatsHistory;->getValues(ILandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v1

    iget-wide v8, v1, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v10, v1, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    add-long/2addr v8, v10

    add-long/2addr v6, v8

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v8, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mPolicy:Landroid/net/NetworkPolicy;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mPolicy:Landroid/net/NetworkPolicy;

    iget-wide v8, v8, Landroid/net/NetworkPolicy;->limitBytes:J

    iget-object v10, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mPolicy:Landroid/net/NetworkPolicy;

    iget-wide v10, v10, Landroid/net/NetworkPolicy;->warningBytes:J

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    :goto_1
    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    const-wide/32 v10, 0x80000

    div-long/2addr v8, v10

    long-to-int v8, v8

    return v8

    :cond_1
    const-wide/16 v4, 0x0

    goto :goto_1
.end method

.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 9

    const/4 v8, 0x0

    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    const v2, 0x7f0a0206

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/graph/UsageView;

    iget-object v2, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mNetwork:Landroid/net/NetworkStatsHistory;

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/datausage/ChartDataUsagePreference;->getTop()I

    move-result v1

    invoke-virtual {v0}, Lcom/android/settingslib/graph/UsageView;->clearPaths()V

    iget-wide v2, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mEnd:J

    iget-wide v4, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mStart:J

    sub-long/2addr v2, v4

    invoke-direct {p0, v2, v3}, Lcom/android/settings/datausage/ChartDataUsagePreference;->toInt(J)I

    move-result v2

    invoke-virtual {v0, v2, v1, v8, v8}, Lcom/android/settingslib/graph/UsageView;->configureGraph(IIZZ)V

    invoke-direct {p0, v0}, Lcom/android/settings/datausage/ChartDataUsagePreference;->calcPoints(Lcom/android/settingslib/graph/UsageView;)V

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/android/settings/datausage/ChartDataUsagePreference;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mStart:J

    iget-wide v6, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mStart:J

    invoke-static {v3, v4, v5, v6, v7}, Lcom/android/settings/Utils;->formatDateRange(Landroid/content/Context;JJ)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-virtual {p0}, Lcom/android/settings/datausage/ChartDataUsagePreference;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mEnd:J

    iget-wide v6, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mEnd:J

    invoke-static {v3, v4, v5, v6, v7}, Lcom/android/settings/Utils;->formatDateRange(Landroid/content/Context;JJ)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Lcom/android/settingslib/graph/UsageView;->setBottomLabels([Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mPolicy:Landroid/net/NetworkPolicy;

    invoke-direct {p0, v0, v2, v1}, Lcom/android/settings/datausage/ChartDataUsagePreference;->bindNetworkPolicy(Lcom/android/settingslib/graph/UsageView;Landroid/net/NetworkPolicy;I)V

    return-void
.end method

.method public setColors(II)V
    .locals 0

    iput p1, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mSeriesColor:I

    iput p2, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mSecondaryColor:I

    invoke-virtual {p0}, Lcom/android/settings/datausage/ChartDataUsagePreference;->notifyChanged()V

    return-void
.end method

.method public setNetworkPolicy(Landroid/net/NetworkPolicy;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mPolicy:Landroid/net/NetworkPolicy;

    invoke-virtual {p0}, Lcom/android/settings/datausage/ChartDataUsagePreference;->notifyChanged()V

    return-void
.end method

.method public setNetworkStats(Landroid/net/NetworkStatsHistory;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mNetwork:Landroid/net/NetworkStatsHistory;

    invoke-virtual {p0}, Lcom/android/settings/datausage/ChartDataUsagePreference;->notifyChanged()V

    return-void
.end method

.method public setVisibleRange(JJ)V
    .locals 1

    iput-wide p1, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mStart:J

    iput-wide p3, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mEnd:J

    invoke-virtual {p0}, Lcom/android/settings/datausage/ChartDataUsagePreference;->notifyChanged()V

    return-void
.end method
