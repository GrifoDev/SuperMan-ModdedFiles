.class public Lcom/android/launcher2/MenuAppIconView;
.super Landroid/widget/FrameLayout;
.source "MenuAppIconView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/launcher2/BaseItem$LoadingListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "Launcher.MenuAppIconView"

.field public static final UNSPECIFIED:I = -0x1

.field public static sUninstallDrawable:Landroid/graphics/drawable/Drawable;


# instance fields
.field private mAppIcon:Lcom/android/launcher2/AppIconView;

.field private mUninstallIcon:Landroid/widget/ImageView;

.field private mUninstallIconHideAnimation:Landroid/view/animation/Animation;

.field private mUninstallIconHideAnimationListener:Landroid/view/animation/Animation$AnimationListener;

.field private mUninstallIconShowAnimation:Landroid/view/animation/Animation;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher2/MenuAppIconView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x1010084

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/MenuAppIconView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Lcom/android/launcher2/MenuAppIconView$1;

    invoke-direct {v0, p0}, Lcom/android/launcher2/MenuAppIconView$1;-><init>(Lcom/android/launcher2/MenuAppIconView;)V

    iput-object v0, p0, Lcom/android/launcher2/MenuAppIconView;->mUninstallIconHideAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    const v0, 0x7f04001c

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/MenuAppIconView;->mUninstallIconShowAnimation:Landroid/view/animation/Animation;

    const v0, 0x7f04001b

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/MenuAppIconView;->mUninstallIconHideAnimation:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/android/launcher2/MenuAppIconView;->mUninstallIconHideAnimation:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/android/launcher2/MenuAppIconView;->mUninstallIconHideAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-static {}, Lcom/android/launcher2/framework/HoverPopupWindow;->TYPE_NONE()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/MenuAppIconView;->semSetHoverPopupType(I)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher2/MenuAppIconView;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/MenuAppIconView;->mUninstallIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method private shouldHideUninstall()Z
    .locals 1

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportFolderLock()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->enableFolderLock()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppIconView;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher2/FolderItem;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppIconView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/FolderItem;

    invoke-interface {v0}, Lcom/android/launcher2/FolderItem;->isLockedFolder()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppIconView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/FolderItem;

    invoke-interface {v0}, Lcom/android/launcher2/FolderItem;->haveOpenOnceOrNot()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public applyBaseItem(Lcom/android/launcher2/BaseItem;)V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher2/MenuAppIconView;->applyBaseItem(Lcom/android/launcher2/BaseItem;I)V

    return-void
.end method

.method public applyBaseItem(Lcom/android/launcher2/BaseItem;I)V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher2/MenuAppIconView;->mAppIcon:Lcom/android/launcher2/AppIconView;

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher2/MenuAppIconView;->mAppIcon:Lcom/android/launcher2/AppIconView;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/AppIconView;->applyBaseItem(Lcom/android/launcher2/BaseItem;)V

    :goto_0
    iget-object v0, p0, Lcom/android/launcher2/MenuAppIconView;->mAppIcon:Lcom/android/launcher2/AppIconView;

    instance-of v0, v0, Lcom/android/launcher2/FolderIconView;

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->isTabletModel()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/MenuAppIconView;->mAppIcon:Lcom/android/launcher2/AppIconView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/launcher2/AppIconView;->setMaxLines(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/MenuAppIconView;->mUninstallIcon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0800b2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/launcher2/MenuAppIconView;->mAppIcon:Lcom/android/launcher2/AppIconView;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher2/AppIconView;->applyBaseItem(Lcom/android/launcher2/BaseItem;I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/launcher2/MenuAppIconView;->mAppIcon:Lcom/android/launcher2/AppIconView;

    instance-of v0, v0, Lcom/android/launcher2/AppIconView;

    if-eqz v0, :cond_1

    instance-of v0, p1, Lcom/android/launcher2/AppItem;

    if-eqz v0, :cond_4

    check-cast p1, Lcom/android/launcher2/AppItem;

    iget-boolean v0, p1, Lcom/android/launcher2/AppItem;->mSystemApp:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/launcher2/MenuAppIconView;->mUninstallIcon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08003d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/android/launcher2/MenuAppIconView;->mUninstallIcon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0800de

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public drawUninstallIcon(Landroid/graphics/Canvas;)V
    .locals 13

    iget-object v10, p0, Lcom/android/launcher2/MenuAppIconView;->mUninstallIcon:Landroid/widget/ImageView;

    if-eqz v10, :cond_3

    iget-object v10, p0, Lcom/android/launcher2/MenuAppIconView;->mAppIcon:Lcom/android/launcher2/AppIconView;

    instance-of v10, v10, Lcom/android/launcher2/FolderIconView;

    if-eqz v10, :cond_3

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportFolderPopup()Z

    move-result v10

    if-nez v10, :cond_3

    invoke-direct {p0}, Lcom/android/launcher2/MenuAppIconView;->shouldHideUninstall()Z

    move-result v10

    if-nez v10, :cond_3

    sget-object v10, Lcom/android/launcher2/MenuAppIconView;->sUninstallDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    sget-object v10, Lcom/android/launcher2/MenuAppIconView;->sUninstallDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    iget-object v10, p0, Lcom/android/launcher2/MenuAppIconView;->mAppIcon:Lcom/android/launcher2/AppIconView;

    invoke-virtual {v10}, Lcom/android/launcher2/AppIconView;->getIconSize()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppIconView;->getWidth()I

    move-result v9

    sub-int v10, v9, v3

    div-int/lit8 v5, v10, 0x2

    add-int v10, v5, v3

    mul-int/lit8 v11, v7, 0x3

    div-int/lit8 v11, v11, 0x4

    sub-int v4, v10, v11

    iget-object v10, p0, Lcom/android/launcher2/MenuAppIconView;->mAppIcon:Lcom/android/launcher2/AppIconView;

    invoke-virtual {v10}, Lcom/android/launcher2/AppIconView;->getPaddingTop()I

    move-result v10

    div-int/lit8 v11, v6, 0x4

    sub-int v8, v10, v11

    add-int v10, v4, v7

    if-le v10, v9, :cond_0

    add-int v10, v4, v7

    sub-int/2addr v10, v9

    sub-int/2addr v4, v10

    iget-object v10, p0, Lcom/android/launcher2/MenuAppIconView;->mAppIcon:Lcom/android/launcher2/AppIconView;

    invoke-virtual {v10}, Lcom/android/launcher2/AppIconView;->getPaddingTop()I

    move-result v10

    add-int v11, v4, v7

    add-int v12, v5, v3

    sub-int/2addr v11, v12

    sub-int v8, v10, v11

    :cond_0
    if-gez v8, :cond_1

    const/4 v8, 0x0

    add-int v10, v5, v3

    sub-int/2addr v10, v7

    iget-object v11, p0, Lcom/android/launcher2/MenuAppIconView;->mAppIcon:Lcom/android/launcher2/AppIconView;

    invoke-virtual {v11}, Lcom/android/launcher2/AppIconView;->getPaddingTop()I

    move-result v11

    add-int v4, v10, v11

    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppIconView;->getScrollX()I

    move-result v10

    add-int/2addr v4, v10

    int-to-float v10, v3

    const v11, 0x3fcccccd    # 1.6f

    mul-float/2addr v10, v11

    float-to-int v0, v10

    iget-object v10, p0, Lcom/android/launcher2/MenuAppIconView;->mAppIcon:Lcom/android/launcher2/AppIconView;

    invoke-virtual {v10}, Lcom/android/launcher2/AppIconView;->getPaddingTop()I

    move-result v10

    int-to-float v11, v3

    const v12, 0x3f19999a    # 0.6f

    mul-float/2addr v11, v12

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v11, v12

    float-to-int v11, v11

    sub-int v2, v10, v11

    sub-int v10, v9, v0

    div-int/lit8 v1, v10, 0x2

    sub-int/2addr v8, v2

    sub-int/2addr v4, v1

    add-int v10, v4, v7

    if-le v10, v0, :cond_2

    add-int v10, v4, v7

    sub-int/2addr v10, v0

    sub-int/2addr v4, v10

    :cond_2
    sget-object v10, Lcom/android/launcher2/MenuAppIconView;->sUninstallDrawable:Landroid/graphics/drawable/Drawable;

    add-int v11, v4, v7

    add-int v12, v8, v6

    invoke-virtual {v10, v4, v8, v11, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    sget-object v10, Lcom/android/launcher2/MenuAppIconView;->sUninstallDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_3
    return-void
.end method

.method public getAnimGroup()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAppIcon()Lcom/android/launcher2/AppIconView;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/MenuAppIconView;->mAppIcon:Lcom/android/launcher2/AppIconView;

    return-object v0
.end method

.method public getTag()Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/launcher2/MenuAppIconView;->mAppIcon:Lcom/android/launcher2/AppIconView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/MenuAppIconView;->mAppIcon:Lcom/android/launcher2/AppIconView;

    invoke-virtual {v1}, Lcom/android/launcher2/AppIconView;->getTag()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "Launcher.MenuAppIconView"

    const-string v2, "mAppIcon is null, tag is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getUninstallIcon()Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/MenuAppIconView;->mUninstallIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method public hideBadge()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/MenuAppIconView;->mAppIcon:Lcom/android/launcher2/AppIconView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/MenuAppIconView;->mAppIcon:Lcom/android/launcher2/AppIconView;

    invoke-virtual {v0}, Lcom/android/launcher2/AppIconView;->hideBadge()V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7

    iget-object v5, p0, Lcom/android/launcher2/MenuAppIconView;->mUninstallIcon:Landroid/widget/ImageView;

    if-ne p1, v5, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppIconView;->getContext()Landroid/content/Context;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/MenuView;->getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppIconView;->getTag()Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Lcom/android/launcher2/AppItem;

    if-eqz v5, :cond_0

    move-object v1, v4

    check-cast v1, Lcom/android/launcher2/AppItem;

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportFolderPopup()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, v1, Lcom/android/launcher2/AppItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v6, Lcom/android/launcher2/BaseItem$Type;->MENU_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-ne v5, v6, :cond_1

    iget-object v5, p0, Lcom/android/launcher2/MenuAppIconView;->mAppIcon:Lcom/android/launcher2/AppIconView;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/launcher2/MenuAppIconView;->mAppIcon:Lcom/android/launcher2/AppIconView;

    invoke-virtual {v5}, Lcom/android/launcher2/AppIconView;->isDimmed()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v2}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v5

    sget-object v6, Lcom/android/launcher2/MenuAppsGrid$State;->EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v5, v6, :cond_1

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher2/Launcher;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    check-cast v1, Lcom/android/launcher2/FolderItem;

    invoke-virtual {v2}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v6

    invoke-static {v5, v1, v6}, Lcom/android/launcher2/FolderClickDialogFragment;->createAndShow(Landroid/app/FragmentManager;Lcom/android/launcher2/FolderItem;Lcom/android/launcher2/MenuAppsGrid$State;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v2}, Lcom/android/launcher2/MenuAppsGrid;->getStateObj()Lcom/android/launcher2/MenuAppsGrid$StateObj;

    move-result-object v5

    iget-object v6, p0, Lcom/android/launcher2/MenuAppIconView;->mAppIcon:Lcom/android/launcher2/AppIconView;

    invoke-virtual {v5, v1, v6}, Lcom/android/launcher2/MenuAppsGrid$StateObj;->onClickAppItem(Lcom/android/launcher2/AppItem;Landroid/view/View;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lcom/android/launcher2/AppItem;->getItemType()Lcom/android/launcher2/BaseItem$Type;

    move-result-object v5

    sget-object v6, Lcom/android/launcher2/BaseItem$Type;->MENU_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-ne v5, v6, :cond_4

    invoke-virtual {v2}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v5

    sget-object v6, Lcom/android/launcher2/MenuAppsGrid$State;->EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v5, v6, :cond_0

    invoke-virtual {v2}, Lcom/android/launcher2/MenuAppsGrid;->getStateObj()Lcom/android/launcher2/MenuAppsGrid$StateObj;

    move-result-object v5

    iget-object v6, p0, Lcom/android/launcher2/MenuAppIconView;->mAppIcon:Lcom/android/launcher2/AppIconView;

    invoke-virtual {v5, v1, v6}, Lcom/android/launcher2/MenuAppsGrid$StateObj;->onClickAppItem(Lcom/android/launcher2/AppItem;Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v0, v1

    check-cast v0, Lcom/android/launcher2/FolderItem;

    invoke-interface {v0}, Lcom/android/launcher2/FolderItem;->getItemCount()I

    move-result v5

    if-nez v5, :cond_3

    sget-object v5, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    check-cast v0, Lcom/android/launcher2/AppFolderItem;

    invoke-virtual {v5, v0}, Lcom/android/launcher2/MenuAppModel;->setFolderToDelete(Lcom/android/launcher2/AppFolderItem;)V

    sget-object v5, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v5}, Lcom/android/launcher2/MenuAppModel;->editRemoveFolder()V

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppIconView;->getContext()Landroid/content/Context;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher2/MenuView;->appModelUpdated()V

    goto :goto_0

    :cond_3
    check-cast v1, Lcom/android/launcher2/FolderItem;

    check-cast v1, Lcom/android/launcher2/AppFolderItem;

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher2/Launcher;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    invoke-interface {v0}, Lcom/android/launcher2/FolderItem;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v5, v6}, Lcom/android/launcher2/AppFolderRemoveDialog;->createAndShow(Lcom/android/launcher2/AppFolderItem;Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-virtual {v2}, Lcom/android/launcher2/MenuAppsGrid;->getStateObj()Lcom/android/launcher2/MenuAppsGrid$StateObj;

    move-result-object v5

    iget-object v6, p0, Lcom/android/launcher2/MenuAppIconView;->mAppIcon:Lcom/android/launcher2/AppIconView;

    invoke-virtual {v5, v1, v6}, Lcom/android/launcher2/MenuAppsGrid$StateObj;->onClickAppItem(Lcom/android/launcher2/AppItem;Landroid/view/View;)Z

    goto :goto_0
.end method

.method public onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f10008c

    invoke-virtual {p0, v0}, Lcom/android/launcher2/MenuAppIconView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AppIconView;

    iput-object v0, p0, Lcom/android/launcher2/MenuAppIconView;->mAppIcon:Lcom/android/launcher2/AppIconView;

    const v0, 0x7f10004e

    invoke-virtual {p0, v0}, Lcom/android/launcher2/MenuAppIconView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/launcher2/MenuAppIconView;->mUninstallIcon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020057

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sput-object v0, Lcom/android/launcher2/MenuAppIconView;->sUninstallDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/android/launcher2/MenuAppIconView;->mUninstallIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppIconView;->updateUninstallIcon()V

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    return-void
.end method

.method public onLoaded(Lcom/android/launcher2/BaseItem;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/launcher2/MenuAppIconView;->applyBaseItem(Lcom/android/launcher2/BaseItem;)V

    return-void
.end method

.method public setTag(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/MenuAppIconView;->mAppIcon:Lcom/android/launcher2/AppIconView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/MenuAppIconView;->mAppIcon:Lcom/android/launcher2/AppIconView;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/AppIconView;->setTag(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public setUninstallIconVisibility(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/MenuAppIconView;->mUninstallIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher2/MenuAppIconView;->mUninstallIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppIconView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppIconView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppIconView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/MenuView;->getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppIconView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/MenuView;->getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    if-eq v0, v1, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/android/launcher2/MenuAppIconView;->shouldHideUninstall()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/MenuAppIconView;->mUninstallIcon:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public showBadge()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/MenuAppIconView;->mAppIcon:Lcom/android/launcher2/AppIconView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/MenuAppIconView;->mAppIcon:Lcom/android/launcher2/AppIconView;

    invoke-virtual {v0}, Lcom/android/launcher2/AppIconView;->showBadge()V

    :cond_0
    return-void
.end method

.method public startHideOverlayAnimation()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/MenuAppIconView;->mUninstallIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/launcher2/MenuAppIconView;->shouldHideUninstall()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/MenuAppIconView;->mUninstallIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/launcher2/MenuAppIconView;->mUninstallIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/launcher2/MenuAppIconView;->mUninstallIconHideAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method

.method public startShowOverlayAnimation()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/MenuAppIconView;->mUninstallIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/MenuAppIconView;->mUninstallIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/launcher2/MenuAppIconView;->mUninstallIconShowAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method

.method public startUninstallFadeAnim(F)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0043

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher2/MenuAppIconView;->mUninstallIcon:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher2/MenuAppIconView;->mUninstallIcon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/MenuAppIconView;->mUninstallIcon:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/MenuAppIconView;->mUninstallIcon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_1
    return-void
.end method

.method public updateUninstallIcon()V
    .locals 13

    iget-object v10, p0, Lcom/android/launcher2/MenuAppIconView;->mAppIcon:Lcom/android/launcher2/AppIconView;

    if-eqz v10, :cond_2

    iget-object v10, p0, Lcom/android/launcher2/MenuAppIconView;->mUninstallIcon:Landroid/widget/ImageView;

    if-eqz v10, :cond_2

    sget-object v10, Lcom/android/launcher2/MenuAppIconView;->sUninstallDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    sget-object v10, Lcom/android/launcher2/MenuAppIconView;->sUninstallDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    iget-object v10, p0, Lcom/android/launcher2/MenuAppIconView;->mAppIcon:Lcom/android/launcher2/AppIconView;

    invoke-virtual {v10}, Lcom/android/launcher2/AppIconView;->getIconSize()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppIconView;->getWidth()I

    move-result v9

    sub-int v10, v9, v1

    div-int/lit8 v4, v10, 0x2

    add-int v10, v4, v1

    mul-int/lit8 v11, v7, 0x3

    div-int/lit8 v11, v11, 0x4

    sub-int v3, v10, v11

    iget-object v10, p0, Lcom/android/launcher2/MenuAppIconView;->mAppIcon:Lcom/android/launcher2/AppIconView;

    invoke-virtual {v10}, Lcom/android/launcher2/AppIconView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v10, p0, Lcom/android/launcher2/MenuAppIconView;->mAppIcon:Lcom/android/launcher2/AppIconView;

    invoke-virtual {v10}, Lcom/android/launcher2/AppIconView;->getPaddingTop()I

    move-result v10

    add-int/2addr v10, v2

    div-int/lit8 v11, v6, 0x4

    sub-int v8, v10, v11

    add-int v10, v3, v7

    if-le v10, v9, :cond_0

    add-int v10, v3, v7

    sub-int/2addr v10, v9

    sub-int/2addr v3, v10

    iget-object v10, p0, Lcom/android/launcher2/MenuAppIconView;->mAppIcon:Lcom/android/launcher2/AppIconView;

    invoke-virtual {v10}, Lcom/android/launcher2/AppIconView;->getPaddingTop()I

    move-result v10

    add-int v11, v3, v7

    add-int v12, v4, v1

    sub-int/2addr v11, v12

    sub-int v8, v10, v11

    :cond_0
    if-gez v8, :cond_1

    const/4 v8, 0x0

    add-int v10, v4, v1

    sub-int/2addr v10, v7

    iget-object v11, p0, Lcom/android/launcher2/MenuAppIconView;->mAppIcon:Lcom/android/launcher2/AppIconView;

    invoke-virtual {v11}, Lcom/android/launcher2/AppIconView;->getPaddingTop()I

    move-result v11

    add-int v3, v10, v11

    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppIconView;->getScrollX()I

    move-result v10

    add-int/2addr v3, v10

    iget-object v10, p0, Lcom/android/launcher2/MenuAppIconView;->mUninstallIcon:Landroid/widget/ImageView;

    invoke-virtual {v10}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {}, Lcom/android/launcher2/Utilities;->isLayoutRtl()Z

    move-result v10

    if-nez v10, :cond_3

    iput v3, v5, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    :goto_0
    iput v8, v5, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v10, p0, Lcom/android/launcher2/MenuAppIconView;->mUninstallIcon:Landroid/widget/ImageView;

    invoke-virtual {v10, v5}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    return-void

    :cond_3
    iput v3, v5, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto :goto_0
.end method
