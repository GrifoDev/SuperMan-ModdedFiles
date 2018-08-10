.class public Landroid/util/IconDrawableFactory;
.super Ljava/lang/Object;
.source "IconDrawableFactory.java"


# static fields
.field public static final CORP_BADGE_COLORS:[I


# instance fields
.field protected final mContext:Landroid/content/Context;

.field protected final mEmbedShadow:Z

.field protected final mLauncherIcons:Landroid/util/LauncherIcons;

.field protected final mPm:Landroid/content/pm/PackageManager;

.field protected final mUm:Landroid/os/UserManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const v0, 0x1060127

    const v1, 0x1060128

    const v2, 0x1060129

    filled-new-array {v0, v1, v2}, [I

    move-result-object v0

    sput-object v0, Landroid/util/IconDrawableFactory;->CORP_BADGE_COLORS:[I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/util/IconDrawableFactory;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Landroid/util/IconDrawableFactory;->mPm:Landroid/content/pm/PackageManager;

    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Landroid/util/IconDrawableFactory;->mUm:Landroid/os/UserManager;

    new-instance v0, Landroid/util/LauncherIcons;

    invoke-direct {v0, p1}, Landroid/util/LauncherIcons;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/util/IconDrawableFactory;->mLauncherIcons:Landroid/util/LauncherIcons;

    iput-boolean p2, p0, Landroid/util/IconDrawableFactory;->mEmbedShadow:Z

    return-void
.end method

.method public static getUserBadgeColor(Landroid/os/UserManager;I)I
    .locals 4

    invoke-virtual {p0, p1}, Landroid/os/UserManager;->getManagedProfileBadge(I)I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    sget-object v2, Landroid/util/IconDrawableFactory;->CORP_BADGE_COLORS:[I

    sget-object v3, Landroid/util/IconDrawableFactory;->CORP_BADGE_COLORS:[I

    array-length v3, v3

    rem-int v3, v0, v3

    aget v1, v2, v3

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    return v2
.end method

.method public static newInstance(Landroid/content/Context;)Landroid/util/IconDrawableFactory;
    .locals 2

    new-instance v0, Landroid/util/IconDrawableFactory;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Landroid/util/IconDrawableFactory;-><init>(Landroid/content/Context;Z)V

    return-object v0
.end method

.method public static newInstance(Landroid/content/Context;Z)Landroid/util/IconDrawableFactory;
    .locals 1

    new-instance v0, Landroid/util/IconDrawableFactory;

    invoke-direct {v0, p0, p1}, Landroid/util/IconDrawableFactory;-><init>(Landroid/content/Context;Z)V

    return-object v0
.end method


# virtual methods
.method public getBadgedIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget v0, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/util/IconDrawableFactory;->getBadgedIcon(Landroid/content/pm/ApplicationInfo;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getBadgedIcon(Landroid/content/pm/ApplicationInfo;I)Landroid/graphics/drawable/Drawable;
    .locals 1

    invoke-virtual {p0, p1, p1, p2}, Landroid/util/IconDrawableFactory;->getBadgedIcon(Landroid/content/pm/PackageItemInfo;Landroid/content/pm/ApplicationInfo;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getBadgedIcon(Landroid/content/pm/PackageItemInfo;Landroid/content/pm/ApplicationInfo;I)Landroid/graphics/drawable/Drawable;
    .locals 5

    const/4 v3, 0x1

    iget-object v2, p0, Landroid/util/IconDrawableFactory;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, p1, p2, v3, v3}, Landroid/content/pm/PackageManager;->loadUnbadgedItemIcon(Landroid/content/pm/PackageItemInfo;Landroid/content/pm/ApplicationInfo;ZI)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-boolean v2, p0, Landroid/util/IconDrawableFactory;->mEmbedShadow:Z

    if-nez v2, :cond_0

    invoke-virtual {p0, p2, p3}, Landroid/util/IconDrawableFactory;->needsBadging(Landroid/content/pm/ApplicationInfo;I)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    invoke-static {p3}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {p3}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    iget-object v2, p0, Landroid/util/IconDrawableFactory;->mPm:Landroid/content/pm/PackageManager;

    new-instance v3, Landroid/os/UserHandle;

    invoke-direct {v3, p3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    return-object v2

    :cond_2
    iget-object v2, p0, Landroid/util/IconDrawableFactory;->mLauncherIcons:Landroid/util/LauncherIcons;

    invoke-virtual {v2, v1}, Landroid/util/LauncherIcons;->wrapIconDrawableWithShadow(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/pm/ApplicationInfo;->isInstantApp()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10600af

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    iget-object v2, p0, Landroid/util/IconDrawableFactory;->mLauncherIcons:Landroid/util/LauncherIcons;

    const v3, 0x108040e

    invoke-virtual {v2, v1, v3, v0}, Landroid/util/LauncherIcons;->getBadgedDrawable(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_3
    iget-object v2, p0, Landroid/util/IconDrawableFactory;->mUm:Landroid/os/UserManager;

    invoke-virtual {v2, p3}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroid/util/IconDrawableFactory;->mLauncherIcons:Landroid/util/LauncherIcons;

    iget-object v3, p0, Landroid/util/IconDrawableFactory;->mUm:Landroid/os/UserManager;

    invoke-static {v3, p3}, Landroid/util/IconDrawableFactory;->getUserBadgeColor(Landroid/os/UserManager;I)I

    move-result v3

    const v4, 0x10803ce

    invoke-virtual {v2, v1, v4, v3}, Landroid/util/LauncherIcons;->getBadgedDrawable(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_4
    return-object v1
.end method

.method protected needsBadging(Landroid/content/pm/ApplicationInfo;I)Z
    .locals 1

    invoke-virtual {p1}, Landroid/content/pm/ApplicationInfo;->isInstantApp()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/util/IconDrawableFactory;->mUm:Landroid/os/UserManager;

    invoke-virtual {v0, p2}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
