.class Lcom/android/settings/UsageStatsActivity$UsageStatsAdapter;
.super Landroid/widget/BaseAdapter;
.source "UsageStatsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/UsageStatsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UsageStatsAdapter"
.end annotation


# instance fields
.field private mAppLabelComparator:Lcom/android/settings/UsageStatsActivity$AppNameComparator;

.field private final mAppLabelMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDisplayOrder:I

.field private mLastTimeUsedComparator:Lcom/android/settings/UsageStatsActivity$LastTimeUsedComparator;

.field private final mPackageStats:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/usage/UsageStats;",
            ">;"
        }
    .end annotation
.end field

.field private mUsageTimeComparator:Lcom/android/settings/UsageStatsActivity$UsageTimeComparator;

.field final synthetic this$0:Lcom/android/settings/UsageStatsActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/UsageStatsActivity;)V
    .locals 18

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/UsageStatsActivity$UsageStatsAdapter;->this$0:Lcom/android/settings/UsageStatsActivity;

    invoke-direct/range {p0 .. p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/UsageStatsActivity$UsageStatsAdapter;->mDisplayOrder:I

    new-instance v2, Lcom/android/settings/UsageStatsActivity$LastTimeUsedComparator;

    invoke-direct {v2}, Lcom/android/settings/UsageStatsActivity$LastTimeUsedComparator;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/UsageStatsActivity$UsageStatsAdapter;->mLastTimeUsedComparator:Lcom/android/settings/UsageStatsActivity$LastTimeUsedComparator;

    new-instance v2, Lcom/android/settings/UsageStatsActivity$UsageTimeComparator;

    invoke-direct {v2}, Lcom/android/settings/UsageStatsActivity$UsageTimeComparator;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/UsageStatsActivity$UsageStatsAdapter;->mUsageTimeComparator:Lcom/android/settings/UsageStatsActivity$UsageTimeComparator;

    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/UsageStatsActivity$UsageStatsAdapter;->mAppLabelMap:Landroid/util/ArrayMap;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/UsageStatsActivity$UsageStatsAdapter;->mPackageStats:Ljava/util/ArrayList;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v9

    const/4 v2, 0x6

    const/4 v3, -0x5

    invoke-virtual {v9, v2, v3}, Ljava/util/Calendar;->add(II)V

    invoke-static/range {p1 .. p1}, Lcom/android/settings/UsageStatsActivity;->-get2(Lcom/android/settings/UsageStatsActivity;)Landroid/app/usage/UsageStatsManager;

    move-result-object v2

    invoke-virtual {v9}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const/4 v3, 0x4

    invoke-virtual/range {v2 .. v7}, Landroid/app/usage/UsageStatsManager;->queryUsageStats(IJJ)Ljava/util/List;

    move-result-object v17

    if-nez v17, :cond_0

    return-void

    :cond_0
    new-instance v14, Landroid/util/ArrayMap;

    invoke-direct {v14}, Landroid/util/ArrayMap;-><init>()V

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v16

    const/4 v12, 0x0

    :goto_0
    move/from16 v0, v16

    if-ge v12, v0, :cond_2

    move-object/from16 v0, v17

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/app/usage/UsageStats;

    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/android/settings/UsageStatsActivity;->-get1(Lcom/android/settings/UsageStatsActivity;)Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v15}, Landroid/app/usage/UsageStats;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    invoke-static/range {p1 .. p1}, Lcom/android/settings/UsageStatsActivity;->-get1(Lcom/android/settings/UsageStatsActivity;)Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/UsageStatsActivity$UsageStatsAdapter;->mAppLabelMap:Landroid/util/ArrayMap;

    invoke-virtual {v15}, Landroid/app/usage/UsageStats;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v13}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v15}, Landroid/app/usage/UsageStats;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/usage/UsageStats;

    if-nez v11, :cond_1

    invoke-virtual {v15}, Landroid/app/usage/UsageStats;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2, v15}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v11, v15}, Landroid/app/usage/UsageStats;->add(Landroid/app/usage/UsageStats;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v10

    goto :goto_1

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/UsageStatsActivity$UsageStatsAdapter;->mPackageStats:Ljava/util/ArrayList;

    invoke-virtual {v14}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-instance v2, Lcom/android/settings/UsageStatsActivity$AppNameComparator;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/UsageStatsActivity$UsageStatsAdapter;->mAppLabelMap:Landroid/util/ArrayMap;

    invoke-direct {v2, v3}, Lcom/android/settings/UsageStatsActivity$AppNameComparator;-><init>(Ljava/util/Map;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/UsageStatsActivity$UsageStatsAdapter;->mAppLabelComparator:Lcom/android/settings/UsageStatsActivity$AppNameComparator;

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/UsageStatsActivity$UsageStatsAdapter;->sortList()V

    return-void
.end method

.method private sortList()V
    .locals 2

    iget v0, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsAdapter;->mDisplayOrder:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsAdapter;->mPackageStats:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsAdapter;->mUsageTimeComparator:Lcom/android/settings/UsageStatsActivity$UsageTimeComparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/UsageStatsActivity$UsageStatsAdapter;->notifyDataSetChanged()V

    return-void

    :cond_1
    iget v0, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsAdapter;->mDisplayOrder:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsAdapter;->mPackageStats:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsAdapter;->mLastTimeUsedComparator:Lcom/android/settings/UsageStatsActivity$LastTimeUsedComparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsAdapter;->mDisplayOrder:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsAdapter;->mPackageStats:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsAdapter;->mAppLabelComparator:Lcom/android/settings/UsageStatsActivity$AppNameComparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsAdapter;->mPackageStats:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsAdapter;->mPackageStats:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10

    const/4 v4, 0x2

    const/4 v2, 0x0

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsAdapter;->this$0:Lcom/android/settings/UsageStatsActivity;

    invoke-static {v0}, Lcom/android/settings/UsageStatsActivity;->-get0(Lcom/android/settings/UsageStatsActivity;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0402fc

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v6, Lcom/android/settings/UsageStatsActivity$AppViewHolder;

    invoke-direct {v6}, Lcom/android/settings/UsageStatsActivity$AppViewHolder;-><init>()V

    const v0, 0x7f1106b7

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v6, Lcom/android/settings/UsageStatsActivity$AppViewHolder;->pkgName:Landroid/widget/TextView;

    const v0, 0x7f1106b8

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v6, Lcom/android/settings/UsageStatsActivity$AppViewHolder;->lastTimeUsed:Landroid/widget/TextView;

    const v0, 0x7f1106b9

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v6, Lcom/android/settings/UsageStatsActivity$AppViewHolder;->usageTime:Landroid/widget/TextView;

    invoke-virtual {p2, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    iget-object v0, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsAdapter;->mPackageStats:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/usage/UsageStats;

    if-eqz v8, :cond_1

    iget-object v0, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsAdapter;->mAppLabelMap:Landroid/util/ArrayMap;

    invoke-virtual {v8}, Landroid/app/usage/UsageStats;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    iget-object v0, v6, Lcom/android/settings/UsageStatsActivity$AppViewHolder;->pkgName:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v9, v6, Lcom/android/settings/UsageStatsActivity$AppViewHolder;->lastTimeUsed:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/app/usage/UsageStats;->getLastTimeUsed()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move v5, v4

    invoke-static/range {v0 .. v5}, Landroid/text/format/DateUtils;->formatSameDayTime(JJII)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v6, Lcom/android/settings/UsageStatsActivity$AppViewHolder;->usageTime:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/app/usage/UsageStats;->getTotalTimeInForeground()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    return-object p2

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settings/UsageStatsActivity$AppViewHolder;

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "UsageStatsActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "No usage stats info for package:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method sortList(I)V
    .locals 1

    iget v0, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsAdapter;->mDisplayOrder:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsAdapter;->mDisplayOrder:I

    invoke-direct {p0}, Lcom/android/settings/UsageStatsActivity$UsageStatsAdapter;->sortList()V

    return-void
.end method
