.class public Lcom/android/settings/dashboard/DashboardData;
.super Ljava/lang/Object;
.source "DashboardData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/dashboard/DashboardData$Builder;,
        Lcom/android/settings/dashboard/DashboardData$Item;
    }
.end annotation


# instance fields
.field private final mCategories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settingslib/drawer/DashboardCategory;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mId:I

.field private final mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/dashboard/DashboardData$Item;",
            ">;"
        }
    .end annotation
.end field

.field public mSuggestionMode:[I

.field private mSuggestionParser:Lcom/android/settingslib/SuggestionParser;

.field private final mSuggestions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/android/settingslib/drawer/Tile;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/android/settings/dashboard/DashboardData;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardData;->mCategories:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings/dashboard/DashboardData;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardData;->mSuggestions:Ljava/util/ArrayList;

    return-object v0
.end method

.method private constructor <init>(Lcom/android/settings/dashboard/DashboardData$Builder;)V
    .locals 3

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    filled-new-array {v0, v1, v1}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dashboard/DashboardData;->mSuggestionMode:[I

    invoke-static {p1}, Lcom/android/settings/dashboard/DashboardData$Builder;->-get0(Lcom/android/settings/dashboard/DashboardData$Builder;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dashboard/DashboardData;->mCategories:Ljava/util/List;

    invoke-static {p1}, Lcom/android/settings/dashboard/DashboardData$Builder;->-get2(Lcom/android/settings/dashboard/DashboardData$Builder;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dashboard/DashboardData;->mSuggestions:Ljava/util/ArrayList;

    iget-object v0, p1, Lcom/android/settings/dashboard/DashboardData$Builder;->mSuggestionMode:[I

    iput-object v0, p0, Lcom/android/settings/dashboard/DashboardData;->mSuggestionMode:[I

    invoke-static {p1}, Lcom/android/settings/dashboard/DashboardData$Builder;->-get1(Lcom/android/settings/dashboard/DashboardData$Builder;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dashboard/DashboardData;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "DashboardData"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mContext : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/dashboard/DashboardData;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/dashboard/DashboardData;->mItems:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/dashboard/DashboardData;->mId:I

    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardData;->buildItemsData()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/dashboard/DashboardData$Builder;Lcom/android/settings/dashboard/DashboardData;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/dashboard/DashboardData;-><init>(Lcom/android/settings/dashboard/DashboardData$Builder;)V

    return-void
.end method

.method private buildItemsData()V
    .locals 13

    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardData;->resetCount()V

    iget-object v8, p0, Lcom/android/settings/dashboard/DashboardData;->mSuggestions:Ljava/util/ArrayList;

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/android/settings/dashboard/DashboardData;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/settings/Utils;->isEnabledUltraPowerSaving(Landroid/content/Context;)Z

    move-result v8

    xor-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_3

    const/4 v1, 0x0

    new-instance v8, Lcom/android/settingslib/SuggestionParser;

    iget-object v9, p0, Lcom/android/settings/dashboard/DashboardData;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/android/settings/dashboard/DashboardData;->mContext:Landroid/content/Context;

    const-string/jumbo v11, "suggestions"

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v10

    const v11, 0x7f150117

    invoke-direct {v8, v9, v10, v11}, Lcom/android/settingslib/SuggestionParser;-><init>(Landroid/content/Context;Landroid/content/SharedPreferences;I)V

    iput-object v8, p0, Lcom/android/settings/dashboard/DashboardData;->mSuggestionParser:Lcom/android/settingslib/SuggestionParser;

    const/4 v2, 0x0

    :goto_0
    iget-object v8, p0, Lcom/android/settings/dashboard/DashboardData;->mSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v2, v8, :cond_3

    iget-object v8, p0, Lcom/android/settings/dashboard/DashboardData;->mSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    const-string/jumbo v8, "DashboardData"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "hasSettingsSuggestion("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ") : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_0

    iget-object v9, p0, Lcom/android/settings/dashboard/DashboardData;->mSuggestionParser:Lcom/android/settingslib/SuggestionParser;

    const/4 v8, 0x0

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/settingslib/drawer/Tile;

    iget-object v8, v8, Lcom/android/settingslib/drawer/Tile;->category:Ljava/lang/String;

    invoke-virtual {v9, v8}, Lcom/android/settingslib/SuggestionParser;->isCategoryDone(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    const/4 v8, 0x0

    const v9, 0x7f0d02f7

    const/4 v10, 0x1

    const/16 v11, 0x513

    invoke-direct {p0, v8, v9, v10, v11}, Lcom/android/settings/dashboard/DashboardData;->countItem(Ljava/lang/Object;IZI)V

    const/4 v1, 0x1

    :cond_2
    add-int/lit16 v8, v2, 0x578

    const v9, 0x7f0d02f8

    const/4 v10, 0x1

    invoke-direct {p0, v5, v9, v10, v8}, Lcom/android/settings/dashboard/DashboardData;->countItem(Ljava/lang/Object;IZI)V

    const-string/jumbo v8, "DashboardData"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "hasSettingsSuggestion("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ") header id : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0x578

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v8, v2, 0x1

    mul-int/lit8 v8, v8, 0x14

    add-int/lit16 v8, v8, 0x3e8

    const/4 v9, 0x0

    const v10, 0x7f0d02f7

    const/4 v11, 0x1

    invoke-direct {p0, v9, v10, v11, v8}, Lcom/android/settings/dashboard/DashboardData;->countItem(Ljava/lang/Object;IZI)V

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardData;->resetCount()V

    const/4 v2, 0x0

    :goto_2
    iget-object v8, p0, Lcom/android/settings/dashboard/DashboardData;->mCategories:Ljava/util/List;

    if-eqz v8, :cond_8

    iget-object v8, p0, Lcom/android/settings/dashboard/DashboardData;->mCategories:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v2, v8, :cond_8

    iget-object v8, p0, Lcom/android/settings/dashboard/DashboardData;->mCategories:Ljava/util/List;

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/drawer/DashboardCategory;

    const-string/jumbo v8, "DashboardData"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "buildItemsData(), category("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ") : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v0, Lcom/android/settingslib/drawer/DashboardCategory;->title:Ljava/lang/CharSequence;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/android/settings/dashboard/DashboardData;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/settings/Utils;->isSupportGraceUXHeroView(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/android/settings/dashboard/DashboardData;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/settings/Utils;->isEnabledUltraPowerSaving(Landroid/content/Context;)Z

    move-result v8

    xor-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_4

    iget-object v8, v0, Lcom/android/settingslib/drawer/DashboardCategory;->title:Ljava/lang/CharSequence;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    xor-int/lit8 v8, v8, 0x1

    const v9, 0x7f0d00a9

    const/16 v10, 0x7d0

    invoke-direct {p0, v0, v9, v8, v10}, Lcom/android/settings/dashboard/DashboardData;->countItem(Ljava/lang/Object;IZI)V

    :cond_4
    const/4 v3, 0x0

    :goto_3
    iget-object v8, v0, Lcom/android/settingslib/drawer/DashboardCategory;->tiles:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v3, v8, :cond_7

    iget-object v8, v0, Lcom/android/settingslib/drawer/DashboardCategory;->tiles:Ljava/util/List;

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settingslib/drawer/Tile;

    iget-object v8, v6, Lcom/android/settingslib/drawer/Tile;->metaData:Landroid/os/Bundle;

    const-string/jumbo v9, "com.android.settings.support"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v8, v6, Lcom/android/settingslib/drawer/Tile;->metaData:Landroid/os/Bundle;

    const-string/jumbo v9, "com.android.settings.tileid"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, v6, Lcom/android/settingslib/drawer/Tile;->action:Ljava/lang/String;

    const-string/jumbo v9, "com.android.settings.action.SETTINGS"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    if-eqz v4, :cond_6

    const-string/jumbo v8, "Quick"

    invoke-virtual {v4, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    xor-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_6

    :cond_5
    const v8, 0x7f0d00af

    const/4 v9, 0x1

    const/16 v10, 0x7d0

    invoke-direct {p0, v6, v8, v9, v10}, Lcom/android/settings/dashboard/DashboardData;->countItem(Ljava/lang/Object;IZI)V

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2

    :cond_8
    iget-object v8, p0, Lcom/android/settings/dashboard/DashboardData;->mCategories:Ljava/util/List;

    invoke-virtual {p0, v8}, Lcom/android/settings/dashboard/DashboardData;->updateTileList(Ljava/util/List;)V

    return-void
.end method

.method private countItem(Ljava/lang/Object;IZI)V
    .locals 4

    const/4 v3, 0x0

    if-eqz p3, :cond_0

    const/16 v0, 0x3e8

    if-lt p4, v0, :cond_1

    const/16 v0, 0x640

    if-gt p4, v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardData;->mItems:Ljava/util/List;

    new-instance v1, Lcom/android/settings/dashboard/DashboardData$Item;

    invoke-direct {v1, p1, p2, p4, v3}, Lcom/android/settings/dashboard/DashboardData$Item;-><init>(Ljava/lang/Object;IIZ)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_0
    iget v0, p0, Lcom/android/settings/dashboard/DashboardData;->mId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings/dashboard/DashboardData;->mId:I

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardData;->mItems:Ljava/util/List;

    new-instance v1, Lcom/android/settings/dashboard/DashboardData$Item;

    iget v2, p0, Lcom/android/settings/dashboard/DashboardData;->mId:I

    add-int/2addr v2, p4

    invoke-direct {v1, p1, p2, v2, v3}, Lcom/android/settings/dashboard/DashboardData$Item;-><init>(Ljava/lang/Object;IIZ)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private resetCount()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/dashboard/DashboardData;->mId:I

    return-void
.end method

.method private setRoamingTile(Lcom/android/settingslib/drawer/Tile;)Lcom/android/settingslib/drawer/Tile;
    .locals 3

    const v2, 0x7f121bc7

    const v1, 0x7f120f75

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticKTTModel()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticOPENModel()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iput v1, p1, Lcom/android/settingslib/drawer/Tile;->titleRes:I

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardData;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/settingslib/drawer/Tile;->title:Ljava/lang/CharSequence;

    :goto_0
    return-object p1

    :cond_1
    iput v2, p1, Lcom/android/settingslib/drawer/Tile;->titleRes:I

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardData;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/settingslib/drawer/Tile;->title:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method private setSoftwareUpdateTile(Lcom/android/settingslib/drawer/Tile;)Lcom/android/settingslib/drawer/Tile;
    .locals 6

    const v5, 0x7f121b67

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v2

    const-string/jumbo v3, "CscFeature_SyncML_ConfigGroupOpCode"

    const-string/jumbo v4, ""

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "USOpen"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    :goto_0
    invoke-static {}, Lcom/android/settings/Utils;->isSprModel()Z

    move-result v2

    if-eqz v2, :cond_0

    xor-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iput v5, p1, Lcom/android/settingslib/drawer/Tile;->titleRes:I

    iget-object v2, p0, Lcom/android/settings/dashboard/DashboardData;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/android/settingslib/drawer/Tile;->title:Ljava/lang/CharSequence;

    :cond_0
    return-object p1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private updateTile(Lcom/android/settingslib/drawer/Tile;)Lcom/android/settingslib/drawer/Tile;
    .locals 3

    const v2, 0x7f1219dd

    const v1, 0x7f1219f4

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardData;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isEnabledUltraPowerSaving(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput v1, p1, Lcom/android/settingslib/drawer/Tile;->titleRes:I

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardData;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/settingslib/drawer/Tile;->title:Ljava/lang/CharSequence;

    :goto_0
    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardData;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isEnableIntensity(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardData;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->hasHaptic(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iput v2, p1, Lcom/android/settingslib/drawer/Tile;->titleRes:I

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardData;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/settingslib/drawer/Tile;->title:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_2
    iput v1, p1, Lcom/android/settingslib/drawer/Tile;->titleRes:I

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardData;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/settingslib/drawer/Tile;->title:Ljava/lang/CharSequence;

    goto :goto_0
.end method


# virtual methods
.method public getCategories()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/settingslib/drawer/DashboardCategory;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardData;->mCategories:Ljava/util/List;

    return-object v0
.end method

.method public getItemEntityById(J)Ljava/lang/Object;
    .locals 5

    iget-object v2, p0, Lcom/android/settings/dashboard/DashboardData;->mItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/dashboard/DashboardData$Item;

    iget v2, v0, Lcom/android/settings/dashboard/DashboardData$Item;->id:I

    int-to-long v2, v2

    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    iget-object v2, v0, Lcom/android/settings/dashboard/DashboardData$Item;->entity:Ljava/lang/Object;

    return-object v2

    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method public getItemEntityByPosition(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardData;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/dashboard/DashboardData$Item;

    iget-object v0, v0, Lcom/android/settings/dashboard/DashboardData$Item;->entity:Ljava/lang/Object;

    return-object v0
.end method

.method public getItemIdByPosition(I)I
    .locals 1

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardData;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/dashboard/DashboardData$Item;

    iget v0, v0, Lcom/android/settings/dashboard/DashboardData$Item;->id:I

    return v0
.end method

.method public getItemTypeByPosition(I)I
    .locals 1

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardData;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/dashboard/DashboardData$Item;

    iget v0, v0, Lcom/android/settings/dashboard/DashboardData$Item;->type:I

    return v0
.end method

.method public getPositionByTile(Lcom/android/settingslib/drawer/Tile;)I
    .locals 5

    iget-object v3, p0, Lcom/android/settings/dashboard/DashboardData;->mItems:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_2

    iget-object v3, p0, Lcom/android/settings/dashboard/DashboardData;->mItems:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/dashboard/DashboardData$Item;

    iget-object v0, v3, Lcom/android/settings/dashboard/DashboardData$Item;->entity:Ljava/lang/Object;

    if-ne v0, p1, :cond_0

    return v1

    :cond_0
    instance-of v3, v0, Lcom/android/settingslib/drawer/Tile;

    if-eqz v3, :cond_1

    iget-object v3, p1, Lcom/android/settingslib/drawer/Tile;->title:Ljava/lang/CharSequence;

    check-cast v0, Lcom/android/settingslib/drawer/Tile;

    iget-object v4, v0, Lcom/android/settingslib/drawer/Tile;->title:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, -0x1

    return v3
.end method

.method public getSuggestionMode(I)I
    .locals 1

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardData;->mSuggestionMode:[I

    aget v0, v0, p1

    return v0
.end method

.method public getSuggestions()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/android/settingslib/drawer/Tile;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardData;->mSuggestions:Ljava/util/ArrayList;

    return-object v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardData;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public updateTileList(Ljava/util/List;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/settingslib/drawer/DashboardCategory;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/dashboard/DashboardData;->mContext:Landroid/content/Context;

    invoke-static {v12}, Lcom/android/settings/Utils;->isEnabledUltraPowerSaving(Landroid/content/Context;)Z

    move-result v6

    const/4 v5, 0x0

    :goto_0
    if-eqz p1, :cond_12

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v12

    if-ge v5, v12, :cond_12

    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/drawer/DashboardCategory;

    const/4 v7, 0x0

    :goto_1
    iget-object v12, v1, Lcom/android/settingslib/drawer/DashboardCategory;->tiles:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-ge v7, v12, :cond_11

    iget-object v12, v1, Lcom/android/settingslib/drawer/DashboardCategory;->tiles:Ljava/util/List;

    invoke-interface {v12, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/settingslib/drawer/Tile;

    iget-object v12, v10, Lcom/android/settingslib/drawer/Tile;->metaData:Landroid/os/Bundle;

    const-string/jumbo v13, "com.android.settings.support"

    invoke-virtual {v12, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iget-object v12, v10, Lcom/android/settingslib/drawer/Tile;->metaData:Landroid/os/Bundle;

    const-string/jumbo v13, "com.android.settings.tileid"

    invoke-virtual {v12, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "system_update"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/settings/dashboard/DashboardData;->setSoftwareUpdateTile(Lcom/android/settingslib/drawer/Tile;)Lcom/android/settingslib/drawer/Tile;

    :cond_0
    :goto_2
    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/dashboard/DashboardData;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v12

    iget-object v13, v10, Lcom/android/settingslib/drawer/Tile;->intent:Landroid/content/Intent;

    invoke-virtual {v13}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1

    iget-object v12, v10, Lcom/android/settingslib/drawer/Tile;->icon:Landroid/graphics/drawable/Icon;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/dashboard/DashboardData;->mContext:Landroid/content/Context;

    invoke-static {v13, v11}, Lcom/android/settings/Utils;->getOutsideTileIconColor(Landroid/content/Context;Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/graphics/drawable/Icon;->setTint(I)Landroid/graphics/drawable/Icon;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/dashboard/DashboardData;->mContext:Landroid/content/Context;

    invoke-static {v12}, Lcom/android/settings/Utils;->isSupportGraceUXHeroView(Landroid/content/Context;)Z

    move-result v12

    if-nez v12, :cond_2

    if-eqz v6, :cond_3

    :cond_2
    const-string/jumbo v12, "DashboardData"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "tint for hero look : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v10, Lcom/android/settingslib/drawer/Tile;->title:Ljava/lang/CharSequence;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v12, v10, Lcom/android/settingslib/drawer/Tile;->icon:Landroid/graphics/drawable/Icon;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/dashboard/DashboardData;->mContext:Landroid/content/Context;

    iget-object v14, v10, Lcom/android/settingslib/drawer/Tile;->metaData:Landroid/os/Bundle;

    const-string/jumbo v15, "com.android.settings.category"

    invoke-virtual {v14, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/settings/Utils;->getTileIconColor(Landroid/content/Context;Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/graphics/drawable/Icon;->setTint(I)Landroid/graphics/drawable/Icon;

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    :cond_4
    const-string/jumbo v12, "notification_settings"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/settings/dashboard/DashboardData;->updateTile(Lcom/android/settingslib/drawer/Tile;)Lcom/android/settingslib/drawer/Tile;

    goto :goto_2

    :cond_5
    const-string/jumbo v12, "online_help"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/dashboard/DashboardData;->mContext:Landroid/content/Context;

    const/4 v13, 0x0

    invoke-static {v12, v13}, Lcom/android/settings/Utils;->getOnlineHelpMenuState(Landroid/content/Context;Lcom/android/settings/Utils$OnlineHelpMenuState;)Lcom/android/settings/Utils$OnlineHelpMenuState;

    move-result-object v4

    iget v12, v4, Lcom/android/settings/Utils$OnlineHelpMenuState;->titleRes:I

    if-eqz v12, :cond_6

    iget v12, v4, Lcom/android/settings/Utils$OnlineHelpMenuState;->titleRes:I

    iput v12, v10, Lcom/android/settingslib/drawer/Tile;->titleRes:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/dashboard/DashboardData;->mContext:Landroid/content/Context;

    iget v13, v4, Lcom/android/settings/Utils$OnlineHelpMenuState;->titleRes:I

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v10, Lcom/android/settingslib/drawer/Tile;->title:Ljava/lang/CharSequence;

    :cond_6
    iget v12, v4, Lcom/android/settings/Utils$OnlineHelpMenuState;->summaryRes:I

    if-eqz v12, :cond_7

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/dashboard/DashboardData;->mContext:Landroid/content/Context;

    iget v13, v4, Lcom/android/settings/Utils$OnlineHelpMenuState;->summaryRes:I

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v10, Lcom/android/settingslib/drawer/Tile;->summary:Ljava/lang/CharSequence;

    :cond_7
    iget v12, v4, Lcom/android/settings/Utils$OnlineHelpMenuState;->iconRes:I

    if-eqz v12, :cond_0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/dashboard/DashboardData;->mContext:Landroid/content/Context;

    iget v13, v4, Lcom/android/settings/Utils$OnlineHelpMenuState;->iconRes:I

    invoke-static {v12, v13}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v12

    iput-object v12, v10, Lcom/android/settingslib/drawer/Tile;->icon:Landroid/graphics/drawable/Icon;

    iget v12, v4, Lcom/android/settings/Utils$OnlineHelpMenuState;->iconRes:I

    iput v12, v10, Lcom/android/settingslib/drawer/Tile;->iconRes:I

    goto/16 :goto_2

    :cond_8
    const-string/jumbo v12, "display_settings"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    if-eqz v6, :cond_0

    const v12, 0x7f12051d

    iput v12, v10, Lcom/android/settingslib/drawer/Tile;->titleRes:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/dashboard/DashboardData;->mContext:Landroid/content/Context;

    const v13, 0x7f12051d

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v10, Lcom/android/settingslib/drawer/Tile;->title:Ljava/lang/CharSequence;

    goto/16 :goto_2

    :cond_9
    const-string/jumbo v12, "cloud_account_settings"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a

    const-string/jumbo v12, "DashboardData"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "cloud_account_settings, mContext : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/dashboard/DashboardData;->mContext:Landroid/content/Context;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/dashboard/DashboardData;->mContext:Landroid/content/Context;

    invoke-static {v12}, Lcom/android/settings/Utils;->checkSamsungBackup(Landroid/content/Context;)Z

    move-result v12

    if-nez v12, :cond_0

    const v12, 0x7f1200bb

    iput v12, v10, Lcom/android/settingslib/drawer/Tile;->titleRes:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/dashboard/DashboardData;->mContext:Landroid/content/Context;

    const v13, 0x7f1200bb

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v10, Lcom/android/settingslib/drawer/Tile;->title:Ljava/lang/CharSequence;

    goto/16 :goto_2

    :cond_a
    const-string/jumbo v12, "biometrics_and_security_settings"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_c

    const-string/jumbo v12, "DashboardData"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "biometrics_and_security_settings, mContext : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/dashboard/DashboardData;->mContext:Landroid/content/Context;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/dashboard/DashboardData;->mContext:Landroid/content/Context;

    invoke-static {v12}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isSupportBiometricsFeature(Landroid/content/Context;)Z

    move-result v12

    if-eqz v12, :cond_b

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/dashboard/DashboardData;->mContext:Landroid/content/Context;

    invoke-static {v12}, Lcom/android/settings/Utils;->isGuestUser(Landroid/content/Context;)Z

    move-result v12

    if-eqz v12, :cond_0

    :cond_b
    const v12, 0x7f121835

    iput v12, v10, Lcom/android/settingslib/drawer/Tile;->titleRes:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/dashboard/DashboardData;->mContext:Landroid/content/Context;

    const v13, 0x7f121835

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v10, Lcom/android/settingslib/drawer/Tile;->title:Ljava/lang/CharSequence;

    goto/16 :goto_2

    :cond_c
    const-string/jumbo v12, "t_roaming_settings"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_d

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/dashboard/DashboardData;->mContext:Landroid/content/Context;

    const v13, 0x7f0802f0

    invoke-static {v12, v13}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v12

    iput-object v12, v10, Lcom/android/settingslib/drawer/Tile;->icon:Landroid/graphics/drawable/Icon;

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/settings/dashboard/DashboardData;->setRoamingTile(Lcom/android/settingslib/drawer/Tile;)Lcom/android/settingslib/drawer/Tile;

    goto/16 :goto_2

    :cond_d
    const-string/jumbo v12, "privacy_and_safety_settings"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_e

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/dashboard/DashboardData;->mContext:Landroid/content/Context;

    invoke-static {v12}, Lcom/android/settings/Utils;->getPrivacyAndSafetyTitle(Landroid/content/Context;)I

    move-result v12

    iput v12, v10, Lcom/android/settingslib/drawer/Tile;->titleRes:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/dashboard/DashboardData;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/dashboard/DashboardData;->mContext:Landroid/content/Context;

    invoke-static {v13}, Lcom/android/settings/Utils;->getPrivacyAndSafetyTitle(Landroid/content/Context;)I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v10, Lcom/android/settingslib/drawer/Tile;->title:Ljava/lang/CharSequence;

    goto/16 :goto_2

    :cond_e
    const-string/jumbo v12, "com.android.settings.action.EXTRA_SETTINGS"

    iget-object v13, v10, Lcom/android/settingslib/drawer/Tile;->action:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_10

    iget-object v12, v10, Lcom/android/settingslib/drawer/Tile;->intent:Landroid/content/Intent;

    invoke-virtual {v12}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v12, "com.nttdocomo.android.docomoset"

    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_f

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/dashboard/DashboardData;->mContext:Landroid/content/Context;

    const v14, 0x7f1208c3

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/dashboard/DashboardData;->mContext:Landroid/content/Context;

    invoke-static {v13}, Lcom/android/settings/Utils;->getComma(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/dashboard/DashboardData;->mContext:Landroid/content/Context;

    const v14, 0x7f1208c4

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v10, Lcom/android/settingslib/drawer/Tile;->summary:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/dashboard/DashboardData;->mContext:Landroid/content/Context;

    const v13, 0x7f0806a8

    invoke-static {v12, v13}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v12

    iput-object v12, v10, Lcom/android/settingslib/drawer/Tile;->icon:Landroid/graphics/drawable/Icon;

    iget-object v12, v10, Lcom/android/settingslib/drawer/Tile;->metaData:Landroid/os/Bundle;

    const-string/jumbo v13, "com.android.settings.tileid"

    const-string/jumbo v14, "docomoservice_settings"

    invoke-virtual {v12, v13, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_f
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/dashboard/DashboardData;->mContext:Landroid/content/Context;

    const v13, 0x7f120ce4

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v10, Lcom/android/settingslib/drawer/Tile;->summary:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/dashboard/DashboardData;->mContext:Landroid/content/Context;

    const v13, 0x7f0806af

    invoke-static {v12, v13}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v12

    iput-object v12, v10, Lcom/android/settingslib/drawer/Tile;->icon:Landroid/graphics/drawable/Icon;

    iget-object v12, v10, Lcom/android/settingslib/drawer/Tile;->metaData:Landroid/os/Bundle;

    const-string/jumbo v13, "com.android.settings.tileid"

    const-string/jumbo v14, "google_settings"

    invoke-virtual {v12, v13, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_10
    const-string/jumbo v12, "maintenance_settings"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v12

    const-string/jumbo v13, "CscFeature_SmartManager_DisableAntiMalware"

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v12, v10, Lcom/android/settingslib/drawer/Tile;->summarySecondary:Ljava/lang/CharSequence;

    iput-object v12, v10, Lcom/android/settingslib/drawer/Tile;->summary:Ljava/lang/CharSequence;

    goto/16 :goto_2

    :cond_11
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_12
    return-void

    :catch_0
    move-exception v2

    goto/16 :goto_3
.end method
