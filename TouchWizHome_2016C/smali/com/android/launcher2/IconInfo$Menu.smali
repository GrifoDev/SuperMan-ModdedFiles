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
    .locals 4

    iput-object p2, p0, Lcom/android/launcher2/IconInfo$Menu;->mGridSize:Lcom/android/launcher2/LauncherApplication$HomeGridSize;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/LauncherApplication$HomeGridSize;->GRID_5x5:Lcom/android/launcher2/LauncherApplication$HomeGridSize;

    if-eq p2, v1, :cond_0

    sget-object v1, Lcom/android/launcher2/LauncherApplication$HomeGridSize;->GRID_4x5:Lcom/android/launcher2/LauncherApplication$HomeGridSize;

    if-ne p2, v1, :cond_1

    :cond_0
    const v1, 0x7f0901c7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/IconInfo$Menu;->iconSize:I

    :goto_0
    # getter for: Lcom/android/launcher2/IconInfo;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/launcher2/IconInfo;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "gridSizeChageMenu:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/launcher2/IconInfo$Menu;->iconSize:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportMenuIconSizeChanged()Z

    move-result v1

    if-eqz v1, :cond_2

    const v1, 0x7f09016e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/IconInfo$Menu;->iconSize:I

    goto :goto_0

    :cond_2
    const v1, 0x7f090004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/IconInfo$Menu;->iconSize:I

    goto :goto_0
.end method
