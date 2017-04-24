.class public Lcom/android/launcher2/IconInfo$Menu;
.super Lcom/android/launcher2/IconInfo$Info;
.source "IconInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/IconInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Menu"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher2/IconInfo$Info;-><init>()V

    return-void
.end method


# virtual methods
.method public gridSizeChange(Landroid/content/Context;Lcom/android/launcher2/LauncherApplication$HomeGridSize;)V
    .locals 8

    iput-object p2, p0, Lcom/android/launcher2/IconInfo$Menu;->mGridSize:Lcom/android/launcher2/LauncherApplication$HomeGridSize;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget-object v5, Lcom/android/launcher2/LauncherApplication$HomeGridSize;->GRID_5x5:Lcom/android/launcher2/LauncherApplication$HomeGridSize;

    if-eq p2, v5, :cond_0

    sget-object v5, Lcom/android/launcher2/LauncherApplication$HomeGridSize;->GRID_4x5:Lcom/android/launcher2/LauncherApplication$HomeGridSize;

    if-ne p2, v5, :cond_2

    :cond_0
    const v5, 0x7f0901c7

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/android/launcher2/IconInfo$Menu;->iconSize:I

    :goto_0
    # getter for: Lcom/android/launcher2/IconInfo;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/launcher2/IconInfo;->access$000()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "gridSizeChageMenu:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/launcher2/IconInfo$Menu;->iconSize:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/android/launcher2/MenuView;->getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/android/launcher2/MenuAppsGrid;->getCurrentPage()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/android/launcher2/MenuAppsGrid;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayoutMenu;

    if-eqz v0, :cond_1

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/android/launcher2/CellLayoutMenu;->reapplyIconViewStyles(Z)V

    :cond_1
    return-void

    :cond_2
    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportMenuIconSizeChanged()Z

    move-result v5

    if-eqz v5, :cond_3

    const v5, 0x7f09016f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/android/launcher2/IconInfo$Menu;->iconSize:I

    goto :goto_0

    :cond_3
    const v5, 0x7f090005

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/android/launcher2/IconInfo$Menu;->iconSize:I

    goto :goto_0
.end method
