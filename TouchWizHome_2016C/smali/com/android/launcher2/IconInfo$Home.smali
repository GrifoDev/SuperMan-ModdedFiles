.class public Lcom/android/launcher2/IconInfo$Home;
.super Lcom/android/launcher2/IconInfo$Info;
.source "IconInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/IconInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Home"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher2/IconInfo$Info;-><init>()V

    return-void
.end method


# virtual methods
.method public gridSizeChange(Landroid/content/Context;Lcom/android/launcher2/LauncherApplication$HomeGridSize;)V
    .locals 9

    const v8, 0x7f0e0014

    const v7, 0x7f0e0013

    const v6, 0x7f0901c7

    iput-object p2, p0, Lcom/android/launcher2/IconInfo$Home;->mGridSize:Lcom/android/launcher2/LauncherApplication$HomeGridSize;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget-object v5, Lcom/android/launcher2/LauncherApplication$HomeGridSize;->GRID_4x5:Lcom/android/launcher2/LauncherApplication$HomeGridSize;

    if-ne p2, v5, :cond_1

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/android/launcher2/IconInfo$Home;->iconSize:I

    iput v7, p0, Lcom/android/launcher2/IconInfo$Home;->appIconStyle:I

    iput v8, p0, Lcom/android/launcher2/IconInfo$Home;->folderStyle:I

    :goto_0
    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher2/Launcher;->getHomeView()Lcom/android/launcher2/HomeView;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v1

    invoke-virtual {v4, v1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayoutWithResizableWidgets;

    if-eqz v0, :cond_0

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->reapplyIconViewStyles(Z)V

    :cond_0
    return-void

    :cond_1
    sget-object v5, Lcom/android/launcher2/LauncherApplication$HomeGridSize;->GRID_5x5:Lcom/android/launcher2/LauncherApplication$HomeGridSize;

    if-ne p2, v5, :cond_2

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/android/launcher2/IconInfo$Home;->iconSize:I

    iput v7, p0, Lcom/android/launcher2/IconInfo$Home;->appIconStyle:I

    iput v8, p0, Lcom/android/launcher2/IconInfo$Home;->folderStyle:I

    goto :goto_0

    :cond_2
    const v5, 0x7f090005

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/android/launcher2/IconInfo$Home;->iconSize:I

    const v5, 0x7f0e0005

    iput v5, p0, Lcom/android/launcher2/IconInfo$Home;->appIconStyle:I

    const v5, 0x7f0e0006

    iput v5, p0, Lcom/android/launcher2/IconInfo$Home;->folderStyle:I

    goto :goto_0
.end method
