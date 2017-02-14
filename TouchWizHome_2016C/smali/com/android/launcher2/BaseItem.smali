.class public abstract Lcom/android/launcher2/BaseItem;
.super Ljava/lang/Object;
.source "BaseItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/BaseItem$LoadingListener;,
        Lcom/android/launcher2/BaseItem$Type;
    }
.end annotation


# static fields
.field private static final DEBUGGABLE:Z

.field public static final DEFAULT:I = 0x0

.field static final EXTRA_PROFILE:Ljava/lang/String; = "profile"

.field public static final FLAG_AUTOINSTALL_ICON:I = 0x2

.field public static final FLAG_INSTALL_SESSION_ACTIVE:I = 0x8

.field public static final FLAG_OMC_RESTORED_ICON:I = 0x20

.field public static final FLAG_RESTORED_ICON:I = 0x1

.field public static final FLAG_RESTORE_STARTED:I = 0x10

.field public static final FLAG_SCLOUD_RESTORED_ICON:I = 0x4

.field public static final STATE_LOADED:I = 0x1

.field public static final STATE_LOADING:I = 0x0

.field private static final TAG:Ljava/lang/String; = "BaseItem"

.field public static final UNSPECIFIED:I = -0x1


# instance fields
.field public mBadgeCount:I

.field public mColor:I

.field public mDirty:Z

.field public mIconBitmap:Landroid/graphics/Bitmap;

.field public mIconMovie:Landroid/graphics/Movie;

.field public mIconShadowBitmap:Landroid/graphics/Bitmap;

.field mIconView:Landroid/view/View;

.field public mId:J

.field private mInstallProgress:I

.field private mIsBouncingItem:Z

.field protected mLoadingListener:Lcom/android/launcher2/BaseItem$LoadingListener;

.field private mLoadingState:I

.field private mNeedToIconVI:Z

.field public mScreen:I

.field public mSetFromDND:Z

.field public mTitle:Ljava/lang/String;

.field public mType:Lcom/android/launcher2/BaseItem$Type;

.field status:I

.field public user:Lcom/android/launcher2/compat/UserHandleCompat;

.field public viewForThisHasSeenLightOfDayBefore:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/android/launcher2/Utilities;->DEBUGGABLE()Z

    move-result v0

    sput-boolean v0, Lcom/android/launcher2/BaseItem;->DEBUGGABLE:Z

    return-void
.end method

.method protected constructor <init>(Lcom/android/launcher2/BaseItem$Type;)V
    .locals 4

    const/4 v3, -0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/launcher2/BaseItem;->mId:J

    iput-boolean v2, p0, Lcom/android/launcher2/BaseItem;->mDirty:Z

    iput-boolean v2, p0, Lcom/android/launcher2/BaseItem;->mSetFromDND:Z

    iput v3, p0, Lcom/android/launcher2/BaseItem;->mColor:I

    iput v3, p0, Lcom/android/launcher2/BaseItem;->mScreen:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/BaseItem;->viewForThisHasSeenLightOfDayBefore:Z

    iput-boolean v2, p0, Lcom/android/launcher2/BaseItem;->mIsBouncingItem:Z

    iput-boolean v2, p0, Lcom/android/launcher2/BaseItem;->mNeedToIconVI:Z

    iput v3, p0, Lcom/android/launcher2/BaseItem;->mLoadingState:I

    iput-object p1, p0, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    invoke-static {}, Lcom/android/launcher2/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher2/compat/UserHandleCompat;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/BaseItem;->user:Lcom/android/launcher2/compat/UserHandleCompat;

    return-void
.end method

.method public static getContainingFolderId(Lcom/android/launcher2/BaseItem;)J
    .locals 4

    instance-of v2, p0, Lcom/android/launcher2/AppItem;

    if-eqz v2, :cond_1

    move-object v2, p0

    check-cast v2, Lcom/android/launcher2/AppItem;

    iget-object v2, v2, Lcom/android/launcher2/AppItem;->mFolder:Lcom/android/launcher2/AppFolderItem;

    if-eqz v2, :cond_1

    check-cast p0, Lcom/android/launcher2/AppItem;

    iget-object v2, p0, Lcom/android/launcher2/AppItem;->mFolder:Lcom/android/launcher2/AppFolderItem;

    iget-wide v0, v2, Lcom/android/launcher2/AppFolderItem;->mId:J

    :cond_0
    :goto_0
    return-wide v0

    :cond_1
    instance-of v2, p0, Lcom/android/launcher2/HomeItem;

    if-eqz v2, :cond_2

    check-cast p0, Lcom/android/launcher2/HomeItem;

    iget-wide v0, p0, Lcom/android/launcher2/HomeItem;->container:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    const-wide/16 v0, -0x1

    goto :goto_0

    :cond_2
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public static isFolder(Lcom/android/launcher2/BaseItem;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v1, Lcom/android/launcher2/BaseItem$Type;->HOME_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v1, Lcom/android/launcher2/BaseItem$Type;->MENU_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isItemInFolder(Lcom/android/launcher2/BaseItem;)Z
    .locals 8

    const/4 v2, 0x1

    instance-of v1, p0, Lcom/android/launcher2/AppItem;

    if-eqz v1, :cond_0

    move-object v1, p0

    check-cast v1, Lcom/android/launcher2/AppItem;

    iget-object v1, v1, Lcom/android/launcher2/AppItem;->mFolder:Lcom/android/launcher2/AppFolderItem;

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    return v1

    :cond_0
    instance-of v1, p0, Lcom/android/launcher2/HomeItem;

    if-eqz v1, :cond_1

    move-object v0, p0

    check-cast v0, Lcom/android/launcher2/HomeItem;

    iget-wide v4, v0, Lcom/android/launcher2/HomeItem;->container:J

    const-wide/16 v6, -0x64

    cmp-long v1, v4, v6

    if-eqz v1, :cond_1

    iget-wide v4, v0, Lcom/android/launcher2/HomeItem;->container:J

    const-wide/16 v6, -0x65

    cmp-long v1, v4, v6

    if-eqz v1, :cond_1

    iget-wide v4, v0, Lcom/android/launcher2/HomeItem;->container:J

    const-wide/16 v6, -0x1

    cmp-long v1, v4, v6

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isItemInHotseat(Lcom/android/launcher2/BaseItem;)Z
    .locals 6

    instance-of v1, p0, Lcom/android/launcher2/HomeItem;

    if-eqz v1, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/android/launcher2/HomeItem;

    iget-wide v2, v0, Lcom/android/launcher2/HomeItem;->container:J

    const-wide/16 v4, -0x65

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isWidget(Lcom/android/launcher2/BaseItem;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v1, Lcom/android/launcher2/BaseItem$Type;->HOME_WIDGET:Lcom/android/launcher2/BaseItem$Type;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/BaseItem;->mIconMovie:Landroid/graphics/Movie;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getActionIcon(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getComponentName()Landroid/content/ComponentName;
.end method

.method public getContentDescription(Ljava/lang/String;Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lcom/android/launcher2/BaseItem;->isItemInFolder(Lcom/android/launcher2/BaseItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f0800ca

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public getFlexibleGridStyle()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getFromDND()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/BaseItem;->mSetFromDND:Z

    return v0
.end method

.method public getIconBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 5

    invoke-virtual {p0}, Lcom/android/launcher2/BaseItem;->isLiveIconPackage()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/launcher2/BaseItem;->setLiveIconBitmap(Landroid/content/Context;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/BaseItem;->needLoadingBitmap()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher2/BaseItem;->getTargetWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/launcher2/BaseItem;->getTargetHeight()I

    move-result v4

    invoke-static {p1, v3, v4}, Lcom/android/launcher2/Utilities;->createTransparentBitmap(Landroid/content/Context;II)Landroid/graphics/Bitmap;

    move-result-object v3

    :goto_0
    return-object v3

    :cond_1
    if-nez v1, :cond_2

    iget-object v3, p0, Lcom/android/launcher2/BaseItem;->mIconBitmap:Landroid/graphics/Bitmap;

    if-nez v3, :cond_2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x10d0000

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher2/BaseItem;->getTargetWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/launcher2/BaseItem;->getTargetHeight()I

    move-result v4

    invoke-static {v0, p1, v3, v4}, Lcom/android/launcher2/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;II)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher2/BaseItem;->mIconBitmap:Landroid/graphics/Bitmap;

    :cond_2
    iget-object v3, p0, Lcom/android/launcher2/BaseItem;->mIconBitmap:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public getIconView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/BaseItem;->mIconView:Landroid/view/View;

    return-object v0
.end method

.method public getInstallProgress()I
    .locals 1

    iget v0, p0, Lcom/android/launcher2/BaseItem;->mInstallProgress:I

    return v0
.end method

.method public final getItemType()Lcom/android/launcher2/BaseItem$Type;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    return-object v0
.end method

.method public getLoadingState()I
    .locals 1

    iget v0, p0, Lcom/android/launcher2/BaseItem;->mLoadingState:I

    return v0
.end method

.method public abstract getPackageName()Ljava/lang/String;
.end method

.method public getPosition()I
    .locals 1

    iget v0, p0, Lcom/android/launcher2/BaseItem;->mScreen:I

    return v0
.end method

.method public getShadowColor()I
    .locals 1

    const v0, 0x1ffffff

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

.method public abstract getTargetHeight()I
.end method

.method public getTargetIconSize()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/launcher2/BaseItem;->getTargetWidth()I

    move-result v0

    return v0
.end method

.method public abstract getTargetWidth()I
.end method

.method public getTextBg()Landroid/graphics/drawable/Drawable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getTextColor()I
    .locals 1

    const v0, 0x1ffffff

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getUserHandle()Lcom/android/launcher2/compat/UserHandleCompat;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/BaseItem;->user:Lcom/android/launcher2/compat/UserHandleCompat;

    return-object v0
.end method

.method public hasStatusFlag(I)Z
    .locals 1

    iget v0, p0, Lcom/android/launcher2/BaseItem;->status:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isBouncingItem()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/BaseItem;->mIsBouncingItem:Z

    return v0
.end method

.method protected isLiveIconPackage()Z
    .locals 2

    sget-object v0, Lcom/android/launcher2/utils/LiveIconUtils;->LIVE_ICON_PACKAGES:Ljava/util/List;

    invoke-virtual {p0}, Lcom/android/launcher2/BaseItem;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNeedToIconVI()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/BaseItem;->mNeedToIconVI:Z

    return v0
.end method

.method public final isPromise()Z
    .locals 1

    const/16 v0, 0x27

    invoke-virtual {p0, v0}, Lcom/android/launcher2/BaseItem;->hasStatusFlag(I)Z

    move-result v0

    return v0
.end method

.method protected needLoadingBitmap()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public notifyLoaded()V
    .locals 0

    return-void
.end method

.method public setFromDND(Z)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/BaseItem;->mSetFromDND:Z

    iput-boolean p1, p0, Lcom/android/launcher2/BaseItem;->mSetFromDND:Z

    return v0
.end method

.method public setIconView(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/BaseItem;->mIconView:Landroid/view/View;

    return-void
.end method

.method public setInstallProgress(I)V
    .locals 1

    iput p1, p0, Lcom/android/launcher2/BaseItem;->mInstallProgress:I

    iget v0, p0, Lcom/android/launcher2/BaseItem;->status:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/android/launcher2/BaseItem;->status:I

    return-void
.end method

.method public setIsBouncingItem(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher2/BaseItem;->mIsBouncingItem:Z

    return-void
.end method

.method protected setLiveIconBitmap(Landroid/content/Context;)V
    .locals 8

    invoke-static {p1}, Lcom/android/launcher2/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher2/compat/UserManagerCompat;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher2/BaseItem;->user:Lcom/android/launcher2/compat/UserHandleCompat;

    invoke-virtual {v2, v3}, Lcom/android/launcher2/compat/UserManagerCompat;->getSerialNumberForUser(Lcom/android/launcher2/compat/UserHandleCompat;)J

    move-result-wide v4

    invoke-static {}, Lcom/android/launcher2/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher2/compat/UserHandleCompat;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/launcher2/compat/UserManagerCompat;->getSerialNumberForUser(Lcom/android/launcher2/compat/UserHandleCompat;)J

    move-result-wide v0

    cmp-long v3, v4, v0

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/BaseItem;->isLiveIconPackage()Z

    move-result v3

    if-eqz v3, :cond_0

    sget-boolean v3, Lcom/android/launcher2/BaseItem;->DEBUGGABLE:Z

    if-eqz v3, :cond_2

    const-string v3, "BaseItem"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " setLiveIconBitmap : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/launcher2/BaseItem;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher2/BaseItem;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/android/launcher2/utils/LiveIconUtils;->getLiveIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher2/BaseItem;->mIconBitmap:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public setLoadingListener(Lcom/android/launcher2/BaseItem$LoadingListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/BaseItem;->mLoadingListener:Lcom/android/launcher2/BaseItem$LoadingListener;

    return-void
.end method

.method public setLoadingState(I)V
    .locals 0

    iput p1, p0, Lcom/android/launcher2/BaseItem;->mLoadingState:I

    return-void
.end method

.method public setNeetToIconVI(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher2/BaseItem;->mNeedToIconVI:Z

    return-void
.end method

.method public setPosition(I)V
    .locals 0

    iput p1, p0, Lcom/android/launcher2/BaseItem;->mScreen:I

    return-void
.end method

.method public unbind()V
    .locals 0

    return-void
.end method
