.class public abstract Lcom/android/launcher2/IconInfo$Info;
.super Ljava/lang/Object;
.source "IconInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/IconInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Info"
.end annotation


# instance fields
.field protected appIconStyle:I

.field protected folderStyle:I

.field public iconSize:I

.field protected mGridSize:Lcom/android/launcher2/LauncherApplication$HomeGridSize;

.field private mHomeIconTextViewStyle:Landroid/content/res/TypedArray;

.field private mHomeIconViewStyle:Landroid/content/res/TypedArray;

.field private mHomeIcon_FolderTextViewStyle:Landroid/content/res/TypedArray;

.field private mHomeIcon_FolderViewStyle:Landroid/content/res/TypedArray;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher2/IconInfo$Info;->iconSize:I

    return-void
.end method


# virtual methods
.method public applyAppIconView(Lcom/android/launcher2/AppIconView;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/IconInfo$Info;->mHomeIconViewStyle:Landroid/content/res/TypedArray;

    iget-object v1, p0, Lcom/android/launcher2/IconInfo$Info;->mHomeIconTextViewStyle:Landroid/content/res/TypedArray;

    invoke-virtual {p1, v0, v1}, Lcom/android/launcher2/AppIconView;->applyStyle(Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;)V

    return-void
.end method

.method public applyFolderIconView(Lcom/android/launcher2/AppIconView;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/IconInfo$Info;->mHomeIcon_FolderViewStyle:Landroid/content/res/TypedArray;

    iget-object v1, p0, Lcom/android/launcher2/IconInfo$Info;->mHomeIcon_FolderTextViewStyle:Landroid/content/res/TypedArray;

    invoke-virtual {p1, v0, v1}, Lcom/android/launcher2/AppIconView;->applyStyle(Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;)V

    return-void
.end method

.method public applyMenuAppIconView(Lcom/android/launcher2/MenuAppIconView;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/IconInfo$Info;->mHomeIconViewStyle:Landroid/content/res/TypedArray;

    iget-object v1, p0, Lcom/android/launcher2/IconInfo$Info;->mHomeIconTextViewStyle:Landroid/content/res/TypedArray;

    invoke-virtual {p1, v0, v1}, Lcom/android/launcher2/MenuAppIconView;->applyStyle(Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;)V

    return-void
.end method

.method public gridSizeChange(Landroid/content/Context;Lcom/android/launcher2/LauncherApplication$HomeGridSize;)V
    .locals 0

    return-void
.end method

.method public hotseatSizeChanged(Landroid/content/Context;I)V
    .locals 0

    return-void
.end method

.method public loadHotseatSize()V
    .locals 0

    return-void
.end method

.method public loadStyle(Landroid/content/Context;)V
    .locals 1

    iget v0, p0, Lcom/android/launcher2/IconInfo$Info;->appIconStyle:I

    invoke-static {p1, v0}, Lcom/android/launcher2/AppIconView;->getTextViewStyle(Landroid/content/Context;I)Landroid/content/res/TypedArray;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/IconInfo$Info;->mHomeIconTextViewStyle:Landroid/content/res/TypedArray;

    iget v0, p0, Lcom/android/launcher2/IconInfo$Info;->appIconStyle:I

    invoke-static {p1, v0}, Lcom/android/launcher2/AppIconView;->getViewStyle(Landroid/content/Context;I)Landroid/content/res/TypedArray;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/IconInfo$Info;->mHomeIconViewStyle:Landroid/content/res/TypedArray;

    iget v0, p0, Lcom/android/launcher2/IconInfo$Info;->folderStyle:I

    invoke-static {p1, v0}, Lcom/android/launcher2/AppIconView;->getTextViewStyle(Landroid/content/Context;I)Landroid/content/res/TypedArray;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/IconInfo$Info;->mHomeIcon_FolderTextViewStyle:Landroid/content/res/TypedArray;

    iget v0, p0, Lcom/android/launcher2/IconInfo$Info;->folderStyle:I

    invoke-static {p1, v0}, Lcom/android/launcher2/AppIconView;->getViewStyle(Landroid/content/Context;I)Landroid/content/res/TypedArray;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/IconInfo$Info;->mHomeIcon_FolderViewStyle:Landroid/content/res/TypedArray;

    return-void
.end method

.method public recycleViewStyles()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/IconInfo$Info;->mHomeIconViewStyle:Landroid/content/res/TypedArray;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/IconInfo$Info;->mHomeIconViewStyle:Landroid/content/res/TypedArray;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/IconInfo$Info;->mHomeIconTextViewStyle:Landroid/content/res/TypedArray;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/IconInfo$Info;->mHomeIconTextViewStyle:Landroid/content/res/TypedArray;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/IconInfo$Info;->mHomeIcon_FolderViewStyle:Landroid/content/res/TypedArray;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher2/IconInfo$Info;->mHomeIcon_FolderViewStyle:Landroid/content/res/TypedArray;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    :cond_2
    iget-object v0, p0, Lcom/android/launcher2/IconInfo$Info;->mHomeIcon_FolderTextViewStyle:Landroid/content/res/TypedArray;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/launcher2/IconInfo$Info;->mHomeIcon_FolderTextViewStyle:Landroid/content/res/TypedArray;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    :cond_3
    return-void
.end method
