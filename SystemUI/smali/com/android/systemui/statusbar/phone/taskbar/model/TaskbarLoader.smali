.class public Lcom/android/systemui/statusbar/phone/taskbar/model/TaskbarLoader;
.super Ljava/lang/Object;
.source "TaskbarLoader.java"


# static fields
.field private static final synthetic -com-android-systemui-statusbar-phone-taskbar-data-BaseItem$TypeSwitchesValues:[I


# instance fields
.field private final mPkgMgr:Landroid/content/pm/PackageManager;

.field private final mPkgResCache:Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache;

.field private final mTaskBar:Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;


# direct methods
.method private static synthetic -getcom-android-systemui-statusbar-phone-taskbar-data-BaseItem$TypeSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskbarLoader;->-com-android-systemui-statusbar-phone-taskbar-data-BaseItem$TypeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskbarLoader;->-com-android-systemui-statusbar-phone-taskbar-data-BaseItem$TypeSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem$Type;->values()[Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem$Type;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem$Type;->HOME_APPLICATION:Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem$Type;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem$Type;->HOME_RUNNING_APPLICATION:Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem$Type;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem$Type;->HOME_SHORTCUT:Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem$Type;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    :try_start_3
    sget-object v1, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem$Type;->HOME_UNKNOWN:Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem$Type;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_3
    :try_start_4
    sget-object v1, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem$Type;->MENU_APP:Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem$Type;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_4
    sput-object v0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskbarLoader;->-com-android-systemui-statusbar-phone-taskbar-data-BaseItem$TypeSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1

    :catch_4
    move-exception v1

    goto :goto_0
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskbarLoader;->mTaskBar:Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskbarLoader;->mPkgResCache:Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskbarLoader;->mTaskBar:Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskbarLoader;->mPkgMgr:Landroid/content/pm/PackageManager;

    return-void
.end method

.method private refreshShortcut(Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;)Z
    .locals 7

    move-object v2, p1

    const/4 v0, 0x0

    iget-object v1, p1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->intent:Landroid/content/Intent;

    if-eqz v1, :cond_1

    iget-object v5, p1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mType:Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem$Type;

    sget-object v6, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem$Type;->HOME_APPLICATION:Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem$Type;

    if-ne v5, v6, :cond_2

    new-instance v4, Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache$TitleIconInfo;

    invoke-direct {v4}, Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache$TitleIconInfo;-><init>()V

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskbarLoader;->mPkgResCache:Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache;

    iget-object v6, p1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->user:Landroid/os/UserHandle;

    invoke-virtual {v5, v4, v1, v6}, Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache;->getTitleAndIcon(Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache$TitleIconInfo;Landroid/content/Intent;Landroid/os/UserHandle;)V

    iget-object v5, v4, Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache$TitleIconInfo;->mIcon:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_0

    iget-object v5, v4, Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache$TitleIconInfo;->mIcon:Landroid/graphics/Bitmap;

    iget-object v6, p1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mIconBitmap:Landroid/graphics/Bitmap;

    if-eq v5, v6, :cond_0

    iget-object v5, v4, Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache$TitleIconInfo;->mIcon:Landroid/graphics/Bitmap;

    iput-object v5, p1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mIconBitmap:Landroid/graphics/Bitmap;

    const/4 v0, 0x1

    :cond_0
    iget-object v5, v4, Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache$TitleIconInfo;->mTitle:Ljava/lang/String;

    if-eqz v5, :cond_1

    iget-object v5, v4, Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache$TitleIconInfo;->mTitle:Ljava/lang/String;

    iget-object v6, p1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_1

    iget-object v5, v4, Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache$TitleIconInfo;->mTitle:Ljava/lang/String;

    iput-object v5, p1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mTitle:Ljava/lang/String;

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0

    :cond_2
    iget-object v5, p1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mType:Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem$Type;

    sget-object v6, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem$Type;->HOME_SHORTCUT:Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem$Type;

    if-ne v5, v6, :cond_1

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskbarLoader;->mTaskBar:Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskbarLoader;->mTaskBar:Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->getDBManager(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/taskbar/database/TaskBarDBManager;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/android/systemui/statusbar/phone/taskbar/database/TaskBarDBManager;->getShortcutInfo(Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;)Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    move-result-object v3

    iget-object v5, v3, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mIconBitmap:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_3

    iget-object v5, v3, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mIconBitmap:Landroid/graphics/Bitmap;

    iget-object v6, p1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mIconBitmap:Landroid/graphics/Bitmap;

    if-eq v5, v6, :cond_3

    iget-object v5, v3, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mIconBitmap:Landroid/graphics/Bitmap;

    iput-object v5, p1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mIconBitmap:Landroid/graphics/Bitmap;

    const/4 v0, 0x1

    :cond_3
    iget-object v5, v3, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mTitle:Ljava/lang/String;

    if-eqz v5, :cond_1

    iget-object v5, v3, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mTitle:Ljava/lang/String;

    iget-object v6, p1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_1

    iget-object v5, v3, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mTitle:Ljava/lang/String;

    iput-object v5, p1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mTitle:Ljava/lang/String;

    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public removePackage(Ljava/util/Map;Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;",
            ">;",
            "Landroid/os/UserHandle;",
            ")V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->user:Landroid/os/UserHandle;

    invoke-virtual {v3, p4}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskbarLoader;->-getcom-android-systemui-statusbar-phone-taskbar-data-BaseItem$TypeSwitchesValues()[I

    move-result-object v3

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mType:Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem$Type;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem$Type;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    :goto_1
    if-eqz v2, :cond_0

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_0
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->getPackageName()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public updatePackage(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Landroid/os/UserHandle;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;",
            ">;",
            "Landroid/os/UserHandle;",
            ")V"
        }
    .end annotation

    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v6

    invoke-virtual {p6}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    const/4 v8, 0x0

    invoke-interface {v6, p3, v8, v7}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v5

    if-eqz v5, :cond_1

    iget-object v7, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v4, v7, Landroid/content/pm/ApplicationInfo;->enabled:Z

    :goto_0
    if-nez v4, :cond_2

    invoke-virtual {p0, p2, p3, p4, p6}, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskbarLoader;->removePackage(Ljava/util/Map;Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    :cond_2
    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    invoke-static {}, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskbarLoader;->-getcom-android-systemui-statusbar-phone-taskbar-data-BaseItem$TypeSwitchesValues()[I

    move-result-object v7

    iget-object v8, v2, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mType:Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem$Type;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem$Type;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    iget-object v7, v2, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->user:Landroid/os/UserHandle;

    invoke-virtual {v7, p6}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p6}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    const/4 v8, 0x0

    invoke-interface {v6, v0, v8, v7}, Landroid/content/pm/IPackageManager;->getActivityInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;

    move-result-object v7

    if-eqz v7, :cond_4

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskbarLoader;->refreshShortcut(Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {p5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    const-string/jumbo v7, "[DS]TaskbarLoader"

    const-string/jumbo v8, "RemoteException in updatePackage"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    :cond_4
    :try_start_1
    invoke-interface {p4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public updatePackageAsUserAvailable(Landroid/content/Context;Ljava/util/Map;ZLjava/util/List;Landroid/os/UserHandle;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;",
            ">;Z",
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;",
            ">;",
            "Landroid/os/UserHandle;",
            ")V"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->user:Landroid/os/UserHandle;

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-virtual {p5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    if-ne v2, v3, :cond_0

    if-eqz p3, :cond_1

    iget v2, v0, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->isDisabled:I

    and-int/lit8 v2, v2, -0x9

    iput v2, v0, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->isDisabled:I

    :goto_1
    invoke-interface {p4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget v2, v0, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->isDisabled:I

    or-int/lit8 v2, v2, 0x8

    iput v2, v0, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->isDisabled:I

    goto :goto_1

    :cond_2
    return-void
.end method

.method public updatePackageAvailability(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;ZLjava/util/List;Ljava/util/List;Landroid/os/UserHandle;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;",
            ">;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;",
            ">;",
            "Landroid/os/UserHandle;",
            ")V"
        }
    .end annotation

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    if-eqz p4, :cond_3

    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    iget-object v5, v2, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mType:Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem$Type;

    sget-object v6, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem$Type;->HOME_APPLICATION:Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem$Type;

    if-eq v5, v6, :cond_1

    iget-object v5, v2, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mType:Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem$Type;

    sget-object v6, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem$Type;->HOME_SHORTCUT:Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem$Type;

    if-ne v5, v6, :cond_0

    :cond_1
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_2

    :try_start_0
    invoke-virtual {p7}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    const/4 v6, 0x0

    invoke-interface {v4, v0, v6, v5}, Landroid/content/pm/IPackageManager;->getActivityInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskbarLoader;->refreshShortcut(Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {p6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v5, "[DS]TaskbarLoader"

    const-string/jumbo v6, "RemoteException in updatePackageAvailability"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_2
    :try_start_1
    invoke-interface {p5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :cond_3
    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    invoke-static {}, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskbarLoader;->-getcom-android-systemui-statusbar-phone-taskbar-data-BaseItem$TypeSwitchesValues()[I

    move-result-object v5

    iget-object v6, v2, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mType:Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem$Type;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem$Type;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object v5, v2, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->user:Landroid/os/UserHandle;

    invoke-virtual {v5, p7}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/TaskbarLoader;->mPkgResCache:Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache;->getUnavailableIcon()Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, v2, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mIconBitmap:Landroid/graphics/Bitmap;

    invoke-interface {p6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public updatePackageSuspended(Landroid/content/Context;Ljava/util/Map;ZLjava/lang/String;Ljava/util/List;Landroid/os/UserHandle;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;",
            ">;Z",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;",
            ">;",
            "Landroid/os/UserHandle;",
            ")V"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->user:Landroid/os/UserHandle;

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-virtual {p6}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    if-ne v2, v3, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz p3, :cond_1

    iget v2, v0, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->isDisabled:I

    or-int/lit8 v2, v2, 0x4

    iput v2, v0, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->isDisabled:I

    :goto_1
    invoke-interface {p5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget v2, v0, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->isDisabled:I

    and-int/lit8 v2, v2, -0x5

    iput v2, v0, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->isDisabled:I

    goto :goto_1

    :cond_2
    return-void
.end method
