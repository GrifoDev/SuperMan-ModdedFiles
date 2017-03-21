.class public Lcom/android/settings/datausage/AppDataUsagePreference;
.super Landroid/preference/Preference;
.source "AppDataUsagePreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/datausage/AppDataUsagePreference$UidDetailTask;
    }
.end annotation


# static fields
.field private static mSelectDisplayUnit:I

.field static sExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

.field static sIsDataLoaded:Z


# instance fields
.field private mIsVZW:Z

.field private final mItem:Lcom/android/settingslib/AppItem;

.field private final mPercent:I

.field private final mProvider:Lcom/android/settingslib/net/UidDetailProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/android/settings/datausage/AppDataUsagePreference;->mSelectDisplayUnit:I

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/settings/datausage/AppDataUsagePreference;->sIsDataLoaded:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/AppItem;ILcom/android/settingslib/net/UidDetailProvider;Ljava/util/concurrent/ThreadPoolExecutor;)V
    .locals 6

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-boolean v1, p0, Lcom/android/settings/datausage/AppDataUsagePreference;->mIsVZW:Z

    iput-object p2, p0, Lcom/android/settings/datausage/AppDataUsagePreference;->mItem:Lcom/android/settingslib/AppItem;

    iput p3, p0, Lcom/android/settings/datausage/AppDataUsagePreference;->mPercent:I

    const v1, 0x7f0400ac

    invoke-virtual {p0, v1}, Lcom/android/settings/datausage/AppDataUsagePreference;->setLayoutResource(I)V

    const v1, 0x7f04031b

    invoke-virtual {p0, v1}, Lcom/android/settings/datausage/AppDataUsagePreference;->setWidgetLayoutResource(I)V

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "VZW"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/datausage/AppDataUsagePreference;->mIsVZW:Z

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsagePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "data_usage_display_unit"

    const/4 v3, 0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/settings/datausage/AppDataUsagePreference;->mSelectDisplayUnit:I

    iget-boolean v1, p2, Lcom/android/settingslib/AppItem;->restricted:Z

    if-eqz v1, :cond_2

    iget-wide v2, p2, Lcom/android/settingslib/AppItem;->total:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gtz v1, :cond_2

    const v1, 0x7f0b1695

    invoke-virtual {p0, v1}, Lcom/android/settings/datausage/AppDataUsagePreference;->setSummary(I)V

    :cond_1
    :goto_0
    iput-object p4, p0, Lcom/android/settings/datausage/AppDataUsagePreference;->mProvider:Lcom/android/settingslib/net/UidDetailProvider;

    sput-object p5, Lcom/android/settings/datausage/AppDataUsagePreference;->sExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-static {p4, p2, p0}, Lcom/android/settings/datausage/AppDataUsagePreference$UidDetailTask;->bindView(Lcom/android/settingslib/net/UidDetailProvider;Lcom/android/settingslib/AppItem;Lcom/android/settings/datausage/AppDataUsagePreference;)V

    const-string/jumbo v1, "DataUsage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "AppDataUsagePreference"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/settings/datausage/AppDataUsagePreference;->sExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    iget-wide v2, p2, Lcom/android/settingslib/AppItem;->total:J

    invoke-static {p1, v2, v3}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/datausage/AppDataUsagePreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-boolean v1, p0, Lcom/android/settings/datausage/AppDataUsagePreference;->mIsVZW:Z

    if-eqz v1, :cond_1

    sget v1, Lcom/android/settings/datausage/AppDataUsagePreference;->mSelectDisplayUnit:I

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsagePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/settings/datausage/AppDataUsagePreference;->mSelectDisplayUnit:I

    iget-wide v4, p2, Lcom/android/settingslib/AppItem;->total:J

    invoke-static {v1, v2, v4, v5}, Lcom/android/settings/Utils;->getDataUsageFormatFileSize(Landroid/content/Context;IJ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/datausage/AppDataUsagePreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public getItem()Lcom/android/settingslib/AppItem;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsagePreference;->mItem:Lcom/android/settingslib/AppItem;

    return-object v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 6

    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    const v1, 0x102000d

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/android/settings/datausage/AppDataUsagePreference;->mItem:Lcom/android/settingslib/AppItem;

    iget-boolean v1, v1, Lcom/android/settingslib/AppItem;->restricted:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/datausage/AppDataUsagePreference;->mItem:Lcom/android/settingslib/AppItem;

    iget-wide v2, v1, Lcom/android/settingslib/AppItem;->total:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gtz v1, :cond_1

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :goto_0
    iget v1, p0, Lcom/android/settings/datausage/AppDataUsagePreference;->mPercent:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    sget-boolean v1, Lcom/android/settings/datausage/AppDataUsagePreference;->sIsDataLoaded:Z

    if-nez v1, :cond_0

    const-string/jumbo v1, "DataUsage"

    const-string/jumbo v2, "sIsDataLoaded == false. retry UidDetailTask"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/datausage/AppDataUsagePreference;->mProvider:Lcom/android/settingslib/net/UidDetailProvider;

    iget-object v2, p0, Lcom/android/settings/datausage/AppDataUsagePreference;->mItem:Lcom/android/settingslib/AppItem;

    invoke-static {v1, v2, p0}, Lcom/android/settings/datausage/AppDataUsagePreference$UidDetailTask;->bindView(Lcom/android/settingslib/net/UidDetailProvider;Lcom/android/settingslib/AppItem;Lcom/android/settings/datausage/AppDataUsagePreference;)V

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0
.end method
