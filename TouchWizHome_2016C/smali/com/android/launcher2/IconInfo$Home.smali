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
    .locals 5

    const v4, 0x7f0e0014

    const v3, 0x7f0e0013

    const v2, 0x7f0901c7

    iput-object p2, p0, Lcom/android/launcher2/IconInfo$Home;->mGridSize:Lcom/android/launcher2/LauncherApplication$HomeGridSize;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/LauncherApplication$HomeGridSize;->GRID_4x5:Lcom/android/launcher2/LauncherApplication$HomeGridSize;

    if-ne p2, v1, :cond_0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/IconInfo$Home;->iconSize:I

    iput v3, p0, Lcom/android/launcher2/IconInfo$Home;->appIconStyle:I

    iput v4, p0, Lcom/android/launcher2/IconInfo$Home;->folderStyle:I

    :goto_0
    return-void

    :cond_0
    sget-object v1, Lcom/android/launcher2/LauncherApplication$HomeGridSize;->GRID_5x5:Lcom/android/launcher2/LauncherApplication$HomeGridSize;

    if-ne p2, v1, :cond_1

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/IconInfo$Home;->iconSize:I

    iput v3, p0, Lcom/android/launcher2/IconInfo$Home;->appIconStyle:I

    iput v4, p0, Lcom/android/launcher2/IconInfo$Home;->folderStyle:I

    goto :goto_0

    :cond_1
    const v1, 0x7f090004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/IconInfo$Home;->iconSize:I

    const v1, 0x7f0e0005

    iput v1, p0, Lcom/android/launcher2/IconInfo$Home;->appIconStyle:I

    const v1, 0x7f0e0006

    iput v1, p0, Lcom/android/launcher2/IconInfo$Home;->folderStyle:I

    goto :goto_0
.end method
