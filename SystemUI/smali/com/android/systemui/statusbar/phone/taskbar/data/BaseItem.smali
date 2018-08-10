.class public abstract Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;
.super Ljava/lang/Object;
.source "BaseItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem$Type;
    }
.end annotation


# static fields
.field public static LIVE_ICON_PACKAGES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mBadgeCount:I

.field public mDirty:Z

.field public mIconBitmap:Landroid/graphics/Bitmap;

.field public mId:J

.field public mScreen:I

.field public mSecretItem:Z

.field public mTitle:Ljava/lang/String;

.field public mType:Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem$Type;

.field public user:Landroid/os/UserHandle;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "com.android.calendar"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.samsung.android.game.gamehome"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.sec.android.app.clockpackage"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;->LIVE_ICON_PACKAGES:Ljava/util/List;

    return-void
.end method

.method protected constructor <init>(Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem$Type;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;->mId:J

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;->mDirty:Z

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;->mSecretItem:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;->mScreen:I

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;->mType:Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem$Type;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;->user:Landroid/os/UserHandle;

    return-void
.end method

.method private isLiveIconPackage()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public abstract getComponentName()Landroid/content/ComponentName;
.end method

.method public getIcon(Landroid/content/pm/ActivityInfo;ILandroid/content/Context;Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/content/pm/ActivityInfo;->getIconResource()I

    move-result v4

    if-eqz v4, :cond_0

    :try_start_0
    iget-object v4, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p4, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    :goto_0
    if-eqz v3, :cond_0

    :try_start_1
    invoke-virtual {p1}, Landroid/content/pm/ActivityInfo;->getIconResource()I

    move-result v4

    invoke-virtual {v3, v4, p2}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    :cond_0
    :goto_1
    if-nez v0, :cond_1

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    const/high16 v4, 0x10d0000

    invoke-virtual {v3, v4, p2}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_1
    return-object v0

    :catch_0
    move-exception v1

    const/4 v3, 0x0

    goto :goto_0

    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method public getIconBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 14

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;->isLiveIconPackage()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string/jumbo v12, "current_sec_active_themepackage"

    invoke-static {v11, v12}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Landroid/content/pm/PackageManager;->semGetCscPackageItemIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    :goto_0
    if-nez v3, :cond_1

    invoke-static {}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->DEBUGGABLE()Z

    move-result v11

    if-eqz v11, :cond_0

    const-string/jumbo v11, "[DS]BaseItem"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Theme : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ",   PackageName : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v10, 0x0

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v11

    invoke-virtual {v4, v11}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/4 v11, 0x0

    invoke-virtual {v7, v4, v11}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v8

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v5, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    :try_start_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v7, v11, v12}, Landroid/content/pm/PackageManager;->semGetActivityIconForIconTray(Landroid/content/ComponentName;I)Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NoSuchMethodError; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v10

    :goto_1
    if-eqz v10, :cond_3

    move-object v3, v10

    :cond_1
    :goto_2
    if-eqz v3, :cond_2

    invoke-static {v3, p1}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v11

    iput-object v11, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;->mIconBitmap:Landroid/graphics/Bitmap;

    :cond_2
    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;->mIconBitmap:Landroid/graphics/Bitmap;

    return-object v11

    :catch_0
    move-exception v2

    const-string/jumbo v11, "[DS]BaseItem"

    const-string/jumbo v12, "Cound not call getCSCPackageItemIcon. This should only happen when running on a device without CSC related features"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v6

    invoke-virtual {v6}, Ljava/lang/NoSuchMethodError;->printStackTrace()V

    goto :goto_1

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_1

    :cond_3
    iget-object v11, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {p0, v11, v5, p1, v7}, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;->getIcon(Landroid/content/pm/ActivityInfo;ILandroid/content/Context;Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_2
.end method

.method public final getItemType()Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem$Type;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;->mType:Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem$Type;

    return-object v0
.end method

.method public abstract getPackageName()Ljava/lang/String;
.end method

.method public getPosition()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;->mScreen:I

    return v0
.end method

.method public getSpanX()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getSpanY()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;->mTitle:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public setPosition(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;->mScreen:I

    return-void
.end method

.method public unbind()V
    .locals 0

    return-void
.end method
