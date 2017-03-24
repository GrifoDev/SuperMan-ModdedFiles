.class Lcom/android/systemui/statusbar/car/CarNavigationBarController;
.super Ljava/lang/Object;
.source "CarNavigationBarController.java"


# instance fields
.field private mActivityStarter:Lcom/android/systemui/statusbar/phone/ActivityStarter;

.field private mContext:Landroid/content/Context;

.field private mCurrentFacetIndex:I

.field private mFacetCategories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFacetCategoryMap:Landroid/support/v4/util/SimpleArrayMap;
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

.field private mFacetHasMultipleAppsCache:Landroid/util/SparseBooleanArray;

.field private mFacetPackageMap:Landroid/support/v4/util/SimpleArrayMap;
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

.field private mFacetPackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIntents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private mLongPressIntents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private mNavBar:Lcom/android/systemui/statusbar/car/CarNavigationBarView;

.field private mNavButtons:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/statusbar/car/CarNavigationButton;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -wrap0(Lcom/android/systemui/statusbar/car/CarNavigationBarController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->onFacetClicked(I)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/systemui/statusbar/car/CarNavigationBarController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->onFacetLongClicked(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/car/CarNavigationBarView;Lcom/android/systemui/statusbar/phone/ActivityStarter;)V
    .locals 1

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

    iput-object p3, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->mActivityStarter:Lcom/android/systemui/statusbar/phone/ActivityStarter;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->bind()V

    return-void
.end method

.method private bind()V
    .locals 15

    iget-object v12, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f11002c

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v7

    const v12, 0x7f11002d

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v8

    const v12, 0x7f11002e

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v9

    const v12, 0x7f11002f

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v3

    const v12, 0x7f110030

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v2

    invoke-virtual {v7}, Landroid/content/res/TypedArray;->length()I

    move-result v12

    invoke-virtual {v8}, Landroid/content/res/TypedArray;->length()I

    move-result v13

    if-ne v12, v13, :cond_0

    invoke-virtual {v7}, Landroid/content/res/TypedArray;->length()I

    move-result v12

    invoke-virtual {v9}, Landroid/content/res/TypedArray;->length()I

    move-result v13

    if-eq v12, v13, :cond_1

    :cond_0
    new-instance v12, Ljava/lang/RuntimeException;

    const-string/jumbo v13, "car_facet array lengths do not match"

    invoke-direct {v12, v13}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v12

    :cond_1
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->length()I

    move-result v12

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->length()I

    move-result v13

    if-ne v12, v13, :cond_0

    invoke-virtual {v7}, Landroid/content/res/TypedArray;->length()I

    move-result v12

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->length()I

    move-result v13

    if-ne v12, v13, :cond_0

    invoke-virtual {v7}, Landroid/content/res/TypedArray;->length()I

    move-result v12

    invoke-direct {p0, v12}, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->createEmptyIntentList(I)Ljava/util/List;

    move-result-object v12

    iput-object v12, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->mIntents:Ljava/util/List;

    invoke-virtual {v7}, Landroid/content/res/TypedArray;->length()I

    move-result v12

    invoke-direct {p0, v12}, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->createEmptyIntentList(I)Ljava/util/List;

    move-result-object v12

    iput-object v12, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->mLongPressIntents:Ljava/util/List;

    const/4 v5, 0x0

    :goto_0
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->length()I

    move-result v12

    if-ge v5, v12, :cond_4

    invoke-virtual {v7, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    :try_start_0
    iget-object v12, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->mIntents:Ljava/util/List;

    invoke-virtual {v8, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    invoke-static {v13, v14}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v13

    invoke-interface {v12, v5, v13}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v9, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_3

    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_2

    iget-object v12, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->mLongPressIntents:Ljava/util/List;

    const/4 v13, 0x1

    invoke-static {v10, v13}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v13

    invoke-interface {v12, v5, v13}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-direct {p0, v6, v5, v4}, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->createNavButton(Landroid/graphics/drawable/Drawable;IZ)Lcom/android/systemui/statusbar/car/CarNavigationButton;

    move-result-object v0

    iget-object v12, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->mNavButtons:Ljava/util/List;

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v12, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->mNavBar:Lcom/android/systemui/statusbar/car/CarNavigationBarView;

    invoke-direct {p0, v6, v5, v4}, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->createNavButton(Landroid/graphics/drawable/Drawable;IZ)Lcom/android/systemui/statusbar/car/CarNavigationButton;

    move-result-object v13

    invoke-virtual {v12, v0, v13}, Lcom/android/systemui/statusbar/car/CarNavigationBarView;->addButton(Lcom/android/systemui/statusbar/car/CarNavigationButton;Lcom/android/systemui/statusbar/car/CarNavigationButton;)V

    invoke-virtual {v3, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, ";"

    invoke-virtual {v12, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, ";"

    invoke-virtual {v13, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    invoke-direct {p0, v5, v12, v13}, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->initFacetFilterMaps(I[Ljava/lang/String;[Ljava/lang/String;)V

    iget-object v12, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->mFacetHasMultipleAppsCache:Landroid/util/SparseBooleanArray;

    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->facetHasMultiplePackages(I)Z

    move-result v13

    invoke-virtual {v12, v5, v13}, Landroid/util/SparseBooleanArray;->put(IZ)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    const/4 v4, 0x1

    goto :goto_1

    :catch_0
    move-exception v1

    new-instance v12, Ljava/lang/RuntimeException;

    const-string/jumbo v13, "Malformed intent uri"

    invoke-direct {v12, v13, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v12

    :cond_4
    return-void
.end method

.method private createEmptyIntentList(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    new-array v0, p1, [Landroid/content/Intent;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private createNavButton(Landroid/graphics/drawable/Drawable;IZ)Lcom/android/systemui/statusbar/car/CarNavigationButton;
    .locals 6

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->mContext:Landroid/content/Context;

    const v3, 0x7f040028

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/car/CarNavigationButton;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/car/CarNavigationButton;->setResources(Landroid/graphics/drawable/Drawable;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, -0x1

    invoke-direct {v1, v5, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/car/CarNavigationButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Lcom/android/systemui/statusbar/car/CarNavigationBarController$1;

    invoke-direct {v2, p0, p2}, Lcom/android/systemui/statusbar/car/CarNavigationBarController$1;-><init>(Lcom/android/systemui/statusbar/car/CarNavigationBarController;I)V

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/car/CarNavigationButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz p3, :cond_0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/car/CarNavigationButton;->setLongClickable(Z)V

    new-instance v2, Lcom/android/systemui/statusbar/car/CarNavigationBarController$2;

    invoke-direct {v2, p0, p2}, Lcom/android/systemui/statusbar/car/CarNavigationBarController$2;-><init>(Lcom/android/systemui/statusbar/car/CarNavigationBarController;I)V

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/car/CarNavigationButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0, v5}, Lcom/android/systemui/statusbar/car/CarNavigationButton;->setLongClickable(Z)V

    goto :goto_0
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

.method private initFacetFilterMaps(I[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 4

    iget-object v1, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->mFacetCategories:Ljava/util/List;

    invoke-interface {v1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    :goto_0
    array-length v1, p3

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->mFacetCategoryMap:Landroid/support/v4/util/SimpleArrayMap;

    aget-object v2, p3, v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/util/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->mFacetPackages:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    :goto_1
    array-length v1, p2

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->mFacetPackageMap:Landroid/support/v4/util/SimpleArrayMap;

    aget-object v2, p2, v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/util/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private onFacetClicked(I)V
    .locals 4

    iget-object v2, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->mIntents:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const-string/jumbo v3, "categories"

    iget-object v2, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->mFacetCategories:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v3, "packages"

    iget-object v2, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->mFacetPackages:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "filter_id"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v3, "launch_picker"

    iget v2, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->mCurrentFacetIndex:I

    if-ne p1, v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->setCurrentFacet(I)V

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private onFacetLongClicked(I)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->setCurrentFacet(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->mLongPressIntents:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->startActivity(Landroid/content/Intent;)V

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

.method private startActivity(Landroid/content/Intent;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->mActivityStarter:Lcom/android/systemui/statusbar/phone/ActivityStarter;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->mActivityStarter:Lcom/android/systemui/statusbar/phone/ActivityStarter;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/android/systemui/statusbar/phone/ActivityStarter;->startActivity(Landroid/content/Intent;Z)V

    :cond_0
    return-void
.end method


# virtual methods
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

.method public taskChanged(Ljava/lang/String;)V
    .locals 2

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
    return-void
.end method
