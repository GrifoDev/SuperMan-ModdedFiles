.class Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList$AppsAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ScreenSizePreviewSettingsList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AppsAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList$TileItem;",
        ">;"
    }
.end annotation


# instance fields
.field private final mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    const-string/jumbo v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList$AppsAdapter;->mInflater:Landroid/view/LayoutInflater;

    invoke-direct {p0}, Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList$AppsAdapter;->loadTiles()V

    return-void
.end method

.method private createAppListInfoRow(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    iget-object v1, p0, Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList$AppsAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0d0282

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private loadTiles()V
    .locals 14

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList$AppsAdapter;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v12

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList$AppsAdapter;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/settings/overlay/FeatureFactory;->getDashboardFeatureProvider(Landroid/content/Context;)Lcom/android/settings/dashboard/DashboardFeatureProvider;

    move-result-object v12

    invoke-static {v12}, Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList;->-set0(Lcom/android/settings/dashboard/DashboardFeatureProvider;)Lcom/android/settings/dashboard/DashboardFeatureProvider;

    invoke-static {}, Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList;->-get0()Lcom/android/settings/dashboard/DashboardFeatureProvider;

    move-result-object v12

    invoke-interface {v12}, Lcom/android/settings/dashboard/DashboardFeatureProvider;->getAllCategories()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList$AppsAdapter;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12}, Lcom/android/settings/Utils;->isSupportGraceUXHeroView(Landroid/content/Context;)Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-static {}, Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList;->-get6()[Ljava/lang/String;

    move-result-object v9

    :goto_0
    const/4 v7, 0x0

    const/4 v4, 0x0

    :goto_1
    array-length v12, v9

    if-ge v4, v12, :cond_8

    const/4 v2, 0x0

    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v12

    if-ge v2, v12, :cond_4

    const/4 v3, 0x0

    :goto_3
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/settingslib/drawer/DashboardCategory;

    invoke-virtual {v12}, Lcom/android/settingslib/drawer/DashboardCategory;->getTilesCount()I

    move-result v12

    if-ge v3, v12, :cond_3

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/settingslib/drawer/DashboardCategory;

    invoke-virtual {v12, v3}, Lcom/android/settingslib/drawer/DashboardCategory;->getTile(I)Lcom/android/settingslib/drawer/Tile;

    move-result-object v8

    iget-object v12, v8, Lcom/android/settingslib/drawer/Tile;->metaData:Landroid/os/Bundle;

    const-string/jumbo v13, "com.android.settings.tileid"

    invoke-virtual {v12, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_6

    aget-object v12, v9, v4

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    const/4 v11, 0x0

    const/4 v6, 0x0

    const/4 v1, 0x0

    iget-object v12, v8, Lcom/android/settingslib/drawer/Tile;->title:Ljava/lang/CharSequence;

    if-eqz v12, :cond_0

    iget-object v12, v8, Lcom/android/settingslib/drawer/Tile;->title:Ljava/lang/CharSequence;

    invoke-interface {v12}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    :cond_0
    iget-object v12, v8, Lcom/android/settingslib/drawer/Tile;->summary:Ljava/lang/CharSequence;

    if-eqz v12, :cond_1

    iget-object v12, v8, Lcom/android/settingslib/drawer/Tile;->summary:Ljava/lang/CharSequence;

    invoke-interface {v12}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_1
    iget-object v12, v8, Lcom/android/settingslib/drawer/Tile;->icon:Landroid/graphics/drawable/Icon;

    if-eqz v12, :cond_2

    iget-object v12, v8, Lcom/android/settingslib/drawer/Tile;->icon:Landroid/graphics/drawable/Icon;

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList$AppsAdapter;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_2
    new-instance v10, Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList$TileItem;

    iget-object v12, v8, Lcom/android/settingslib/drawer/Tile;->category:Ljava/lang/String;

    invoke-direct {v10, v11, v6, v12, v1}, Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList$TileItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    if-eqz v7, :cond_7

    aget-object v12, v9, v4

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    const/4 v7, 0x0

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_5
    invoke-static {}, Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList;->-get5()[Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_8
    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList$AppsAdapter;->addAll(Ljava/util/Collection;)V

    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9

    const/16 v8, 0x8

    const/4 v7, 0x0

    const-string/jumbo v5, "SettingsListView"

    const-string/jumbo v6, "getView():"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_3

    move-object v2, p2

    :goto_0
    const v5, 0x1020016

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x1020010

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v5, 0x1020006

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v5, 0x7f0a08c7

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList$AppsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList$TileItem;

    iget-object v5, v5, Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList$TileItem;->mTitle:Ljava/lang/String;

    if-eqz v5, :cond_0

    invoke-static {}, Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList;->-get2()I

    move-result v5

    int-to-float v5, v5

    invoke-static {}, Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList;->-get1()F

    move-result v6

    mul-float/2addr v5, v6

    const/4 v6, 0x2

    invoke-virtual {v4, v6, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-static {}, Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList;->-get3()Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v4, v5, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList$AppsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList$TileItem;

    iget-object v5, v5, Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList$TileItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList$AppsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList$TileItem;

    iget-object v5, v5, Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList$TileItem;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList$AppsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList$TileItem;

    iget-object v5, v5, Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList$TileItem;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList$AppsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList$TileItem;

    iget-object v5, v5, Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList$TileItem;->mCategory:Ljava/lang/String;

    if-eqz v5, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList$AppsAdapter;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/Utils;->isSupportGraceUXHeroView(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList$AppsAdapter;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList$AppsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList$TileItem;

    iget-object v5, v5, Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList$TileItem;->mCategory:Ljava/lang/String;

    invoke-static {v6, v5}, Lcom/android/settings/Utils;->getTileIconColor(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v5, v6}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_1
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList;->-get4()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    :goto_1
    return-object v2

    :cond_3
    invoke-direct {p0, p3}, Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList$AppsAdapter;->createAppListInfoRow(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    goto/16 :goto_0

    :cond_4
    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method public isEnabled(I)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
