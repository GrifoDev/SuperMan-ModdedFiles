.class public Lcom/android/systemui/qs/customize/TileQueryHelper;
.super Ljava/lang/Object;
.source "TileQueryHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;,
        Lcom/android/systemui/qs/customize/TileQueryHelper$TileStateListener;
    }
.end annotation


# instance fields
.field private final mCompletion:Ljava/lang/Runnable;

.field private final mContext:Landroid/content/Context;

.field private mHiddenTileSpecs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mHost:Lcom/android/systemui/qs/QSTileHost;

.field private final mListener:Lcom/android/systemui/qs/customize/TileQueryHelper$TileStateListener;

.field private final mSpecs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mTiles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/android/systemui/qs/customize/TileQueryHelper;)Lcom/android/systemui/qs/customize/TileQueryHelper$TileStateListener;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mListener:Lcom/android/systemui/qs/customize/TileQueryHelper$TileStateListener;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/qs/customize/TileQueryHelper;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mTiles:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/systemui/qs/customize/TileQueryHelper;Ljava/lang/String;Ljava/lang/CharSequence;Lcom/android/systemui/plugins/qs/QSTile$State;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/qs/customize/TileQueryHelper;->addTile(Ljava/lang/String;Ljava/lang/CharSequence;Lcom/android/systemui/plugins/qs/QSTile$State;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/qs/QSTileHost;Lcom/android/systemui/qs/customize/TileQueryHelper$TileStateListener;Ljava/lang/Runnable;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mTiles:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mSpecs:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mHiddenTileSpecs:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mListener:Lcom/android/systemui/qs/customize/TileQueryHelper$TileStateListener;

    iput-object p2, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mHost:Lcom/android/systemui/qs/QSTileHost;

    iput-object p4, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mCompletion:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/android/systemui/qs/customize/TileQueryHelper;->addSystemTiles()V

    return-void
.end method

.method private addPackageTiles(Landroid/os/Handler;Landroid/os/Handler;)V
    .locals 1

    new-instance v0, Lcom/android/systemui/qs/customize/-$Lambda$pQ3JKx5515h-eZeun6umHO-Mluk$1;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/qs/customize/-$Lambda$pQ3JKx5515h-eZeun6umHO-Mluk$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private addStockTiles(Landroid/os/Handler;Landroid/os/Handler;)V
    .locals 9

    const/4 v2, 0x0

    iget-object v6, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mContext:Landroid/content/Context;

    const v7, 0x7f12092e

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v6

    const-string/jumbo v7, "CscFeature_SystemUI_ConfigDefQuickSettingItem"

    invoke-virtual {v6, v7, v0}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v6, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {v6, v2}, Lcom/android/systemui/qs/QSTileHost;->changeOldOSTileListToNewOsTileList(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    const-string/jumbo v6, "TAG"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "addStockTiles ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string/jumbo v6, "WorkMode"

    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ",WorkMode"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_1
    iget-object v6, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mHiddenTileSpecs:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    const-string/jumbo v6, ","

    invoke-virtual {v2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v1, 0x0

    :goto_0
    array-length v6, v3

    if-ge v1, v6, :cond_5

    aget-object v4, v3, v1

    iget-object v6, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {v6, v4}, Lcom/android/systemui/qs/QSTileHost;->createTile(Ljava/lang/String;)Lcom/android/systemui/plugins/qs/QSTile;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-interface {v5, v4}, Lcom/android/systemui/plugins/qs/QSTile;->setTileSpec(Ljava/lang/String;)V

    :cond_2
    if-nez v5, :cond_3

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    invoke-interface {v5}, Lcom/android/systemui/plugins/qs/QSTile;->isAvailable()Z

    move-result v6

    if-nez v6, :cond_4

    iget-object v6, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mHiddenTileSpecs:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v5}, Lcom/android/systemui/plugins/qs/QSTile;->destroy()V

    goto :goto_1

    :cond_4
    const/4 v6, 0x1

    invoke-interface {v5, p0, v6}, Lcom/android/systemui/plugins/qs/QSTile;->setListening(Ljava/lang/Object;Z)V

    invoke-interface {v5}, Lcom/android/systemui/plugins/qs/QSTile;->clearState()V

    invoke-interface {v5}, Lcom/android/systemui/plugins/qs/QSTile;->refreshState()V

    const/4 v6, 0x0

    invoke-interface {v5, p0, v6}, Lcom/android/systemui/plugins/qs/QSTile;->setListening(Ljava/lang/Object;Z)V

    new-instance v6, Lcom/android/systemui/qs/customize/TileQueryHelper$1;

    invoke-direct {v6, p0, v5, p1, v4}, Lcom/android/systemui/qs/customize/TileQueryHelper$1;-><init>(Lcom/android/systemui/qs/customize/TileQueryHelper;Lcom/android/systemui/plugins/qs/QSTile;Landroid/os/Handler;Ljava/lang/String;)V

    invoke-virtual {p2, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_5
    iget-object v6, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mHost:Lcom/android/systemui/qs/QSTileHost;

    iget-object v7, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mHiddenTileSpecs:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Lcom/android/systemui/qs/QSTileHost;->setHiddenTileSpec(Ljava/util/ArrayList;)V

    return-void
.end method

.method private addSystemTiles()V
    .locals 3

    new-instance v1, Landroid/os/Handler;

    sget-object v2, Lcom/android/systemui/Dependency;->BG_LOOPER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Looper;

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/qs/customize/TileQueryHelper;->addStockTiles(Landroid/os/Handler;Landroid/os/Handler;)V

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/qs/customize/TileQueryHelper;->addPackageTiles(Landroid/os/Handler;Landroid/os/Handler;)V

    iget-object v2, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mCompletion:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private addTile(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Context;)V
    .locals 7

    new-instance v2, Lcom/android/systemui/plugins/qs/QSTile$State;

    invoke-direct {v2}, Lcom/android/systemui/plugins/qs/QSTile$State;-><init>()V

    iput-object p3, v2, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    iput-object p3, v2, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    invoke-static {p1}, Lcom/android/systemui/qs/external/CustomTile;->getComponentFromSpec(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/systemui/qs/customize/TileQueryHelper;->isDefaultCustomTile(Landroid/content/ComponentName;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070521

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v4, v3

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    iget-object v5, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0704ff

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v5

    mul-float v0, v4, v5

    new-instance v1, Lcom/android/systemui/statusbar/ScalingDrawableWrapper;

    invoke-direct {v1, p2, v0}, Lcom/android/systemui/statusbar/ScalingDrawableWrapper;-><init>(Landroid/graphics/drawable/Drawable;F)V

    new-instance v4, Lcom/android/systemui/qs/tileimpl/QSTileImpl$DrawableIcon;

    invoke-direct {v4, v1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$DrawableIcon;-><init>(Landroid/graphics/drawable/Drawable;)V

    iput-object v4, v2, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    :goto_0
    const/4 v4, 0x0

    invoke-direct {p0, p1, p4, v2, v4}, Lcom/android/systemui/qs/customize/TileQueryHelper;->addTile(Ljava/lang/String;Ljava/lang/CharSequence;Lcom/android/systemui/plugins/qs/QSTile$State;Z)V

    return-void

    :cond_0
    new-instance v4, Lcom/android/systemui/qs/tileimpl/QSTileImpl$DrawableIcon;

    invoke-direct {v4, p2}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$DrawableIcon;-><init>(Landroid/graphics/drawable/Drawable;)V

    iput-object v4, v2, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    goto :goto_0
.end method

.method private addTile(Ljava/lang/String;Ljava/lang/CharSequence;Lcom/android/systemui/plugins/qs/QSTile$State;Z)V
    .locals 3

    iget-object v1, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mSpecs:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

    invoke-direct {v0}, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;-><init>()V

    iput-object p3, v0, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->state:Lcom/android/systemui/plugins/qs/QSTile$State;

    iget-object v1, v0, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->state:Lcom/android/systemui/plugins/qs/QSTile$State;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/systemui/plugins/qs/QSTile$State;->dualTarget:Z

    iget-object v1, v0, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->state:Lcom/android/systemui/plugins/qs/QSTile$State;

    const-class v2, Landroid/widget/Button;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/systemui/plugins/qs/QSTile$State;->expandedAccessibilityClassName:Ljava/lang/String;

    iput-object p1, v0, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->spec:Ljava/lang/String;

    iput-object p2, v0, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->appLabel:Ljava/lang/CharSequence;

    iput-boolean p4, v0, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->isSystem:Z

    iget-object v1, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mTiles:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mSpecs:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private convertTileLabel(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2

    sget-boolean v0, Lcom/android/systemui/Rune;->IS_TABLET_DEVICE:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mContext:Landroid/content/Context;

    const v1, 0x7f12090a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mContext:Landroid/content/Context;

    const v1, 0x7f12092b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    return-object p1
.end method

.method private getCustomTileIcon(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;
    .locals 6

    :try_start_0
    iget-object v3, p2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget v4, v3, Landroid/content/pm/ServiceInfo;->icon:I

    if-eqz v4, :cond_0

    iget v2, v3, Landroid/content/pm/ServiceInfo;->icon:I

    :goto_0
    if-eqz v2, :cond_1

    iget-object v4, v3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-static {v4, v2}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_2

    iget-object v4, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/graphics/drawable/Icon;->loadDrawableAsUser(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    return-object v4

    :cond_0
    iget-object v4, v3, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v4, Landroid/content/pm/ApplicationInfo;->icon:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    iget-object v4, p2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    invoke-virtual {v4, p1}, Landroid/content/pm/ServiceInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    return-object v4

    :catch_0
    move-exception v1

    iget-object v4, p2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    invoke-virtual {v4, p1}, Landroid/content/pm/ServiceInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    return-object v4
.end method

.method private getState(Ljava/util/Collection;Ljava/lang/String;)Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/systemui/plugins/qs/QSTile;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/systemui/plugins/qs/QSTile$State;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile;

    invoke-interface {v0}, Lcom/android/systemui/plugins/qs/QSTile;->getTileSpec()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Lcom/android/systemui/plugins/qs/QSTile;->getState()Lcom/android/systemui/plugins/qs/QSTile$State;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/plugins/qs/QSTile$State;->copy()Lcom/android/systemui/plugins/qs/QSTile$State;

    move-result-object v2

    return-object v2

    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method private isDefaultCustomTile(Landroid/content/ComponentName;)Z
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-object v4, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {v4, p1}, Lcom/android/systemui/qs/QSTileHost;->isDefaultCustomTile(Landroid/content/ComponentName;)Z

    move-result v4

    if-eqz v4, :cond_0

    return v8

    :cond_0
    const/high16 v1, 0xc0000

    :try_start_0
    iget-object v4, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const v5, 0xc0080

    invoke-virtual {v4, p1, v5}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v2

    iget-object v4, v2, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    if-eqz v4, :cond_1

    iget-object v4, v2, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v5, "android.service.quicksettings.SEM_DEFAULT_TILE_NAME"

    const-string/jumbo v6, ""

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, ""

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-nez v4, :cond_1

    return v8

    :cond_1
    return v7

    :catch_0
    move-exception v0

    return v7
.end method


# virtual methods
.method synthetic lambda$-com_android_systemui_qs_customize_TileQueryHelper_5775(Landroid/os/Handler;)V
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {v1}, Lcom/android/systemui/qs/QSTileHost;->getTiles()Ljava/util/Collection;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v4, "android.service.quicksettings.action.QS_TILE"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    const/4 v6, 0x0

    invoke-virtual {v13, v1, v6, v4}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    iget-object v1, v8, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v11, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    new-instance v7, Landroid/content/ComponentName;

    iget-object v1, v8, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v7, v11, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v8, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1, v13}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v7}, Lcom/android/systemui/qs/external/CustomTile;->toSpec(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v2}, Lcom/android/systemui/qs/customize/TileQueryHelper;->getState(Ljava/util/Collection;Ljava/lang/String;)Lcom/android/systemui/plugins/qs/QSTile$State;

    move-result-object v15

    if-eqz v15, :cond_1

    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v5, v15, v1}, Lcom/android/systemui/qs/customize/TileQueryHelper;->addTile(Ljava/lang/String;Ljava/lang/CharSequence;Lcom/android/systemui/plugins/qs/QSTile$State;Z)V

    goto :goto_0

    :cond_1
    iget-object v1, v8, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget v1, v1, Landroid/content/pm/ServiceInfo;->icon:I

    if-nez v1, :cond_2

    iget-object v1, v8, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->icon:I

    if-eqz v1, :cond_0

    :cond_2
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v8}, Lcom/android/systemui/qs/customize/TileQueryHelper;->getCustomTileIcon(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const-string/jumbo v1, "android.permission.BIND_QUICK_SETTINGS_TILE"

    iget-object v4, v8, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mContext:Landroid/content/Context;

    const v4, 0x106000b

    invoke-virtual {v1, v4}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    iget-object v1, v8, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    invoke-virtual {v1, v13}, Landroid/content/pm/ServiceInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v10

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/systemui/qs/customize/TileQueryHelper;->convertTileLabel(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v10

    if-eqz v10, :cond_3

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_1
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mContext:Landroid/content/Context;

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/qs/customize/TileQueryHelper;->addTile(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Context;)V

    goto/16 :goto_0

    :cond_3
    const-string/jumbo v4, "null"

    goto :goto_1

    :cond_4
    new-instance v1, Lcom/android/systemui/qs/customize/-$Lambda$pQ3JKx5515h-eZeun6umHO-Mluk;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Lcom/android/systemui/qs/customize/-$Lambda$pQ3JKx5515h-eZeun6umHO-Mluk;-><init>(Ljava/lang/Object;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method synthetic lambda$-com_android_systemui_qs_customize_TileQueryHelper_8209()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mListener:Lcom/android/systemui/qs/customize/TileQueryHelper$TileStateListener;

    iget-object v1, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mTiles:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/android/systemui/qs/customize/TileQueryHelper$TileStateListener;->onTilesChanged(Ljava/util/List;)V

    return-void
.end method
