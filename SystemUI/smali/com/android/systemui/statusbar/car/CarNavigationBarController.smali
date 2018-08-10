.class Lcom/android/systemui/statusbar/car/CarNavigationBarController;
.super Ljava/lang/Object;
.source "CarNavigationBarController.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mCurrentFacetIndex:I

.field private final mFacetCategories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mFacetCategoryMap:Landroid/support/v4/util/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/SimpleArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mFacetHasMultipleAppsCache:Landroid/util/SparseBooleanArray;

.field private final mFacetPackageMap:Landroid/support/v4/util/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/SimpleArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mFacetPackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mNavBar:Lcom/android/systemui/statusbar/car/CarNavigationBarView;

.field private final mNavButtons:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/statusbar/car/CarNavigationButton;",
            ">;"
        }
    .end annotation
.end field

.field private mPersistentTaskIntent:Landroid/content/Intent;

.field private final mStatusBar:Lcom/android/systemui/statusbar/car/CarStatusBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/car/CarNavigationBarView;Lcom/android/systemui/statusbar/car/CarStatusBar;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->mFacetCategories:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->mFacetPackages:Ljava/util/List;

    new-instance v0, Landroid/support/v4/util/SimpleArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/SimpleArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->mFacetCategoryMap:Landroid/support/v4/util/SimpleArrayMap;

    new-instance v0, Landroid/support/v4/util/SimpleArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/SimpleArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->mFacetPackageMap:Landroid/support/v4/util/SimpleArrayMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->mNavButtons:Ljava/util/List;

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->mFacetHasMultipleAppsCache:Landroid/util/SparseBooleanArray;

    iput-object p1, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->mNavBar:Lcom/android/systemui/statusbar/car/CarNavigationBarView;

    iput-object p3, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->mStatusBar:Lcom/android/systemui/statusbar/car/CarStatusBar;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->bind()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f05000e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->setupPersistentDockedTask()V

    :cond_0
    return-void
.end method

.method private bind()V
    .locals 13

    iget-object v10, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v10, 0x7f030021

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v5

    const v10, 0x7f030022

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v6

    const v10, 0x7f030023

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v7

    const v10, 0x7f030024

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v2

    const v10, 0x7f030020

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    :try_start_0
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->length()I

    move-result v10

    invoke-virtual {v6}, Landroid/content/res/TypedArray;->length()I

    move-result v11

    if-ne v10, v11, :cond_0

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->length()I

    move-result v10

    invoke-virtual {v7}, Landroid/content/res/TypedArray;->length()I

    move-result v11

    if-eq v10, v11, :cond_1

    :cond_0
    new-instance v10, Ljava/lang/RuntimeException;

    const-string/jumbo v11, "car_facet array lengths do not match"

    invoke-direct {v10, v11}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v10

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    throw v10

    :cond_1
    :try_start_1
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->length()I

    move-result v10

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->length()I

    move-result v11

    if-ne v10, v11, :cond_0

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->length()I

    move-result v10

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->length()I

    move-result v11

    if-ne v10, v11, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->length()I

    move-result v9

    :goto_0
    if-ge v3, v9, :cond_2

    invoke-virtual {v5, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->createNavButton(Landroid/graphics/drawable/Drawable;)Lcom/android/systemui/statusbar/car/CarNavigationButton;

    move-result-object v0

    invoke-virtual {v6, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v0, v3, v10, v11}, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->initClickListeners(Landroid/view/View;ILjava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->mNavButtons:Ljava/util/List;

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v10, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->mNavBar:Lcom/android/systemui/statusbar/car/CarNavigationBarView;

    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->createNavButton(Landroid/graphics/drawable/Drawable;)Lcom/android/systemui/statusbar/car/CarNavigationButton;

    move-result-object v11

    invoke-virtual {v10, v0, v11}, Lcom/android/systemui/statusbar/car/CarNavigationBarView;->addButton(Lcom/android/systemui/statusbar/car/CarNavigationButton;Lcom/android/systemui/statusbar/car/CarNavigationButton;)V

    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, ";"

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, ";"

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v3, v10, v11}, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->initFacetFilterMaps(I[Ljava/lang/String;[Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->mFacetHasMultipleAppsCache:Landroid/util/SparseBooleanArray;

    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->facetHasMultiplePackages(I)Z

    move-result v11

    invoke-virtual {v10, v3, v11}, Landroid/util/SparseBooleanArray;->put(IZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private createNavButton(Landroid/graphics/drawable/Drawable;)Lcom/android/systemui/statusbar/car/CarNavigationButton;
    .locals 5

    iget-object v2, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->mContext:Landroid/content/Context;

    const v3, 0x7f0d002e

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/car/CarNavigationButton;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/car/CarNavigationButton;->setResources(Landroid/graphics/drawable/Drawable;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-direct {v1, v3, v4, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/car/CarNavigationButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method private facetHasMultiplePackages(I)Z
    .locals 10

    const/4 v9, 0x0

    const/4 v8, 0x1

    iget-object v7, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->mFacetPackages:Ljava/util/List;

    invoke-interface {v7, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    array-length v7, v5

    if-le v7, v8, :cond_2

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    array-length v7, v5

    if-ge v3, v7, :cond_2

    aget-object v7, v5, v3

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    if-eqz v7, :cond_0

    move v7, v8

    :goto_1
    add-int/2addr v2, v7

    if-le v2, v8, :cond_1

    return v8

    :cond_0
    move v7, v9

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    iget-object v7, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->mFacetCategories:Ljava/util/List;

    invoke-interface {v7, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_2
    array-length v7, v0

    if-ge v3, v7, :cond_4

    aget-object v1, v0, v3

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v7, "android.intent.action.MAIN"

    invoke-virtual {v4, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v4, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v6, v4, v9}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    add-int/2addr v2, v7

    if-le v2, v8, :cond_3

    return v8

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    return v9
.end method

.method private getPackageCategory(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    const/4 v9, 0x0

    iget-object v8, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    iget-object v8, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->mFacetCategories:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v7

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v7, :cond_2

    iget-object v8, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->mFacetCategories:Ljava/util/List;

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const/4 v4, 0x0

    :goto_1
    array-length v8, v0

    if-ge v4, v8, :cond_1

    aget-object v1, v0, v4

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v3, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v8, "android.intent.action.MAIN"

    invoke-virtual {v3, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v3, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v6, v3, v9}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_0

    iget-object v9, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->mFacetPackageMap:Landroid/support/v4/util/SimpleArrayMap;

    iget-object v8, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->mFacetCategoryMap:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v8, v1}, Landroid/support/v4/util/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v9, p1, v8}, Landroid/support/v4/util/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v8, 0x0

    return-object v8
.end method

.method private initClickListeners(Landroid/view/View;ILjava/lang/String;Ljava/lang/String;)V
    .locals 5

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Facet at index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " does not have click action."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    const/4 v2, 0x1

    :try_start_0
    invoke-static {p3, v2}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/statusbar/car/-$Lambda$gAZ84Xb3Qb415HO2o_U1LzYDKgw;

    invoke-direct {v2, p2, p0, v1}, Lcom/android/systemui/statusbar/car/-$Lambda$gAZ84Xb3Qb415HO2o_U1LzYDKgw;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/View;->setLongClickable(Z)V

    return-void

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "Malformed intent uri"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_1
    const/4 v2, 0x1

    :try_start_1
    invoke-static {p4, v2}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/statusbar/car/-$Lambda$gAZ84Xb3Qb415HO2o_U1LzYDKgw$1;

    invoke-direct {v2, p2, p0, v1}, Lcom/android/systemui/statusbar/car/-$Lambda$gAZ84Xb3Qb415HO2o_U1LzYDKgw$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception v0

    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "Malformed long-press intent uri"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private initFacetFilterMaps(I[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 7

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->mFacetCategories:Ljava/util/List;

    invoke-interface {v3, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    array-length v4, p3

    move v3, v2

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v0, p3, v3

    iget-object v5, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->mFacetCategoryMap:Landroid/support/v4/util/SimpleArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v0, v6}, Landroid/support/v4/util/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->mFacetPackages:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    array-length v3, p2

    :goto_1
    if-ge v2, v3, :cond_1

    aget-object v1, p2, v2

    iget-object v4, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->mFacetPackageMap:Landroid/support/v4/util/SimpleArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Landroid/support/v4/util/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private onFacetClicked(Landroid/content/Intent;I)V
    .locals 4

    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string/jumbo v3, "categories"

    iget-object v2, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->mFacetCategories:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v3, "packages"

    iget-object v2, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->mFacetPackages:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "filter_id"

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v3, "launch_picker"

    iget v2, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->mCurrentFacetIndex:I

    if-ne p2, v2, :cond_2

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v2

    const-string/jumbo v3, "android.intent.category.HOME"

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x0

    :cond_1
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->setCurrentFacet(I)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->mStatusBar:Lcom/android/systemui/statusbar/car/CarStatusBar;

    invoke-virtual {v2, p1, v1}, Lcom/android/systemui/statusbar/car/CarStatusBar;->startActivityOnStack(Landroid/content/Intent;I)I

    return-void

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private onFacetLongClicked(Landroid/content/Intent;I)V
    .locals 2

    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->setCurrentFacet(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->mStatusBar:Lcom/android/systemui/statusbar/car/CarStatusBar;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/statusbar/car/CarStatusBar;->startActivityOnStack(Landroid/content/Intent;I)I

    return-void
.end method

.method private setCurrentFacet(I)V
    .locals 3

    const/4 v2, 0x0

    iget v0, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->mCurrentFacetIndex:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->mNavButtons:Ljava/util/List;

    iget v1, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->mCurrentFacetIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->mNavButtons:Ljava/util/List;

    iget v1, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->mCurrentFacetIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/car/CarNavigationButton;

    invoke-virtual {v0, v2, v2}, Lcom/android/systemui/statusbar/car/CarNavigationButton;->setSelected(ZZ)V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->mNavButtons:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->mNavButtons:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/car/CarNavigationButton;

    iget-object v1, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->mFacetHasMultipleAppsCache:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/statusbar/car/CarNavigationButton;->setSelected(ZZ)V

    :cond_2
    iput p1, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->mCurrentFacetIndex:I

    return-void
.end method

.method private setupPersistentDockedTask()V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->mContext:Landroid/content/Context;

    const v2, 0x7f120211

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->mPersistentTaskIntent:Landroid/content/Intent;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "CarNavBarController"

    const-string/jumbo v2, "Malformed persistent task intent."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method synthetic lambda$-com_android_systemui_statusbar_car_CarNavigationBarController_13428(Landroid/content/Intent;ILandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->onFacetClicked(Landroid/content/Intent;I)V

    return-void
.end method

.method synthetic lambda$-com_android_systemui_statusbar_car_CarNavigationBarController_13853(Landroid/content/Intent;ILandroid/view/View;)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->onFacetLongClicked(Landroid/content/Intent;I)V

    const/4 v0, 0x1

    return v0
.end method

.method public onDensityOrFontScaleChanged()V
    .locals 6

    iget-object v4, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f030021

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v2

    :try_start_0
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->length()I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->mNavButtons:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-eq v3, v4, :cond_0

    new-instance v4, Ljava/lang/RuntimeException;

    const-string/jumbo v5, "car_facet array lengths do not match number of created buttons."

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v4

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    throw v4

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_1

    :try_start_1
    invoke-virtual {v2, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v4, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->mNavButtons:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/car/CarNavigationButton;

    invoke-virtual {v4, v1}, Lcom/android/systemui/statusbar/car/CarNavigationButton;->setResources(Landroid/graphics/drawable/Drawable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public onPackageChange(Ljava/lang/String;)V
    .locals 4

    iget-object v2, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->mFacetPackageMap:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v2, p1}, Landroid/support/v4/util/SimpleArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->mFacetPackageMap:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v2, p1}, Landroid/support/v4/util/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->mFacetHasMultipleAppsCache:Landroid/util/SparseBooleanArray;

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->facetHasMultiplePackages(I)Z

    move-result v3

    invoke-virtual {v2, v1, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->getPackageCategory(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->mFacetCategoryMap:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v2, v0}, Landroid/support/v4/util/SimpleArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->mFacetCategoryMap:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v2, v0}, Landroid/support/v4/util/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->mFacetHasMultipleAppsCache:Landroid/util/SparseBooleanArray;

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->facetHasMultiplePackages(I)Z

    move-result v3

    invoke-virtual {v2, v1, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :cond_1
    return-void
.end method

.method public taskChanged(Ljava/lang/String;I)V
    .locals 4

    iget-object v1, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->mFacetPackageMap:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v1, p1}, Landroid/support/v4/util/SimpleArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->mFacetPackageMap:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v1, p1}, Landroid/support/v4/util/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->setCurrentFacet(I)V

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->getPackageCategory(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->mFacetCategoryMap:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v1, v0}, Landroid/support/v4/util/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->setCurrentFacet(I)V

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->mPersistentTaskIntent:Landroid/content/Intent;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->mStatusBar:Lcom/android/systemui/statusbar/car/CarStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/car/CarStatusBar;->hasDockedTask()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    if-eqz p2, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->mStatusBar:Lcom/android/systemui/statusbar/car/CarStatusBar;

    iget-object v2, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->mPersistentTaskIntent:Landroid/content/Intent;

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/statusbar/car/CarStatusBar;->startActivityOnStack(Landroid/content/Intent;I)I

    :cond_2
    return-void
.end method
