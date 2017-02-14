.class public Lcom/android/launcher2/IconInfo$HotSeat;
.super Lcom/android/launcher2/IconInfo$Info;
.source "IconInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/IconInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HotSeat"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher2/IconInfo$Info;-><init>()V

    return-void
.end method


# virtual methods
.method public gridSizeChange(Landroid/content/Context;Lcom/android/launcher2/LauncherApplication$HomeGridSize;)V
    .locals 4

    iput-object p2, p0, Lcom/android/launcher2/IconInfo$HotSeat;->mGridSize:Lcom/android/launcher2/LauncherApplication$HomeGridSize;

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->getHomeView()Lcom/android/launcher2/HomeView;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/launcher2/HomeView;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/Hotseat;->getLayout()Lcom/android/launcher2/CellLayout;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayoutHotseat;

    invoke-virtual {v1}, Lcom/android/launcher2/Hotseat;->setHotseatPadding()V

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/android/launcher2/CellLayoutHotseat;->reapplyIconViewStyles(Z)V

    :cond_0
    return-void
.end method

.method public hotseatSizeChanged(Landroid/content/Context;I)V
    .locals 6

    const v5, 0x7f0e0009

    const v4, 0x7f0e0008

    const v3, 0x7f090130

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/IconInfo$HotSeat;->mGridSize:Lcom/android/launcher2/LauncherApplication$HomeGridSize;

    sget-object v2, Lcom/android/launcher2/LauncherApplication$HomeGridSize;->GRID_4x4:Lcom/android/launcher2/LauncherApplication$HomeGridSize;

    if-ne v1, v2, :cond_2

    const/4 v1, 0x5

    if-eq p2, v1, :cond_0

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isTabletLayout()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/IconInfo$HotSeat;->iconSize:I

    iput v4, p0, Lcom/android/launcher2/IconInfo$HotSeat;->appIconStyle:I

    iput v5, p0, Lcom/android/launcher2/IconInfo$HotSeat;->folderStyle:I

    :goto_0
    # getter for: Lcom/android/launcher2/IconInfo;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/launcher2/IconInfo;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hotseatSizeChanged : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/launcher2/IconInfo$HotSeat;->iconSize:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", iconCount : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const v1, 0x7f0901df

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/IconInfo$HotSeat;->iconSize:I

    const v1, 0x7f0e0015

    iput v1, p0, Lcom/android/launcher2/IconInfo$HotSeat;->appIconStyle:I

    const v1, 0x7f0e0016

    iput v1, p0, Lcom/android/launcher2/IconInfo$HotSeat;->folderStyle:I

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/IconInfo$HotSeat;->iconSize:I

    iput v4, p0, Lcom/android/launcher2/IconInfo$HotSeat;->appIconStyle:I

    iput v5, p0, Lcom/android/launcher2/IconInfo$HotSeat;->folderStyle:I

    goto :goto_0
.end method

.method public loadHotseatSize()V
    .locals 5

    const/4 v4, -0x1

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/LauncherApplication;->getLauncherProvider()Lcom/android/launcher2/LauncherProvider;

    move-result-object v2

    const/4 v1, -0x1

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/launcher2/LauncherProvider;->getHotseatCount()I

    move-result v1

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isHomeOnlyModeEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    if-eq v1, v4, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    if-ne v1, v4, :cond_1

    const/4 v1, 0x5

    :cond_1
    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/IconInfo$HotSeat;->hotseatSizeChanged(Landroid/content/Context;I)V

    return-void
.end method
