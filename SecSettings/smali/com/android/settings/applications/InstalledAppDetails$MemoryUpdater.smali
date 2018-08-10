.class Lcom/android/settings/applications/InstalledAppDetails$MemoryUpdater;
.super Landroid/os/AsyncTask;
.source "InstalledAppDetails.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/InstalledAppDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MemoryUpdater"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/android/settings/applications/ProcStatsPackageEntry;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/InstalledAppDetails;


# direct methods
.method private constructor <init>(Lcom/android/settings/applications/InstalledAppDetails;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/applications/InstalledAppDetails$MemoryUpdater;->this$0:Lcom/android/settings/applications/InstalledAppDetails;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/applications/InstalledAppDetails;Lcom/android/settings/applications/InstalledAppDetails$MemoryUpdater;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/applications/InstalledAppDetails$MemoryUpdater;-><init>(Lcom/android/settings/applications/InstalledAppDetails;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/android/settings/applications/ProcStatsPackageEntry;
    .locals 9

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-object v5, p0, Lcom/android/settings/applications/InstalledAppDetails$MemoryUpdater;->this$0:Lcom/android/settings/applications/InstalledAppDetails;

    invoke-virtual {v5}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-object v8

    :cond_0
    iget-object v5, p0, Lcom/android/settings/applications/InstalledAppDetails$MemoryUpdater;->this$0:Lcom/android/settings/applications/InstalledAppDetails;

    iget-object v5, v5, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/settings/applications/InstalledAppDetails$MemoryUpdater;->this$0:Lcom/android/settings/applications/InstalledAppDetails;

    iget-object v5, v5, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v5, :cond_2

    :cond_1
    return-object v8

    :cond_2
    iget-object v5, p0, Lcom/android/settings/applications/InstalledAppDetails$MemoryUpdater;->this$0:Lcom/android/settings/applications/InstalledAppDetails;

    iget-object v5, v5, Lcom/android/settings/applications/InstalledAppDetails;->mStatsManager:Lcom/android/settings/applications/ProcStatsData;

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/android/settings/applications/InstalledAppDetails$MemoryUpdater;->this$0:Lcom/android/settings/applications/InstalledAppDetails;

    new-instance v6, Lcom/android/settings/applications/ProcStatsData;

    invoke-direct {v6, v0, v7}, Lcom/android/settings/applications/ProcStatsData;-><init>(Landroid/content/Context;Z)V

    iput-object v6, v5, Lcom/android/settings/applications/InstalledAppDetails;->mStatsManager:Lcom/android/settings/applications/ProcStatsData;

    iget-object v5, p0, Lcom/android/settings/applications/InstalledAppDetails$MemoryUpdater;->this$0:Lcom/android/settings/applications/InstalledAppDetails;

    iget-object v5, v5, Lcom/android/settings/applications/InstalledAppDetails;->mStatsManager:Lcom/android/settings/applications/ProcStatsData;

    sget-object v6, Lcom/android/settings/applications/ProcessStatsBase;->sDurations:[J

    aget-wide v6, v6, v7

    invoke-virtual {v5, v6, v7}, Lcom/android/settings/applications/ProcStatsData;->setDuration(J)V

    :cond_3
    iget-object v5, p0, Lcom/android/settings/applications/InstalledAppDetails$MemoryUpdater;->this$0:Lcom/android/settings/applications/InstalledAppDetails;

    iget-object v5, v5, Lcom/android/settings/applications/InstalledAppDetails;->mStatsManager:Lcom/android/settings/applications/ProcStatsData;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/settings/applications/ProcStatsData;->refreshStats(Z)V

    iget-object v5, p0, Lcom/android/settings/applications/InstalledAppDetails$MemoryUpdater;->this$0:Lcom/android/settings/applications/InstalledAppDetails;

    iget-object v5, v5, Lcom/android/settings/applications/InstalledAppDetails;->mStatsManager:Lcom/android/settings/applications/ProcStatsData;

    invoke-virtual {v5}, Lcom/android/settings/applications/ProcStatsData;->getEntries()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/applications/ProcStatsPackageEntry;

    iget-object v5, v3, Lcom/android/settings/applications/ProcStatsPackageEntry;->mEntries:Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/ProcStatsEntry;

    iget v5, v1, Lcom/android/settings/applications/ProcStatsEntry;->mUid:I

    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails$MemoryUpdater;->this$0:Lcom/android/settings/applications/InstalledAppDetails;

    iget-object v6, v6, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v6, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v5, v6, :cond_5

    invoke-virtual {v3}, Lcom/android/settings/applications/ProcStatsPackageEntry;->updateMetrics()V

    return-object v3

    :cond_6
    return-object v8
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/applications/InstalledAppDetails$MemoryUpdater;->doInBackground([Ljava/lang/Void;)Lcom/android/settings/applications/ProcStatsPackageEntry;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/android/settings/applications/ProcStatsPackageEntry;)V
    .locals 12

    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails$MemoryUpdater;->this$0:Lcom/android/settings/applications/InstalledAppDetails;

    invoke-virtual {v3}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v3

    if-nez v3, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_3

    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails$MemoryUpdater;->this$0:Lcom/android/settings/applications/InstalledAppDetails;

    iput-object p1, v3, Lcom/android/settings/applications/InstalledAppDetails;->mStats:Lcom/android/settings/applications/ProcStatsPackageEntry;

    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails$MemoryUpdater;->this$0:Lcom/android/settings/applications/InstalledAppDetails;

    invoke-static {v3}, Lcom/android/settings/applications/InstalledAppDetails;->-get3(Lcom/android/settings/applications/InstalledAppDetails;)Lcom/android/settings/AppProgressPreference;

    move-result-object v3

    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Lcom/android/settings/AppProgressPreference;->setEnabled(Z)V

    iget-wide v6, p1, Lcom/android/settings/applications/ProcStatsPackageEntry;->mRunWeight:D

    iget-wide v8, p1, Lcom/android/settings/applications/ProcStatsPackageEntry;->mBgWeight:D

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails$MemoryUpdater;->this$0:Lcom/android/settings/applications/InstalledAppDetails;

    iget-object v3, v3, Lcom/android/settings/applications/InstalledAppDetails;->mStatsManager:Lcom/android/settings/applications/ProcStatsData;

    invoke-virtual {v3}, Lcom/android/settings/applications/ProcStatsData;->getMemInfo()Lcom/android/settings/applications/ProcStatsData$MemInfo;

    move-result-object v3

    iget-wide v8, v3, Lcom/android/settings/applications/ProcStatsData$MemInfo;->weightToRam:D

    mul-double v0, v6, v8

    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails$MemoryUpdater;->this$0:Lcom/android/settings/applications/InstalledAppDetails;

    iget-object v3, v3, Lcom/android/settings/applications/InstalledAppDetails;->mStatsManager:Lcom/android/settings/applications/ProcStatsData;

    invoke-virtual {v3}, Lcom/android/settings/applications/ProcStatsData;->getMemInfo()Lcom/android/settings/applications/ProcStatsData$MemInfo;

    move-result-object v3

    iget-wide v4, v3, Lcom/android/settings/applications/ProcStatsData$MemInfo;->realUsedRam:D

    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails$MemoryUpdater;->this$0:Lcom/android/settings/applications/InstalledAppDetails;

    invoke-static {v3}, Lcom/android/settings/applications/InstalledAppDetails;->-get3(Lcom/android/settings/applications/InstalledAppDetails;)Lcom/android/settings/AppProgressPreference;

    move-result-object v3

    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails$MemoryUpdater;->this$0:Lcom/android/settings/applications/InstalledAppDetails;

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/android/settings/applications/InstalledAppDetails$MemoryUpdater;->this$0:Lcom/android/settings/applications/InstalledAppDetails;

    invoke-virtual {v8}, Lcom/android/settings/applications/InstalledAppDetails;->getContext()Landroid/content/Context;

    move-result-object v8

    double-to-long v10, v0

    invoke-static {v8, v10, v11}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    iget-object v8, p0, Lcom/android/settings/applications/InstalledAppDetails$MemoryUpdater;->this$0:Lcom/android/settings/applications/InstalledAppDetails;

    invoke-virtual {v8}, Lcom/android/settings/applications/InstalledAppDetails;->getContext()Landroid/content/Context;

    move-result-object v8

    double-to-long v10, v4

    invoke-static {v8, v10, v11}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v7, v9

    const v8, 0x7f121144

    invoke-virtual {v6, v8, v7}, Lcom/android/settings/applications/InstalledAppDetails;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/android/settings/AppProgressPreference;->setSummary(Ljava/lang/CharSequence;)V

    const-wide/16 v6, 0x0

    cmpl-double v3, v0, v6

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails$MemoryUpdater;->this$0:Lcom/android/settings/applications/InstalledAppDetails;

    invoke-static {v3}, Lcom/android/settings/applications/InstalledAppDetails;->-get3(Lcom/android/settings/applications/InstalledAppDetails;)Lcom/android/settings/AppProgressPreference;

    move-result-object v3

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Lcom/android/settings/AppProgressPreference;->setProgress(I)V

    :goto_0
    return-void

    :cond_1
    const/4 v2, 0x0

    const-wide/16 v6, 0x0

    cmpl-double v3, v4, v6

    if-eqz v3, :cond_2

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    mul-double/2addr v6, v0

    div-double/2addr v6, v4

    double-to-int v2, v6

    :cond_2
    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails$MemoryUpdater;->this$0:Lcom/android/settings/applications/InstalledAppDetails;

    invoke-static {v3}, Lcom/android/settings/applications/InstalledAppDetails;->-get3(Lcom/android/settings/applications/InstalledAppDetails;)Lcom/android/settings/AppProgressPreference;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/settings/AppProgressPreference;->setProgress(I)V

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails$MemoryUpdater;->this$0:Lcom/android/settings/applications/InstalledAppDetails;

    invoke-static {v3}, Lcom/android/settings/applications/InstalledAppDetails;->-get3(Lcom/android/settings/applications/InstalledAppDetails;)Lcom/android/settings/AppProgressPreference;

    move-result-object v3

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Lcom/android/settings/AppProgressPreference;->setEnabled(Z)V

    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails$MemoryUpdater;->this$0:Lcom/android/settings/applications/InstalledAppDetails;

    invoke-static {v3}, Lcom/android/settings/applications/InstalledAppDetails;->-get3(Lcom/android/settings/applications/InstalledAppDetails;)Lcom/android/settings/AppProgressPreference;

    move-result-object v3

    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails$MemoryUpdater;->this$0:Lcom/android/settings/applications/InstalledAppDetails;

    const v7, 0x7f12131a

    invoke-virtual {v6, v7}, Lcom/android/settings/applications/InstalledAppDetails;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/android/settings/AppProgressPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails$MemoryUpdater;->this$0:Lcom/android/settings/applications/InstalledAppDetails;

    invoke-static {v3}, Lcom/android/settings/applications/InstalledAppDetails;->-get3(Lcom/android/settings/applications/InstalledAppDetails;)Lcom/android/settings/AppProgressPreference;

    move-result-object v3

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Lcom/android/settings/AppProgressPreference;->setProgress(I)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/settings/applications/ProcStatsPackageEntry;

    invoke-virtual {p0, p1}, Lcom/android/settings/applications/InstalledAppDetails$MemoryUpdater;->onPostExecute(Lcom/android/settings/applications/ProcStatsPackageEntry;)V

    return-void
.end method
