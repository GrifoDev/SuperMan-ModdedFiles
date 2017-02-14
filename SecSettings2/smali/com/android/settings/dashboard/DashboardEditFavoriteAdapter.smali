.class public Lcom/android/settings/dashboard/DashboardEditFavoriteAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "DashboardEditFavoriteAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/dashboard/DashboardEditFavoriteAdapter$DashboardEditFavoriteTileViewHolder;,
        Lcom/android/settings/dashboard/DashboardEditFavoriteAdapter$IconCache;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/android/settings/dashboard/DashboardEditFavoriteAdapter$DashboardEditFavoriteTileViewHolder;",
        ">;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# static fields
.field public static mCategories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settingslib/drawer/DashboardCategory;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mCache:Lcom/android/settings/dashboard/DashboardEditFavoriteAdapter$IconCache;

.field private final mContext:Landroid/content/Context;

.field private mId:I

.field private final mIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mIsShowingAll:Z

.field private final mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final mTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/android/settings/dashboard/DashboardEditFavoriteAdapter;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardEditFavoriteAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/dashboard/DashboardEditFavoriteAdapter;->mItems:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/dashboard/DashboardEditFavoriteAdapter;->mTypes:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/dashboard/DashboardEditFavoriteAdapter;->mIds:Ljava/util/List;

    iput-object p1, p0, Lcom/android/settings/dashboard/DashboardEditFavoriteAdapter;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/settings/dashboard/DashboardEditFavoriteAdapter$IconCache;

    invoke-direct {v0, p1}, Lcom/android/settings/dashboard/DashboardEditFavoriteAdapter$IconCache;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/dashboard/DashboardEditFavoriteAdapter;->mCache:Lcom/android/settings/dashboard/DashboardEditFavoriteAdapter$IconCache;

    invoke-virtual {p0, v1}, Lcom/android/settings/dashboard/DashboardEditFavoriteAdapter;->setHasStableIds(Z)V

    invoke-virtual {p0, v1}, Lcom/android/settings/dashboard/DashboardEditFavoriteAdapter;->setShowingAll(Z)V

    return-void
.end method

.method private countItem(Ljava/lang/Object;IZI)V
    .locals 2

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardEditFavoriteAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardEditFavoriteAdapter;->mTypes:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardEditFavoriteAdapter;->mIds:Ljava/util/List;

    iget v1, p0, Lcom/android/settings/dashboard/DashboardEditFavoriteAdapter;->mId:I

    add-int/2addr v1, p4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget v0, p0, Lcom/android/settings/dashboard/DashboardEditFavoriteAdapter;->mId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings/dashboard/DashboardEditFavoriteAdapter;->mId:I

    return-void
.end method

.method private onBindCategory(Lcom/android/settings/dashboard/DashboardEditFavoriteAdapter$DashboardEditFavoriteTileViewHolder;Lcom/android/settingslib/drawer/DashboardCategory;)V
    .locals 2

    iget-object v0, p1, Lcom/android/settings/dashboard/DashboardEditFavoriteAdapter$DashboardEditFavoriteTileViewHolder;->title:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/android/settingslib/drawer/DashboardCategory;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private onBindTile(Lcom/android/settings/dashboard/DashboardEditFavoriteAdapter$DashboardEditFavoriteTileViewHolder;Lcom/android/settingslib/drawer/Tile;)V
    .locals 7

    iget-object v4, p1, Lcom/android/settings/dashboard/DashboardEditFavoriteAdapter$DashboardEditFavoriteTileViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/settings/dashboard/DashboardEditFavoriteAdapter;->mCache:Lcom/android/settings/dashboard/DashboardEditFavoriteAdapter$IconCache;

    iget-object v6, p2, Lcom/android/settingslib/drawer/Tile;->icon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v5, v6}, Lcom/android/settings/dashboard/DashboardEditFavoriteAdapter$IconCache;->getIcon(Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v4, p1, Lcom/android/settings/dashboard/DashboardEditFavoriteAdapter$DashboardEditFavoriteTileViewHolder;->title:Landroid/widget/TextView;

    iget-object v5, p2, Lcom/android/settingslib/drawer/Tile;->title:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p1, Lcom/android/settings/dashboard/DashboardEditFavoriteAdapter$DashboardEditFavoriteTileViewHolder;->checkbox:Landroid/widget/CheckBox;

    iget-object v5, p0, Lcom/android/settings/dashboard/DashboardEditFavoriteAdapter;->mContext:Landroid/content/Context;

    invoke-static {v5, p2}, Lcom/android/settings/Utils;->isFavorite(Landroid/content/Context;Lcom/android/settingslib/drawer/Tile;)Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v4, p0, Lcom/android/settings/dashboard/DashboardEditFavoriteAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "font_size"

    const/4 v6, 0x2

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v4, 0x6

    if-le v1, v4, :cond_0

    iget-object v4, p0, Lcom/android/settings/dashboard/DashboardEditFavoriteAdapter;->mContext:Landroid/content/Context;

    invoke-static {v4, v1}, Lcom/android/settings/Utils;->getFontScale(Landroid/content/Context;I)F

    move-result v2

    iget-object v4, p0, Lcom/android/settings/dashboard/DashboardEditFavoriteAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f10030d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    int-to-float v3, v4

    iget-object v4, p1, Lcom/android/settings/dashboard/DashboardEditFavoriteAdapter$DashboardEditFavoriteTileViewHolder;->title:Landroid/widget/TextView;

    mul-float v5, v3, v2

    const/4 v6, 0x1

    invoke-virtual {v4, v6, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_0
    iget-object v4, p2, Lcom/android/settingslib/drawer/Tile;->metaData:Landroid/os/Bundle;

    const-string/jumbo v5, "com.android.settings.category"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/android/settings/dashboard/DashboardEditFavoriteAdapter;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/settings/Utils;->isSupportGraceUXHeroView(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p1, Lcom/android/settings/dashboard/DashboardEditFavoriteAdapter$DashboardEditFavoriteTileViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/settings/dashboard/DashboardEditFavoriteAdapter;->mContext:Landroid/content/Context;

    invoke-static {v5, v0}, Lcom/android/settings/Utils;->getTileIconColor(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v4, v5, v6}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_1
    return-void
.end method

.method private recountItems()V
    .locals 8

    const/16 v7, 0x7d0

    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardEditFavoriteAdapter;->reset()V

    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardEditFavoriteAdapter;->resetCount()V

    const/4 v1, 0x0

    :goto_0
    sget-object v5, Lcom/android/settings/dashboard/DashboardEditFavoriteAdapter;->mCategories:Ljava/util/List;

    if-eqz v5, :cond_3

    sget-object v5, Lcom/android/settings/dashboard/DashboardEditFavoriteAdapter;->mCategories:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_3

    sget-object v5, Lcom/android/settings/dashboard/DashboardEditFavoriteAdapter;->mCategories:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/drawer/DashboardCategory;

    iget-boolean v5, p0, Lcom/android/settings/dashboard/DashboardEditFavoriteAdapter;->mIsShowingAll:Z

    const v6, 0x7f040099

    invoke-direct {p0, v0, v6, v5, v7}, Lcom/android/settings/dashboard/DashboardEditFavoriteAdapter;->countItem(Ljava/lang/Object;IZI)V

    const/4 v2, 0x0

    :goto_1
    iget-object v5, v0, Lcom/android/settingslib/drawer/DashboardCategory;->tiles:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_2

    iget-object v5, v0, Lcom/android/settingslib/drawer/DashboardCategory;->tiles:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settingslib/drawer/Tile;

    if-eqz v3, :cond_1

    iget-object v5, v3, Lcom/android/settingslib/drawer/Tile;->metaData:Landroid/os/Bundle;

    if-eqz v5, :cond_1

    iget-object v5, v3, Lcom/android/settingslib/drawer/Tile;->metaData:Landroid/os/Bundle;

    const-string/jumbo v6, "com.android.settings.tileid"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "vzw_provision_volte"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string/jumbo v5, "wireless_settings"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    iget-boolean v5, p0, Lcom/android/settings/dashboard/DashboardEditFavoriteAdapter;->mIsShowingAll:Z

    const v6, 0x7f04009a

    invoke-direct {p0, v3, v6, v5, v7}, Lcom/android/settings/dashboard/DashboardEditFavoriteAdapter;->countItem(Ljava/lang/Object;IZI)V

    goto :goto_2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardEditFavoriteAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private reset()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardEditFavoriteAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardEditFavoriteAdapter;->mTypes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardEditFavoriteAdapter;->mIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/dashboard/DashboardEditFavoriteAdapter;->mId:I

    return-void
.end method

.method private resetCount()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/dashboard/DashboardEditFavoriteAdapter;->mId:I

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardEditFavoriteAdapter;->mIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardEditFavoriteAdapter;->mIds:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardEditFavoriteAdapter;->mTypes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    check-cast p1, Lcom/android/settings/dashboard/DashboardEditFavoriteAdapter$DashboardEditFavoriteTileViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/dashboard/DashboardEditFavoriteAdapter;->onBindViewHolder(Lcom/android/settings/dashboard/DashboardEditFavoriteAdapter$DashboardEditFavoriteTileViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/android/settings/dashboard/DashboardEditFavoriteAdapter$DashboardEditFavoriteTileViewHolder;I)V
    .locals 3

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardEditFavoriteAdapter;->mTypes:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardEditFavoriteAdapter;->mItems:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/drawer/DashboardCategory;

    invoke-direct {p0, p1, v1}, Lcom/android/settings/dashboard/DashboardEditFavoriteAdapter;->onBindCategory(Lcom/android/settings/dashboard/DashboardEditFavoriteAdapter$DashboardEditFavoriteTileViewHolder;Lcom/android/settingslib/drawer/DashboardCategory;)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardEditFavoriteAdapter;->mItems:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/drawer/Tile;

    invoke-direct {p0, p1, v0}, Lcom/android/settings/dashboard/DashboardEditFavoriteAdapter;->onBindTile(Lcom/android/settings/dashboard/DashboardEditFavoriteAdapter$DashboardEditFavoriteTileViewHolder;Lcom/android/settingslib/drawer/Tile;)V

    iget-object v1, p1, Lcom/android/settings/dashboard/DashboardEditFavoriteAdapter$DashboardEditFavoriteTileViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v1, p1, Lcom/android/settings/dashboard/DashboardEditFavoriteAdapter$DashboardEditFavoriteTileViewHolder;->itemView:Landroid/view/View;

    new-instance v2, Lcom/android/settings/dashboard/DashboardEditFavoriteAdapter$1;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/settings/dashboard/DashboardEditFavoriteAdapter$1;-><init>(Lcom/android/settings/dashboard/DashboardEditFavoriteAdapter;Lcom/android/settings/dashboard/DashboardEditFavoriteAdapter$DashboardEditFavoriteTileViewHolder;Lcom/android/settingslib/drawer/Tile;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f040099
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/dashboard/DashboardEditFavoriteAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/settings/dashboard/DashboardEditFavoriteAdapter$DashboardEditFavoriteTileViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/settings/dashboard/DashboardEditFavoriteAdapter$DashboardEditFavoriteTileViewHolder;
    .locals 3

    new-instance v0, Lcom/android/settings/dashboard/DashboardEditFavoriteAdapter$DashboardEditFavoriteTileViewHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p2, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/dashboard/DashboardEditFavoriteAdapter$DashboardEditFavoriteTileViewHolder;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public setCategories(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/settingslib/drawer/DashboardCategory;",
            ">;)V"
        }
    .end annotation

    sput-object p1, Lcom/android/settings/dashboard/DashboardEditFavoriteAdapter;->mCategories:Ljava/util/List;

    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    iget-object v4, p0, Lcom/android/settings/dashboard/DashboardEditFavoriteAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    const v5, 0x1010435

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v3, v6}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_2

    const/4 v1, 0x0

    :goto_1
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settingslib/drawer/DashboardCategory;

    iget-object v4, v4, Lcom/android/settingslib/drawer/DashboardCategory;->tiles:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settingslib/drawer/DashboardCategory;

    iget-object v4, v4, Lcom/android/settingslib/drawer/DashboardCategory;->tiles:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/drawer/Tile;

    iget-object v4, p0, Lcom/android/settings/dashboard/DashboardEditFavoriteAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v2, Lcom/android/settingslib/drawer/Tile;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, v2, Lcom/android/settingslib/drawer/Tile;->icon:Landroid/graphics/drawable/Icon;

    iget v5, v3, Landroid/util/TypedValue;->data:I

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Icon;->setTint(I)Landroid/graphics/drawable/Icon;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardEditFavoriteAdapter;->recountItems()V

    return-void
.end method

.method public setShowingAll(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/dashboard/DashboardEditFavoriteAdapter;->mIsShowingAll:Z

    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardEditFavoriteAdapter;->recountItems()V

    return-void
.end method
