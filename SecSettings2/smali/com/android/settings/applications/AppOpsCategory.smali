.class public Lcom/android/settings/applications/AppOpsCategory;
.super Landroid/app/ListFragment;
.source "AppOpsCategory.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/AppOpsCategory$AppListAdapter;,
        Lcom/android/settings/applications/AppOpsCategory$AppListLoader;,
        Lcom/android/settings/applications/AppOpsCategory$InterestingConfigChanges;,
        Lcom/android/settings/applications/AppOpsCategory$PackageIntentReceiver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/ListFragment;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/android/settings/applications/AppOpsState$AppOpEntry;",
        ">;>;"
    }
.end annotation


# instance fields
.field mAdapter:Lcom/android/settings/applications/AppOpsCategory$AppListAdapter;

.field mCurrentPkgName:Ljava/lang/String;

.field mState:Lcom/android/settings/applications/AppOpsState;

.field mUserControlled:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/android/settings/applications/AppOpsState$OpsTemplate;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/applications/AppOpsCategory;-><init>(Lcom/android/settings/applications/AppOpsState$OpsTemplate;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/android/settings/applications/AppOpsState$OpsTemplate;Z)V
    .locals 2

    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "template"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string/jumbo v1, "userControlled"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/AppOpsCategory;->setArguments(Landroid/os/Bundle;)V

    return-void
.end method

.method private startApplicationDetailsActivity()V
    .locals 7

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "package"

    iget-object v3, p0, Lcom/android/settings/applications/AppOpsCategory;->mCurrentPkgName:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/applications/AppOpsCategory;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    const-class v1, Lcom/android/settings/applications/AppOpsDetails;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0b155d

    const/4 v4, 0x0

    const/4 v6, 0x1

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5

    const/4 v4, 0x0

    invoke-super {p0, p1}, Landroid/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    const-string/jumbo v0, "No applications"

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/AppOpsCategory;->setEmptyText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/AppOpsCategory;->setHasOptionsMenu(Z)V

    new-instance v0, Lcom/android/settings/applications/AppOpsCategory$AppListAdapter;

    invoke-virtual {p0}, Lcom/android/settings/applications/AppOpsCategory;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/applications/AppOpsCategory;->mState:Lcom/android/settings/applications/AppOpsState;

    iget-boolean v3, p0, Lcom/android/settings/applications/AppOpsCategory;->mUserControlled:Z

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/applications/AppOpsCategory$AppListAdapter;-><init>(Landroid/content/Context;Lcom/android/settings/applications/AppOpsState;Z)V

    iput-object v0, p0, Lcom/android/settings/applications/AppOpsCategory;->mAdapter:Lcom/android/settings/applications/AppOpsCategory$AppListAdapter;

    iget-object v0, p0, Lcom/android/settings/applications/AppOpsCategory;->mAdapter:Lcom/android/settings/applications/AppOpsCategory$AppListAdapter;

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/AppOpsCategory;->setListAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {p0, v4}, Lcom/android/settings/applications/AppOpsCategory;->setListShown(Z)V

    invoke-virtual {p0}, Lcom/android/settings/applications/AppOpsCategory;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v4, v1, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/ListFragment;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Lcom/android/settings/applications/AppOpsState;

    invoke-virtual {p0}, Lcom/android/settings/applications/AppOpsCategory;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/applications/AppOpsState;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/applications/AppOpsCategory;->mState:Lcom/android/settings/applications/AppOpsState;

    invoke-virtual {p0}, Lcom/android/settings/applications/AppOpsCategory;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "userControlled"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/applications/AppOpsCategory;->mUserControlled:Z

    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/applications/AppOpsState$AppOpEntry;",
            ">;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/settings/applications/AppOpsCategory;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string/jumbo v2, "template"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/AppOpsState$OpsTemplate;

    :cond_0
    new-instance v2, Lcom/android/settings/applications/AppOpsCategory$AppListLoader;

    invoke-virtual {p0}, Lcom/android/settings/applications/AppOpsCategory;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/applications/AppOpsCategory;->mState:Lcom/android/settings/applications/AppOpsState;

    iget-boolean v5, p0, Lcom/android/settings/applications/AppOpsCategory;->mUserControlled:Z

    invoke-direct {v2, v3, v4, v1, v5}, Lcom/android/settings/applications/AppOpsCategory$AppListLoader;-><init>(Landroid/content/Context;Lcom/android/settings/applications/AppOpsState;Lcom/android/settings/applications/AppOpsState$OpsTemplate;Z)V

    return-object v2
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 9

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/settings/applications/AppOpsCategory;->mAdapter:Lcom/android/settings/applications/AppOpsCategory$AppListAdapter;

    invoke-virtual {v6, p3}, Lcom/android/settings/applications/AppOpsCategory$AppListAdapter;->getItem(I)Lcom/android/settings/applications/AppOpsState$AppOpEntry;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-boolean v6, p0, Lcom/android/settings/applications/AppOpsCategory;->mUserControlled:Z

    if-eqz v6, :cond_3

    const v6, 0x7f110151

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Switch;

    invoke-virtual {v4}, Landroid/widget/Switch;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_1

    move v0, v5

    :goto_0
    invoke-virtual {v4, v0}, Landroid/widget/Switch;->setChecked(Z)V

    invoke-virtual {v1, v5}, Lcom/android/settings/applications/AppOpsState$AppOpEntry;->getOpEntry(I)Landroid/app/AppOpsManager$OpEntry;

    move-result-object v3

    if-eqz v0, :cond_2

    const/4 v2, 0x0

    :goto_1
    iget-object v5, p0, Lcom/android/settings/applications/AppOpsCategory;->mState:Lcom/android/settings/applications/AppOpsState;

    invoke-virtual {v5}, Lcom/android/settings/applications/AppOpsState;->getAppOpsManager()Landroid/app/AppOpsManager;

    move-result-object v5

    invoke-virtual {v3}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v6

    invoke-virtual {v1}, Lcom/android/settings/applications/AppOpsState$AppOpEntry;->getAppEntry()Lcom/android/settings/applications/AppOpsState$AppEntry;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/settings/applications/AppOpsState$AppEntry;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1}, Lcom/android/settings/applications/AppOpsState$AppOpEntry;->getAppEntry()Lcom/android/settings/applications/AppOpsState$AppEntry;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/settings/applications/AppOpsState$AppEntry;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6, v7, v8, v2}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    invoke-virtual {v1, v2}, Lcom/android/settings/applications/AppOpsState$AppOpEntry;->overridePrimaryOpMode(I)V

    :cond_0
    :goto_2
    return-void

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Lcom/android/settings/applications/AppOpsState$AppOpEntry;->getAppEntry()Lcom/android/settings/applications/AppOpsState$AppEntry;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/settings/applications/AppOpsState$AppEntry;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v5, p0, Lcom/android/settings/applications/AppOpsCategory;->mCurrentPkgName:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/settings/applications/AppOpsCategory;->startApplicationDetailsActivity()V

    goto :goto_2
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/applications/AppOpsCategory;->onLoadFinished(Landroid/content/Loader;Ljava/util/List;)V

    return-void
.end method

.method public onLoadFinished(Landroid/content/Loader;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/applications/AppOpsState$AppOpEntry;",
            ">;>;",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/applications/AppOpsState$AppOpEntry;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/settings/applications/AppOpsCategory;->mAdapter:Lcom/android/settings/applications/AppOpsCategory$AppListAdapter;

    invoke-virtual {v0, p2}, Lcom/android/settings/applications/AppOpsCategory$AppListAdapter;->setData(Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/android/settings/applications/AppOpsCategory;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/settings/applications/AppOpsCategory;->setListShown(Z)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/settings/applications/AppOpsCategory;->setListShownNoAnimation(Z)V

    goto :goto_0
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/applications/AppOpsState$AppOpEntry;",
            ">;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/settings/applications/AppOpsCategory;->mAdapter:Lcom/android/settings/applications/AppOpsCategory$AppListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/AppOpsCategory$AppListAdapter;->setData(Ljava/util/List;)V

    return-void
.end method
