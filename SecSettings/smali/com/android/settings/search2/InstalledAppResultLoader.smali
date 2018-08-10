.class public Lcom/android/settings/search2/InstalledAppResultLoader;
.super Lcom/android/settings/utils/AsyncLoader;
.source "InstalledAppResultLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/settings/utils/AsyncLoader",
        "<",
        "Ljava/util/List",
        "<+",
        "Lcom/android/settings/search2/SearchResult;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final LAUNCHER_PROBE:Landroid/content/Intent;


# instance fields
.field private mBreadcrumb:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackageManager:Lcom/android/settings/applications/PackageManagerWrapper;

.field private final mQuery:Ljava/lang/String;

.field private mSiteMapManager:Lcom/android/settings/dashboard/SiteMapManager;

.field private final mUserManager:Landroid/os/UserManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/android/settings/search2/InstalledAppResultLoader;->LAUNCHER_PROBE:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/applications/PackageManagerWrapper;Ljava/lang/String;Lcom/android/settings/dashboard/SiteMapManager;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/settings/utils/AsyncLoader;-><init>(Landroid/content/Context;)V

    iput-object p4, p0, Lcom/android/settings/search2/InstalledAppResultLoader;->mSiteMapManager:Lcom/android/settings/dashboard/SiteMapManager;

    const-string/jumbo v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/settings/search2/InstalledAppResultLoader;->mUserManager:Landroid/os/UserManager;

    iput-object p2, p0, Lcom/android/settings/search2/InstalledAppResultLoader;->mPackageManager:Lcom/android/settings/applications/PackageManagerWrapper;

    iput-object p3, p0, Lcom/android/settings/search2/InstalledAppResultLoader;->mQuery:Ljava/lang/String;

    return-void
.end method

.method private getBreadCrumb()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v1, p0, Lcom/android/settings/search2/InstalledAppResultLoader;->mBreadcrumb:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/search2/InstalledAppResultLoader;->mBreadcrumb:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/search2/InstalledAppResultLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/search2/InstalledAppResultLoader;->mSiteMapManager:Lcom/android/settings/dashboard/SiteMapManager;

    const-class v2, Lcom/android/settings/applications/ManageApplications;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f12021d

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/settings/dashboard/SiteMapManager;->buildBreadCrumb(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/search2/InstalledAppResultLoader;->mBreadcrumb:Ljava/util/List;

    :cond_1
    iget-object v1, p0, Lcom/android/settings/search2/InstalledAppResultLoader;->mBreadcrumb:Ljava/util/List;

    return-object v1
.end method

.method private getRank(I)I
    .locals 1

    const/4 v0, 0x6

    if-ge p1, v0, :cond_0

    const/4 v0, 0x2

    return v0

    :cond_0
    const/4 v0, 0x3

    return v0
.end method

.method private getUsersToCount()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/settings/search2/InstalledAppResultLoader;->mUserManager:Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private getWordDifference(Ljava/lang/String;Ljava/lang/String;)I
    .locals 9

    const/4 v8, -0x1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    return v8

    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    array-length v0, v1

    array-length v6, v5

    if-le v6, v0, :cond_2

    return v8

    :cond_2
    const/4 v2, 0x0

    :cond_3
    if-ge v2, v0, :cond_a

    const/4 v4, 0x0

    :cond_4
    add-int v6, v2, v4

    if-ge v6, v0, :cond_5

    aget-char v6, v5, v4

    add-int v7, v2, v4

    aget-char v7, v1, v7

    if-ne v6, v7, :cond_5

    add-int/lit8 v4, v4, 0x1

    array-length v6, v5

    if-lt v4, v6, :cond_4

    array-length v6, v5

    sub-int v6, v0, v6

    return v6

    :cond_5
    add-int/2addr v2, v4

    array-length v6, v5

    sub-int v7, v0, v2

    if-le v6, v7, :cond_6

    return v8

    :goto_0
    if-ge v3, v0, :cond_7

    add-int/lit8 v2, v3, 0x1

    aget-char v6, v1, v3

    invoke-static {v6}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_8

    :cond_6
    move v3, v2

    goto :goto_0

    :cond_7
    move v2, v3

    :cond_8
    :goto_1
    if-ge v2, v0, :cond_3

    aget-char v6, v1, v2

    invoke-static {v6}, Ljava/lang/Character;->isLetter(C)Z

    move-result v6

    if-nez v6, :cond_9

    aget-char v6, v1, v2

    invoke-static {v6}, Ljava/lang/Character;->isDigit(C)Z

    move-result v6

    :goto_2
    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_9
    const/4 v6, 0x1

    goto :goto_2

    :cond_a
    return v8
.end method

.method private shouldIncludeAsCandidate(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/UserInfo;)Z
    .locals 7

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget v4, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v4, v4, 0x80

    if-nez v4, :cond_0

    iget v4, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_1

    :cond_0
    return v2

    :cond_1
    new-instance v4, Landroid/content/Intent;

    sget-object v5, Lcom/android/settings/search2/InstalledAppResultLoader;->LAUNCHER_PROBE:Landroid/content/Intent;

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iget-object v5, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    iget-object v4, p0, Lcom/android/settings/search2/InstalledAppResultLoader;->mPackageManager:Lcom/android/settings/applications/PackageManagerWrapper;

    iget v5, p2, Landroid/content/pm/UserInfo;->id:I

    const v6, 0xc0200

    invoke-interface {v4, v1, v6, v5}, Lcom/android/settings/applications/PackageManagerWrapper;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-eqz v4, :cond_2

    :goto_0
    return v2

    :cond_2
    move v2, v3

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/search2/InstalledAppResultLoader;->loadInBackground()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public loadInBackground()Ljava/util/List;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/android/settings/search2/SearchResult;",
            ">;"
        }
    .end annotation

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iget-object v11, p0, Lcom/android/settings/search2/InstalledAppResultLoader;->mPackageManager:Lcom/android/settings/applications/PackageManagerWrapper;

    invoke-interface {v11}, Lcom/android/settings/applications/PackageManagerWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-direct {p0}, Lcom/android/settings/search2/InstalledAppResultLoader;->getUsersToCount()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/UserInfo;

    iget-object v12, p0, Lcom/android/settings/search2/InstalledAppResultLoader;->mPackageManager:Lcom/android/settings/applications/PackageManagerWrapper;

    invoke-virtual {v8}, Landroid/content/pm/UserInfo;->isAdmin()Z

    move-result v11

    if-eqz v11, :cond_2

    const/high16 v11, 0x400000

    :goto_0
    const v13, 0x8200

    or-int/2addr v11, v13

    iget v13, v8, Landroid/content/pm/UserInfo;->id:I

    invoke-interface {v12, v11, v13}, Lcom/android/settings/applications/PackageManagerWrapper;->getInstalledApplicationsAsUser(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ApplicationInfo;

    invoke-direct {p0, v2, v8}, Lcom/android/settings/search2/InstalledAppResultLoader;->shouldIncludeAsCandidate(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/UserInfo;)Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-virtual {v2, v6}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    iget-object v12, p0, Lcom/android/settings/search2/InstalledAppResultLoader;->mQuery:Ljava/lang/String;

    invoke-direct {p0, v11, v12}, Lcom/android/settings/search2/InstalledAppResultLoader;->getWordDifference(Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    const/4 v11, -0x1

    if-eq v10, v11, :cond_1

    new-instance v11, Landroid/content/Intent;

    const-string/jumbo v12, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v12, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-virtual {v11, v12}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v11

    const-string/jumbo v12, "package"

    iget-object v13, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v11

    const-string/jumbo v12, ":settings:source_metrics"

    const/16 v13, 0x22

    invoke-virtual {v11, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v4

    new-instance v1, Lcom/android/settings/search2/AppSearchResult$Builder;

    invoke-direct {v1}, Lcom/android/settings/search2/AppSearchResult$Builder;-><init>()V

    invoke-virtual {v1, v2}, Lcom/android/settings/search2/AppSearchResult$Builder;->setAppInfo(Landroid/content/pm/ApplicationInfo;)Lcom/android/settings/search2/SearchResult$Builder;

    move-result-object v11

    invoke-virtual {v2, v6}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/settings/search2/SearchResult$Builder;->addTitle(Ljava/lang/CharSequence;)Lcom/android/settings/search2/SearchResult$Builder;

    move-result-object v11

    invoke-direct {p0, v10}, Lcom/android/settings/search2/InstalledAppResultLoader;->getRank(I)I

    move-result v12

    invoke-virtual {v11, v12}, Lcom/android/settings/search2/SearchResult$Builder;->addRank(I)Lcom/android/settings/search2/SearchResult$Builder;

    move-result-object v11

    invoke-direct {p0}, Lcom/android/settings/search2/InstalledAppResultLoader;->getBreadCrumb()Ljava/util/List;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/settings/search2/SearchResult$Builder;->addBreadcrumbs(Ljava/util/List;)Lcom/android/settings/search2/SearchResult$Builder;

    move-result-object v11

    new-instance v12, Lcom/android/settings/search2/IntentPayload;

    invoke-direct {v12, v4}, Lcom/android/settings/search2/IntentPayload;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v11, v12}, Lcom/android/settings/search2/SearchResult$Builder;->addPayload(Lcom/android/settings/search2/ResultPayload;)Lcom/android/settings/search2/SearchResult$Builder;

    invoke-virtual {v1}, Lcom/android/settings/search2/AppSearchResult$Builder;->build()Lcom/android/settings/search2/AppSearchResult;

    move-result-object v11

    invoke-interface {v7, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    const/4 v11, 0x0

    goto/16 :goto_0

    :cond_3
    invoke-static {v7}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-object v7
.end method

.method protected bridge synthetic onDiscardResult(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/android/settings/search2/InstalledAppResultLoader;->onDiscardResult(Ljava/util/List;)V

    return-void
.end method

.method protected onDiscardResult(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/android/settings/search2/SearchResult;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
