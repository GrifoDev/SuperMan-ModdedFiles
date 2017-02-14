.class public Lcom/android/launcher2/IconConfig;
.super Ljava/lang/Object;
.source "IconConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/IconConfig$TYPE;
    }
.end annotation


# static fields
.field private static instance:Lcom/android/launcher2/IconConfig;


# instance fields
.field private mConfigMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/launcher2/IconConfig$TYPE;",
            "Lcom/android/launcher2/IconInfo$Info;",
            ">;"
        }
    .end annotation
.end field

.field public mHotseatIconHeight:I

.field public mHotseatIconWidth:I

.field public mIconHeight:I

.field public mIconWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/launcher2/IconConfig;->instance:Lcom/android/launcher2/IconConfig;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/IconConfig;->mConfigMap:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/android/launcher2/IconConfig;->mConfigMap:Ljava/util/HashMap;

    sget-object v1, Lcom/android/launcher2/IconConfig$TYPE;->HOME:Lcom/android/launcher2/IconConfig$TYPE;

    new-instance v2, Lcom/android/launcher2/IconInfo$Home;

    invoke-direct {v2}, Lcom/android/launcher2/IconInfo$Home;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/launcher2/IconConfig;->mConfigMap:Ljava/util/HashMap;

    sget-object v1, Lcom/android/launcher2/IconConfig$TYPE;->MENU:Lcom/android/launcher2/IconConfig$TYPE;

    new-instance v2, Lcom/android/launcher2/IconInfo$Menu;

    invoke-direct {v2}, Lcom/android/launcher2/IconInfo$Menu;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/launcher2/IconConfig;->mConfigMap:Ljava/util/HashMap;

    sget-object v1, Lcom/android/launcher2/IconConfig$TYPE;->HOTSEAT:Lcom/android/launcher2/IconConfig$TYPE;

    new-instance v2, Lcom/android/launcher2/IconInfo$HotSeat;

    invoke-direct {v2}, Lcom/android/launcher2/IconInfo$HotSeat;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/launcher2/IconConfig;->setDefaultIconSize()V

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/IconConfig;->notifyGridSizeChange(Landroid/content/Context;)V

    return-void
.end method

.method public static declared-synchronized get()Lcom/android/launcher2/IconConfig;
    .locals 2

    const-class v1, Lcom/android/launcher2/IconConfig;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/launcher2/IconConfig;->instance:Lcom/android/launcher2/IconConfig;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/launcher2/IconConfig;

    invoke-direct {v0}, Lcom/android/launcher2/IconConfig;-><init>()V

    sput-object v0, Lcom/android/launcher2/IconConfig;->instance:Lcom/android/launcher2/IconConfig;

    :cond_0
    sget-object v0, Lcom/android/launcher2/IconConfig;->instance:Lcom/android/launcher2/IconConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public applyAppIconView(Lcom/android/launcher2/IconConfig$TYPE;Lcom/android/launcher2/AppIconView;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/launcher2/IconConfig;->getInfo(Lcom/android/launcher2/IconConfig$TYPE;)Lcom/android/launcher2/IconInfo$Info;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/launcher2/IconInfo$Info;->applyAppIconView(Lcom/android/launcher2/AppIconView;)V

    return-void
.end method

.method public applyFolderIconView(Lcom/android/launcher2/IconConfig$TYPE;Lcom/android/launcher2/AppIconView;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/launcher2/IconConfig;->getInfo(Lcom/android/launcher2/IconConfig$TYPE;)Lcom/android/launcher2/IconInfo$Info;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/launcher2/IconInfo$Info;->applyFolderIconView(Lcom/android/launcher2/AppIconView;)V

    return-void
.end method

.method public declared-synchronized changeHotseatSize(Landroid/content/Context;I)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/launcher2/IconConfig;->mConfigMap:Ljava/util/HashMap;

    sget-object v2, Lcom/android/launcher2/IconConfig$TYPE;->HOTSEAT:Lcom/android/launcher2/IconConfig$TYPE;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/IconInfo$Info;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher2/IconInfo$Info;->hotseatSizeChanged(Landroid/content/Context;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getIconSize(Lcom/android/launcher2/IconConfig$TYPE;)I
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/launcher2/IconConfig;->getInfo(Lcom/android/launcher2/IconConfig$TYPE;)Lcom/android/launcher2/IconInfo$Info;

    move-result-object v0

    iget v0, v0, Lcom/android/launcher2/IconInfo$Info;->iconSize:I

    return v0
.end method

.method public declared-synchronized getInfo(Lcom/android/launcher2/IconConfig$TYPE;)Lcom/android/launcher2/IconInfo$Info;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/launcher2/IconConfig;->mConfigMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/IconInfo$Info;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized loadHotseatSize()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/launcher2/IconConfig;->mConfigMap:Ljava/util/HashMap;

    sget-object v2, Lcom/android/launcher2/IconConfig$TYPE;->HOTSEAT:Lcom/android/launcher2/IconConfig$TYPE;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/IconInfo$Info;

    invoke-virtual {v0}, Lcom/android/launcher2/IconInfo$Info;->loadHotseatSize()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized notifyGridSizeChange(Landroid/content/Context;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getLauncherGridSize()Lcom/android/launcher2/LauncherApplication$HomeGridSize;

    move-result-object v0

    iget-object v2, p0, Lcom/android/launcher2/IconConfig;->mConfigMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/IconInfo$Info;

    invoke-virtual {v1, p1, v0}, Lcom/android/launcher2/IconInfo$Info;->gridSizeChange(Landroid/content/Context;Lcom/android/launcher2/LauncherApplication$HomeGridSize;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_0
    monitor-exit p0

    return-void
.end method

.method public recycleViewStyles(Lcom/android/launcher2/IconConfig$TYPE;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/launcher2/IconConfig;->getInfo(Lcom/android/launcher2/IconConfig$TYPE;)Lcom/android/launcher2/IconInfo$Info;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/IconInfo$Info;->recycleViewStyles()V

    return-void
.end method

.method public declared-synchronized refreshAll()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/launcher2/IconConfig;->mConfigMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/IconInfo$Info;

    instance-of v2, v0, Lcom/android/launcher2/IconInfo$HotSeat;

    if-nez v2, :cond_0

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/launcher2/IconConfig;->notifyGridSizeChange(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/android/launcher2/IconConfig;->setDefaultIconSize()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void
.end method

.method public setDefaultIconSize()V
    .locals 4

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/LauncherApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090004

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/IconConfig;->mIconHeight:I

    iput v1, p0, Lcom/android/launcher2/IconConfig;->mIconWidth:I

    const v3, 0x7f090130

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/IconConfig;->mHotseatIconHeight:I

    iput v0, p0, Lcom/android/launcher2/IconConfig;->mHotseatIconWidth:I

    return-void
.end method
