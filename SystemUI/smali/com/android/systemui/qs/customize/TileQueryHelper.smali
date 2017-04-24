.class public Lcom/android/systemui/qs/customize/TileQueryHelper;
.super Ljava/lang/Object;
.source "TileQueryHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/customize/TileQueryHelper$QueryTilesTask;,
        Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;,
        Lcom/android/systemui/qs/customize/TileQueryHelper$TileStateListener;
    }
.end annotation


# instance fields
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

.field private mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

.field private mListener:Lcom/android/systemui/qs/customize/TileQueryHelper$TileStateListener;

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
.method static synthetic -get0(Lcom/android/systemui/qs/customize/TileQueryHelper;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/qs/customize/TileQueryHelper;)Lcom/android/systemui/qs/customize/TileQueryHelper$TileStateListener;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mListener:Lcom/android/systemui/qs/customize/TileQueryHelper$TileStateListener;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/qs/customize/TileQueryHelper;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mTiles:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/systemui/qs/customize/TileQueryHelper;Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/customize/TileQueryHelper;->getCustomTileIcon(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/systemui/qs/customize/TileQueryHelper;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Context;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/systemui/qs/customize/TileQueryHelper;->addTile(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Context;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/qs/customize/TileQueryHelper;Ljava/lang/String;Ljava/lang/CharSequence;Lcom/android/systemui/qs/QSTile$State;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/qs/customize/TileQueryHelper;->addTile(Ljava/lang/String;Ljava/lang/CharSequence;Lcom/android/systemui/qs/QSTile$State;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QSTileHost;)V
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

    iput-object p2, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

    invoke-direct {p0, p2}, Lcom/android/systemui/qs/customize/TileQueryHelper;->addSystemTiles(Lcom/android/systemui/statusbar/phone/QSTileHost;)V

    return-void
.end method

.method private addSystemTiles(Lcom/android/systemui/statusbar/phone/QSTileHost;)V
    .locals 13

    iget-object v11, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mContext:Landroid/content/Context;

    const v12, 0x7f0f0228

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v11

    const-string/jumbo v12, "CscFeature_SystemUI_ConfigDefQuickSettingItem"

    invoke-virtual {v11, v12, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ",work"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v11, ","

    invoke-virtual {v4, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    new-instance v6, Landroid/os/Handler;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/QSTileHost;->getLooper()Landroid/os/Looper;

    move-result-object v11

    invoke-direct {v6, v11}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v11

    invoke-direct {v3, v11}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iget-object v11, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mHiddenTileSpecs:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v11, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

    invoke-virtual {v11}, Lcom/android/systemui/statusbar/phone/QSTileHost;->getTiles()Ljava/util/Collection;

    move-result-object v11

    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/qs/QSTile;

    invoke-virtual {v8}, Lcom/android/systemui/qs/QSTile;->getTileSpec()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_1
    array-length v11, v5

    if-ge v2, v11, :cond_5

    aget-object v7, v5, v2

    invoke-virtual {p1, v7}, Lcom/android/systemui/statusbar/phone/QSTileHost;->createTile(Ljava/lang/String;)Lcom/android/systemui/qs/QSTile;

    move-result-object v9

    if-eqz v9, :cond_1

    invoke-virtual {v9, v7}, Lcom/android/systemui/qs/QSTile;->setTileSpec(Ljava/lang/String;)V

    :cond_1
    if-eqz v9, :cond_3

    invoke-virtual {v9}, Lcom/android/systemui/qs/QSTile;->isAvailable()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-virtual {v9}, Lcom/android/systemui/qs/QSTile;->getTileSpec()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    if-eqz v9, :cond_2

    iget-object v11, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mHiddenTileSpecs:Ljava/util/ArrayList;

    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    const/4 v11, 0x1

    invoke-virtual {v9, p0, v11}, Lcom/android/systemui/qs/QSTile;->setListening(Ljava/lang/Object;Z)V

    invoke-virtual {v9}, Lcom/android/systemui/qs/QSTile;->clearState()V

    invoke-virtual {v9}, Lcom/android/systemui/qs/QSTile;->refreshState()V

    const/4 v11, 0x0

    invoke-virtual {v9, p0, v11}, Lcom/android/systemui/qs/QSTile;->setListening(Ljava/lang/Object;Z)V

    new-instance v11, Lcom/android/systemui/qs/customize/TileQueryHelper$1;

    invoke-direct {v11, p0, v9, v3, v7}, Lcom/android/systemui/qs/customize/TileQueryHelper$1;-><init>(Lcom/android/systemui/qs/customize/TileQueryHelper;Lcom/android/systemui/qs/QSTile;Landroid/os/Handler;Ljava/lang/String;)V

    invoke-virtual {v6, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    :cond_5
    new-instance v11, Lcom/android/systemui/qs/customize/TileQueryHelper$2;

    invoke-direct {v11, p0, v3, p1}, Lcom/android/systemui/qs/customize/TileQueryHelper$2;-><init>(Lcom/android/systemui/qs/customize/TileQueryHelper;Landroid/os/Handler;Lcom/android/systemui/statusbar/phone/QSTileHost;)V

    invoke-virtual {v6, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v11, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mHiddenTileSpecs:Ljava/util/ArrayList;

    invoke-virtual {p1, v11}, Lcom/android/systemui/statusbar/phone/QSTileHost;->setHiddenTileSpec(Ljava/util/ArrayList;)V

    return-void
.end method

.method private addTile(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Context;)V
    .locals 7

    new-instance v2, Lcom/android/systemui/qs/QSTile$BooleanState;

    invoke-direct {v2}, Lcom/android/systemui/qs/QSTile$BooleanState;-><init>()V

    iput-object p3, v2, Lcom/android/systemui/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    iput-object p3, v2, Lcom/android/systemui/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d0204

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

    invoke-static {p1}, Lcom/android/systemui/qs/external/CustomTile;->getComponentFromSpec(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/phone/QSTileHost;->isDefaultCustomTile(Landroid/content/ComponentName;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    if-eq v3, v4, :cond_0

    int-to-float v4, v3

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    iget-object v5, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d03e5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v5

    mul-float v0, v4, v5

    new-instance v1, Lcom/android/systemui/statusbar/ScalingDrawableWrapper;

    invoke-direct {v1, p2, v0}, Lcom/android/systemui/statusbar/ScalingDrawableWrapper;-><init>(Landroid/graphics/drawable/Drawable;F)V

    new-instance v4, Lcom/android/systemui/qs/QSTile$DrawableIcon;

    invoke-direct {v4, v1}, Lcom/android/systemui/qs/QSTile$DrawableIcon;-><init>(Landroid/graphics/drawable/Drawable;)V

    iput-object v4, v2, Lcom/android/systemui/qs/QSTile$State;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    :goto_0
    const/4 v4, 0x0

    invoke-direct {p0, p1, p4, v2, v4}, Lcom/android/systemui/qs/customize/TileQueryHelper;->addTile(Ljava/lang/String;Ljava/lang/CharSequence;Lcom/android/systemui/qs/QSTile$State;Z)V

    return-void

    :cond_0
    new-instance v4, Lcom/android/systemui/qs/QSTile$DrawableIcon;

    invoke-direct {v4, p2}, Lcom/android/systemui/qs/QSTile$DrawableIcon;-><init>(Landroid/graphics/drawable/Drawable;)V

    iput-object v4, v2, Lcom/android/systemui/qs/QSTile$State;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    goto :goto_0
.end method

.method private addTile(Ljava/lang/String;Ljava/lang/CharSequence;Lcom/android/systemui/qs/QSTile$State;Z)V
    .locals 4

    iget-object v1, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mSpecs:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

    invoke-direct {v0}, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;-><init>()V

    iput-object p3, v0, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->state:Lcom/android/systemui/qs/QSTile$State;

    iget-object v1, v0, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->state:Lcom/android/systemui/qs/QSTile$State;

    const-class v2, Landroid/widget/Button;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->state:Lcom/android/systemui/qs/QSTile$State;

    iput-object v2, v3, Lcom/android/systemui/qs/QSTile$State;->expandedAccessibilityClassName:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/systemui/qs/QSTile$State;->minimalAccessibilityClassName:Ljava/lang/String;

    iput-object p1, v0, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->spec:Ljava/lang/String;

    iput-object p2, v0, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->appLabel:Ljava/lang/CharSequence;

    iput-boolean p4, v0, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->isSystem:Z

    iget-object v1, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mTiles:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mSpecs:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private getCustomTileIcon(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    iget-object v3, p2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget v4, v3, Landroid/content/pm/ServiceInfo;->icon:I

    if-eqz v4, :cond_1

    iget v2, v3, Landroid/content/pm/ServiceInfo;->icon:I

    :goto_0
    if-eqz v2, :cond_0

    iget-object v4, v3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-static {v4, v2}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_2

    iget-object v4, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    return-object v4

    :cond_1
    iget-object v4, v3, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v4, Landroid/content/pm/ApplicationInfo;->icon:I

    goto :goto_0

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


# virtual methods
.method public setListener(Lcom/android/systemui/qs/customize/TileQueryHelper$TileStateListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mListener:Lcom/android/systemui/qs/customize/TileQueryHelper$TileStateListener;

    return-void
.end method
