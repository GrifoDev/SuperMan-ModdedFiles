.class Lcom/android/launcher2/theme/OpenThemeManager$FolderStyle$FolderAttr;
.super Ljava/lang/Object;
.source "OpenThemeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/theme/OpenThemeManager$FolderStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FolderAttr"
.end annotation


# instance fields
.field private folderSize:I

.field private mCloseFolderColor:I

.field private mCloseFolderImage:Landroid/graphics/Bitmap;

.field private mOpenFolderBgColor:I

.field private mOpenFolderImage:Landroid/graphics/drawable/Drawable;

.field private mOpenFolderTextColor:I

.field private mOpenFolderTitleColor:I

.field final synthetic this$0:Lcom/android/launcher2/theme/OpenThemeManager$FolderStyle;


# direct methods
.method public constructor <init>(Lcom/android/launcher2/theme/OpenThemeManager$FolderStyle;)V
    .locals 2

    iput-object p1, p0, Lcom/android/launcher2/theme/OpenThemeManager$FolderStyle$FolderAttr;->this$0:Lcom/android/launcher2/theme/OpenThemeManager$FolderStyle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/android/launcher2/theme/OpenThemeManager;->access$300()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/theme/OpenThemeManager$FolderStyle$FolderAttr;->folderSize:I

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getLauncherGridSize()Lcom/android/launcher2/LauncherApplication$HomeGridSize;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/LauncherApplication$HomeGridSize;->GRID_4x4:Lcom/android/launcher2/LauncherApplication$HomeGridSize;

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/android/launcher2/theme/OpenThemeManager;->access$300()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a01c7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    :cond_0
    return-void
.end method

.method static synthetic access$1000(Lcom/android/launcher2/theme/OpenThemeManager$FolderStyle$FolderAttr;)Landroid/graphics/Bitmap;
    .locals 1

    invoke-direct {p0}, Lcom/android/launcher2/theme/OpenThemeManager$FolderStyle$FolderAttr;->getCloseFolderImage()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/launcher2/theme/OpenThemeManager$FolderStyle$FolderAttr;)Landroid/graphics/drawable/Drawable;
    .locals 1

    invoke-direct {p0}, Lcom/android/launcher2/theme/OpenThemeManager$FolderStyle$FolderAttr;->getOpenFolderImage()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/launcher2/theme/OpenThemeManager$FolderStyle$FolderAttr;)I
    .locals 1

    invoke-direct {p0}, Lcom/android/launcher2/theme/OpenThemeManager$FolderStyle$FolderAttr;->getOpenFolderTitleColor()I

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/android/launcher2/theme/OpenThemeManager$FolderStyle$FolderAttr;)I
    .locals 1

    invoke-direct {p0}, Lcom/android/launcher2/theme/OpenThemeManager$FolderStyle$FolderAttr;->getOpenFolderTextColor()I

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/android/launcher2/theme/OpenThemeManager$FolderStyle$FolderAttr;)I
    .locals 1

    invoke-direct {p0}, Lcom/android/launcher2/theme/OpenThemeManager$FolderStyle$FolderAttr;->getCloseFolderColor()I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/launcher2/theme/OpenThemeManager$FolderStyle$FolderAttr;IIIII)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/launcher2/theme/OpenThemeManager$FolderStyle$FolderAttr;->set(IIIII)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/launcher2/theme/OpenThemeManager$FolderStyle$FolderAttr;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/launcher2/theme/OpenThemeManager$FolderStyle$FolderAttr;->set(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/launcher2/theme/OpenThemeManager$FolderStyle$FolderAttr;Landroid/graphics/drawable/Drawable;III)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/launcher2/theme/OpenThemeManager$FolderStyle$FolderAttr;->set(Landroid/graphics/drawable/Drawable;III)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/launcher2/theme/OpenThemeManager$FolderStyle$FolderAttr;IILandroid/graphics/drawable/Drawable;II)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/launcher2/theme/OpenThemeManager$FolderStyle$FolderAttr;->set(IILandroid/graphics/drawable/Drawable;II)V

    return-void
.end method

.method private getCloseFolderColor()I
    .locals 1

    iget v0, p0, Lcom/android/launcher2/theme/OpenThemeManager$FolderStyle$FolderAttr;->mCloseFolderColor:I

    return v0
.end method

.method private getCloseFolderImage()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/theme/OpenThemeManager$FolderStyle$FolderAttr;->mCloseFolderImage:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method private getOpenFolderImage()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/theme/OpenThemeManager$FolderStyle$FolderAttr;->mOpenFolderImage:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private getOpenFolderTextColor()I
    .locals 1

    iget v0, p0, Lcom/android/launcher2/theme/OpenThemeManager$FolderStyle$FolderAttr;->mOpenFolderTextColor:I

    return v0
.end method

.method private getOpenFolderTitleColor()I
    .locals 1

    iget v0, p0, Lcom/android/launcher2/theme/OpenThemeManager$FolderStyle$FolderAttr;->mOpenFolderTitleColor:I

    return v0
.end method

.method private set(IIIII)V
    .locals 7

    iget-object v3, p0, Lcom/android/launcher2/theme/OpenThemeManager$FolderStyle$FolderAttr;->this$0:Lcom/android/launcher2/theme/OpenThemeManager$FolderStyle;

    invoke-static {v3}, Lcom/android/launcher2/theme/OpenThemeManager$FolderStyle;->access$400(Lcom/android/launcher2/theme/OpenThemeManager$FolderStyle;)Lcom/android/launcher2/theme/OpenThemeManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/theme/OpenThemeManager;->getContext()Landroid/content/Context;

    move-result-object v0

    iput p2, p0, Lcom/android/launcher2/theme/OpenThemeManager$FolderStyle$FolderAttr;->mCloseFolderColor:I

    iput p4, p0, Lcom/android/launcher2/theme/OpenThemeManager$FolderStyle$FolderAttr;->mOpenFolderTitleColor:I

    iput p5, p0, Lcom/android/launcher2/theme/OpenThemeManager$FolderStyle$FolderAttr;->mOpenFolderTextColor:I

    iput p3, p0, Lcom/android/launcher2/theme/OpenThemeManager$FolderStyle$FolderAttr;->mOpenFolderBgColor:I

    iget-object v3, p0, Lcom/android/launcher2/theme/OpenThemeManager$FolderStyle$FolderAttr;->this$0:Lcom/android/launcher2/theme/OpenThemeManager$FolderStyle;

    invoke-static {v3}, Lcom/android/launcher2/theme/OpenThemeManager$FolderStyle;->access$400(Lcom/android/launcher2/theme/OpenThemeManager$FolderStyle;)Lcom/android/launcher2/theme/OpenThemeManager;

    move-result-object v3

    invoke-static {v3}, Lcom/android/launcher2/theme/OpenThemeManager;->access$000(Lcom/android/launcher2/theme/OpenThemeManager;)Lcom/android/launcher2/theme/OpenThemeLoader;

    move-result-object v3

    const-string v4, "open_folder_background_theme"

    invoke-virtual {v3, v4}, Lcom/android/launcher2/theme/OpenThemeLoader;->getItemDrawableforDefaultResource(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher2/theme/OpenThemeManager$FolderStyle$FolderAttr;->mOpenFolderImage:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/android/launcher2/theme/OpenThemeManager$FolderStyle$FolderAttr;->mOpenFolderImage:Landroid/graphics/drawable/Drawable;

    instance-of v3, v3, Landroid/graphics/drawable/NinePatchDrawable;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/launcher2/theme/OpenThemeManager$FolderStyle$FolderAttr;->this$0:Lcom/android/launcher2/theme/OpenThemeManager$FolderStyle;

    invoke-static {v3}, Lcom/android/launcher2/theme/OpenThemeManager$FolderStyle;->access$400(Lcom/android/launcher2/theme/OpenThemeManager$FolderStyle;)Lcom/android/launcher2/theme/OpenThemeManager;

    move-result-object v3

    invoke-static {v3}, Lcom/android/launcher2/theme/OpenThemeManager;->access$000(Lcom/android/launcher2/theme/OpenThemeManager;)Lcom/android/launcher2/theme/OpenThemeLoader;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher2/theme/OpenThemeManager$FolderStyle$FolderAttr;->this$0:Lcom/android/launcher2/theme/OpenThemeManager$FolderStyle;

    iget-object v4, v4, Lcom/android/launcher2/theme/OpenThemeManager$FolderStyle;->key:[Ljava/lang/String;

    sget-object v5, Lcom/android/launcher2/theme/OpenThemeManager$FolderStyle$FolderStyleItems;->OPEN_FOLDER_BG:Lcom/android/launcher2/theme/OpenThemeManager$FolderStyle$FolderStyleItems;

    invoke-virtual {v5}, Lcom/android/launcher2/theme/OpenThemeManager$FolderStyle$FolderStyleItems;->value()I

    move-result v5

    aget-object v4, v4, v5

    const/4 v5, 0x1

    sget-object v6, Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;->HOME:Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;

    invoke-virtual {v6}, Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;->value()I

    move-result v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/launcher2/theme/OpenThemeLoader;->getItemBitmap(Ljava/lang/String;ZI)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    iget-object v3, p0, Lcom/android/launcher2/theme/OpenThemeManager$FolderStyle$FolderAttr;->mOpenFolderImage:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/android/launcher2/theme/OpenThemeManager$FolderStyle$FolderAttr;->mOpenFolderBgColor:I

    const v4, 0x1ffffff

    if-eq v3, v4, :cond_1

    iget-object v3, p0, Lcom/android/launcher2/theme/OpenThemeManager$FolderStyle$FolderAttr;->mOpenFolderImage:Landroid/graphics/drawable/Drawable;

    iget v4, p0, Lcom/android/launcher2/theme/OpenThemeManager$FolderStyle$FolderAttr;->mOpenFolderBgColor:I

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_1
    invoke-static {}, Lcom/android/launcher2/theme/OpenThemeManager$FolderStyle;->access$500()[I

    move-result-object v3

    aget v3, v3, p1

    invoke-static {v0, v3, p2}, Lcom/android/launcher2/Utilities;->getBitmapWithColor(Landroid/content/Context;II)Landroid/graphics/Bitmap;

    move-result-object v1

    iget v3, p0, Lcom/android/launcher2/theme/OpenThemeManager$FolderStyle$FolderAttr;->folderSize:I

    invoke-static {v1, v3}, Lcom/android/launcher2/theme/ThemeUtils;->resizeBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher2/theme/OpenThemeManager$FolderStyle$FolderAttr;->mCloseFolderImage:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/android/launcher2/theme/OpenThemeManager$FolderStyle$FolderAttr;->mCloseFolderImage:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_2
    return-void
.end method

.method private set(IILandroid/graphics/drawable/Drawable;II)V
    .locals 3

    iget-object v2, p0, Lcom/android/launcher2/theme/OpenThemeManager$FolderStyle$FolderAttr;->this$0:Lcom/android/launcher2/theme/OpenThemeManager$FolderStyle;

    invoke-static {v2}, Lcom/android/launcher2/theme/OpenThemeManager$FolderStyle;->access$400(Lcom/android/launcher2/theme/OpenThemeManager$FolderStyle;)Lcom/android/launcher2/theme/OpenThemeManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/theme/OpenThemeManager;->getContext()Landroid/content/Context;

    move-result-object v0

    iput p2, p0, Lcom/android/launcher2/theme/OpenThemeManager$FolderStyle$FolderAttr;->mCloseFolderColor:I

    iput-object p3, p0, Lcom/android/launcher2/theme/OpenThemeManager$FolderStyle$FolderAttr;->mOpenFolderImage:Landroid/graphics/drawable/Drawable;

    iput p4, p0, Lcom/android/launcher2/theme/OpenThemeManager$FolderStyle$FolderAttr;->mOpenFolderTitleColor:I

    iput p5, p0, Lcom/android/launcher2/theme/OpenThemeManager$FolderStyle$FolderAttr;->mOpenFolderTextColor:I

    invoke-static {}, Lcom/android/launcher2/theme/OpenThemeManager$FolderStyle;->access$500()[I

    move-result-object v2

    aget v2, v2, p1

    invoke-static {v0, v2, p2}, Lcom/android/launcher2/Utilities;->getBitmapWithColor(Landroid/content/Context;II)Landroid/graphics/Bitmap;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher2/theme/OpenThemeManager$FolderStyle$FolderAttr;->folderSize:I

    invoke-static {v1, v2}, Lcom/android/launcher2/theme/ThemeUtils;->resizeBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher2/theme/OpenThemeManager$FolderStyle$FolderAttr;->mCloseFolderImage:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/android/launcher2/theme/OpenThemeManager$FolderStyle$FolderAttr;->mCloseFolderImage:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    return-void
.end method

.method private set(Landroid/graphics/drawable/Drawable;III)V
    .locals 4

    iput p2, p0, Lcom/android/launcher2/theme/OpenThemeManager$FolderStyle$FolderAttr;->mOpenFolderBgColor:I

    iput p3, p0, Lcom/android/launcher2/theme/OpenThemeManager$FolderStyle$FolderAttr;->mOpenFolderTitleColor:I

    iput p4, p0, Lcom/android/launcher2/theme/OpenThemeManager$FolderStyle$FolderAttr;->mOpenFolderTextColor:I

    iget-object v1, p0, Lcom/android/launcher2/theme/OpenThemeManager$FolderStyle$FolderAttr;->this$0:Lcom/android/launcher2/theme/OpenThemeManager$FolderStyle;

    invoke-static {v1}, Lcom/android/launcher2/theme/OpenThemeManager$FolderStyle;->access$400(Lcom/android/launcher2/theme/OpenThemeManager$FolderStyle;)Lcom/android/launcher2/theme/OpenThemeManager;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher2/theme/OpenThemeManager;->access$000(Lcom/android/launcher2/theme/OpenThemeManager;)Lcom/android/launcher2/theme/OpenThemeLoader;

    move-result-object v1

    const-string v2, "open_folder_background_theme"

    invoke-virtual {v1, v2}, Lcom/android/launcher2/theme/OpenThemeLoader;->getItemDrawableforDefaultResource(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/theme/OpenThemeManager$FolderStyle$FolderAttr;->mOpenFolderImage:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/launcher2/theme/OpenThemeManager$FolderStyle$FolderAttr;->mOpenFolderImage:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/theme/OpenThemeManager$FolderStyle$FolderAttr;->mOpenFolderImage:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/android/launcher2/theme/OpenThemeManager$FolderStyle$FolderAttr;->mOpenFolderBgColor:I

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_0
    invoke-static {p1}, Lcom/android/launcher2/Utilities;->getBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher2/theme/OpenThemeManager$FolderStyle$FolderAttr;->folderSize:I

    invoke-static {v0, v1}, Lcom/android/launcher2/theme/ThemeUtils;->resizeBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/theme/OpenThemeManager$FolderStyle$FolderAttr;->mCloseFolderImage:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/launcher2/theme/OpenThemeManager$FolderStyle$FolderAttr;->mCloseFolderImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    return-void
.end method

.method private set(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)V
    .locals 2

    iput-object p2, p0, Lcom/android/launcher2/theme/OpenThemeManager$FolderStyle$FolderAttr;->mOpenFolderImage:Landroid/graphics/drawable/Drawable;

    iput p3, p0, Lcom/android/launcher2/theme/OpenThemeManager$FolderStyle$FolderAttr;->mOpenFolderTitleColor:I

    iput p4, p0, Lcom/android/launcher2/theme/OpenThemeManager$FolderStyle$FolderAttr;->mOpenFolderTextColor:I

    invoke-static {p1}, Lcom/android/launcher2/Utilities;->getBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher2/theme/OpenThemeManager$FolderStyle$FolderAttr;->folderSize:I

    invoke-static {v0, v1}, Lcom/android/launcher2/theme/ThemeUtils;->resizeBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/theme/OpenThemeManager$FolderStyle$FolderAttr;->mCloseFolderImage:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/launcher2/theme/OpenThemeManager$FolderStyle$FolderAttr;->mCloseFolderImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    return-void
.end method
