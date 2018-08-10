.class public Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;
.super Ljava/lang/Object;
.source "NavigationBarSettingsHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$1;,
        Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$Item;,
        Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$OnChangedCallback;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;


# instance fields
.field private mCallbacks:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/net/Uri;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$OnChangedCallback;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mItemLists:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$Item;",
            ">;"
        }
    .end annotation
.end field

.field private mNavigationBarSettingsObserver:Landroid/database/ContentObserver;

.field private mResolver:Landroid/content/ContentResolver;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->mItemLists:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;)Landroid/database/ContentObserver;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->mNavigationBarSettingsObserver:Landroid/database/ContentObserver;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;)Landroid/content/ContentResolver;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->mResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->broadcastChange(Landroid/net/Uri;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->mCallbacks:Landroid/util/ArrayMap;

    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->mItemLists:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$1;-><init>(Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->mNavigationBarSettingsObserver:Landroid/database/ContentObserver;

    iput-object p1, p0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->mResolver:Landroid/content/ContentResolver;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->setUpSettingsItem()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->readSettingsDB()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->registerSettingsObserver()V

    return-void
.end method

.method private broadcastChange(Landroid/net/Uri;)V
    .locals 6

    const-string/jumbo v3, "NavBarSettingsHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "*** broadcastChange for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->mCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    if-eqz v2, :cond_1

    const-string/jumbo v3, "NavBarSettingsHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "*** broadcastChange tempList.size() = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$OnChangedCallback;

    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$OnChangedCallback;->onChanged(Landroid/net/Uri;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    :cond_0
    const-string/jumbo v3, "NavBarSettingsHelper"

    const-string/jumbo v4, "*** broadcastChange listener == null"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    const-string/jumbo v3, "NavBarSettingsHelper"

    const-string/jumbo v4, "*** broadcastChange tempList == null"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;
    .locals 1

    sget-object v0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->sInstance:Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->sInstance:Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;

    :cond_0
    sget-object v0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->sInstance:Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;

    return-object v0
.end method

.method private readSettingsDB()V
    .locals 4

    const-string/jumbo v2, "NavBarSettingsHelper"

    const-string/jumbo v3, "readSettingsDB()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->mItemLists:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->mItemLists:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$Item;

    iget-object v3, p0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$Item;->read(Landroid/content/ContentResolver;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private registerSettingsObserver()V
    .locals 4

    const-string/jumbo v2, "NavBarSettingsHelper"

    const-string/jumbo v3, "registerSettingsObserver()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->mItemLists:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->mItemLists:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$Item;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$Item;->registerObserver()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private setUpSettingsItem()V
    .locals 8

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->mItemLists:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$Item;

    const-string/jumbo v2, "Global"

    const-string/jumbo v3, "navigationbar_key_order"

    const-string/jumbo v4, "Int"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$Item;-><init>(Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->mItemLists:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$Item;

    const-string/jumbo v2, "Global"

    const-string/jumbo v3, "navigationbar_color"

    const-string/jumbo v4, "Int"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$Item;-><init>(Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->mItemLists:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$Item;

    const-string/jumbo v2, "Global"

    const-string/jumbo v3, "navigationbar_current_color"

    const-string/jumbo v4, "Int"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$Item;-><init>(Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->mItemLists:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$Item;

    const-string/jumbo v2, "Global"

    const-string/jumbo v3, "navigationbar_use_theme_default"

    const-string/jumbo v4, "Int"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$Item;-><init>(Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->mItemLists:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$Item;

    const-string/jumbo v2, "Global"

    const-string/jumbo v3, "navigationbar_theme_color"

    const-string/jumbo v4, "Int"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$Item;-><init>(Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->mItemLists:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$Item;

    const-string/jumbo v2, "Global"

    const-string/jumbo v3, "navigationbar_hide_bar"

    const-string/jumbo v4, "Int"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$Item;-><init>(Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->mItemLists:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$Item;

    const-string/jumbo v2, "Global"

    const-string/jumbo v3, "navigationbar_hide_bar_enabled"

    const-string/jumbo v4, "Int"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$Item;-><init>(Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public getNavigationBarColor()I
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->mItemLists:Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$Item;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$Item;->getIntValue()I

    move-result v0

    return v0
.end method

.method public getNavigationBarHideEnabled()Z
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->mItemLists:Ljava/util/ArrayList;

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$Item;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$Item;->getIntValue()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public getNavigationBarHideSetting()Z
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->mItemLists:Ljava/util/ArrayList;

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$Item;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$Item;->getIntValue()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public getNavigationBarUseThemeDefault()I
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->mItemLists:Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$Item;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$Item;->getIntValue()I

    move-result v0

    return v0
.end method

.method public isNavBarButtonOrderDefault()Z
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->mItemLists:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$Item;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$Item;->getIntValue()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public varargs registerCallback(Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V
    .locals 9

    monitor-enter p0

    :try_start_0
    const-string/jumbo v5, "NavBarSettingsHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "*** register listener for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    array-length v3, p2

    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_2

    iget-object v5, p0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->mCallbacks:Landroid/util/ArrayMap;

    aget-object v6, p2, v1

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string/jumbo v5, "NavBarSettingsHelper"

    const-string/jumbo v6, "Object tried to add another listener"

    new-instance v7, Ljava/lang/Exception;

    const-string/jumbo v8, "Called by"

    invoke-direct {v7, v8}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v5, v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    iget-object v5, p0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->mCallbacks:Landroid/util/ArrayMap;

    aget-object v6, p2, v1

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v5, v6, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v5, p0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->mCallbacks:Landroid/util/ArrayMap;

    aget-object v6, p2, v1

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    :cond_2
    monitor-exit p0

    iget-object v5, p0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->mCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v2

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v2, :cond_3

    const-string/jumbo v6, "NavBarSettingsHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mListeners["

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v5, p0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->mCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v5, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, "] = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v5, p0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->mCallbacks:Landroid/util/ArrayMap;

    iget-object v8, p0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->mCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v8, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, "..."

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public setNavigationBarCurrentColor(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "navigationbar_current_color"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->mItemLists:Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$Item;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$Item;->setIntValue(I)V

    return-void
.end method

.method public setNavigationBarHideEnabled(Z)V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v4, "navigationbar_hide_bar_enabled"

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->mItemLists:Ljava/util/ArrayList;

    const/4 v3, 0x6

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$Item;

    if-eqz p1, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$Item;->setIntValue(I)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public setNavigationBarThemeColor(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "navigationbar_theme_color"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->mItemLists:Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$Item;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$Item;->setIntValue(I)V

    return-void
.end method

.method public setNavigationBarUseThemeDefault(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "navigationbar_use_theme_default"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->mItemLists:Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$Item;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$Item;->setIntValue(I)V

    return-void
.end method

.method public unregisterAllCallbacks()V
    .locals 11

    monitor-enter p0

    :try_start_0
    const-string/jumbo v7, "NavBarSettingsHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "*** unregister all listener size "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->mCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v9}, Landroid/util/ArrayMap;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->mCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    :goto_0
    if-ltz v0, :cond_2

    iget-object v7, p0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->mCallbacks:Landroid/util/ArrayMap;

    iget-object v8, p0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->mCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v8, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    :goto_1
    if-ltz v1, :cond_0

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/ref/WeakReference;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->mCallbacks:Landroid/util/ArrayMap;

    iget-object v8, p0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->mCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v8, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    monitor-exit p0

    iget-object v7, p0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->mCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v5

    const/4 v0, 0x0

    :goto_2
    if-ge v0, v5, :cond_3

    const-string/jumbo v8, "NavBarSettingsHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "mListeners["

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v7, p0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->mCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v7, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/Uri;

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v9, "] = "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v7, p0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->mCallbacks:Landroid/util/ArrayMap;

    iget-object v10, p0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->mCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v10, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v9, "..."

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7

    :cond_3
    if-nez v5, :cond_4

    const-string/jumbo v7, "NavBarSettingsHelper"

    const-string/jumbo v8, "mListeners doesn\'t have any listeners"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void
.end method
