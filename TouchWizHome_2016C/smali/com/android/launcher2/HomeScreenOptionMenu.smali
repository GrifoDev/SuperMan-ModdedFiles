.class public Lcom/android/launcher2/HomeScreenOptionMenu;
.super Landroid/widget/LinearLayout;
.source "HomeScreenOptionMenu.java"

# interfaces
.implements Lcom/android/launcher2/Launcher$HardwareKeys;


# static fields
.field static final HOME_SCREEN_WALLPAPER:I = 0x0

.field public static TAG:Ljava/lang/String; = null

.field private static final THEME_CENTER_PACKAGE:Ljava/lang/String; = "com.samsung.android.themecenter"

.field public static final THEME_STORE_PACKAGE:Ljava/lang/String; = "com.samsung.android.themestore"

.field static drawableTop:I

.field static isWidgetTab:Z

.field private static mIconPressAlphaValue:F

.field static mIsActive:Z

.field public static mShowOptionAnimating:Z

.field public static mSupportWallpaperAndThemes:Z


# instance fields
.field private mFadeInAnim:Landroid/animation/ObjectAnimator;

.field private mFadeOutAnimSet:Landroid/animation/AnimatorSet;

.field private mIsShowingMenuWidget:Z

.field private mLauncher:Lcom/android/launcher2/Launcher;

.field private mOnClickListenerOpenTheme:Landroid/view/View$OnClickListener;

.field private mOnClickListenerScreenGrid:Landroid/view/View$OnClickListener;

.field private mOnClickListenerSettings:Landroid/view/View$OnClickListener;

.field private mOnClickListenerTheme:Landroid/view/View$OnClickListener;

.field private mOnClickListenerWallpaper:Landroid/view/View$OnClickListener;

.field private mOnClickListenerWidget:Landroid/view/View$OnClickListener;

.field private mOnTouchListener:Landroid/view/View$OnTouchListener;

.field private mScreenGrid:Landroid/widget/TextView;

.field private mScreenGridSelectMenu:Lcom/android/launcher2/HomeScreenGridSelectMenu;

.field private mSetting:Landroid/widget/TextView;

.field private mTheme:Landroid/widget/TextView;

.field private mWallpaper:Landroid/widget/TextView;

.field private mWidget:Landroid/widget/TextView;

.field mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

.field private vDeleteDropLayout:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const-string v0, "HomeScreenOptionMenu"

    sput-object v0, Lcom/android/launcher2/HomeScreenOptionMenu;->TAG:Ljava/lang/String;

    sput-boolean v1, Lcom/android/launcher2/HomeScreenOptionMenu;->isWidgetTab:Z

    sput-boolean v1, Lcom/android/launcher2/HomeScreenOptionMenu;->mIsActive:Z

    const/4 v0, 0x1

    sput v0, Lcom/android/launcher2/HomeScreenOptionMenu;->drawableTop:I

    const/high16 v0, 0x3f000000    # 0.5f

    sput v0, Lcom/android/launcher2/HomeScreenOptionMenu;->mIconPressAlphaValue:F

    sput-boolean v1, Lcom/android/launcher2/HomeScreenOptionMenu;->mShowOptionAnimating:Z

    sput-boolean v1, Lcom/android/launcher2/HomeScreenOptionMenu;->mSupportWallpaperAndThemes:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/launcher2/HomeScreenOptionMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    iput-object v0, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mLauncher:Lcom/android/launcher2/Launcher;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mFadeOutAnimSet:Landroid/animation/AnimatorSet;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mIsShowingMenuWidget:Z

    new-instance v0, Lcom/android/launcher2/HomeScreenOptionMenu$2;

    invoke-direct {v0, p0}, Lcom/android/launcher2/HomeScreenOptionMenu$2;-><init>(Lcom/android/launcher2/HomeScreenOptionMenu;)V

    iput-object v0, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    new-instance v0, Lcom/android/launcher2/HomeScreenOptionMenu$3;

    invoke-direct {v0, p0}, Lcom/android/launcher2/HomeScreenOptionMenu$3;-><init>(Lcom/android/launcher2/HomeScreenOptionMenu;)V

    iput-object v0, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mOnClickListenerWallpaper:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/launcher2/HomeScreenOptionMenu$4;

    invoke-direct {v0, p0}, Lcom/android/launcher2/HomeScreenOptionMenu$4;-><init>(Lcom/android/launcher2/HomeScreenOptionMenu;)V

    iput-object v0, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mOnClickListenerWidget:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/launcher2/HomeScreenOptionMenu$5;

    invoke-direct {v0, p0}, Lcom/android/launcher2/HomeScreenOptionMenu$5;-><init>(Lcom/android/launcher2/HomeScreenOptionMenu;)V

    iput-object v0, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mOnClickListenerTheme:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/launcher2/HomeScreenOptionMenu$6;

    invoke-direct {v0, p0}, Lcom/android/launcher2/HomeScreenOptionMenu$6;-><init>(Lcom/android/launcher2/HomeScreenOptionMenu;)V

    iput-object v0, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mOnClickListenerSettings:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/launcher2/HomeScreenOptionMenu$7;

    invoke-direct {v0, p0}, Lcom/android/launcher2/HomeScreenOptionMenu$7;-><init>(Lcom/android/launcher2/HomeScreenOptionMenu;)V

    iput-object v0, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mOnClickListenerOpenTheme:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/launcher2/HomeScreenOptionMenu$8;

    invoke-direct {v0, p0}, Lcom/android/launcher2/HomeScreenOptionMenu$8;-><init>(Lcom/android/launcher2/HomeScreenOptionMenu;)V

    iput-object v0, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mOnClickListenerScreenGrid:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0}, Lcom/android/launcher2/HomeScreenOptionMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    iput-object v0, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mLauncher:Lcom/android/launcher2/Launcher;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mFadeOutAnimSet:Landroid/animation/AnimatorSet;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mIsShowingMenuWidget:Z

    new-instance v0, Lcom/android/launcher2/HomeScreenOptionMenu$2;

    invoke-direct {v0, p0}, Lcom/android/launcher2/HomeScreenOptionMenu$2;-><init>(Lcom/android/launcher2/HomeScreenOptionMenu;)V

    iput-object v0, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    new-instance v0, Lcom/android/launcher2/HomeScreenOptionMenu$3;

    invoke-direct {v0, p0}, Lcom/android/launcher2/HomeScreenOptionMenu$3;-><init>(Lcom/android/launcher2/HomeScreenOptionMenu;)V

    iput-object v0, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mOnClickListenerWallpaper:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/launcher2/HomeScreenOptionMenu$4;

    invoke-direct {v0, p0}, Lcom/android/launcher2/HomeScreenOptionMenu$4;-><init>(Lcom/android/launcher2/HomeScreenOptionMenu;)V

    iput-object v0, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mOnClickListenerWidget:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/launcher2/HomeScreenOptionMenu$5;

    invoke-direct {v0, p0}, Lcom/android/launcher2/HomeScreenOptionMenu$5;-><init>(Lcom/android/launcher2/HomeScreenOptionMenu;)V

    iput-object v0, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mOnClickListenerTheme:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/launcher2/HomeScreenOptionMenu$6;

    invoke-direct {v0, p0}, Lcom/android/launcher2/HomeScreenOptionMenu$6;-><init>(Lcom/android/launcher2/HomeScreenOptionMenu;)V

    iput-object v0, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mOnClickListenerSettings:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/launcher2/HomeScreenOptionMenu$7;

    invoke-direct {v0, p0}, Lcom/android/launcher2/HomeScreenOptionMenu$7;-><init>(Lcom/android/launcher2/HomeScreenOptionMenu;)V

    iput-object v0, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mOnClickListenerOpenTheme:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/launcher2/HomeScreenOptionMenu$8;

    invoke-direct {v0, p0}, Lcom/android/launcher2/HomeScreenOptionMenu$8;-><init>(Lcom/android/launcher2/HomeScreenOptionMenu;)V

    iput-object v0, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mOnClickListenerScreenGrid:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0}, Lcom/android/launcher2/HomeScreenOptionMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    iput-object v0, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mLauncher:Lcom/android/launcher2/Launcher;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mFadeOutAnimSet:Landroid/animation/AnimatorSet;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mIsShowingMenuWidget:Z

    new-instance v0, Lcom/android/launcher2/HomeScreenOptionMenu$2;

    invoke-direct {v0, p0}, Lcom/android/launcher2/HomeScreenOptionMenu$2;-><init>(Lcom/android/launcher2/HomeScreenOptionMenu;)V

    iput-object v0, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    new-instance v0, Lcom/android/launcher2/HomeScreenOptionMenu$3;

    invoke-direct {v0, p0}, Lcom/android/launcher2/HomeScreenOptionMenu$3;-><init>(Lcom/android/launcher2/HomeScreenOptionMenu;)V

    iput-object v0, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mOnClickListenerWallpaper:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/launcher2/HomeScreenOptionMenu$4;

    invoke-direct {v0, p0}, Lcom/android/launcher2/HomeScreenOptionMenu$4;-><init>(Lcom/android/launcher2/HomeScreenOptionMenu;)V

    iput-object v0, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mOnClickListenerWidget:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/launcher2/HomeScreenOptionMenu$5;

    invoke-direct {v0, p0}, Lcom/android/launcher2/HomeScreenOptionMenu$5;-><init>(Lcom/android/launcher2/HomeScreenOptionMenu;)V

    iput-object v0, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mOnClickListenerTheme:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/launcher2/HomeScreenOptionMenu$6;

    invoke-direct {v0, p0}, Lcom/android/launcher2/HomeScreenOptionMenu$6;-><init>(Lcom/android/launcher2/HomeScreenOptionMenu;)V

    iput-object v0, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mOnClickListenerSettings:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/launcher2/HomeScreenOptionMenu$7;

    invoke-direct {v0, p0}, Lcom/android/launcher2/HomeScreenOptionMenu$7;-><init>(Lcom/android/launcher2/HomeScreenOptionMenu;)V

    iput-object v0, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mOnClickListenerOpenTheme:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/launcher2/HomeScreenOptionMenu$8;

    invoke-direct {v0, p0}, Lcom/android/launcher2/HomeScreenOptionMenu$8;-><init>(Lcom/android/launcher2/HomeScreenOptionMenu;)V

    iput-object v0, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mOnClickListenerScreenGrid:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000()F
    .locals 1

    sget v0, Lcom/android/launcher2/HomeScreenOptionMenu;->mIconPressAlphaValue:F

    return v0
.end method

.method static synthetic access$100(Lcom/android/launcher2/HomeScreenOptionMenu;)Lcom/android/launcher2/Launcher;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mLauncher:Lcom/android/launcher2/Launcher;

    return-object v0
.end method

.method private blockLaunching()Z
    .locals 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v0

    iget-object v3, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->isPaused()Z

    move-result v3

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mIsShowingMenuWidget:Z

    if-nez v3, :cond_1

    invoke-virtual {v0}, Lcom/android/launcher2/MenuView;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mScreenGridSelectMenu:Lcom/android/launcher2/HomeScreenGridSelectMenu;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mScreenGridSelectMenu:Lcom/android/launcher2/HomeScreenGridSelectMenu;

    invoke-virtual {v3}, Lcom/android/launcher2/HomeScreenGridSelectMenu;->isActive()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    sget-boolean v3, Lcom/android/launcher2/HomeScreenOptionMenu;->mShowOptionAnimating:Z

    if-nez v3, :cond_1

    sget-boolean v3, Lcom/android/launcher2/HomeScreenOptionMenu;->mIsActive:Z

    if-nez v3, :cond_3

    :cond_1
    sget-object v3, Lcom/android/launcher2/HomeScreenOptionMenu;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "blockLaunching() : ShowingWidget("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mIsShowingMenuWidget:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "MenuViewVisible("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/launcher2/MenuView;->getVisibility()I

    move-result v5

    if-nez v5, :cond_2

    move v1, v2

    :cond_2
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ") "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "ScreenGridActive("

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mScreenGridSelectMenu:Lcom/android/launcher2/HomeScreenGridSelectMenu;

    invoke-virtual {v4}, Lcom/android/launcher2/HomeScreenGridSelectMenu;->isActive()Z

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ") "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "mShowOptionAnimating("

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v4, Lcom/android/launcher2/HomeScreenOptionMenu;->mShowOptionAnimating:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ") "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "isPaused("

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher2/Launcher;->isPaused()Z

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ") "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "mIsActive("

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v4, Lcom/android/launcher2/HomeScreenOptionMenu;->mIsActive:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ")"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    :cond_3
    return v1
.end method

.method private changeOptionMenuIconColor(I)V
    .locals 3

    new-instance v0, Landroid/graphics/LightingColorFilter;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    iget-object v1, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mWallpaper:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mWallpaper:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sget v2, Lcom/android/launcher2/HomeScreenOptionMenu;->drawableTop:I

    aget-object v1, v1, v2

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mWidget:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mWidget:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sget v2, Lcom/android/launcher2/HomeScreenOptionMenu;->drawableTop:I

    aget-object v1, v1, v2

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mSetting:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mSetting:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sget v2, Lcom/android/launcher2/HomeScreenOptionMenu;->drawableTop:I

    aget-object v1, v1, v2

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_2
    iget-object v1, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mTheme:Landroid/widget/TextView;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mTheme:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sget v2, Lcom/android/launcher2/HomeScreenOptionMenu;->drawableTop:I

    aget-object v1, v1, v2

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_3
    iget-object v1, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mScreenGrid:Landroid/widget/TextView;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mScreenGrid:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sget v2, Lcom/android/launcher2/HomeScreenOptionMenu;->drawableTop:I

    aget-object v1, v1, v2

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_4
    return-void
.end method

.method private checkTheme()Z
    .locals 5

    iget-object v3, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v1, 0x1

    if-eqz v2, :cond_0

    :try_start_0
    const-string v3, "com.samsung.android.themecenter"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    const-string v3, "com.samsung.android.themestore"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    :goto_1
    return v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    goto :goto_0

    :catch_1
    move-exception v0

    const/4 v1, 0x0

    goto :goto_1
.end method

.method private showScreenGridMenu(Z)V
    .locals 7

    const/16 v6, 0x8

    const/4 v5, 0x0

    sget-object v2, Lcom/android/launcher2/HomeScreenOptionMenu;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "showScreenGridMenu() animation "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getHomeView()Lcom/android/launcher2/HomeView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher2/HomeView;->getQuickViewWorkspace()Lcom/android/launcher2/QuickViewWorkspace;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/QuickViewWorkspace;->isAnimStateOkayForClickEvents()Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/android/launcher2/HomeScreenOptionMenu;->TAG:Ljava/lang/String;

    const-string v3, "showScreenGridMenu() return."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mScreenGridSelectMenu:Lcom/android/launcher2/HomeScreenGridSelectMenu;

    invoke-virtual {v0, v2}, Lcom/android/launcher2/HomeView;->removeView(Landroid/view/View;)V

    iget-object v2, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mScreenGridSelectMenu:Lcom/android/launcher2/HomeScreenGridSelectMenu;

    invoke-virtual {v0, v2}, Lcom/android/launcher2/HomeView;->addView(Landroid/view/View;)V

    :cond_1
    iget-object v2, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mScreenGridSelectMenu:Lcom/android/launcher2/HomeScreenGridSelectMenu;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, p1, v5}, Lcom/android/launcher2/HomeScreenGridSelectMenu;->setActive(ZZZ)V

    move-object v1, p0

    if-nez p1, :cond_5

    iget-object v2, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mFadeInAnim:Landroid/animation/ObjectAnimator;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mFadeInAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mFadeInAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_2
    iget-object v2, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mFadeOutAnimSet:Landroid/animation/AnimatorSet;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mFadeOutAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mFadeOutAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_3
    iput-object v0, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    iget-object v2, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    invoke-interface {v2}, Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;->getDeleteDropLayout()Lcom/android/launcher2/QuickViewDragBar;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->vDeleteDropLayout:Landroid/view/View;

    iget-object v2, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->vDeleteDropLayout:Landroid/view/View;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->vDeleteDropLayout:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    iget-object v2, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mScreenGridSelectMenu:Lcom/android/launcher2/HomeScreenGridSelectMenu;

    invoke-virtual {v2, v5}, Lcom/android/launcher2/HomeScreenGridSelectMenu;->setVisibility(I)V

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_5
    invoke-virtual {p0, p0}, Lcom/android/launcher2/HomeScreenOptionMenu;->animateOut(Landroid/view/View;)V

    goto :goto_0
.end method

.method private showThemeWarningDialog()V
    .locals 6

    invoke-virtual {p0}, Lcom/android/launcher2/HomeScreenOptionMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08008d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/launcher2/HomeScreenOptionMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080080

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0800c1

    new-instance v3, Lcom/android/launcher2/HomeScreenOptionMenu$11;

    invoke-direct {v3, p0}, Lcom/android/launcher2/HomeScreenOptionMenu$11;-><init>(Lcom/android/launcher2/HomeScreenOptionMenu;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f08002e

    new-instance v3, Lcom/android/launcher2/HomeScreenOptionMenu$10;

    invoke-direct {v3, p0}, Lcom/android/launcher2/HomeScreenOptionMenu$10;-><init>(Lcom/android/launcher2/HomeScreenOptionMenu;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/launcher2/HomeScreenOptionMenu$9;

    invoke-direct {v2, p0}, Lcom/android/launcher2/HomeScreenOptionMenu$9;-><init>(Lcom/android/launcher2/HomeScreenOptionMenu;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    sput-object v1, Lcom/android/launcher2/Launcher;->mThemeWarningDialog:Landroid/app/AlertDialog;

    invoke-static {}, Lcom/android/launcher2/utils/BackgroundBlurUtil;->getInstance()Lcom/android/launcher2/utils/BackgroundBlurUtil;

    move-result-object v1

    sget-object v2, Lcom/android/launcher2/Launcher;->mThemeWarningDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/launcher2/utils/BackgroundBlurUtil;->releaseWindowDim(Landroid/view/Window;)V

    sget-object v1, Lcom/android/launcher2/Launcher;->mThemeWarningDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private startAlphaAnimation()V
    .locals 4

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/launcher2/HomeScreenOptionMenu;->setAlpha(F)V

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    new-instance v1, Lcom/android/launcher2/HomeScreenOptionMenu$14;

    invoke-direct {v1, p0}, Lcom/android/launcher2/HomeScreenOptionMenu$14;-><init>(Lcom/android/launcher2/HomeScreenOptionMenu;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    new-instance v1, Lcom/android/launcher2/utils/interpolator/SineInOut90;

    invoke-direct {v1}, Lcom/android/launcher2/utils/interpolator/SineInOut90;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    new-instance v1, Lcom/android/launcher2/HomeScreenOptionMenu$15;

    invoke-direct {v1, p0, v0}, Lcom/android/launcher2/HomeScreenOptionMenu$15;-><init>(Lcom/android/launcher2/HomeScreenOptionMenu;Landroid/view/animation/AlphaAnimation;)V

    invoke-virtual {p0, v1}, Lcom/android/launcher2/HomeScreenOptionMenu;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public animateIn(Landroid/view/View;)V
    .locals 5

    const/4 v3, 0x0

    const/4 v4, 0x2

    iget-object v0, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mFadeOutAnimSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mFadeOutAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mFadeOutAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    invoke-virtual {p0, v3}, Lcom/android/launcher2/HomeScreenOptionMenu;->setVisibility(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/HomeScreenOptionMenu;->setAlpha(F)V

    const/4 v0, 0x5

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    sget-object v1, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v2, v4, [F

    fill-array-data v2, :array_0

    invoke-static {v1, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    aput-object v1, v0, v3

    const/4 v1, 0x1

    sget-object v2, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v3, v4, [F

    fill-array-data v3, :array_1

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v0, v1

    sget-object v1, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v2, v4, [F

    fill-array-data v2, :array_2

    invoke-static {v1, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    aput-object v1, v0, v4

    const/4 v1, 0x3

    sget-object v2, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v3, v4, [F

    fill-array-data v3, :array_3

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v3, v4, [F

    fill-array-data v3, :array_4

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {p1, v0}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mFadeInAnim:Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mFadeInAnim:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/android/launcher2/utils/interpolator/SineInOut90;

    invoke-direct {v1}, Lcom/android/launcher2/utils/interpolator/SineInOut90;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mFadeInAnim:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mFadeInAnim:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/android/launcher2/HomeScreenOptionMenu$12;

    invoke-direct {v1, p0}, Lcom/android/launcher2/HomeScreenOptionMenu$12;-><init>(Lcom/android/launcher2/HomeScreenOptionMenu;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mFadeInAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x3f866666    # 1.05f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f866666    # 1.05f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_3
    .array-data 4
        0x42480000    # 50.0f
        0x0
    .end array-data

    :array_4
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public animateOut(Landroid/view/View;)V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x2

    iget-object v2, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mFadeInAnim:Landroid/animation/ObjectAnimator;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mFadeInAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mFadeInAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_0
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mFadeOutAnimSet:Landroid/animation/AnimatorSet;

    const/4 v2, 0x4

    new-array v2, v2, [Landroid/animation/PropertyValuesHolder;

    sget-object v3, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v4, v6, [F

    fill-array-data v4, :array_0

    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    aput-object v3, v2, v7

    sget-object v3, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v4, v6, [F

    fill-array-data v4, :array_1

    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    aput-object v3, v2, v8

    sget-object v3, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v4, v6, [F

    fill-array-data v4, :array_2

    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    aput-object v3, v2, v6

    const/4 v3, 0x3

    sget-object v4, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v5, v6, [F

    fill-array-data v5, :array_3

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {p1, v2}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    new-instance v2, Lcom/android/launcher2/utils/interpolator/SineInOut90;

    invoke-direct {v2}, Lcom/android/launcher2/utils/interpolator/SineInOut90;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const-string v2, "alpha"

    new-array v3, v6, [F

    fill-array-data v3, :array_4

    invoke-static {p1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-instance v2, Lcom/android/launcher2/utils/interpolator/SineInOut33;

    invoke-direct {v2}, Lcom/android/launcher2/utils/interpolator/SineInOut33;-><init>()V

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v2, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mFadeOutAnimSet:Landroid/animation/AnimatorSet;

    new-array v3, v6, [Landroid/animation/Animator;

    aput-object v1, v3, v7

    aput-object v0, v3, v8

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v2, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mFadeOutAnimSet:Landroid/animation/AnimatorSet;

    new-instance v3, Lcom/android/launcher2/HomeScreenOptionMenu$13;

    invoke-direct {v3, p0}, Lcom/android/launcher2/HomeScreenOptionMenu$13;-><init>(Lcom/android/launcher2/HomeScreenOptionMenu;)V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v2, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mFadeOutAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f866666    # 1.05f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f866666    # 1.05f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x42480000    # 50.0f
    .end array-data

    :array_4
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public changeTextColor(I)V
    .locals 8

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    if-nez p1, :cond_5

    const v5, 0x7f0b0063

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    int-to-float v2, v5

    const v5, 0x7f0b0062

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    int-to-float v1, v5

    const v5, 0x7f0d0001

    invoke-virtual {v3, v5, v6}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v4

    invoke-virtual {p0}, Lcom/android/launcher2/HomeScreenOptionMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d0002

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    :goto_0
    iget-object v5, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mWallpaper:Landroid/widget/TextView;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mWallpaper:Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v5, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mWallpaper:Landroid/widget/TextView;

    invoke-virtual {v5, v2, v7, v1, v4}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    :cond_0
    iget-object v5, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mWidget:Landroid/widget/TextView;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mWidget:Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v5, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mWidget:Landroid/widget/TextView;

    invoke-virtual {v5, v2, v7, v1, v4}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    :cond_1
    iget-object v5, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mSetting:Landroid/widget/TextView;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mSetting:Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v5, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mSetting:Landroid/widget/TextView;

    invoke-virtual {v5, v2, v7, v1, v4}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    :cond_2
    iget-object v5, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mTheme:Landroid/widget/TextView;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mTheme:Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v5, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mTheme:Landroid/widget/TextView;

    invoke-virtual {v5, v2, v7, v1, v4}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    :cond_3
    iget-object v5, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mScreenGrid:Landroid/widget/TextView;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mScreenGrid:Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v5, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mScreenGrid:Landroid/widget/TextView;

    invoke-virtual {v5, v2, v7, v1, v4}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    :cond_4
    invoke-direct {p0, v0}, Lcom/android/launcher2/HomeScreenOptionMenu;->changeOptionMenuIconColor(I)V

    return-void

    :cond_5
    const v5, 0x7f0b0061

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    int-to-float v2, v5

    const v5, 0x7f0b0060

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    int-to-float v1, v5

    const v5, 0x7f0d002d

    invoke-virtual {v3, v5, v6}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v4

    invoke-virtual {p0}, Lcom/android/launcher2/HomeScreenOptionMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d002e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_0
.end method

.method public getScreenGridSelectMenu()Lcom/android/launcher2/HomeScreenGridSelectMenu;
    .locals 3

    iget-object v1, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mScreenGridSelectMenu:Lcom/android/launcher2/HomeScreenGridSelectMenu;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mLauncher:Lcom/android/launcher2/Launcher;

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Lcom/android/launcher2/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f030042

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/HomeScreenGridSelectMenu;

    iput-object v1, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mScreenGridSelectMenu:Lcom/android/launcher2/HomeScreenGridSelectMenu;

    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mScreenGridSelectMenu:Lcom/android/launcher2/HomeScreenGridSelectMenu;

    return-object v1
.end method

.method public getWallpaperButton()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mWallpaper:Landroid/widget/TextView;

    return-object v0
.end method

.method public getWidgetButton()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mWidget:Landroid/widget/TextView;

    return-object v0
.end method

.method public hideScreenGridMenu(Z)V
    .locals 5

    const/4 v4, 0x0

    sget-object v1, Lcom/android/launcher2/HomeScreenOptionMenu;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hideScreenGridMenu() : animation "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mScreenGridSelectMenu:Lcom/android/launcher2/HomeScreenGridSelectMenu;

    invoke-virtual {v1, v4, p1, v4}, Lcom/android/launcher2/HomeScreenGridSelectMenu;->setActive(ZZZ)V

    iget-object v1, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getHomeView()Lcom/android/launcher2/HomeView;

    move-result-object v0

    if-nez p1, :cond_3

    iget-object v1, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mFadeInAnim:Landroid/animation/ObjectAnimator;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mFadeInAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mFadeInAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mFadeOutAnimSet:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mFadeOutAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mFadeOutAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_1
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mScreenGridSelectMenu:Lcom/android/launcher2/HomeScreenGridSelectMenu;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/HomeView;->removeView(Landroid/view/View;)V

    :cond_2
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p0, v1}, Lcom/android/launcher2/HomeScreenOptionMenu;->setAlpha(F)V

    invoke-virtual {p0, v4}, Lcom/android/launcher2/HomeScreenOptionMenu;->setVisibility(I)V

    :goto_0
    return-void

    :cond_3
    invoke-virtual {p0, p0}, Lcom/android/launcher2/HomeScreenOptionMenu;->animateIn(Landroid/view/View;)V

    goto :goto_0
.end method

.method public isActive()Z
    .locals 1

    sget-boolean v0, Lcom/android/launcher2/HomeScreenOptionMenu;->mIsActive:Z

    return v0
.end method

.method public launchOptionOpenThemes()V
    .locals 10

    const/4 v6, 0x0

    invoke-direct {p0}, Lcom/android/launcher2/HomeScreenOptionMenu;->blockLaunching()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v1

    const-string v2, "HOEO"

    const-string v3, "Wallpaper and theme"

    const-wide/16 v4, -0x1

    invoke-static/range {v1 .. v6}, Lcom/android/launcher2/Logging;->insertLog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;JZ)V

    iget-object v1, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    if-eqz v8, :cond_0

    :try_start_0
    const-string v1, "com.samsung.android.themestore"

    const/4 v2, 0x0

    invoke-virtual {v8, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v1, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v1, :cond_5

    const/4 v9, 0x0

    sget-boolean v1, Lcom/android/launcher2/HomeScreenOptionMenu;->mSupportWallpaperAndThemes:Z

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isOwner()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/LauncherApplication;->isKnoxMode()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    const-string v1, "themestore://MyTheme/Wallpaper"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const v1, 0x4000020

    invoke-virtual {v9, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :goto_1
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v9, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v9, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "UpButton"

    const/4 v2, 0x0

    invoke-virtual {v9, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "prevPackage"

    const-string v2, "homeScreen"

    invoke-virtual {v9, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v1, v9}, Lcom/android/launcher2/Launcher;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    :cond_3
    new-instance v9, Landroid/content/Intent;

    const-string v1, "com.samsung.android.action.THEME_SERVICE_LAUNCH"

    invoke-direct {v9, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    new-instance v9, Landroid/content/Intent;

    const-string v1, "com.samsung.android.action.themelaunch"

    invoke-direct {v9, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    invoke-direct {p0}, Lcom/android/launcher2/HomeScreenOptionMenu;->showThemeWarningDialog()V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_1
    move-exception v7

    sget-object v1, Lcom/android/launcher2/HomeScreenOptionMenu;->TAG:Ljava/lang/String;

    const-string v2, "Unable to launch OpenThemes."

    invoke-static {v1, v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method

.method public launchOptionScreenGrid(Z)V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x0

    iget-object v1, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getHomeView()Lcom/android/launcher2/HomeView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->getQuickViewWorkspace()Lcom/android/launcher2/QuickViewWorkspace;

    move-result-object v1

    iget-object v1, v1, Lcom/android/launcher2/QuickViewWorkspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/android/launcher2/HomeScreenOptionMenu;->TAG:Ljava/lang/String;

    const-string v2, "launchOptionScreenGrid() : QV is scrolling. return "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/launcher2/HomeScreenOptionMenu;->blockLaunching()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v1

    const-string v2, "HOEO"

    const-string v3, "Grid"

    const-wide/16 v4, -0x1

    invoke-static/range {v1 .. v6}, Lcom/android/launcher2/Logging;->insertLog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;JZ)V

    invoke-virtual {p0}, Lcom/android/launcher2/HomeScreenOptionMenu;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "accessibility_enabled"

    invoke-static {v1, v2, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mScreenGrid:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->isAccessibilityFocused()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mScreenGrid:Landroid/widget/TextView;

    const/16 v2, 0x80

    invoke-virtual {v1, v2, v7}, Landroid/widget/TextView;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    :cond_2
    iget-object v1, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mScreenGridSelectMenu:Lcom/android/launcher2/HomeScreenGridSelectMenu;

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mLauncher:Lcom/android/launcher2/Launcher;

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Lcom/android/launcher2/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f030042

    invoke-virtual {v0, v1, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/HomeScreenGridSelectMenu;

    iput-object v1, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mScreenGridSelectMenu:Lcom/android/launcher2/HomeScreenGridSelectMenu;

    :cond_3
    invoke-direct {p0, p1}, Lcom/android/launcher2/HomeScreenOptionMenu;->showScreenGridMenu(Z)V

    goto :goto_0
.end method

.method public launchOptionSettings()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/launcher2/HomeScreenOptionMenu;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    const-class v2, Lcom/android/launcher2/HomeScreenSettingsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v1, Lcom/android/launcher2/HomeScreenOptionMenu;->TAG:Ljava/lang/String;

    const-string v2, "launch setting Activity."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v1, 0x8000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v1, v0}, Lcom/android/launcher2/Launcher;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public launchOptionThemes()V
    .locals 5

    invoke-direct {p0}, Lcom/android/launcher2/HomeScreenOptionMenu;->blockLaunching()Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.android.intent.action.THEME_CHOOSER"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    :try_start_0
    iget-object v2, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v2, v1}, Lcom/android/launcher2/Launcher;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v2, Lcom/android/launcher2/HomeScreenOptionMenu;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to launch. intent="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public launchOptionWallpaper()V
    .locals 2

    invoke-direct {p0}, Lcom/android/launcher2/HomeScreenOptionMenu;->blockLaunching()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getHomeView()Lcom/android/launcher2/HomeView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/HomeView;->startWallpaper(I)V

    goto :goto_0
.end method

.method public launchOptionWidgets()V
    .locals 9

    const/4 v6, 0x0

    const/4 v8, 0x1

    iget-object v1, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getHomeView()Lcom/android/launcher2/HomeView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->isWorkspaceLocked()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/launcher2/HomeScreenOptionMenu;->TAG:Ljava/lang/String;

    const-string v2, "launchOptionWidgets() : mLauncher.getHomeView().isWorkspaceLocked()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isSafeMode()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/android/launcher2/HomeScreenOptionMenu;->TAG:Ljava/lang/String;

    const-string v2, "launchOptionWidgets() : LauncherApplication.isSafeMode()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/android/launcher2/HomeScreenOptionMenu;->blockLaunching()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v1

    const-string v2, "HOEO"

    const-string v3, "Widget"

    const-wide/16 v4, -0x1

    invoke-static/range {v1 .. v6}, Lcom/android/launcher2/Logging;->insertLog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;JZ)V

    invoke-virtual {p0}, Lcom/android/launcher2/HomeScreenOptionMenu;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "accessibility_enabled"

    invoke-static {v1, v2, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v8, :cond_3

    iget-object v1, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mWidget:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->isAccessibilityFocused()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mWidget:Landroid/widget/TextView;

    const/16 v2, 0x80

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    :cond_3
    iget-object v1, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v0

    iput-boolean v8, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mIsShowingMenuWidget:Z

    invoke-virtual {v0}, Lcom/android/launcher2/MenuView;->getMenuWidgets()Lcom/android/launcher2/MenuWidgets;

    move-result-object v7

    if-eqz v7, :cond_4

    sget-object v1, Lcom/android/launcher2/MenuWidgets$DisplayType;->NORMAL:Lcom/android/launcher2/MenuWidgets$DisplayType;

    invoke-virtual {v7, v1}, Lcom/android/launcher2/MenuWidgets;->setDisplayType(Lcom/android/launcher2/MenuWidgets$DisplayType;)V

    :cond_4
    invoke-virtual {v0}, Lcom/android/launcher2/MenuView;->selectWidgetsTab()V

    sput-boolean v8, Lcom/android/launcher2/HomeScreenOptionMenu;->isWidgetTab:Z

    iget-object v1, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->showAllApps()V

    goto :goto_0
.end method

.method public onBackPressed()Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    sget-object v2, Lcom/android/launcher2/HomeScreenOptionMenu;->TAG:Ljava/lang/String;

    const-string v3, "onBackPressed()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportFlexibleGrid()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mScreenGridSelectMenu:Lcom/android/launcher2/HomeScreenGridSelectMenu;

    if-eqz v2, :cond_3

    sget-object v2, Lcom/android/launcher2/HomeScreenOptionMenu;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onBackPressed(): mShowOptionAnimating "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/android/launcher2/HomeScreenOptionMenu;->mShowOptionAnimating:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " / mScreenGridSelectMenu.isActive() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mScreenGridSelectMenu:Lcom/android/launcher2/HomeScreenGridSelectMenu;

    invoke-virtual {v4}, Lcom/android/launcher2/HomeScreenGridSelectMenu;->isActive()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mScreenGridSelectMenu:Lcom/android/launcher2/HomeScreenGridSelectMenu;

    invoke-virtual {v2}, Lcom/android/launcher2/HomeScreenGridSelectMenu;->isActive()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-boolean v2, Lcom/android/launcher2/HomeScreenOptionMenu;->mShowOptionAnimating:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mScreenGridSelectMenu:Lcom/android/launcher2/HomeScreenGridSelectMenu;

    invoke-virtual {v2, v1}, Lcom/android/launcher2/HomeScreenGridSelectMenu;->cancelGridChange(Z)V

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportHomeModeChange()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportGalaxyLabs()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportDefaultHomeOnlyMode()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/launcher2/HomeScreenOptionMenu;->hideScreenGridMenu(Z)V

    invoke-virtual {p0}, Lcom/android/launcher2/HomeScreenOptionMenu;->launchOptionSettings()V

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/launcher2/HomeScreenOptionMenu;->hideScreenGridMenu(Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mScreenGridSelectMenu:Lcom/android/launcher2/HomeScreenGridSelectMenu;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeScreenGridSelectMenu;->isActive()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportHomeModeChange()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportDefaultHomeOnlyMode()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher2/HomeScreenOptionMenu;->launchOptionSettings()V

    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/launcher2/HomeScreenOptionMenu;->hideScreenGridMenu(Z)V

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 25

    invoke-super/range {p0 .. p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    sget-boolean v20, Lcom/android/launcher2/Launcher;->mChangeMobileKeyboard:Z

    if-eqz v20, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeScreenOptionMenu;->getVisibility()I

    move-result v20

    if-nez v20, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/HomeScreenOptionMenu;->startAlphaAnimation()V

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeScreenOptionMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v20, 0x7f090122

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v17

    const v20, 0x7f090121

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v20

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/launcher2/HomeScreenOptionMenu;->setPadding(IIII)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeScreenOptionMenu;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v19

    const v20, 0x7f09011e

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    move-object/from16 v0, v19

    iput v11, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/launcher2/HomeScreenOptionMenu;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v20, 0x7f090289

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    const v20, 0x7f090123

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    const v20, 0x7f0b0008

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v10

    const v20, 0x7f090124

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v18

    const v20, 0x7f090120

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    const v20, 0x7f09011f

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    const v20, 0x7f090125

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    const v20, 0x7f0901b8

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeScreenOptionMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0901b9

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeScreenOptionMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f09029c

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/HomeScreenOptionMenu;->mWallpaper:Landroid/widget/TextView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v20, 0x0

    const/16 v21, 0x0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v8, v0, v9, v7, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    iput v12, v8, Landroid/widget/LinearLayout$LayoutParams;->width:I

    sget-boolean v20, Lcom/android/launcher2/HomeScreenOptionMenu;->mSupportWallpaperAndThemes:Z

    if-eqz v20, :cond_4

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isOwner()Z

    move-result v20

    if-eqz v20, :cond_4

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher2/LauncherApplication;->isKnoxMode()Z

    move-result v20

    if-nez v20, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/HomeScreenOptionMenu;->mWallpaper:Landroid/widget/TextView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeScreenOptionMenu;->getContext()Landroid/content/Context;

    move-result-object v22

    const v23, 0x7f02004b

    move-object/from16 v0, v16

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v6, v6}, Lcom/android/launcher2/Utilities;->getResizedDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;II)Landroid/graphics/drawable/Drawable;

    move-result-object v22

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-virtual/range {v20 .. v24}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/HomeScreenOptionMenu;->mWallpaper:Landroid/widget/TextView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/HomeScreenOptionMenu;->mWallpaper:Landroid/widget/TextView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setMaxLines(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/HomeScreenOptionMenu;->mWallpaper:Landroid/widget/TextView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v14, v15, v14, v13}, Landroid/widget/TextView;->setPadding(IIII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/HomeScreenOptionMenu;->mWallpaper:Landroid/widget/TextView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/HomeScreenOptionMenu;->mWallpaper:Landroid/widget/TextView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/HomeScreenOptionMenu;->mWidget:Landroid/widget/TextView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeScreenOptionMenu;->getContext()Landroid/content/Context;

    move-result-object v22

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeScreenOptionMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f02004d

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v6, v6}, Lcom/android/launcher2/Utilities;->getResizedDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;II)Landroid/graphics/drawable/Drawable;

    move-result-object v22

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-virtual/range {v20 .. v24}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/HomeScreenOptionMenu;->mWidget:Landroid/widget/TextView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/HomeScreenOptionMenu;->mWidget:Landroid/widget/TextView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setMaxLines(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/HomeScreenOptionMenu;->mWidget:Landroid/widget/TextView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v14, v15, v14, v13}, Landroid/widget/TextView;->setPadding(IIII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/HomeScreenOptionMenu;->mWidget:Landroid/widget/TextView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/HomeScreenOptionMenu;->mWidget:Landroid/widget/TextView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/HomeScreenOptionMenu;->mTheme:Landroid/widget/TextView;

    move-object/from16 v20, v0

    if-eqz v20, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/HomeScreenOptionMenu;->mTheme:Landroid/widget/TextView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeScreenOptionMenu;->getContext()Landroid/content/Context;

    move-result-object v22

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeScreenOptionMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f02004b

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v6, v6}, Lcom/android/launcher2/Utilities;->getResizedDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;II)Landroid/graphics/drawable/Drawable;

    move-result-object v22

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-virtual/range {v20 .. v24}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/HomeScreenOptionMenu;->mTheme:Landroid/widget/TextView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/HomeScreenOptionMenu;->mTheme:Landroid/widget/TextView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setMaxLines(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/HomeScreenOptionMenu;->mTheme:Landroid/widget/TextView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v14, v15, v14, v13}, Landroid/widget/TextView;->setPadding(IIII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/HomeScreenOptionMenu;->mTheme:Landroid/widget/TextView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/HomeScreenOptionMenu;->mTheme:Landroid/widget/TextView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/HomeScreenOptionMenu;->mSetting:Landroid/widget/TextView;

    move-object/from16 v20, v0

    if-eqz v20, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/HomeScreenOptionMenu;->mSetting:Landroid/widget/TextView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeScreenOptionMenu;->getContext()Landroid/content/Context;

    move-result-object v22

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeScreenOptionMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f02004a

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v6, v6}, Lcom/android/launcher2/Utilities;->getResizedDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;II)Landroid/graphics/drawable/Drawable;

    move-result-object v22

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-virtual/range {v20 .. v24}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/HomeScreenOptionMenu;->mSetting:Landroid/widget/TextView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/HomeScreenOptionMenu;->mSetting:Landroid/widget/TextView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setMaxLines(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/HomeScreenOptionMenu;->mSetting:Landroid/widget/TextView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v14, v15, v14, v13}, Landroid/widget/TextView;->setPadding(IIII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/HomeScreenOptionMenu;->mSetting:Landroid/widget/TextView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/HomeScreenOptionMenu;->mSetting:Landroid/widget/TextView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/HomeScreenOptionMenu;->mScreenGrid:Landroid/widget/TextView;

    move-object/from16 v20, v0

    if-eqz v20, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/HomeScreenOptionMenu;->mScreenGrid:Landroid/widget/TextView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeScreenOptionMenu;->getContext()Landroid/content/Context;

    move-result-object v22

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeScreenOptionMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f020049

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v6, v6}, Lcom/android/launcher2/Utilities;->getResizedDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;II)Landroid/graphics/drawable/Drawable;

    move-result-object v22

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-virtual/range {v20 .. v24}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/HomeScreenOptionMenu;->mScreenGrid:Landroid/widget/TextView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/HomeScreenOptionMenu;->mScreenGrid:Landroid/widget/TextView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setMaxLines(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/HomeScreenOptionMenu;->mScreenGrid:Landroid/widget/TextView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v14, v15, v14, v13}, Landroid/widget/TextView;->setPadding(IIII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/HomeScreenOptionMenu;->mScreenGrid:Landroid/widget/TextView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/HomeScreenOptionMenu;->mScreenGrid:Landroid/widget/TextView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/HomeScreenOptionMenu;->mWidget:Landroid/widget/TextView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v20

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/launcher2/HomeScreenOptionMenu;->changeOptionMenuIconColor(I)V

    return-void

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/HomeScreenOptionMenu;->mWallpaper:Landroid/widget/TextView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeScreenOptionMenu;->getContext()Landroid/content/Context;

    move-result-object v22

    const v23, 0x7f02004c

    move-object/from16 v0, v16

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v6, v6}, Lcom/android/launcher2/Utilities;->getResizedDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;II)Landroid/graphics/drawable/Drawable;

    move-result-object v22

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-virtual/range {v20 .. v24}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0
.end method

.method protected onFinishInflate()V
    .locals 11

    const v10, 0x7f02004c

    const/16 v9, 0x8

    const v8, 0x7f02004b

    const/4 v3, 0x0

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/android/launcher2/HomeScreenOptionMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f08001f

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher2/HomeScreenOptionMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f090289

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const v2, 0x7f10006d

    invoke-virtual {p0, v2}, Lcom/android/launcher2/HomeScreenOptionMenu;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mWallpaper:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mWallpaper:Landroid/widget/TextView;

    sget-object v4, Lcom/android/launcher2/FocusHelper;->HOME_OPTION_MENU_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v2, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mWallpaper:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v2, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mLauncher:Lcom/android/launcher2/Launcher;

    const-string v4, "com.samsung.android.themestore"

    invoke-static {v2, v4}, Lcom/android/launcher2/Utilities;->getVersionCode(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    const/16 v4, 0x4e20

    if-lt v2, v4, :cond_7

    const/4 v2, 0x1

    :goto_0
    sput-boolean v2, Lcom/android/launcher2/HomeScreenOptionMenu;->mSupportWallpaperAndThemes:Z

    sget-boolean v2, Lcom/android/launcher2/HomeScreenOptionMenu;->mSupportWallpaperAndThemes:Z

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mWallpaper:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mOnClickListenerOpenTheme:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isOwner()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/LauncherApplication;->isKnoxMode()Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_0
    iget-object v2, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mWallpaper:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/launcher2/HomeScreenOptionMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f080019

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mWallpaper:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/launcher2/HomeScreenOptionMenu;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/launcher2/HomeScreenOptionMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-static {v4, v5, v1, v1}, Lcom/android/launcher2/Utilities;->getResizedDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;II)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v7, v4, v7, v7}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :goto_1
    const v2, 0x7f10006e

    invoke-virtual {p0, v2}, Lcom/android/launcher2/HomeScreenOptionMenu;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mWidget:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mWidget:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mOnClickListenerWidget:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mWidget:Landroid/widget/TextView;

    sget-object v4, Lcom/android/launcher2/FocusHelper;->HOME_OPTION_MENU_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v2, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mWidget:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v2, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mWidget:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/launcher2/HomeScreenOptionMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f080010

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mWidget:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/launcher2/HomeScreenOptionMenu;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/launcher2/HomeScreenOptionMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f02004d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-static {v4, v5, v1, v1}, Lcom/android/launcher2/Utilities;->getResizedDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;II)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v7, v4, v7, v7}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isOwner()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/LauncherApplication;->isKnoxMode()Z

    move-result v2

    if-nez v2, :cond_1

    sget-boolean v2, Lcom/android/launcher2/HomeScreenOptionMenu;->mSupportWallpaperAndThemes:Z

    if-nez v2, :cond_1

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportChinaPreloadTheme()Z

    move-result v2

    if-eqz v2, :cond_a

    const v2, 0x7f100070

    invoke-virtual {p0, v2}, Lcom/android/launcher2/HomeScreenOptionMenu;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mTheme:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mTheme:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mTheme:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mOnClickListenerTheme:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mTheme:Landroid/widget/TextView;

    sget-object v4, Lcom/android/launcher2/FocusHelper;->HOME_OPTION_MENU_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v2, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mTheme:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v2, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mTheme:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mTheme:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/launcher2/HomeScreenOptionMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f08008d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mTheme:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/launcher2/HomeScreenOptionMenu;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/launcher2/HomeScreenOptionMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-static {v4, v5, v1, v1}, Lcom/android/launcher2/Utilities;->getResizedDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;II)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v7, v4, v7, v7}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_1
    :goto_2
    const v2, 0x7f10006f

    invoke-virtual {p0, v2}, Lcom/android/launcher2/HomeScreenOptionMenu;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mSetting:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mSetting:Landroid/widget/TextView;

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportHomeModeChange()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportGalaxyLabs()Z

    move-result v2

    if-nez v2, :cond_b

    iget-object v2, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mSetting:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mOnClickListenerSettings:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mSetting:Landroid/widget/TextView;

    sget-object v4, Lcom/android/launcher2/FocusHelper;->HOME_OPTION_MENU_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v2, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mSetting:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v2, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mSetting:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mSetting:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/launcher2/HomeScreenOptionMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f080062

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_3
    iget-object v2, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mSetting:Landroid/widget/TextView;

    new-instance v4, Lcom/android/launcher2/HomeScreenOptionMenu$1;

    invoke-direct {v4, p0}, Lcom/android/launcher2/HomeScreenOptionMenu$1;-><init>(Lcom/android/launcher2/HomeScreenOptionMenu;)V

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v2, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mSetting:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/launcher2/HomeScreenOptionMenu;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/launcher2/HomeScreenOptionMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f02004a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-static {v4, v5, v1, v1}, Lcom/android/launcher2/Utilities;->getResizedDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;II)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v7, v4, v7, v7}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_2
    const v2, 0x7f100071

    invoke-virtual {p0, v2}, Lcom/android/launcher2/HomeScreenOptionMenu;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mScreenGrid:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mScreenGrid:Landroid/widget/TextView;

    if-eqz v2, :cond_5

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportHomeModeChange()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportGalaxyLabs()Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportFlexibleGrid()Z

    move-result v2

    if-nez v2, :cond_c

    :cond_4
    iget-object v2, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mScreenGrid:Landroid/widget/TextView;

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_4
    iget-object v2, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mScreenGrid:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/launcher2/HomeScreenOptionMenu;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/launcher2/HomeScreenOptionMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020049

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-static {v3, v4, v1, v1}, Lcom/android/launcher2/Utilities;->getResizedDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;II)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v7, v3, v7, v7}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_5
    sget-object v2, Lcom/android/launcher2/FocusHelper;->HOME_OPTION_MENU_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    invoke-virtual {p0, v2}, Lcom/android/launcher2/HomeScreenOptionMenu;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportChinaPreloadTheme()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p0}, Lcom/android/launcher2/HomeScreenOptionMenu;->setThemeOptionLayout()V

    :cond_6
    invoke-virtual {p0}, Lcom/android/launcher2/HomeScreenOptionMenu;->setEditTextBg()V

    return-void

    :cond_7
    move v2, v3

    goto/16 :goto_0

    :cond_8
    iget-object v2, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mWallpaper:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/launcher2/HomeScreenOptionMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f08008e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mWallpaper:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/launcher2/HomeScreenOptionMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f08008e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mWallpaper:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/launcher2/HomeScreenOptionMenu;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/launcher2/HomeScreenOptionMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-static {v4, v5, v1, v1}, Lcom/android/launcher2/Utilities;->getResizedDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;II)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v7, v4, v7, v7}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    :cond_9
    iget-object v2, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mWallpaper:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mOnClickListenerWallpaper:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mWallpaper:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/launcher2/HomeScreenOptionMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f080019

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mWallpaper:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/launcher2/HomeScreenOptionMenu;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/launcher2/HomeScreenOptionMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-static {v4, v5, v1, v1}, Lcom/android/launcher2/Utilities;->getResizedDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;II)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v7, v4, v7, v7}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    :cond_a
    invoke-direct {p0}, Lcom/android/launcher2/HomeScreenOptionMenu;->checkTheme()Z

    move-result v2

    if-eqz v2, :cond_1

    const v2, 0x7f100070

    invoke-virtual {p0, v2}, Lcom/android/launcher2/HomeScreenOptionMenu;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mTheme:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mTheme:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mTheme:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mOnClickListenerOpenTheme:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mTheme:Landroid/widget/TextView;

    sget-object v4, Lcom/android/launcher2/FocusHelper;->HOME_OPTION_MENU_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v2, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mTheme:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v2, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mTheme:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mTheme:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/launcher2/HomeScreenOptionMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f08008d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mTheme:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/launcher2/HomeScreenOptionMenu;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/launcher2/HomeScreenOptionMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-static {v4, v5, v1, v1}, Lcom/android/launcher2/Utilities;->getResizedDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;II)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v7, v4, v7, v7}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_2

    :cond_b
    iget-object v2, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mSetting:Landroid/widget/TextView;

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3

    :cond_c
    iget-object v2, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mScreenGrid:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mOnClickListenerScreenGrid:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mScreenGrid:Landroid/widget/TextView;

    sget-object v4, Lcom/android/launcher2/FocusHelper;->HOME_OPTION_MENU_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v2, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mScreenGrid:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v2, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mScreenGrid:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mScreenGrid:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/launcher2/HomeScreenOptionMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f08008c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_4
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1

    if-eqz p1, :cond_0

    const v0, 0x7f10006d

    invoke-virtual {p0, v0}, Lcom/android/launcher2/HomeScreenOptionMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/LinearLayout;->onFocusChanged(ZILandroid/graphics/Rect;)V

    return-void
.end method

.method public onHomePressed(Z)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    sget-object v3, Lcom/android/launcher2/HomeScreenOptionMenu;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onHomePressed() : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mScreenGridSelectMenu:Lcom/android/launcher2/HomeScreenGridSelectMenu;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mScreenGridSelectMenu:Lcom/android/launcher2/HomeScreenGridSelectMenu;

    invoke-virtual {v3}, Lcom/android/launcher2/HomeScreenGridSelectMenu;->isActive()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mScreenGridSelectMenu:Lcom/android/launcher2/HomeScreenGridSelectMenu;

    invoke-virtual {v3, v1}, Lcom/android/launcher2/HomeScreenGridSelectMenu;->cancelGridChange(Z)V

    iget-object v3, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mScreenGridSelectMenu:Lcom/android/launcher2/HomeScreenGridSelectMenu;

    invoke-virtual {v3, v2, v2, v1}, Lcom/android/launcher2/HomeScreenGridSelectMenu;->setActive(ZZZ)V

    iget-object v2, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getHomeView()Lcom/android/launcher2/HomeView;

    move-result-object v0

    iget-object v2, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mFadeInAnim:Landroid/animation/ObjectAnimator;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mFadeInAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mFadeInAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_0
    iget-object v2, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mFadeOutAnimSet:Landroid/animation/AnimatorSet;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mFadeOutAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mFadeOutAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_1
    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mScreenGridSelectMenu:Lcom/android/launcher2/HomeScreenGridSelectMenu;

    invoke-virtual {v0, v2}, Lcom/android/launcher2/HomeView;->removeView(Landroid/view/View;)V

    :cond_2
    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/android/launcher2/HomeScreenOptionMenu;->setVisibility(I)V

    :goto_0
    return v1

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mIsShowingMenuWidget:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mIsShowingMenuWidget:Z

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onVisibilityChanged(Landroid/view/View;I)V

    return-void
.end method

.method public setEditTextBg()V
    .locals 9

    const v8, 0x7f0200ff

    invoke-virtual {p0}, Lcom/android/launcher2/HomeScreenOptionMenu;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/launcher2/HomeScreenOptionMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0901b8

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {p0}, Lcom/android/launcher2/HomeScreenOptionMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0901b9

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {p0}, Lcom/android/launcher2/HomeScreenOptionMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f09029c

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    :try_start_0
    const-string v6, "show_button_background"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-eqz v6, :cond_3

    const/4 v1, 0x1

    :goto_0
    if-eqz v1, :cond_2

    iget-object v6, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mWallpaper:Landroid/widget/TextView;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object v6, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mWallpaper:Landroid/widget/TextView;

    invoke-virtual {v6, v3, v4, v3, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v6, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mWidget:Landroid/widget/TextView;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object v6, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mWidget:Landroid/widget/TextView;

    invoke-virtual {v6, v3, v4, v3, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v6, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mSetting:Landroid/widget/TextView;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mSetting:Landroid/widget/TextView;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object v6, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mSetting:Landroid/widget/TextView;

    invoke-virtual {v6, v3, v4, v3, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    :cond_0
    iget-object v6, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mTheme:Landroid/widget/TextView;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mTheme:Landroid/widget/TextView;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object v6, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mTheme:Landroid/widget/TextView;

    invoke-virtual {v6, v3, v4, v3, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    :cond_1
    iget-object v6, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mScreenGrid:Landroid/widget/TextView;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mScreenGrid:Landroid/widget/TextView;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object v6, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mScreenGrid:Landroid/widget/TextView;

    invoke-virtual {v6, v3, v4, v3, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    :cond_2
    return-void

    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public setEditTextBg(Z)V
    .locals 6

    const v5, 0x7f0200ff

    const v4, 0x7f02001c

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/android/launcher2/HomeScreenOptionMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0901b8

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher2/HomeScreenOptionMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0901b9

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {p0}, Lcom/android/launcher2/HomeScreenOptionMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09029c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v3, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mWallpaper:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object v3, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mWallpaper:Landroid/widget/TextView;

    invoke-virtual {v3, v1, v2, v1, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v3, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mWidget:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object v3, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mWidget:Landroid/widget/TextView;

    invoke-virtual {v3, v1, v2, v1, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v3, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mSetting:Landroid/widget/TextView;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mSetting:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object v3, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mSetting:Landroid/widget/TextView;

    invoke-virtual {v3, v1, v2, v1, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    :cond_0
    iget-object v3, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mTheme:Landroid/widget/TextView;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mTheme:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object v3, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mTheme:Landroid/widget/TextView;

    invoke-virtual {v3, v1, v2, v1, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    :cond_1
    iget-object v3, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mScreenGrid:Landroid/widget/TextView;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mScreenGrid:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object v3, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mScreenGrid:Landroid/widget/TextView;

    invoke-virtual {v3, v1, v2, v1, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v3, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mWallpaper:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object v3, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mWidget:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object v3, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mSetting:Landroid/widget/TextView;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mSetting:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    :cond_4
    iget-object v3, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mTheme:Landroid/widget/TextView;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mTheme:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    :cond_5
    iget-object v3, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mScreenGrid:Landroid/widget/TextView;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mScreenGrid:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public setMakeActive(Z)V
    .locals 3

    sget-object v0, Lcom/android/launcher2/HomeScreenOptionMenu;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMakeActive() : active "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean p1, Lcom/android/launcher2/HomeScreenOptionMenu;->mIsActive:Z

    return-void
.end method

.method protected setThemeOptionLayout()V
    .locals 11

    const/4 v10, 0x1

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportChinaPreloadTheme()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/launcher2/LauncherApplication;->isKnoxMode()Z

    move-result v9

    if-eqz v9, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/HomeScreenOptionMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v9, 0x7f09036a

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    const v9, 0x7f090121

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const v9, 0x7f090368

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const/4 v9, 0x0

    invoke-virtual {p0, v6, v9, v6, v0}, Lcom/android/launcher2/HomeScreenOptionMenu;->setPadding(IIII)V

    invoke-virtual {p0}, Lcom/android/launcher2/HomeScreenOptionMenu;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    const v9, 0x7f09011e

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0, v8}, Lcom/android/launcher2/HomeScreenOptionMenu;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    iget v1, v9, Landroid/util/DisplayMetrics;->density:F

    const v9, 0x7f09036c

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    div-float v7, v9, v1

    iget-object v9, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mWallpaper:Landroid/widget/TextView;

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mWallpaper:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    iput v2, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iget-object v9, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mWallpaper:Landroid/widget/TextView;

    invoke-virtual {v9, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v9, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mWallpaper:Landroid/widget/TextView;

    invoke-virtual {v9, v10, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_2
    iget-object v9, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mWidget:Landroid/widget/TextView;

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mWidget:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    iput v2, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iget-object v9, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mWidget:Landroid/widget/TextView;

    invoke-virtual {v9, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v9, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mWidget:Landroid/widget/TextView;

    invoke-virtual {v9, v10, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_3
    iget-object v9, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mSetting:Landroid/widget/TextView;

    if-eqz v9, :cond_4

    iget-object v9, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mSetting:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    iput v2, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iget-object v9, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mSetting:Landroid/widget/TextView;

    invoke-virtual {v9, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v9, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mSetting:Landroid/widget/TextView;

    invoke-virtual {v9, v10, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_4
    iget-object v9, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mTheme:Landroid/widget/TextView;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mTheme:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    iput v2, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iget-object v9, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mTheme:Landroid/widget/TextView;

    invoke-virtual {v9, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v9, p0, Lcom/android/launcher2/HomeScreenOptionMenu;->mTheme:Landroid/widget/TextView;

    invoke-virtual {v9, v10, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    goto/16 :goto_0
.end method

.method public startVisibleAnimation(ZI)V
    .locals 8

    const/4 v7, 0x2

    const/16 v4, 0xa

    if-ne p2, v4, :cond_0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {p0, v4}, Lcom/android/launcher2/HomeScreenOptionMenu;->setAlpha(F)V

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_1

    const/4 v3, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    :goto_1
    const-string v4, "alpha"

    new-array v5, v7, [F

    const/4 v6, 0x0

    aput v3, v5, v6

    const/4 v6, 0x1

    aput v2, v5, v6

    invoke-static {p0, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/launcher2/HomeScreenOptionMenu$16;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher2/HomeScreenOptionMenu$16;-><init>(Lcom/android/launcher2/HomeScreenOptionMenu;Z)V

    sget-object v4, Lcom/android/launcher2/Launcher;->sViewLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, v7, v4}, Lcom/android/launcher2/HomeScreenOptionMenu;->setLayerType(ILandroid/graphics/Paint;)V

    int-to-long v4, p2

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    :cond_1
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    goto :goto_1
.end method
