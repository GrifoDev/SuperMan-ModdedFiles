.class public Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer;
.super Landroid/widget/LinearLayout;
.source "QuickLaunchContainer.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchButton$ItemChanged;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer$AddButton;,
        Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer$AppPickerAdapter;,
        Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer$SettingsReceiver;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "3Minit"


# instance fields
.field mAppDialog:Landroid/app/Dialog;

.field private mBackgroundColor:I

.field private mBackgroundImage:Landroid/graphics/drawable/Drawable;

.field private mButtons:[Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mImageFilename:Ljava/lang/String;

.field mMainDialog:Landroid/app/Dialog;

.field private mNumVisButtons:I

.field private mSettingsReceiver:Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer$SettingsReceiver;

.field private mShowAddButton:Z

.field private mShowDevider:Z

.field private mTextColor:I

.field private mTextVisible:Z

.field private mUseBgImage:Z

.field private mWidth:I

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    const/4 v6, 0x5

    const/4 v5, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v6, p0, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer;->mNumVisButtons:I

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "com.three.minit"

    aput-object v3, v2, v5

    const/4 v3, 0x1

    const-string v4, "com.sec.android.app.camera"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "com.sec.android.app.clockpackage"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "com.android.mms"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "com.android.email"

    aput-object v4, v2, v3

    const-string v3, "com.android.chrome"

    aput-object v3, v2, v6

    const/4 v3, 0x6

    const-string v4, "com.android.vending"

    aput-object v4, v2, v3

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer;->mButtons:[Ljava/lang/String;

    const/4 v2, -0x1

    iput v2, p0, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer;->mTextColor:I

    iput v5, p0, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer;->mBackgroundColor:I

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer;->mContext:Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    iget v2, v1, Landroid/graphics/Point;->x:I

    iput v2, p0, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer;->mWidth:I

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer;->loadSettings()V

    return-void
.end method

.method static synthetic access$0(Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer;->showAppDialog(IZ)V

    return-void
.end method

.method static synthetic access$1(Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer;->loadSettings()V

    return-void
.end method

.method static synthetic access$2(Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer;->removeButton(I)V

    return-void
.end method

.method static synthetic access$3(Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer;->changeButtonPkgName(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$4(Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer;->mButtons:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5(Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer;[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer;->mButtons:[Ljava/lang/String;

    return-void
.end method

.method static synthetic access$6(Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer;->saveButtonList()V

    return-void
.end method

.method static synthetic access$7(Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer;->addButtons()V

    return-void
.end method

.method private addButtons()V
    .locals 11

    const/4 v10, 0x1

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer;->removeAllViews()V

    const/16 v6, 0x41

    iget-boolean v8, p0, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer;->mTextVisible:Z

    if-nez v8, :cond_0

    const/16 v6, 0x2e

    :cond_0
    int-to-float v8, v6

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    invoke-static {v10, v8, v9}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    iget v8, p0, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer;->mWidth:I

    iget v9, p0, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer;->mNumVisButtons:I

    div-int/2addr v8, v9

    float-to-int v9, v4

    invoke-direct {v2, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-boolean v8, p0, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer;->mShowDevider:Z

    if-eqz v8, :cond_1

    invoke-virtual {v2, v7, v7, v10, v7}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    :cond_1
    const/4 v0, 0x0

    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer;->mButtons:[Ljava/lang/String;

    array-length v9, v8

    :goto_0
    if-lt v7, v9, :cond_3

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer;->mShowAddButton:Z

    if-eqz v7, :cond_2

    new-instance v7, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer$AddButton;

    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer;->mContext:Landroid/content/Context;

    iget v9, p0, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer;->mBackgroundColor:I

    invoke-direct {v7, p0, v8, v9}, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer$AddButton;-><init>(Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer;Landroid/content/Context;I)V

    new-instance v8, Landroid/view/ViewGroup$LayoutParams;

    float-to-int v9, v4

    add-int/lit8 v9, v9, -0x16

    float-to-int v10, v4

    invoke-direct {v8, v9, v10}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v7, v8}, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v7, -0x2

    const/4 v8, -0x1

    invoke-direct {v3, v7, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget v7, p0, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer;->mNumVisButtons:I

    if-ge v0, v7, :cond_6

    const/16 v7, 0x11

    iput v7, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    :goto_1
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_3
    aget-object v1, v8, v7

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer;->checkForPackageExistance(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    new-instance v5, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchButton;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v5, v10, v1}, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchButton;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-boolean v10, p0, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer;->mUseBgImage:Z

    if-eqz v10, :cond_5

    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer;->mBackgroundImage:Landroid/graphics/drawable/Drawable;

    if-eqz v10, :cond_5

    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer;->mBackgroundImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v10}, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_2
    iget v10, p0, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer;->mTextColor:I

    invoke-virtual {v5, v10}, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchButton;->setTextColor(I)V

    iget-boolean v10, p0, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer;->mTextVisible:Z

    invoke-virtual {v5, v10}, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchButton;->setTextVisibility(Z)V

    invoke-virtual {v5, p0}, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchButton;->setItemChanged(Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchButton$ItemChanged;)V

    invoke-virtual {v5, v0}, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchButton;->setId(I)V

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v5, v2}, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_5
    iget v10, p0, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer;->mBackgroundColor:I

    invoke-virtual {v5, v10}, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchButton;->setBackgroundColor(I)V

    goto :goto_2

    :cond_6
    const/4 v7, 0x3

    iput v7, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_1
.end method

.method private changeButtonPkgName(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer;->mButtons:[Ljava/lang/String;

    aput-object p2, v0, p1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer;->addButtons()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer;->saveButtonList()V

    return-void
.end method

.method private checkForPackageExistance(Ljava/lang/String;)Z
    .locals 3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x80

    :try_start_0
    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :catch_0
    move-exception v0

    const/4 v2, 0x0

    goto :goto_0
.end method

.method private loadSettings()V
    .locals 9

    const/4 v6, 0x0

    const/4 v5, 0x1

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "quick_launch_vis_buttons"

    const/4 v8, 0x5

    invoke-static {v4, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer;->mNumVisButtons:I

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "quick_launch_text_color"

    const/4 v8, -0x1

    invoke-static {v4, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer;->mTextColor:I

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "quick_launch_background_color"

    invoke-static {v4, v7, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer;->mBackgroundColor:I

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "quick_launch_text_visible"

    invoke-static {v4, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_4

    move v4, v5

    :goto_0
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer;->mTextVisible:Z

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "quick_launch_show_devider"

    invoke-static {v4, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_5

    move v4, v5

    :goto_1
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer;->mShowDevider:Z

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "quick_launch_show_add"

    invoke-static {v4, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_6

    move v4, v5

    :goto_2
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer;->mShowAddButton:Z

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "quick_launch_visible"

    invoke-static {v4, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    if-eqz v2, :cond_0

    if-nez v3, :cond_7

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    :goto_3
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "quick_launch_use_image"

    invoke-static {v4, v7, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_8

    :goto_4
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer;->mUseBgImage:Z

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "quick_launch_bg_image"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer;->mImageFilename:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer;->mImageFilename:Ljava/lang/String;

    if-nez v4, :cond_1

    const-string v4, ""

    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer;->mImageFilename:Ljava/lang/String;

    :cond_1
    new-instance v0, Ljava/io/File;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer;->mImageFilename:Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer;->mUseBgImage:Z

    if-eqz v4, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer;->mBackgroundImage:Landroid/graphics/drawable/Drawable;

    :cond_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "quick_launch_buttons"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer;->makeButtonList(Ljava/lang/String;)V

    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer;->addButtons()V

    return-void

    :cond_4
    move v4, v6

    goto/16 :goto_0

    :cond_5
    move v4, v6

    goto/16 :goto_1

    :cond_6
    move v4, v6

    goto :goto_2

    :cond_7
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    :cond_8
    move v5, v6

    goto :goto_4
.end method

.method private makeButtonList(Ljava/lang/String;)V
    .locals 1

    const-string v0, ";"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer;->mButtons:[Ljava/lang/String;

    return-void
.end method

.method private removeButton(I)V
    .locals 3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer;->mButtons:[Ljava/lang/String;

    array-length v2, v2

    if-lt v0, v2, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer;->mButtons:[Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer;->addButtons()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer;->saveButtonList()V

    return-void

    :cond_0
    if-eq v0, p1, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer;->mButtons:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private saveButtonList()V
    .locals 5

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer;->mButtons:[Ljava/lang/String;

    array-length v2, v2

    if-lt v0, v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "quick_launch_buttons"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer;->mButtons:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private showAppDialog(IZ)V
    .locals 23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v16

    new-instance v8, Landroid/content/Intent;

    const-string v20, "android.intent.action.MAIN"

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v8, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v20, "android.intent.category.LAUNCHER"

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v20, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v8, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v10

    new-instance v13, Ljava/util/ArrayList;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v20

    move/from16 v0, v20

    invoke-direct {v13, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v13}, Ljava/util/List;->clear()V

    new-instance v5, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-direct {v5, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v20, " Quicklaunch buttons \n \u00a9 2014 Gary Harrington"

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance v11, Landroid/widget/ListView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-direct {v11, v0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    new-instance v20, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer$3;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move/from16 v2, p2

    move/from16 v3, p1

    invoke-direct {v0, v1, v13, v2, v3}, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer$3;-><init>(Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer;Ljava/util/List;ZI)V

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :cond_0
    :goto_0
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-nez v21, :cond_1

    invoke-static {v13}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v20

    move/from16 v0, v20

    new-array v14, v0, [Ljava/lang/String;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v20

    move/from16 v0, v20

    new-array v15, v0, [Ljava/lang/String;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v20

    move/from16 v0, v20

    new-array v12, v0, [Landroid/graphics/drawable/Drawable;

    const/4 v7, 0x0

    :goto_1
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v20

    move/from16 v0, v20

    if-lt v7, v0, :cond_2

    new-instance v4, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer$AppPickerAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v4, v0, v1, v14, v12}, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer$AppPickerAdapter;-><init>(Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer;Landroid/content/Context;[Ljava/lang/String;[Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v11, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {v5, v11}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v20

    const/high16 v21, 0x1040000

    new-instance v22, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer$4;

    invoke-direct/range {v22 .. v23}, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer$4;-><init>(Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer;)V

    invoke-virtual/range {v20 .. v22}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v19, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-direct/range {v19 .. v20}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v20, "Get extra launch panel settings"

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v11, v0}, Landroid/widget/ListView;->setFooterDividersEnabled(Z)V

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    invoke-virtual {v5, v11}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer;->mAppDialog:Landroid/app/Dialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer;->mAppDialog:Landroid/app/Dialog;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v20

    const/16 v21, 0x7da

    invoke-virtual/range {v20 .. v21}, Landroid/view/Window;->setType(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer;->mAppDialog:Landroid/app/Dialog;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/app/Dialog;->show()V

    return-void

    :cond_1
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/pm/ResolveInfo;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v21

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ";"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-interface {v13, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_2
    invoke-interface {v13, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v20

    const-string v21, ";"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    const/16 v20, 0x0

    aget-object v20, v9, v20

    aput-object v20, v14, v7

    const/16 v20, 0x1

    aget-object v20, v9, v20

    aput-object v20, v15, v7

    const/16 v20, 0x1

    :try_start_0
    aget-object v20, v9, v20

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v20

    aput-object v20, v12, v7
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    :catch_0
    move-exception v6

    invoke-virtual {v6}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_2
.end method


# virtual methods
.method public ItemChanged(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer;->showMainDialog(I)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 3

    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    new-instance v1, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer$SettingsReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer$SettingsReceiver;-><init>(Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer;Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer$SettingsReceiver;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer;->mSettingsReceiver:Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer$SettingsReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.three.minit.quicklaunch.UPDATE_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer;->mSettingsReceiver:Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer$SettingsReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    iget v2, v1, Landroid/graphics/Point;->x:I

    iget v3, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    iput v2, p0, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer;->mWidth:I

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer;->addButtons()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v3, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    iput v2, p0, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer;->mWidth:I

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer;->addButtons()V

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer;->mSettingsReceiver:Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer$SettingsReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 5

    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "quick_launch_visible"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public showMainDialog(I)V
    .locals 11

    const/16 v10, 0x11

    const/4 v9, 0x1

    const/4 v8, -0x1

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer;->mContext:Landroid/content/Context;

    invoke-direct {v0, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v6, "Button options"

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer;->mContext:Landroid/content/Context;

    invoke-direct {v1, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x2

    invoke-direct {v6, v8, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/high16 v6, 0x42480000    # 50.0f

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    invoke-static {v9, v6, v7}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    new-instance v5, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v6, "Delete"

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    float-to-int v7, v2

    invoke-direct {v6, v8, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v6, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer$1;

    invoke-direct {v6, p0, p1}, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer$1;-><init>(Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer;I)V

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v4, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer;->mContext:Landroid/content/Context;

    invoke-direct {v4, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v6, "Change app"

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    float-to-int v7, v2

    invoke-direct {v6, v8, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v6, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer$2;

    invoke-direct {v6, p0, p1}, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer$2;-><init>(Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer;I)V

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    iput-object v6, p0, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer;->mMainDialog:Landroid/app/Dialog;

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer;->mMainDialog:Landroid/app/Dialog;

    invoke-virtual {v6}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/16 v7, 0x7da

    invoke-virtual {v6, v7}, Landroid/view/Window;->setType(I)V

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer;->mMainDialog:Landroid/app/Dialog;

    invoke-virtual {v6}, Landroid/app/Dialog;->show()V

    return-void
.end method
