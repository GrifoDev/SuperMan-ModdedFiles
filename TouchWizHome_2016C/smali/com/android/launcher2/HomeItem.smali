.class public Lcom/android/launcher2/HomeItem;
.super Lcom/android/launcher2/BaseItem;
.source "HomeItem.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/HomeItem$PosistionBackup;
    }
.end annotation


# static fields
.field public static final FLAG_DISABLED_NOT_AVAILABLE:I = 0x2

.field public static final FLAG_DISABLED_SAFEMODE:I = 0x1

.field private static sExtraKeyBlackList:[Ljava/lang/String;


# instance fields
.field public cellX:I

.field public cellY:I

.field public container:J

.field public dropPos:[I

.field public hidden:Z

.field isDisabled:I

.field mDBupdate:Z

.field public mFestivalType:I

.field public mPosistionBackup:Lcom/android/launcher2/HomeItem$PosistionBackup;

.field private mPrevScreen:I

.field public spanX:I

.field public spanY:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/launcher2/HomeItem;->sExtraKeyBlackList:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    sget-object v0, Lcom/android/launcher2/BaseItem$Type;->HOME_UNKNOWN:Lcom/android/launcher2/BaseItem$Type;

    invoke-direct {p0, v0}, Lcom/android/launcher2/BaseItem;-><init>(Lcom/android/launcher2/BaseItem$Type;)V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/launcher2/HomeItem;->container:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/HomeItem;->dropPos:[I

    iput v4, p0, Lcom/android/launcher2/HomeItem;->spanX:I

    iput v4, p0, Lcom/android/launcher2/HomeItem;->spanY:I

    iput v3, p0, Lcom/android/launcher2/HomeItem;->cellX:I

    iput v3, p0, Lcom/android/launcher2/HomeItem;->cellY:I

    iput-boolean v2, p0, Lcom/android/launcher2/HomeItem;->hidden:Z

    iput v2, p0, Lcom/android/launcher2/HomeItem;->mFestivalType:I

    iput-boolean v2, p0, Lcom/android/launcher2/HomeItem;->mDBupdate:Z

    iput v2, p0, Lcom/android/launcher2/HomeItem;->isDisabled:I

    iput v3, p0, Lcom/android/launcher2/HomeItem;->mPrevScreen:I

    return-void
.end method

.method protected constructor <init>(Lcom/android/launcher2/BaseItem$Type;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcom/android/launcher2/BaseItem;-><init>(Lcom/android/launcher2/BaseItem$Type;)V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/launcher2/HomeItem;->container:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/HomeItem;->dropPos:[I

    iput v4, p0, Lcom/android/launcher2/HomeItem;->spanX:I

    iput v4, p0, Lcom/android/launcher2/HomeItem;->spanY:I

    iput v3, p0, Lcom/android/launcher2/HomeItem;->cellX:I

    iput v3, p0, Lcom/android/launcher2/HomeItem;->cellY:I

    iput-boolean v2, p0, Lcom/android/launcher2/HomeItem;->hidden:Z

    iput v2, p0, Lcom/android/launcher2/HomeItem;->mFestivalType:I

    iput-boolean v2, p0, Lcom/android/launcher2/HomeItem;->mDBupdate:Z

    iput v2, p0, Lcom/android/launcher2/HomeItem;->isDisabled:I

    iput v3, p0, Lcom/android/launcher2/HomeItem;->mPrevScreen:I

    return-void
.end method

.method public static isAppShortcut(Landroid/content/Intent;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/launcher2/HomeItem;->isAppShortcutInDetail(Landroid/content/Intent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isAppShortcutInDetail(Landroid/content/Intent;)Z
    .locals 11

    const/4 v6, 0x0

    const/4 v5, 0x1

    if-eqz p0, :cond_a

    const-string v7, "android.intent.action.MAIN"

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    if-eqz v7, :cond_a

    invoke-virtual {p0}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v7

    if-eqz v7, :cond_a

    invoke-virtual {p0}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->size()I

    move-result v7

    if-ne v7, v5, :cond_a

    const-string v7, "android.intent.category.LAUNCHER"

    invoke-virtual {p0, v7}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "android.intent.category.INFO"

    invoke-virtual {p0, v7}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a

    :cond_0
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_2

    :cond_1
    :goto_0
    return v5

    :cond_2
    invoke-virtual {v1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isHomeOnlyModeEnabled()Z

    move-result v7

    if-eqz v7, :cond_8

    sget-object v7, Lcom/android/launcher2/HomeItem;->sExtraKeyBlackList:[Ljava/lang/String;

    if-nez v7, :cond_3

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/launcher2/LauncherApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f100004

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/android/launcher2/HomeItem;->sExtraKeyBlackList:[Ljava/lang/String;

    :cond_3
    const/4 v2, 0x0

    sget-object v7, Lcom/android/launcher2/HomeItem;->sExtraKeyBlackList:[Ljava/lang/String;

    if-eqz v7, :cond_4

    sget-object v7, Lcom/android/launcher2/HomeItem;->sExtraKeyBlackList:[Ljava/lang/String;

    array-length v7, v7

    if-lez v7, :cond_4

    sget-object v8, Lcom/android/launcher2/HomeItem;->sExtraKeyBlackList:[Ljava/lang/String;

    array-length v9, v8

    move v7, v6

    :goto_1
    if-ge v7, v9, :cond_4

    aget-object v3, v8, v7

    invoke-interface {v4, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    const/4 v2, 0x1

    :cond_4
    if-eqz v2, :cond_6

    const-string v6, "HomeItem"

    const-string v7, "isAppShortcut : This shortcut has extra infos in black list"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_6
    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v7

    if-ne v7, v5, :cond_7

    const-string v7, "profile"

    invoke-interface {v4, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    :cond_7
    move v5, v6

    goto :goto_0

    :cond_8
    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v7

    if-ne v7, v5, :cond_9

    const-string v7, "profile"

    invoke-interface {v4, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    :cond_9
    move v5, v6

    goto :goto_0

    :cond_a
    move v5, v6

    goto :goto_0
.end method

.method public static mapDbValueToType(I)Lcom/android/launcher2/BaseItem$Type;
    .locals 1

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    sget-object v0, Lcom/android/launcher2/BaseItem$Type;->HOME_UNKNOWN:Lcom/android/launcher2/BaseItem$Type;

    :goto_0
    return-object v0

    :pswitch_1
    sget-object v0, Lcom/android/launcher2/BaseItem$Type;->HOME_APPLICATION:Lcom/android/launcher2/BaseItem$Type;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/android/launcher2/BaseItem$Type;->HOME_SHORTCUT:Lcom/android/launcher2/BaseItem$Type;

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/android/launcher2/BaseItem$Type;->HOME_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    goto :goto_0

    :pswitch_4
    sget-object v0, Lcom/android/launcher2/BaseItem$Type;->HOME_WIDGET:Lcom/android/launcher2/BaseItem$Type;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method static writeBitmap(Landroid/content/ContentValues;Landroid/graphics/Bitmap;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/android/launcher2/Utilities;->flattenBitmap(Landroid/graphics/Bitmap;)[B

    move-result-object v0

    const-string v1, "icon"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    :cond_0
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getComponentName()Landroid/content/ComponentName;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getFlexibleGridStyle()I
    .locals 6

    const-wide/16 v4, -0x64

    const/4 v0, -0x1

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportFlexibleGrid()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getLauncherGridSize()Lcom/android/launcher2/LauncherApplication$HomeGridSize;

    move-result-object v1

    sget-object v2, Lcom/android/launcher2/LauncherApplication$HomeGridSize;->GRID_4x4:Lcom/android/launcher2/LauncherApplication$HomeGridSize;

    if-eq v1, v2, :cond_3

    iget-wide v2, p0, Lcom/android/launcher2/HomeItem;->container:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/launcher2/HomeItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v2, Lcom/android/launcher2/BaseItem$Type;->HOME_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-ne v1, v2, :cond_1

    const v0, 0x7f0f0014

    :cond_0
    :goto_0
    return v0

    :cond_1
    const v0, 0x7f0f0013

    goto :goto_0

    :cond_2
    invoke-static {p0}, Lcom/android/launcher2/BaseItem;->isItemInFolder(Lcom/android/launcher2/BaseItem;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v0, 0x7f0f001a

    goto :goto_0

    :cond_3
    iget-wide v2, p0, Lcom/android/launcher2/HomeItem;->container:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/android/launcher2/HomeItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v2, Lcom/android/launcher2/BaseItem$Type;->HOME_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-ne v1, v2, :cond_4

    const v0, 0x7f0f0006

    goto :goto_0

    :cond_4
    const v0, 0x7f0f0005

    goto :goto_0

    :cond_5
    invoke-static {p0}, Lcom/android/launcher2/BaseItem;->isItemInFolder(Lcom/android/launcher2/BaseItem;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v0, 0x7f0f000d

    goto :goto_0
.end method

.method public getIconBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 1

    invoke-super {p0, p1}, Lcom/android/launcher2/BaseItem;->getIconBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/android/launcher2/HomeItem;->mIconBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPrevPosition()I
    .locals 1

    iget v0, p0, Lcom/android/launcher2/HomeItem;->mPrevScreen:I

    return v0
.end method

.method public getShadowColor()I
    .locals 4

    const v1, 0x1ffffff

    invoke-static {}, Lcom/android/launcher2/theme/OpenThemeManager;->getInstance()Lcom/android/launcher2/theme/OpenThemeManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/theme/OpenThemeManager;->getThemeLoader()Lcom/android/launcher2/theme/OpenThemeLoader;

    move-result-object v2

    sget-object v3, Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;->HOME:Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;

    invoke-virtual {v3}, Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;->value()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/launcher2/theme/OpenThemeLoader;->getIsTheme(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/launcher2/HomeItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v3, Lcom/android/launcher2/BaseItem$Type;->HOME_APPLICATION:Lcom/android/launcher2/BaseItem$Type;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/HomeItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v3, Lcom/android/launcher2/BaseItem$Type;->HOME_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/HomeItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v3, Lcom/android/launcher2/BaseItem$Type;->HOME_SHORTCUT:Lcom/android/launcher2/BaseItem$Type;

    if-ne v2, v3, :cond_1

    :cond_0
    invoke-static {}, Lcom/android/launcher2/theme/OpenThemeManager;->getInstance()Lcom/android/launcher2/theme/OpenThemeManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/theme/OpenThemeManager;->getThemeStyle()Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle;->getHomeTextShadowColor()I

    move-result v0

    const v2, 0x1ffffff

    if-eq v0, v2, :cond_1

    move v1, v0

    :cond_1
    return v1
.end method

.method public getSpanX()I
    .locals 1

    iget v0, p0, Lcom/android/launcher2/HomeItem;->spanX:I

    return v0
.end method

.method public getSpanY()I
    .locals 1

    iget v0, p0, Lcom/android/launcher2/HomeItem;->spanY:I

    return v0
.end method

.method public getTargetHeight()I
    .locals 2

    invoke-static {p0}, Lcom/android/launcher2/HomeItem;->isItemInHotseat(Lcom/android/launcher2/BaseItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/launcher2/IconConfig;->get()Lcom/android/launcher2/IconConfig;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/IconConfig$TYPE;->HOTSEAT:Lcom/android/launcher2/IconConfig$TYPE;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/IconConfig;->getIconSize(Lcom/android/launcher2/IconConfig$TYPE;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/android/launcher2/IconConfig;->get()Lcom/android/launcher2/IconConfig;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/IconConfig$TYPE;->HOME:Lcom/android/launcher2/IconConfig$TYPE;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/IconConfig;->getIconSize(Lcom/android/launcher2/IconConfig$TYPE;)I

    move-result v0

    goto :goto_0
.end method

.method public getTargetWidth()I
    .locals 2

    invoke-static {p0}, Lcom/android/launcher2/HomeItem;->isItemInHotseat(Lcom/android/launcher2/BaseItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/launcher2/IconConfig;->get()Lcom/android/launcher2/IconConfig;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/IconConfig$TYPE;->HOTSEAT:Lcom/android/launcher2/IconConfig$TYPE;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/IconConfig;->getIconSize(Lcom/android/launcher2/IconConfig$TYPE;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcom/android/launcher2/HomeItem;->isItemInFolder(Lcom/android/launcher2/BaseItem;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/launcher2/IconConfig;->get()Lcom/android/launcher2/IconConfig;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/IconConfig$TYPE;->HOME:Lcom/android/launcher2/IconConfig$TYPE;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/IconConfig;->getIconSize(Lcom/android/launcher2/IconConfig$TYPE;)I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/android/launcher2/IconConfig;->get()Lcom/android/launcher2/IconConfig;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/IconConfig$TYPE;->HOME:Lcom/android/launcher2/IconConfig$TYPE;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/IconConfig;->getIconSize(Lcom/android/launcher2/IconConfig$TYPE;)I

    move-result v0

    goto :goto_0
.end method

.method public getTextBg()Landroid/graphics/drawable/Drawable;
    .locals 2

    invoke-static {}, Lcom/android/launcher2/theme/OpenThemeManager;->getInstance()Lcom/android/launcher2/theme/OpenThemeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/theme/OpenThemeManager;->getThemeLoader()Lcom/android/launcher2/theme/OpenThemeLoader;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;->HOME:Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;

    invoke-virtual {v1}, Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;->value()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/theme/OpenThemeLoader;->getIsTheme(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/launcher2/BaseItem;->isItemInFolder(Lcom/android/launcher2/BaseItem;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/launcher2/theme/OpenThemeManager;->getInstance()Lcom/android/launcher2/theme/OpenThemeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/theme/OpenThemeManager;->getThemeStyle()Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle;->getAppTitleBg()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTextColor()I
    .locals 5

    const v1, 0x1ffffff

    invoke-static {}, Lcom/android/launcher2/theme/OpenThemeManager;->getInstance()Lcom/android/launcher2/theme/OpenThemeManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/theme/OpenThemeManager;->getThemeLoader()Lcom/android/launcher2/theme/OpenThemeLoader;

    move-result-object v3

    sget-object v4, Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;->HOME:Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;

    invoke-virtual {v4}, Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;->value()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/launcher2/theme/OpenThemeLoader;->getIsTheme(I)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/launcher2/HomeItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v4, Lcom/android/launcher2/BaseItem$Type;->HOME_APPLICATION:Lcom/android/launcher2/BaseItem$Type;

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/launcher2/HomeItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v4, Lcom/android/launcher2/BaseItem$Type;->HOME_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/launcher2/HomeItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v4, Lcom/android/launcher2/BaseItem$Type;->HOME_SHORTCUT:Lcom/android/launcher2/BaseItem$Type;

    if-ne v3, v4, :cond_3

    :cond_0
    invoke-static {p0}, Lcom/android/launcher2/BaseItem;->isItemInFolder(Lcom/android/launcher2/BaseItem;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v2, v1

    :goto_0
    return v2

    :cond_1
    invoke-static {}, Lcom/android/launcher2/theme/OpenThemeManager;->getInstance()Lcom/android/launcher2/theme/OpenThemeManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/theme/OpenThemeManager;->getThemeStyle()Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle;->getHomeTextColor()I

    move-result v0

    const v3, 0x1ffffff

    if-eq v0, v3, :cond_2

    move v1, v0

    :cond_2
    move v2, v1

    goto :goto_0

    :cond_3
    invoke-static {p0}, Lcom/android/launcher2/BaseItem;->isItemInFolder(Lcom/android/launcher2/BaseItem;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v2, v1

    goto :goto_0
.end method

.method protected mapTypeToDbValue()I
    .locals 3

    sget-object v1, Lcom/android/launcher2/HomeItem$1;->$SwitchMap$com$android$launcher2$BaseItem$Type:[I

    iget-object v2, p0, Lcom/android/launcher2/HomeItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    invoke-virtual {v2}, Lcom/android/launcher2/BaseItem$Type;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x4

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method onAddToDatabase(Landroid/content/Context;Landroid/content/ContentValues;)V
    .locals 4

    const-string v0, "itemType"

    invoke-virtual {p0}, Lcom/android/launcher2/HomeItem;->mapTypeToDbValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "container"

    iget-wide v2, p0, Lcom/android/launcher2/HomeItem;->container:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "screen"

    iget v1, p0, Lcom/android/launcher2/HomeItem;->mScreen:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "cellX"

    iget v1, p0, Lcom/android/launcher2/HomeItem;->cellX:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "cellY"

    iget v1, p0, Lcom/android/launcher2/HomeItem;->cellY:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "spanX"

    iget v1, p0, Lcom/android/launcher2/HomeItem;->spanX:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "spanY"

    iget v1, p0, Lcom/android/launcher2/HomeItem;->spanY:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "festival"

    iget v1, p0, Lcom/android/launcher2/HomeItem;->mFestivalType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "profileId"

    invoke-static {p1}, Lcom/android/launcher2/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher2/compat/UserManagerCompat;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/HomeItem;->user:Lcom/android/launcher2/compat/UserHandleCompat;

    invoke-virtual {v1, v2}, Lcom/android/launcher2/compat/UserManagerCompat;->getSerialNumberForUser(Lcom/android/launcher2/compat/UserHandleCompat;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    return-void
.end method

.method public setPrevPosition(I)V
    .locals 0

    iput p1, p0, Lcom/android/launcher2/HomeItem;->mPrevScreen:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    const-string v0, ""

    iget-object v2, p0, Lcom/android/launcher2/HomeItem;->dropPos:[I

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/launcher2/HomeItem;->dropPos:[I

    array-length v2, v2

    if-ge v1, v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher2/HomeItem;->dropPos:[I

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HomeItem(id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/android/launcher2/HomeItem;->mId:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " container="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/android/launcher2/HomeItem;->container:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " screen="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/launcher2/HomeItem;->mScreen:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " cellX="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/launcher2/HomeItem;->cellX:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " cellY="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/launcher2/HomeItem;->cellY:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " spanX="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/launcher2/HomeItem;->spanX:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " spanY="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/launcher2/HomeItem;->spanY:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " dropPos="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method updateValuesWithCoordinates(Landroid/content/ContentValues;II)V
    .locals 2

    const-string v0, "cellX"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "cellY"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method
