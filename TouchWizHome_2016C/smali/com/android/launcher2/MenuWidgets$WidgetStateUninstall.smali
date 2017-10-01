.class Lcom/android/launcher2/MenuWidgets$WidgetStateUninstall;
.super Lcom/android/launcher2/MenuWidgets$WidgetStateObj;
.source "MenuWidgets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/MenuWidgets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WidgetStateUninstall"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/MenuWidgets;


# direct methods
.method private constructor <init>(Lcom/android/launcher2/MenuWidgets;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/MenuWidgets$WidgetStateUninstall;->this$0:Lcom/android/launcher2/MenuWidgets;

    invoke-direct {p0, p1}, Lcom/android/launcher2/MenuWidgets$WidgetStateObj;-><init>(Lcom/android/launcher2/MenuWidgets;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher2/MenuWidgets;Lcom/android/launcher2/MenuWidgets$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher2/MenuWidgets$WidgetStateUninstall;-><init>(Lcom/android/launcher2/MenuWidgets;)V

    return-void
.end method


# virtual methods
.method public enter(Lcom/android/launcher2/MenuWidgets$WidgetState;Ljava/util/List;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher2/MenuWidgets$WidgetState;",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    const v12, 0x7f09007c

    const/4 v3, 0x0

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/android/launcher2/MenuWidgets$WidgetStateUninstall;->this$0:Lcom/android/launcher2/MenuWidgets;

    invoke-static {v9}, Lcom/android/launcher2/MenuWidgets;->access$200(Lcom/android/launcher2/MenuWidgets;)Lcom/android/launcher2/MenuWidgetsFragment;

    move-result-object v9

    invoke-virtual {v9, v3}, Lcom/android/launcher2/MenuWidgetsFragment;->setSoftInputParam(Z)V

    iget-object v9, p0, Lcom/android/launcher2/MenuWidgets$WidgetStateUninstall;->this$0:Lcom/android/launcher2/MenuWidgets;

    invoke-static {v9}, Lcom/android/launcher2/MenuWidgets;->access$1900(Lcom/android/launcher2/MenuWidgets;)Lcom/android/launcher2/MenuTitleBarManager;

    move-result-object v9

    iget-object v10, p0, Lcom/android/launcher2/MenuWidgets$WidgetStateUninstall;->this$0:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v10}, Lcom/android/launcher2/MenuWidgets;->getWidgetState()Lcom/android/launcher2/MenuWidgets$WidgetState;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/launcher2/MenuTitleBarManager;->getActiveTitleBarForState(Lcom/android/launcher2/MenuWidgets$WidgetState;)Landroid/view/ViewGroup;

    move-result-object v7

    if-eqz v7, :cond_3

    iget-object v9, p0, Lcom/android/launcher2/MenuWidgets$WidgetStateUninstall;->this$0:Lcom/android/launcher2/MenuWidgets;

    invoke-static {v9, v7}, Lcom/android/launcher2/MenuWidgets;->access$2302(Lcom/android/launcher2/MenuWidgets;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    if-nez p1, :cond_0

    move v3, v8

    :cond_0
    iget-object v9, p0, Lcom/android/launcher2/MenuWidgets$WidgetStateUninstall;->this$0:Lcom/android/launcher2/MenuWidgets;

    invoke-static {v9}, Lcom/android/launcher2/MenuWidgets;->access$1900(Lcom/android/launcher2/MenuWidgets;)Lcom/android/launcher2/MenuTitleBarManager;

    move-result-object v9

    invoke-virtual {v9, p2, v7, v3}, Lcom/android/launcher2/MenuTitleBarManager;->changeTitleBar(Ljava/util/List;Landroid/view/View;Z)V

    const v9, 0x7f11009a

    invoke-virtual {v7, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/android/launcher2/MenuWidgets$WidgetStateUninstall;->this$0:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v10}, Lcom/android/launcher2/MenuWidgets;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/launcher2/MenuWidgets$WidgetStateUninstall;->this$0:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v10}, Lcom/android/launcher2/MenuWidgets;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f09001f

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    const v9, 0x7f11009b

    invoke-virtual {v7, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    if-eqz v6, :cond_1

    iget-object v9, p0, Lcom/android/launcher2/MenuWidgets$WidgetStateUninstall;->this$0:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v9}, Lcom/android/launcher2/MenuWidgets;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0900ae

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    invoke-virtual {v5, v8}, Landroid/view/View;->semSetHoverPopupType(I)V

    invoke-virtual {v5, v8}, Landroid/view/View;->semGetHoverPopup(Z)Lcom/samsung/android/widget/SemHoverPopupWindow;

    move-result-object v9

    if-eqz v9, :cond_2

    invoke-virtual {v5, v8}, Landroid/view/View;->semGetHoverPopup(Z)Lcom/samsung/android/widget/SemHoverPopupWindow;

    move-result-object v8

    invoke-virtual {v5}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/samsung/android/widget/SemHoverPopupWindow;->setContent(Ljava/lang/CharSequence;)V

    :cond_2
    new-instance v8, Lcom/android/launcher2/MenuWidgets$WidgetStateUninstall$1;

    invoke-direct {v8, p0}, Lcom/android/launcher2/MenuWidgets$WidgetStateUninstall$1;-><init>(Lcom/android/launcher2/MenuWidgets$WidgetStateUninstall;)V

    invoke-virtual {v5, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportChinaPreloadTheme()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/launcher2/LauncherApplication;->getThemeLoader()Lcom/android/launcher2/ThemeLoader;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher2/ThemeLoader;->isUseDefaultTheme()Z

    move-result v8

    if-nez v8, :cond_3

    const v8, 0x7f110099

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const-string v8, "all_apps_button_icon"

    invoke-virtual {v4, v8}, Lcom/android/launcher2/ThemeLoader;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets$WidgetStateUninstall;->refreshModel()V

    return-void
.end method

.method public exit(Lcom/android/launcher2/MenuWidgets$WidgetState;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher2/MenuWidgets$WidgetState;",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    iget-object v5, p0, Lcom/android/launcher2/MenuWidgets$WidgetStateUninstall;->this$0:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v5}, Lcom/android/launcher2/MenuWidgets;->getCurrentPage()I

    move-result v0

    iget-object v5, p0, Lcom/android/launcher2/MenuWidgets$WidgetStateUninstall;->this$0:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v5}, Lcom/android/launcher2/MenuWidgets;->getChildCount()I

    move-result v5

    add-int/lit8 v1, v5, -0x1

    :goto_0
    if-ltz v1, :cond_3

    iget-object v5, p0, Lcom/android/launcher2/MenuWidgets$WidgetStateUninstall;->this$0:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v5, v1}, Lcom/android/launcher2/MenuWidgets;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/PagedViewGridLayout;

    invoke-virtual {v4}, Lcom/android/launcher2/PagedViewGridLayout;->getChildCount()I

    move-result v5

    add-int/lit8 v2, v5, -0x1

    :goto_1
    if-ltz v2, :cond_2

    invoke-virtual {v4, v2}, Lcom/android/launcher2/PagedViewGridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v5, v3, Lcom/android/launcher2/PagedViewWidget;

    if-eqz v5, :cond_0

    check-cast v3, Lcom/android/launcher2/PagedViewWidget;

    if-ne v0, v1, :cond_1

    const/4 v5, 0x1

    :goto_2
    invoke-virtual {v3, v5}, Lcom/android/launcher2/PagedViewWidget;->exitUninstallMode(Z)V

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    goto :goto_2

    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public onClickWidget(Lcom/android/launcher2/HomePendingItem;Landroid/view/View;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v4, -0x1

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStateUninstall;->this$0:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/MenuWidgets;->isUninstallable(Lcom/android/launcher2/HomePendingItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p2, Lcom/android/launcher2/WidgetFolderView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStateUninstall;->this$0:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuWidgets;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p1, Lcom/android/launcher2/HomePendingItem;->user:Lcom/android/launcher2/compat/UserHandleCompat;

    iget-object v2, p1, Lcom/android/launcher2/HomePendingItem;->componentName:Landroid/content/ComponentName;

    check-cast p2, Lcom/android/launcher2/WidgetFolderView;

    invoke-virtual {p2}, Lcom/android/launcher2/WidgetFolderView;->getWidgetFolderTitle()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/android/launcher2/MenuWidgets$WidgetStateUninstall;->this$0:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v5}, Lcom/android/launcher2/MenuWidgets;->getContext()Landroid/content/Context;

    move-result-object v5

    check-cast v5, Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    invoke-static/range {v0 .. v6}, Lcom/android/launcher2/UninstallConfirmDialogFragment;->createAndShow(Landroid/content/Context;Lcom/android/launcher2/compat/UserHandleCompat;Landroid/content/ComponentName;Ljava/lang/String;ILandroid/app/FragmentManager;Lcom/android/launcher2/Launcher$IPackageDeleteCompletedListener;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    instance-of v0, p2, Lcom/android/launcher2/PagedViewWidget;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStateUninstall;->this$0:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuWidgets;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p1, Lcom/android/launcher2/HomePendingItem;->user:Lcom/android/launcher2/compat/UserHandleCompat;

    iget-object v2, p1, Lcom/android/launcher2/HomePendingItem;->componentName:Landroid/content/ComponentName;

    iget-object v3, p1, Lcom/android/launcher2/HomePendingItem;->mTitle:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/launcher2/MenuWidgets$WidgetStateUninstall;->this$0:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v5}, Lcom/android/launcher2/MenuWidgets;->getContext()Landroid/content/Context;

    move-result-object v5

    check-cast v5, Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    invoke-static/range {v0 .. v6}, Lcom/android/launcher2/UninstallConfirmDialogFragment;->createAndShow(Landroid/content/Context;Lcom/android/launcher2/compat/UserHandleCompat;Landroid/content/ComponentName;Ljava/lang/String;ILandroid/app/FragmentManager;Lcom/android/launcher2/Launcher$IPackageDeleteCompletedListener;)V

    goto :goto_0
.end method

.method public refreshModel()V
    .locals 8

    const/4 v7, 0x1

    iget-object v6, p0, Lcom/android/launcher2/MenuWidgets$WidgetStateUninstall;->this$0:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v6}, Lcom/android/launcher2/MenuWidgets;->getCurrentPage()I

    move-result v0

    iget-object v6, p0, Lcom/android/launcher2/MenuWidgets$WidgetStateUninstall;->this$0:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v6}, Lcom/android/launcher2/MenuWidgets;->getChildCount()I

    move-result v6

    add-int/lit8 v1, v6, -0x1

    :goto_0
    if-ltz v1, :cond_3

    iget-object v6, p0, Lcom/android/launcher2/MenuWidgets$WidgetStateUninstall;->this$0:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v6, v1}, Lcom/android/launcher2/MenuWidgets;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/PagedViewGridLayout;

    invoke-virtual {v4}, Lcom/android/launcher2/PagedViewGridLayout;->getChildCount()I

    move-result v6

    add-int/lit8 v2, v6, -0x1

    :goto_1
    if-ltz v2, :cond_2

    invoke-virtual {v4, v2}, Lcom/android/launcher2/PagedViewGridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v6, v3, Lcom/android/launcher2/PagedViewWidget;

    if-eqz v6, :cond_0

    check-cast v3, Lcom/android/launcher2/PagedViewWidget;

    if-ne v0, v1, :cond_1

    move v6, v7

    :goto_2
    invoke-virtual {v3, v6}, Lcom/android/launcher2/PagedViewWidget;->enterUninstallMode(Z)V

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    goto :goto_2

    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_3
    iget-object v6, p0, Lcom/android/launcher2/MenuWidgets$WidgetStateUninstall;->this$0:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v6}, Lcom/android/launcher2/MenuWidgets;->getWidgetFolder()Lcom/android/launcher2/WidgetFolder;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Lcom/android/launcher2/WidgetFolder;->isOpened()Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/launcher2/MenuWidgets$WidgetStateUninstall;->this$0:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v6, v7}, Lcom/android/launcher2/MenuWidgets;->closeFolder(Z)Z

    :cond_4
    return-void
.end method
