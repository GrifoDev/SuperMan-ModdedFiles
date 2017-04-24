.class public Lcom/android/launcher2/WidgetFolderView;
.super Lcom/android/launcher2/PagedViewWidget;
.source "WidgetFolderView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WidgetFolderView"

.field private static final arabicNumberArray:[C

.field private static final farsiNumberArray:[C


# instance fields
.field private mArrowBtn:Landroid/widget/ImageView;

.field private mFolderItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/AvailableWidget;",
            ">;"
        }
    .end annotation
.end field

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mPreviewHeight:I

.field private mPreviewWidth:I

.field private mTitle:Landroid/widget/TextView;

.field private mTitle_dims:Landroid/widget/TextView;

.field private mWidgetFolder:Lcom/android/launcher2/WidgetFolder;

.field private mWidgetGridView:Landroid/widget/GridLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v1, 0xa

    new-array v0, v1, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/launcher2/WidgetFolderView;->arabicNumberArray:[C

    new-array v0, v1, [C

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/launcher2/WidgetFolderView;->farsiNumberArray:[C

    return-void

    nop

    :array_0
    .array-data 2
        0x660s
        0x661s
        0x662s
        0x663s
        0x664s
        0x665s
        0x666s
        0x667s
        0x668s
        0x669s
    .end array-data

    :array_1
    .array-data 2
        0x660s
        0x661s
        0x662s
        0x663s
        0x6f4s
        0x6f5s
        0x6f6s
        0x667s
        0x668s
        0x669s
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1}, Lcom/android/launcher2/PagedViewWidget;-><init>(Landroid/content/Context;)V

    iput v0, p0, Lcom/android/launcher2/WidgetFolderView;->mPreviewWidth:I

    iput v0, p0, Lcom/android/launcher2/WidgetFolderView;->mPreviewHeight:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/PagedViewWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v0, p0, Lcom/android/launcher2/WidgetFolderView;->mPreviewWidth:I

    iput v0, p0, Lcom/android/launcher2/WidgetFolderView;->mPreviewHeight:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher2/PagedViewWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput v0, p0, Lcom/android/launcher2/WidgetFolderView;->mPreviewWidth:I

    iput v0, p0, Lcom/android/launcher2/WidgetFolderView;->mPreviewHeight:I

    return-void
.end method

.method private getPreviewHeight()I
    .locals 2

    iget v0, p0, Lcom/android/launcher2/WidgetFolderView;->mPreviewHeight:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/WidgetFolderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09014e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/WidgetFolderView;->mPreviewHeight:I

    :cond_0
    iget v0, p0, Lcom/android/launcher2/WidgetFolderView;->mPreviewHeight:I

    return v0
.end method

.method private getPreviewWidth()I
    .locals 3

    iget v0, p0, Lcom/android/launcher2/WidgetFolderView;->mPreviewWidth:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/WidgetFolderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090150

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher2/WidgetFolderView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090163

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/launcher2/WidgetFolderView;->mPreviewWidth:I

    :cond_0
    iget v0, p0, Lcom/android/launcher2/WidgetFolderView;->mPreviewWidth:I

    return v0
.end method

.method private setTalkbackDescription(Ljava/lang/String;I)V
    .locals 7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/launcher2/WidgetFolderView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080047

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/launcher2/WidgetFolderView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0800da

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    move-object p1, v0

    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/launcher2/WidgetFolderView;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void

    :cond_2
    const-string v1, ""

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v2, v3, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    :cond_3
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "fr"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method private static toArabicDigits(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "ar"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/android/launcher2/WidgetFolderView;->arabicNumberArray:[C

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int/lit8 v3, v3, -0x30

    aget-char v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string v2, "fa"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/launcher2/WidgetFolderView;->farsiNumberArray:[C

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int/lit8 v3, v3, -0x30

    aget-char v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public getArrowBtn()Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/WidgetFolderView;->mArrowBtn:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getTitleTextView()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/WidgetFolderView;->mTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method protected getUninstallIcon()Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/WidgetFolderView;->mUninstallIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getWidgetFolderTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/WidgetFolderView;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected loadPreview(Lcom/android/launcher2/utils/common/ThreadPool$JobContext;Ljava/lang/Object;II)Ljava/lang/Object;
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/AvailableWidget;

    invoke-interface {p1}, Lcom/android/launcher2/utils/common/ThreadPool$JobContext;->isCancelled()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    :cond_0
    return-object v0

    :cond_1
    invoke-direct {p0}, Lcom/android/launcher2/WidgetFolderView;->getPreviewWidth()I

    move-result v4

    invoke-direct {p0}, Lcom/android/launcher2/WidgetFolderView;->getPreviewHeight()I

    move-result v5

    invoke-interface {v2, v4, v5}, Lcom/android/launcher2/AvailableWidget;->getPreview(II)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public onFinishInflate()V
    .locals 2

    const v0, 0x7f100109

    invoke-virtual {p0, v0}, Lcom/android/launcher2/WidgetFolderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/launcher2/WidgetFolderView;->mTitle:Landroid/widget/TextView;

    const v0, 0x7f10010a

    invoke-virtual {p0, v0}, Lcom/android/launcher2/WidgetFolderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/launcher2/WidgetFolderView;->mTitle_dims:Landroid/widget/TextView;

    const v0, 0x7f10010d

    invoke-virtual {p0, v0}, Lcom/android/launcher2/WidgetFolderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridLayout;

    iput-object v0, p0, Lcom/android/launcher2/WidgetFolderView;->mWidgetGridView:Landroid/widget/GridLayout;

    const v0, 0x7f10010b

    invoke-virtual {p0, v0}, Lcom/android/launcher2/WidgetFolderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/launcher2/WidgetFolderView;->mArrowBtn:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/launcher2/WidgetFolderView;->mArrowBtn:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    const v0, 0x7f10010c

    invoke-virtual {p0, v0}, Lcom/android/launcher2/WidgetFolderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/launcher2/WidgetFolderView;->mUninstallIcon:Landroid/widget/ImageView;

    return-void
.end method

.method public openWidgetFolder(Lcom/android/launcher2/MenuWidgets;Lcom/android/launcher2/MenuWidgets$MenuWidgetsFolderMgr;)Lcom/android/launcher2/WidgetFolder;
    .locals 11

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {p0}, Lcom/android/launcher2/WidgetFolderView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    iput-object v7, p0, Lcom/android/launcher2/WidgetFolderView;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {p0}, Lcom/android/launcher2/WidgetFolderView;->getContext()Landroid/content/Context;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/Launcher;

    invoke-virtual {v7}, Lcom/android/launcher2/Launcher;->getAnimationLayer()Lcom/android/launcher2/AnimationLayer;

    move-result-object v6

    iget-object v7, p0, Lcom/android/launcher2/WidgetFolderView;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v8, 0x7f03004d

    invoke-virtual {v7, v8, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/WidgetFolder;

    iput-object v7, p0, Lcom/android/launcher2/WidgetFolderView;->mWidgetFolder:Lcom/android/launcher2/WidgetFolder;

    iget-object v7, p0, Lcom/android/launcher2/WidgetFolderView;->mWidgetFolder:Lcom/android/launcher2/WidgetFolder;

    invoke-virtual {v7, p2}, Lcom/android/launcher2/WidgetFolder;->setWidgetFolderManager(Lcom/android/launcher2/MenuWidgets$MenuWidgetsFolderMgr;)V

    iget-object v7, p0, Lcom/android/launcher2/WidgetFolderView;->mWidgetFolder:Lcom/android/launcher2/WidgetFolder;

    invoke-virtual {v7, p0}, Lcom/android/launcher2/WidgetFolder;->setWidgetFolderView(Lcom/android/launcher2/WidgetFolderView;)V

    iget-object v8, p0, Lcom/android/launcher2/WidgetFolderView;->mWidgetFolder:Lcom/android/launcher2/WidgetFolder;

    invoke-virtual {p0}, Lcom/android/launcher2/WidgetFolderView;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/PagedViewGridLayout;

    invoke-virtual {v7, p0}, Lcom/android/launcher2/PagedViewGridLayout;->indexOfChild(Landroid/view/View;)I

    move-result v7

    invoke-virtual {v8, v7}, Lcom/android/launcher2/WidgetFolder;->setWidgetFolderViewIndex(I)V

    iget-object v7, p0, Lcom/android/launcher2/WidgetFolderView;->mFolderItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/AvailableWidget;

    invoke-interface {v7}, Lcom/android/launcher2/AvailableWidget;->createHomePendingItem()Lcom/android/launcher2/HomePendingItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/HomePendingItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/launcher2/WidgetFolderView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/4 v7, 0x0

    :try_start_0
    invoke-virtual {v5, v4, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v5, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v7, p0, Lcom/android/launcher2/WidgetFolderView;->mWidgetFolder:Lcom/android/launcher2/WidgetFolder;

    invoke-virtual {v7, v2}, Lcom/android/launcher2/WidgetFolder;->setOpenWidgetFolderTitle(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v5, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v7, p0, Lcom/android/launcher2/WidgetFolderView;->mWidgetFolder:Lcom/android/launcher2/WidgetFolder;

    invoke-virtual {v7, v2}, Lcom/android/launcher2/WidgetFolder;->setOpenWidgetFolderTitle(Ljava/lang/String;)V

    :cond_1
    iget-object v7, p0, Lcom/android/launcher2/WidgetFolderView;->mWidgetFolder:Lcom/android/launcher2/WidgetFolder;

    iget-object v8, p0, Lcom/android/launcher2/WidgetFolderView;->mFolderItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v8, p1}, Lcom/android/launcher2/WidgetFolder;->setWidgetFolderItems(Ljava/util/ArrayList;Lcom/android/launcher2/MenuWidgets;)V

    iget-object v7, p0, Lcom/android/launcher2/WidgetFolderView;->mWidgetFolder:Lcom/android/launcher2/WidgetFolder;

    const/4 v8, 0x1

    invoke-virtual {v7, v6, v10, v8}, Lcom/android/launcher2/WidgetFolder;->open(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Z)V

    const/16 v7, 0x80

    invoke-virtual {p0, v7, v10}, Lcom/android/launcher2/WidgetFolderView;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    iget-object v7, p0, Lcom/android/launcher2/WidgetFolderView;->mWidgetFolder:Lcom/android/launcher2/WidgetFolder;

    return-object v7

    :catch_0
    move-exception v1

    const-string v7, "WidgetFolderView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "can not find "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " , Load from packageinfo"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, v3, Lcom/android/launcher2/HomePendingItem;->user:Lcom/android/launcher2/compat/UserHandleCompat;

    invoke-virtual {p1, v4, v7}, Lcom/android/launcher2/MenuWidgets;->getLabelFromPackageInfo(Ljava/lang/String;Lcom/android/launcher2/compat/UserHandleCompat;)Ljava/lang/String;

    move-result-object v2

    iget-object v7, p0, Lcom/android/launcher2/WidgetFolderView;->mWidgetFolder:Lcom/android/launcher2/WidgetFolder;

    invoke-virtual {v7, v2}, Lcom/android/launcher2/WidgetFolder;->setOpenWidgetFolderTitle(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected postToSetPreview(Ljava/lang/Object;II)V
    .locals 0

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/android/launcher2/WidgetFolderView;->setWidgetFolderImage(Ljava/util/ArrayList;)V

    return-void
.end method

.method protected resetToRecycle()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/launcher2/WidgetFolderView;->mLoadTask:Lcom/android/launcher2/utils/common/Future;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/WidgetFolderView;->mLoadTask:Lcom/android/launcher2/utils/common/Future;

    invoke-interface {v0}, Lcom/android/launcher2/utils/common/Future;->cancel()V

    iput-object v1, p0, Lcom/android/launcher2/WidgetFolderView;->mLoadTask:Lcom/android/launcher2/utils/common/Future;

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/WidgetFolderView;->exitUninstallMode(Z)V

    invoke-virtual {p0, v1}, Lcom/android/launcher2/WidgetFolderView;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Lcom/android/launcher2/WidgetFolderView;->setWidgetFolderItems(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/android/launcher2/WidgetFolderView;->mWidgetGridView:Landroid/widget/GridLayout;

    invoke-virtual {v0}, Landroid/widget/GridLayout;->removeAllViews()V

    return-void
.end method

.method public setAlphaArrowBtn(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/WidgetFolderView;->mArrowBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setAlpha(I)V

    return-void
.end method

.method public setArrowBtnVisibility(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/WidgetFolderView;->mArrowBtn:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/WidgetFolderView;->mArrowBtn:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setWidgetFolderImage(Ljava/util/ArrayList;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/launcher2/WidgetFolderView;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    iget-object v10, p0, Lcom/android/launcher2/WidgetFolderView;->mWidgetGridView:Landroid/widget/GridLayout;

    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Landroid/widget/GridLayout;->setColumnCount(I)V

    const v10, 0x7f090163

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v10, p0, Lcom/android/launcher2/WidgetFolderView;->mWidgetGridView:Landroid/widget/GridLayout;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/widget/GridLayout;->setRowCount(I)V

    const/4 v8, 0x2

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_0
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    add-int/lit8 v1, v1, 0x1

    if-le v1, v8, :cond_2

    :cond_1
    return-void

    :cond_2
    new-instance v3, Lcom/android/launcher2/FastBitmapDrawable;

    invoke-direct {v3, v2}, Lcom/android/launcher2/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    if-eqz v3, :cond_0

    add-int/lit8 v10, v1, -0x1

    rem-int/lit8 v5, v10, 0x2

    add-int/lit8 v10, v1, -0x1

    div-int/lit8 v6, v10, 0x2

    new-instance v4, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/launcher2/WidgetFolderView;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v4, v10}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    sget-boolean v10, Lcom/android/launcher2/Launcher;->sIsNeedDarkColor:Z

    if-eqz v10, :cond_3

    const v10, 0x7f020078

    invoke-virtual {v4, v10}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :goto_1
    const/16 v10, 0xa

    const/16 v12, 0xd

    const/16 v13, 0xa

    const/16 v14, 0xc

    invoke-virtual {v4, v10, v12, v13, v14}, Landroid/widget/ImageView;->setPadding(IIII)V

    new-instance v7, Landroid/widget/GridLayout$LayoutParams;

    sget-object v10, Landroid/widget/GridLayout;->START:Landroid/widget/GridLayout$Alignment;

    invoke-static {v6, v10}, Landroid/widget/GridLayout;->spec(ILandroid/widget/GridLayout$Alignment;)Landroid/widget/GridLayout$Spec;

    move-result-object v10

    sget-object v12, Landroid/widget/GridLayout;->TOP:Landroid/widget/GridLayout$Alignment;

    invoke-static {v5, v12}, Landroid/widget/GridLayout;->spec(ILandroid/widget/GridLayout$Alignment;)Landroid/widget/GridLayout$Spec;

    move-result-object v12

    invoke-direct {v7, v10, v12}, Landroid/widget/GridLayout$LayoutParams;-><init>(Landroid/widget/GridLayout$Spec;Landroid/widget/GridLayout$Spec;)V

    const v10, 0x800033

    invoke-virtual {v7, v10}, Landroid/widget/GridLayout$LayoutParams;->setGravity(I)V

    invoke-static {}, Lcom/android/launcher2/Utilities;->isLayoutRtl()Z

    move-result v10

    if-eqz v10, :cond_6

    if-lez v5, :cond_4

    div-int/lit8 v10, v0, 0x2

    :goto_2
    iput v10, v7, Landroid/widget/GridLayout$LayoutParams;->rightMargin:I

    if-lez v5, :cond_5

    const/4 v10, 0x0

    :goto_3
    iput v10, v7, Landroid/widget/GridLayout$LayoutParams;->leftMargin:I

    :goto_4
    const/4 v10, 0x0

    iput v10, v7, Landroid/widget/GridLayout$LayoutParams;->topMargin:I

    invoke-direct {p0}, Lcom/android/launcher2/WidgetFolderView;->getPreviewWidth()I

    move-result v10

    iput v10, v7, Landroid/widget/GridLayout$LayoutParams;->width:I

    invoke-direct {p0}, Lcom/android/launcher2/WidgetFolderView;->getPreviewHeight()I

    move-result v10

    iput v10, v7, Landroid/widget/GridLayout$LayoutParams;->height:I

    iget-object v10, p0, Lcom/android/launcher2/WidgetFolderView;->mWidgetGridView:Landroid/widget/GridLayout;

    add-int/lit8 v12, v1, -0x1

    invoke-virtual {v10, v4, v12, v7}, Landroid/widget/GridLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_3
    const v10, 0x7f020077

    invoke-virtual {v4, v10}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_1

    :cond_4
    const/4 v10, 0x0

    goto :goto_2

    :cond_5
    div-int/lit8 v10, v0, 0x2

    goto :goto_3

    :cond_6
    if-lez v5, :cond_7

    div-int/lit8 v10, v0, 0x2

    :goto_5
    iput v10, v7, Landroid/widget/GridLayout$LayoutParams;->leftMargin:I

    if-lez v5, :cond_8

    const/4 v10, 0x0

    :goto_6
    iput v10, v7, Landroid/widget/GridLayout$LayoutParams;->rightMargin:I

    goto :goto_4

    :cond_7
    const/4 v10, 0x0

    goto :goto_5

    :cond_8
    div-int/lit8 v10, v0, 0x2

    goto :goto_6
.end method

.method public setWidgetFolderItems(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/AvailableWidget;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/launcher2/WidgetFolderView;->mFolderItems:Ljava/util/ArrayList;

    return-void
.end method

.method public setWidgetFolderTitle(Ljava/lang/String;I)V
    .locals 5

    invoke-virtual {p0}, Lcom/android/launcher2/WidgetFolderView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ar"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "fa"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/android/launcher2/WidgetFolderView;->toArabicDigits(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    iget-object v2, p0, Lcom/android/launcher2/WidgetFolderView;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/launcher2/WidgetFolderView;->mTitle_dims:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/launcher2/WidgetFolderView;->mTitle:Landroid/widget/TextView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v2, p0, Lcom/android/launcher2/WidgetFolderView;->mTitle:Landroid/widget/TextView;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    sget-boolean v2, Lcom/android/launcher2/Launcher;->sIsNeedDarkColor:Z

    iget-object v3, p0, Lcom/android/launcher2/WidgetFolderView;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p0, v2, v3}, Lcom/android/launcher2/WidgetFolderView;->changeTextColor(ZLandroid/widget/TextView;)V

    sget-boolean v2, Lcom/android/launcher2/Launcher;->sIsNeedDarkColor:Z

    iget-object v3, p0, Lcom/android/launcher2/WidgetFolderView;->mTitle_dims:Landroid/widget/TextView;

    invoke-virtual {p0, v2, v3}, Lcom/android/launcher2/WidgetFolderView;->changeTextColor(ZLandroid/widget/TextView;)V

    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/WidgetFolderView;->setTalkbackDescription(Ljava/lang/String;I)V

    return-void

    :cond_1
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public startHideOverlayAnimation()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/launcher2/WidgetFolderView;->getUninstallIcon()Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/WidgetFolderView;->getUninstallIcon()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/WidgetFolderView;->getUninstallIcon()Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/WidgetFolderView;->mUninstallIconHideAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/WidgetFolderView;->mArrowBtn:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/WidgetFolderView;->mArrowBtn:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/launcher2/WidgetFolderView;->mUninstallIconShowAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_1
    return-void
.end method

.method public startShowOverlayAnimation()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/launcher2/WidgetFolderView;->getUninstallIcon()Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/WidgetFolderView;->getUninstallIcon()Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/WidgetFolderView;->mUninstallIconShowAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/WidgetFolderView;->mArrowBtn:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/WidgetFolderView;->mArrowBtn:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/launcher2/WidgetFolderView;->mUninstallIconShowAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_1
    return-void
.end method
