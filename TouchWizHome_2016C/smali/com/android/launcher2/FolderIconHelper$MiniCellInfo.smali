.class public Lcom/android/launcher2/FolderIconHelper$MiniCellInfo;
.super Ljava/lang/Object;
.source "FolderIconHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/FolderIconHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MiniCellInfo"
.end annotation


# instance fields
.field colCount:I

.field mDimens:[[I

.field miniIconGapHeight:I

.field miniIconGapWidth:I

.field miniIconHeight:I

.field miniIconWidth:I

.field offsetX:I

.field offsetY:I

.field rowCount:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Lcom/android/launcher2/FolderIconHelper$MiniCellInfo;->initialize(I)V

    return-void
.end method

.method private initialize(I)V
    .locals 9

    const v8, 0x7f09000a

    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x2

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/LauncherApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez p1, :cond_1

    iput v4, p0, Lcom/android/launcher2/FolderIconHelper$MiniCellInfo;->rowCount:I

    iput v4, p0, Lcom/android/launcher2/FolderIconHelper$MiniCellInfo;->colCount:I

    :goto_0
    iget-object v2, p0, Lcom/android/launcher2/FolderIconHelper$MiniCellInfo;->mDimens:[[I

    if-nez v2, :cond_0

    const-string v2, "Launcher.FolderIconHelper"

    const-string v3, "initialize() dimens"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    filled-new-array {v4, v7}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[I

    iput-object v2, p0, Lcom/android/launcher2/FolderIconHelper$MiniCellInfo;->mDimens:[[I

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090009

    invoke-virtual {p0, v1, v5, v8, v2}, Lcom/android/launcher2/FolderIconHelper$MiniCellInfo;->setMiniValue(Landroid/content/res/Resources;III)V

    const v2, 0x7f09000b

    invoke-virtual {p0, v1, v6, v8, v2}, Lcom/android/launcher2/FolderIconHelper$MiniCellInfo;->setMiniValue(Landroid/content/res/Resources;III)V

    :cond_0
    iget-object v2, p0, Lcom/android/launcher2/FolderIconHelper$MiniCellInfo;->mDimens:[[I

    aget-object v2, v2, p1

    aget v2, v2, v5

    iput v2, p0, Lcom/android/launcher2/FolderIconHelper$MiniCellInfo;->miniIconHeight:I

    iput v2, p0, Lcom/android/launcher2/FolderIconHelper$MiniCellInfo;->miniIconWidth:I

    iget-object v2, p0, Lcom/android/launcher2/FolderIconHelper$MiniCellInfo;->mDimens:[[I

    aget-object v2, v2, p1

    aget v2, v2, v6

    iput v2, p0, Lcom/android/launcher2/FolderIconHelper$MiniCellInfo;->miniIconGapHeight:I

    iput v2, p0, Lcom/android/launcher2/FolderIconHelper$MiniCellInfo;->miniIconGapWidth:I

    iget-object v2, p0, Lcom/android/launcher2/FolderIconHelper$MiniCellInfo;->mDimens:[[I

    aget-object v2, v2, p1

    aget v2, v2, v4

    iput v2, p0, Lcom/android/launcher2/FolderIconHelper$MiniCellInfo;->offsetY:I

    iput v2, p0, Lcom/android/launcher2/FolderIconHelper$MiniCellInfo;->offsetX:I

    return-void

    :cond_1
    iput v7, p0, Lcom/android/launcher2/FolderIconHelper$MiniCellInfo;->rowCount:I

    iput v7, p0, Lcom/android/launcher2/FolderIconHelper$MiniCellInfo;->colCount:I

    goto :goto_0
.end method


# virtual methods
.method public setMiniValue(Landroid/content/res/Resources;III)V
    .locals 5

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {p1, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    # getter for: Lcom/android/launcher2/FolderIconHelper;->mAppIconSize:I
    invoke-static {}, Lcom/android/launcher2/FolderIconHelper;->access$300()I

    move-result v3

    mul-int/lit8 v4, v2, 0x2

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/android/launcher2/FolderIconHelper$MiniCellInfo;->colCount:I

    add-int/lit8 v4, v4, -0x1

    mul-int/2addr v4, v0

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/android/launcher2/FolderIconHelper$MiniCellInfo;->colCount:I

    div-int v1, v3, v4

    iget-object v3, p0, Lcom/android/launcher2/FolderIconHelper$MiniCellInfo;->mDimens:[[I

    aget-object v3, v3, p2

    const/4 v4, 0x0

    aput v1, v3, v4

    iget-object v3, p0, Lcom/android/launcher2/FolderIconHelper$MiniCellInfo;->mDimens:[[I

    aget-object v3, v3, p2

    const/4 v4, 0x1

    aput v0, v3, v4

    iget-object v3, p0, Lcom/android/launcher2/FolderIconHelper$MiniCellInfo;->mDimens:[[I

    aget-object v3, v3, p2

    const/4 v4, 0x2

    aput v2, v3, v4

    return-void
.end method
