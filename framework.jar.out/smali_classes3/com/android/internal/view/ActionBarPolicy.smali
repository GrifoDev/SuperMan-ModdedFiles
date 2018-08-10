.class public Lcom/android/internal/view/ActionBarPolicy;
.super Ljava/lang/Object;
.source "ActionBarPolicy.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/view/ActionBarPolicy;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static get(Landroid/content/Context;)Lcom/android/internal/view/ActionBarPolicy;
    .locals 1

    new-instance v0, Lcom/android/internal/view/ActionBarPolicy;

    invoke-direct {v0, p0}, Lcom/android/internal/view/ActionBarPolicy;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public enableHomeButtonByDefault()Z
    .locals 2

    iget-object v0, p0, Lcom/android/internal/view/ActionBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getEmbeddedMenuWidthLimit()I
    .locals 1

    iget-object v0, p0, Lcom/android/internal/view/ActionBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public getMaxActionButtons()I
    .locals 9

    const/16 v8, 0x3c0

    const/16 v7, 0x2d0

    const/16 v6, 0x280

    const/16 v5, 0x1e0

    iget-object v4, p0, Lcom/android/internal/view/ActionBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v3, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v1, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    iget v2, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v4, 0x258

    if-gt v2, v4, :cond_0

    if-le v3, v8, :cond_1

    if-le v1, v7, :cond_1

    :cond_0
    const/4 v4, 0x5

    return v4

    :cond_1
    if-le v3, v7, :cond_2

    if-gt v1, v8, :cond_0

    :cond_2
    const/16 v4, 0x1f4

    if-ge v3, v4, :cond_3

    if-le v3, v6, :cond_4

    if-le v1, v5, :cond_4

    :cond_3
    const/4 v4, 0x4

    return v4

    :cond_4
    if-le v3, v5, :cond_5

    if-gt v1, v6, :cond_3

    :cond_5
    const/16 v4, 0x168

    if-lt v3, v4, :cond_6

    const/4 v4, 0x3

    return v4

    :cond_6
    const/4 v4, 0x2

    return v4
.end method

.method public getStackedTabMaxWidth()I
    .locals 2

    iget-object v0, p0, Lcom/android/internal/view/ActionBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050015

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method public getTabContainerHeight()I
    .locals 8

    const/4 v7, 0x0

    iget-object v3, p0, Lcom/android/internal/view/ActionBarPolicy;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/android/internal/R$styleable;->ActionBar:[I

    const/4 v5, 0x0

    const v6, 0x10102ce

    invoke-virtual {v3, v5, v4, v6, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v3, 0x4

    invoke-virtual {v0, v3, v7}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v1

    iget-object v3, p0, Lcom/android/internal/view/ActionBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/view/ActionBarPolicy;->hasEmbeddedTabs()Z

    move-result v3

    if-nez v3, :cond_0

    const v3, 0x1050014

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return v1
.end method

.method public hasEmbeddedTabs()Z
    .locals 9

    const/16 v8, 0x1e0

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/internal/view/ActionBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    iget v2, v6, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v6, 0x10

    if-lt v2, v6, :cond_0

    iget-object v4, p0, Lcom/android/internal/view/ActionBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1120001

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    return v4

    :cond_0
    iget-object v6, p0, Lcom/android/internal/view/ActionBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v3, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v1, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    iget v6, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v7, 0x2

    if-eq v6, v7, :cond_1

    if-lt v3, v8, :cond_2

    :cond_1
    :goto_0
    return v4

    :cond_2
    const/16 v6, 0x280

    if-lt v3, v6, :cond_3

    if-ge v1, v8, :cond_1

    :cond_3
    move v4, v5

    goto :goto_0
.end method

.method public showsOverflowMenuButton()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
