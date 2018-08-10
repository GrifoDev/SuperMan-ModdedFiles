.class Lcom/samsung/android/settings/search/SearchResultsAdapter;
.super Landroid/widget/BaseAdapter;
.source "SearchResultsAdapter.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mQuery:Ljava/lang/String;

.field private mSearchResultList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/settings/search/SearchResultItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/search/SearchResultsAdapter;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/samsung/android/settings/search/SearchResultsAdapter;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/samsung/android/settings/search/SearchResultsAdapter;->mInflater:Landroid/view/LayoutInflater;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/search/SearchResultsAdapter;->mSearchResultList:Ljava/util/ArrayList;

    return-void
.end method

.method private calculateOptimumPositionForHighlight(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    const/4 v0, -0x1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-direct {p0, p2, p1}, Lcom/samsung/android/settings/search/SearchResultsAdapter;->findOptimumTextKeywordPosition(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :cond_0
    const-string/jumbo v1, "SearchResultsAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "offset: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/settingslib/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method private findOptimumTextKeywordPosition(Ljava/lang/String;Ljava/lang/String;)I
    .locals 15

    new-instance v11, Ljava/util/StringTokenizer;

    const-string/jumbo v13, " "

    move-object/from16 v0, p2

    invoke-direct {v11, v0, v13}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v6, ""

    const/4 v3, -0x1

    const/4 v2, -0x1

    const/4 v5, -0x1

    const/4 v4, -0x1

    const/4 v1, -0x1

    :cond_0
    :goto_0
    invoke-virtual {v11}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-virtual {v11}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    const/4 v14, -0x1

    if-eq v13, v14, :cond_0

    const/4 v7, 0x0

    move-object/from16 v8, p1

    :goto_1
    const-string/jumbo v13, " "

    invoke-virtual {v8, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1

    add-int/lit8 v7, v7, 0x1

    const/4 v13, 0x1

    invoke-virtual {v8, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    :cond_1
    new-instance v12, Ljava/util/StringTokenizer;

    const-string/jumbo v13, " "

    move-object/from16 v0, p1

    invoke-direct {v12, v0, v13}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    invoke-virtual {v12}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-virtual {v12}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_4

    if-ge v1, v7, :cond_2

    move v1, v7

    :cond_2
    const/4 v13, -0x1

    if-eq v1, v13, :cond_7

    move v3, v1

    :cond_3
    return v3

    :cond_4
    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    const/4 v14, -0x1

    if-eq v13, v14, :cond_6

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v13, -0x1

    if-eq v5, v13, :cond_5

    if-lt v5, v2, :cond_6

    :cond_5
    invoke-direct {p0, v9, v6, v10}, Lcom/samsung/android/settings/search/SearchResultsAdapter;->isCurrentStrHasPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_6

    move v5, v2

    move-object v6, v10

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    add-int v4, v7, v13

    :cond_6
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v13

    add-int/lit8 v13, v13, 0x1

    add-int/2addr v7, v13

    goto :goto_2

    :cond_7
    const/4 v13, -0x1

    if-eq v3, v13, :cond_8

    if-le v3, v4, :cond_0

    :cond_8
    move v3, v4

    goto/16 :goto_0
.end method

.method private getPrefixCharForIndianString(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    if-eqz v0, :cond_0

    if-nez p3, :cond_1

    :cond_0
    return-object v3

    :cond_1
    if-eqz p2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-static {v0, p2, v2}, Landroid/text/TextUtils;->semGetPrefixCharForSpan(Landroid/text/TextPaint;Ljava/lang/CharSequence;[C)[C

    move-result-object v1

    if-nez v1, :cond_2

    return-object v3

    :cond_2
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    return-object v2
.end method

.method private getViewByMenuType(Landroid/view/View;Landroid/view/ViewGroup;Lcom/samsung/android/settings/search/SearchResultItem;)Landroid/view/View;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    if-eqz p1, :cond_0

    iget v1, p3, Lcom/samsung/android/settings/search/SearchResultItem;->menu_type:I

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v1, v0, :cond_0

    return-object p1

    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/samsung/android/settings/search/SearchResultsAdapter;->inflateResultView(Landroid/view/ViewGroup;Lcom/samsung/android/settings/search/SearchResultItem;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private inflateResultView(Landroid/view/ViewGroup;Lcom/samsung/android/settings/search/SearchResultItem;)Landroid/view/View;
    .locals 4
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const/4 v3, 0x0

    iget v1, p2, Lcom/samsung/android/settings/search/SearchResultItem;->menu_type:I

    const/4 v2, -0x2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/search/SearchResultsAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0d02a7

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    :goto_0
    iget v1, p2, Lcom/samsung/android/settings/search/SearchResultItem;->menu_type:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-object v0

    :cond_0
    iget v1, p2, Lcom/samsung/android/settings/search/SearchResultItem;->menu_type:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/search/SearchResultsAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0d02a6

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/search/SearchResultsAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0d02a9

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method private isCurrentStrHasPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10

    const/4 v9, -0x1

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-eq v3, v9, :cond_0

    if-ne v4, v9, :cond_1

    :cond_0
    return v8

    :cond_1
    if-le v3, v4, :cond_2

    return v8

    :cond_2
    if-ne v3, v4, :cond_7

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v5, v6, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    :goto_0
    const/4 v1, 0x0

    :goto_1
    add-int/lit8 v5, v0, -0x1

    if-ge v1, v5, :cond_6

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {p3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    sub-int v2, v5, v6

    if-gez v2, :cond_4

    return v7

    :cond_3
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_0

    :cond_4
    if-lez v2, :cond_5

    return v8

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    return v7

    :cond_7
    return v7
.end method

.method private setIconView(Lcom/samsung/android/settings/search/SearchResultItem;Landroid/widget/ImageView;)V
    .locals 8

    const v7, 0x7f080163

    const/4 v6, 0x0

    const-string/jumbo v4, "com.android.settings"

    iget-object v5, p1, Lcom/samsung/android/settings/search/SearchResultItem;->className:Ljava/lang/String;

    if-nez v5, :cond_0

    iget-object v5, p1, Lcom/samsung/android/settings/search/SearchResultItem;->targetPkg:Ljava/lang/String;

    if-eqz v5, :cond_0

    iget-object v4, p1, Lcom/samsung/android/settings/search/SearchResultItem;->targetPkg:Ljava/lang/String;

    :cond_0
    if-eqz v4, :cond_7

    iget v5, p1, Lcom/samsung/android/settings/search/SearchResultItem;->iconResId:I

    if-eq v5, v7, :cond_7

    :try_start_0
    const-string/jumbo v5, "com.android.settings"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string/jumbo v5, "com.google.android.packageinstaller"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string/jumbo v5, "com.samsung.android.scloud"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string/jumbo v5, "com.samsung.android.game.gametools"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string/jumbo v5, "com.sec.android.app.safetyassurance"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string/jumbo v5, "com.samsung.android.app.aodservice"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_1
    const-string/jumbo v4, "com.android.settings"

    iget-object v5, p0, Lcom/samsung/android/settings/search/SearchResultsAdapter;->mContext:Landroid/content/Context;

    iget v6, p1, Lcom/samsung/android/settings/search/SearchResultItem;->iconResId:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    const/4 v5, 0x0

    invoke-virtual {p2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v5, p0, Lcom/samsung/android/settings/search/SearchResultsAdapter;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/settings/Utils;->isSupportGraceUXHeroView(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/samsung/android/settings/search/SearchResultsAdapter;->mContext:Landroid/content/Context;

    iget-object v6, p1, Lcom/samsung/android/settings/search/SearchResultItem;->category_id:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/android/settings/Utils;->getTileIconColor(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p2, v5, v6}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    const-string/jumbo v5, "com.google.android.gms"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const v5, 0x7f0806af

    iput v5, p1, Lcom/samsung/android/settings/search/SearchResultItem;->iconResId:I

    iget-object v5, p0, Lcom/samsung/android/settings/search/SearchResultsAdapter;->mContext:Landroid/content/Context;

    iget v6, p1, Lcom/samsung/android/settings/search/SearchResultItem;->iconResId:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_4
    iget-object v5, p0, Lcom/samsung/android/settings/search/SearchResultsAdapter;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    invoke-virtual {v5, v4, v6}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v3

    iget v5, p1, Lcom/samsung/android/settings/search/SearchResultItem;->iconResId:I

    invoke-virtual {v3, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_5
    iget-object v5, p0, Lcom/samsung/android/settings/search/SearchResultsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string/jumbo v5, "com.sec.android.app.desktoplauncher"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/samsung/android/settings/search/SearchResultsAdapter;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "samsung_dex_settings"

    invoke-static {v5, v6}, Lcom/android/settings/Utils;->getOutsideTileIconColor(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p2, v5, v6}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    :catch_0
    move-exception v2

    const-string/jumbo v5, "SearchResultsAdapter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Resources.NotFoundException: Cannot load Drawable for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Lcom/samsung/android/settings/search/SearchResultItem;->title:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/settingslib/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    :try_start_1
    iget-object v5, p0, Lcom/samsung/android/settings/search/SearchResultsAdapter;->mContext:Landroid/content/Context;

    iget-object v6, p1, Lcom/samsung/android/settings/search/SearchResultItem;->key:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/android/settings/Utils;->getOutsideTileIconColor(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p2, v5, v6}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    const-string/jumbo v5, "SearchResultsAdapter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "PackageManager.NameNotFoundException: Cannot load Drawable for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Lcom/samsung/android/settings/search/SearchResultItem;->title:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/settingslib/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_7
    const/4 v5, 0x4

    invoke-virtual {p2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p2, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p2, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_1
.end method

.method private setQueryText(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const/16 v7, 0xd2

    const/4 v6, 0x5

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {p1}, Landroid/widget/TextView;->getTextAlignment()I

    move-result v3

    if-ne v3, v5, :cond_0

    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setTextAlignment(I)V

    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-gt v3, v7, :cond_3

    const/4 v1, 0x0

    invoke-direct {p0, p3, p2}, Lcom/samsung/android/settings/search/SearchResultsAdapter;->calculateOptimumPositionForHighlight(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_2

    invoke-virtual {p0, p3, p2, p1, v2}, Lcom/samsung/android/settings/search/SearchResultsAdapter;->makeSpanString(Ljava/lang/String;Ljava/lang/String;Landroid/widget/TextView;I)Landroid/text/SpannableString;

    move-result-object v1

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p1, v3, v0, v4}, Landroid/widget/TextView;->semSetEllipsize(Landroid/text/TextUtils$TruncateAt;II)V

    :goto_0
    const-string/jumbo v3, "SearchResultsAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "spanStr: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/settingslib/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_1
    return-void

    :cond_2
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, p2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p2, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Landroid/widget/TextView;->getTextAlignment()I

    move-result v3

    if-ne v3, v5, :cond_5

    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setTextAlignment(I)V

    :cond_5
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/search/SearchResultsAdapter;->mSearchResultList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/settings/search/SearchResultsAdapter;->mSearchResultList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/search/SearchResultsAdapter;->mSearchResultList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return-object v1

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/search/SearchResultsAdapter;->mSearchResultList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/search/SearchResultsAdapter;->mSearchResultList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 4

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/search/SearchResultsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcom/samsung/android/settings/search/SearchResultItem;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/samsung/android/settings/search/SearchResultItem;

    iget v1, v0, Lcom/samsung/android/settings/search/SearchResultItem;->menu_type:I

    int-to-long v2, v1

    return-wide v2

    :cond_0
    const-wide/16 v2, 0x0

    return-wide v2
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/search/SearchResultsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settings/search/SearchResultItem;

    if-nez v3, :cond_0

    const-string/jumbo v8, "SearchResultsAdapter"

    const-string/jumbo v9, "result is null."

    invoke-static {v8, v9}, Lcom/samsung/android/settingslib/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v8, 0x0

    return-object v8

    :cond_0
    invoke-direct {p0, p2, p3, v3}, Lcom/samsung/android/settings/search/SearchResultsAdapter;->getViewByMenuType(Landroid/view/View;Landroid/view/ViewGroup;Lcom/samsung/android/settings/search/SearchResultItem;)Landroid/view/View;

    move-result-object v7

    iget v8, v3, Lcom/samsung/android/settings/search/SearchResultItem;->menu_type:I

    const/4 v9, -0x2

    if-ne v8, v9, :cond_1

    const v8, 0x7f0a0157

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v8, v3, Lcom/samsung/android/settings/search/SearchResultItem;->title:Ljava/lang/String;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v8, 0x7f0a03fa

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    invoke-direct {p0, v3, v8}, Lcom/samsung/android/settings/search/SearchResultsAdapter;->setIconView(Lcom/samsung/android/settings/search/SearchResultItem;Landroid/widget/ImageView;)V

    return-object v7

    :cond_1
    iget v8, v3, Lcom/samsung/android/settings/search/SearchResultItem;->menu_type:I

    const/4 v9, -0x1

    if-ne v8, v9, :cond_2

    const v8, 0x7f0a0157

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v8, v3, Lcom/samsung/android/settings/search/SearchResultItem;->title:Ljava/lang/String;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object v7

    :cond_2
    const v8, 0x7f0a08d1

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v8, 0x7f0a0825

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v8, 0x7f0a03fa

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v8, 0x7f0a0886

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Switch;

    iget-object v8, v3, Lcom/samsung/android/settings/search/SearchResultItem;->title:Ljava/lang/String;

    iget-object v9, p0, Lcom/samsung/android/settings/search/SearchResultsAdapter;->mQuery:Ljava/lang/String;

    invoke-direct {p0, v6, v8, v9}, Lcom/samsung/android/settings/search/SearchResultsAdapter;->setQueryText(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, v3, Lcom/samsung/android/settings/search/SearchResultItem;->summary:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/16 v8, 0x8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    iget v8, v3, Lcom/samsung/android/settings/search/SearchResultItem;->viewType:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_4

    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Landroid/widget/Switch;->setVisibility(I)V

    iget-object v2, v3, Lcom/samsung/android/settings/search/SearchResultItem;->payload:Lcom/android/settings/search2/ResultPayload;

    check-cast v2, Lcom/android/settings/search2/InlineSwitchPayload;

    iget-object v8, p0, Lcom/samsung/android/settings/search/SearchResultsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v8}, Lcom/android/settings/search2/InlineSwitchPayload;->getSwitchValue(Landroid/content/Context;)Z

    move-result v8

    invoke-virtual {v4, v8}, Landroid/widget/Switch;->setChecked(Z)V

    new-instance v8, Lcom/samsung/android/settings/search/-$Lambda$O8V8cDoGs1GN2vcZcarzL-6QhRA;

    invoke-direct {v8, p0, v2}, Lcom/samsung/android/settings/search/-$Lambda$O8V8cDoGs1GN2vcZcarzL-6QhRA;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v4, v8}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const/16 v8, 0x8

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const v8, 0x7f080163

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :goto_1
    return-object v7

    :cond_3
    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v8, v3, Lcom/samsung/android/settings/search/SearchResultItem;->summary:Ljava/lang/String;

    iget-object v9, p0, Lcom/samsung/android/settings/search/SearchResultsAdapter;->mQuery:Ljava/lang/String;

    invoke-direct {p0, v5, v8, v9}, Lcom/samsung/android/settings/search/SearchResultsAdapter;->setQueryText(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const/16 v8, 0x8

    invoke-virtual {v4, v8}, Landroid/widget/Switch;->setVisibility(I)V

    goto :goto_1
.end method

.method public isEnabled(I)Z
    .locals 4

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/search/SearchResultsAdapter;->getItemId(I)J

    move-result-wide v0

    const-wide/16 v2, -0x2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/search/SearchResultsAdapter;->getItemId(I)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/BaseAdapter;->isEnabled(I)Z

    move-result v0

    return v0
.end method

.method synthetic lambda$-com_samsung_android_settings_search_SearchResultsAdapter_12046(Lcom/android/settings/search2/InlineSwitchPayload;Landroid/widget/CompoundButton;Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/search/SearchResultsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0, p3}, Lcom/android/settings/search2/InlineSwitchPayload;->setSwitchValue(Landroid/content/Context;Z)V

    return-void
.end method

.method protected makeSpanString(Ljava/lang/String;Ljava/lang/String;Landroid/widget/TextView;I)Landroid/text/SpannableString;
    .locals 16

    new-instance v7, Landroid/text/SpannableString;

    move-object/from16 v0, p2

    invoke-direct {v7, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v8, Ljava/util/StringTokenizer;

    const-string/jumbo v12, " "

    move-object/from16 v0, p1

    invoke-direct {v8, v0, v12}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/settings/search/SearchResultsAdapter;->mContext:Landroid/content/Context;

    invoke-static {v12}, Lcom/android/settings/Utils;->getAutoCompleteColor(Landroid/content/Context;)I

    move-result v3

    if-lez p4, :cond_0

    move-object/from16 v0, p2

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    :cond_0
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v10, p2

    const/4 v2, 0x0

    :goto_0
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1, v10, v11}, Lcom/samsung/android/settings/search/SearchResultsAdapter;->getPrefixCharForIndianString(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_1

    move-object v11, v5

    :cond_1
    const/4 v9, 0x0

    const/4 v4, 0x0

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v13

    if-ne v12, v13, :cond_2

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v12

    add-int v4, v9, v12

    :goto_1
    if-ltz v9, :cond_0

    new-instance v12, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v12, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    add-int v13, p4, v9

    add-int/2addr v13, v2

    add-int v14, p4, v4

    add-int/2addr v14, v2

    const/16 v15, 0x21

    invoke-virtual {v7, v12, v13, v14, v15}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v10, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    add-int/2addr v2, v4

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    const/4 v13, -0x1

    if-eq v12, v13, :cond_0

    goto :goto_0

    :cond_2
    invoke-virtual {v10, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v12

    add-int v4, v9, v12

    goto :goto_1

    :cond_3
    return-object v7
.end method

.method public setQuery(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/search/SearchResultsAdapter;->mQuery:Ljava/lang/String;

    return-void
.end method

.method public setSearchResult(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/settings/search/SearchResultItem;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/settings/search/SearchResultsAdapter;->mSearchResultList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/samsung/android/settings/search/SearchResultsAdapter;->mSearchResultList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/search/SearchResultsAdapter;->notifyDataSetChanged()V

    return-void
.end method
