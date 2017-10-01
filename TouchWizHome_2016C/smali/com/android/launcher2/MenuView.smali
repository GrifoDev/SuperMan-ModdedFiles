.class public Lcom/android/launcher2/MenuView;
.super Landroid/widget/TabHost;
.source "MenuView.java"

# interfaces
.implements Lcom/android/launcher2/Launcher$StateAnimatorProvider;
.implements Lcom/android/launcher2/Launcher$HardwareKeys;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/MenuView$SavedState;,
        Lcom/android/launcher2/MenuView$ViewType;,
        Lcom/android/launcher2/MenuView$NeedsTabHost;,
        Lcom/android/launcher2/MenuView$PackageNotifications;,
        Lcom/android/launcher2/MenuView$AppModelNotifications;
    }
.end annotation


# static fields
.field static final APPS_TAB_TAG:Ljava/lang/String; = "APPS"

.field public static final MENU_VIEW_TYPE_KEY:Ljava/lang/String; = "MenuView.ViewType"

.field private static final TAG:Ljava/lang/String; = "MenuView"

.field static final WIDGETS_TAB_TAG:Ljava/lang/String; = "WIDGETS"

.field public static mNeedToCloseFolder:Z

.field public static oldState:Lcom/android/launcher2/MenuAppsGrid$State;

.field public static onShowAllAppsClicked:Z


# instance fields
.field private mAppsTabTextView:Landroid/widget/TextView;

.field mAtoZButtonTextView:Landroid/widget/TextView;

.field mAtoZCancelButtonTextView:Landroid/widget/TextView;

.field mAtoZSaveButtonTextView:Landroid/widget/TextView;

.field private mButtonBackgroundEnableDrawable:Landroid/graphics/drawable/LayerDrawable;

.field private mDownloadedButton:Landroid/widget/TextView;

.field private mDownloadedButtonDrawablePadding:I

.field private mDownloadedContainer:Landroid/view/View;

.field private mDownloadedText:Ljava/lang/CharSequence;

.field mEditButtonTextView:Landroid/widget/TextView;

.field private mMaxItemsPerScreen:I

.field public mMenuAppLoaded:Z

.field mMenuContainer:Landroid/view/View;

.field mMenuEditContainer:Landroid/view/View;

.field mMenuViewDarken:Landroid/view/View;

.field mMoreOptionView:Landroid/widget/ImageButton;

.field private mNoDownloadedAppsToastMessage:Landroid/widget/Toast;

.field private mQuickOptionsPopup:Lcom/android/launcher2/QuickOptionsPopup;

.field mSearchButtonTextView:Landroid/widget/TextView;

.field private mTabDivider:Landroid/view/View;

.field private mTabGapView:Landroid/view/View;

.field private mTabManager:Lcom/android/launcher2/tabs/TabManager;

.field private mTabsView:Landroid/view/View;

.field private mTitleBarManager:Lcom/android/launcher2/MenuTitleBarManager;

.field private mViewType:Lcom/android/launcher2/MenuView$ViewType;

.field private mWidgetsTabTextView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/launcher2/MenuView;->mNeedToCloseFolder:Z

    sput-boolean v0, Lcom/android/launcher2/MenuView;->onShowAllAppsClicked:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher2/MenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    const/4 v5, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/TabHost;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean v5, p0, Lcom/android/launcher2/MenuView;->mMenuAppLoaded:Z

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/launcher2/MenuView;->mQuickOptionsPopup:Lcom/android/launcher2/QuickOptionsPopup;

    const-string v4, "com.sec.android.app.launcher.prefs"

    invoke-virtual {p1, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v4, "MenuView.ViewType"

    sget-object v5, Lcom/android/launcher2/MenuView$ViewType;->CUSTOM_GRID:Lcom/android/launcher2/MenuView$ViewType;

    invoke-virtual {v5}, Lcom/android/launcher2/MenuView$ViewType;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/launcher2/MenuView$ViewType;->valueOf(Ljava/lang/String;)Lcom/android/launcher2/MenuView$ViewType;

    move-result-object v4

    iput-object v4, p0, Lcom/android/launcher2/MenuView;->mViewType:Lcom/android/launcher2/MenuView$ViewType;

    const-string v4, "MenuView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mViewType:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/launcher2/MenuView;->mViewType:Lcom/android/launcher2/MenuView$ViewType;

    invoke-virtual {v6}, Lcom/android/launcher2/MenuView$ViewType;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/launcher2/MenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c000c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    const v5, 0x7f0c000d

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    mul-int/2addr v4, v5

    iput v4, p0, Lcom/android/launcher2/MenuView;->mMaxItemsPerScreen:I

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportFlexibleGrid()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getLauncherGridSize()Lcom/android/launcher2/LauncherApplication$HomeGridSize;

    move-result-object v1

    const-string v4, "MenuView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MenuView() workspace gridsize "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/android/launcher2/LauncherApplication$HomeGridSize;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v4, Lcom/android/launcher2/LauncherApplication$HomeGridSize;->GRID_5x5:Lcom/android/launcher2/LauncherApplication$HomeGridSize;

    if-ne v1, v4, :cond_0

    const v4, 0x7f0c0021

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    const v5, 0x7f0c0022

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    mul-int/2addr v4, v5

    iput v4, p0, Lcom/android/launcher2/MenuView;->mMaxItemsPerScreen:I

    :cond_0
    const-string v4, "MenuView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MenuView() MaxItemsPerScreen "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/launcher2/MenuView;->mMaxItemsPerScreen:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/launcher2/MenuView;->setAppNormalizer()V

    check-cast p1, Lcom/android/launcher2/Launcher;

    invoke-virtual {p1, p0}, Lcom/android/launcher2/Launcher;->addStateAnimatorProvider(Lcom/android/launcher2/Launcher$StateAnimatorProvider;)V

    new-instance v4, Lcom/android/launcher2/MenuTitleBarManager;

    invoke-direct {v4}, Lcom/android/launcher2/MenuTitleBarManager;-><init>()V

    iput-object v4, p0, Lcom/android/launcher2/MenuView;->mTitleBarManager:Lcom/android/launcher2/MenuTitleBarManager;

    const/4 v4, 0x2

    invoke-virtual {p0, v4}, Lcom/android/launcher2/MenuView;->setImportantForAccessibility(I)V

    return-void
.end method

.method private closeViewTypeDialog()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/launcher2/MenuView;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/android/launcher2/MenuViewTypeDialog;->dismiss(Landroid/app/FragmentTransaction;Landroid/app/FragmentManager;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    return-void
.end method

.method private collectAnimators(Ljava/util/ArrayList;Landroid/animation/Animator;Landroid/animation/Animator;Landroid/animation/Animator;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/Animator;",
            ">;",
            "Landroid/animation/Animator;",
            "Landroid/animation/Animator;",
            "Landroid/animation/Animator;",
            "Z)V"
        }
    .end annotation

    const v6, 0x1020011

    invoke-virtual {p0, v6}, Lcom/android/launcher2/MenuView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    move-object v2, v5

    check-cast v2, Landroid/view/ViewGroup;

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher2/MenuView;->isCurrentTabWidgets()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-direct {p0, p2, p5}, Lcom/android/launcher2/MenuView;->updateTranslationPosition(Landroid/animation/Animator;Z)V

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-ge v3, v5, :cond_4

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v5

    if-ne v5, v6, :cond_3

    invoke-virtual {p2}, Landroid/animation/Animator;->clone()Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setPivotY(F)V

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setPivotX(F)V

    :goto_2
    invoke-virtual {v0, v4}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    new-instance v5, Lcom/android/launcher2/MenuView$2;

    invoke-direct {v5, p0, v4}, Lcom/android/launcher2/MenuView$2;-><init>(Lcom/android/launcher2/MenuView;Landroid/view/View;)V

    invoke-virtual {v0, v5}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p3, :cond_1

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v5

    if-ne v5, v6, :cond_1

    invoke-virtual {p3}, Landroid/animation/Animator;->clone()Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    new-instance v5, Lcom/android/launcher2/MenuView$3;

    invoke-direct {v5, p0, v4}, Lcom/android/launcher2/MenuView$3;-><init>(Lcom/android/launcher2/MenuView;Landroid/view/View;)V

    invoke-virtual {v1, v5}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-virtual {p4}, Landroid/animation/Animator;->clone()Landroid/animation/Animator;

    move-result-object v0

    goto :goto_2

    :cond_4
    return-void
.end method

.method public static isNeedtoCloseFolder()Z
    .locals 1

    sget-boolean v0, Lcom/android/launcher2/MenuView;->mNeedToCloseFolder:Z

    return v0
.end method

.method private static removeButton(Landroid/view/View;)V
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private setAppNormalizer()V
    .locals 3

    const/4 v0, 0x0

    sget-object v1, Lcom/android/launcher2/MenuView$4;->$SwitchMap$com$android$launcher2$MenuView$ViewType:[I

    iget-object v2, p0, Lcom/android/launcher2/MenuView;->mViewType:Lcom/android/launcher2/MenuView$ViewType;

    invoke-virtual {v2}, Lcom/android/launcher2/MenuView$ViewType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :goto_0
    sget-object v1, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    iget v2, p0, Lcom/android/launcher2/MenuView;->mMaxItemsPerScreen:I

    invoke-virtual {v1, v0, v2}, Lcom/android/launcher2/MenuAppModel;->setNormalizer(Lcom/android/launcher2/MenuAppModel$Normalizer;I)V

    return-void

    :pswitch_0
    sget-object v0, Lcom/android/launcher2/MenuAppModel;->MENU_CUSTOM_NORMALIZER:Lcom/android/launcher2/MenuAppModel$Normalizer;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/android/launcher2/MenuAppModel;->MENU_ALPHA_NORMALIZER:Lcom/android/launcher2/MenuAppModel$Normalizer;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static setNeedtoCloseFolder(Z)V
    .locals 0

    sput-boolean p0, Lcom/android/launcher2/MenuView;->mNeedToCloseFolder:Z

    return-void
.end method

.method private setupMargin()V
    .locals 10

    invoke-virtual {p0}, Lcom/android/launcher2/MenuView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->getOrientation()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/launcher2/MenuView;->isCurrentTabAppsTab()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-virtual {p0}, Lcom/android/launcher2/MenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a02c8

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iput v8, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    :goto_0
    const v8, 0x7f11009e

    invoke-virtual {p0, v8}, Lcom/android/launcher2/MenuView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher2/MenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a0177

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/android/launcher2/MenuView;->isCurrentTabWidgets()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/MenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a0302

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    add-int/2addr v7, v4

    :cond_0
    iput v7, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    :cond_1
    iget-object v8, p0, Lcom/android/launcher2/MenuView;->mEditButtonTextView:Landroid/widget/TextView;

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/android/launcher2/MenuView;->mEditButtonTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/android/launcher2/MenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a0251

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {p0}, Lcom/android/launcher2/MenuView;->isCurrentTabWidgets()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher2/MenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a02c0

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    :cond_2
    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    iget-object v8, p0, Lcom/android/launcher2/MenuView;->mEditButtonTextView:Landroid/widget/TextView;

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    return-void

    :cond_4
    const/4 v8, 0x0

    iput v8, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_0
.end method

.method private setupTabTitleBar()V
    .locals 11

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/android/launcher2/MenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f0d0008

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    const v6, 0x7f0d0007

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    const v6, 0x7f0a0176

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const v6, 0x7f0a0353

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v6, p0, Lcom/android/launcher2/MenuView;->mDownloadedButton:Landroid/widget/TextView;

    if-eqz v6, :cond_0

    if-eqz v5, :cond_5

    iget-object v6, p0, Lcom/android/launcher2/MenuView;->mDownloadedText:Ljava/lang/CharSequence;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/android/launcher2/MenuView;->mDownloadedButton:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/launcher2/MenuView;->mDownloadedText:Ljava/lang/CharSequence;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/android/launcher2/MenuView;->mDownloadedButton:Landroid/widget/TextView;

    iget v7, p0, Lcom/android/launcher2/MenuView;->mDownloadedButtonDrawablePadding:I

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    iget-object v6, p0, Lcom/android/launcher2/MenuView;->mDownloadedButton:Landroid/widget/TextView;

    invoke-virtual {v6, v0, v8, v0, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/android/launcher2/MenuView;->mTabsView:Landroid/view/View;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/launcher2/MenuView;->mTabsView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v3, :cond_1

    if-eqz v1, :cond_6

    iput v8, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/high16 v6, 0x40000000    # 2.0f

    iput v6, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    :goto_1
    iget-object v6, p0, Lcom/android/launcher2/MenuView;->mTabsView:Landroid/view/View;

    invoke-virtual {v6, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    iget-object v6, p0, Lcom/android/launcher2/MenuView;->mDownloadedContainer:Landroid/view/View;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/launcher2/MenuView;->mDownloadedContainer:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v3, :cond_2

    if-eqz v1, :cond_7

    if-eqz v5, :cond_7

    iput v8, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput v10, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    :goto_2
    iget-object v6, p0, Lcom/android/launcher2/MenuView;->mDownloadedContainer:Landroid/view/View;

    invoke-virtual {v6, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    iget-object v6, p0, Lcom/android/launcher2/MenuView;->mTabGapView:Landroid/view/View;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/launcher2/MenuView;->mTabGapView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v3, :cond_3

    if-eqz v1, :cond_8

    iput v9, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    :goto_3
    iget-object v6, p0, Lcom/android/launcher2/MenuView;->mTabGapView:Landroid/view/View;

    invoke-virtual {v6, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    iget-object v6, p0, Lcom/android/launcher2/MenuView;->mTabDivider:Landroid/view/View;

    if-eqz v6, :cond_4

    if-eqz v1, :cond_9

    iget-object v6, p0, Lcom/android/launcher2/MenuView;->mTabDivider:Landroid/view/View;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    :goto_4
    return-void

    :cond_5
    iget-object v6, p0, Lcom/android/launcher2/MenuView;->mDownloadedButton:Landroid/widget/TextView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/android/launcher2/MenuView;->mDownloadedButton:Landroid/widget/TextView;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    iget-object v6, p0, Lcom/android/launcher2/MenuView;->mDownloadedButton:Landroid/widget/TextView;

    invoke-virtual {v6, v8, v8, v8, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_0

    :cond_6
    iput v2, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput v9, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto :goto_1

    :cond_7
    const/4 v6, -0x2

    iput v6, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput v9, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto :goto_2

    :cond_8
    iput v10, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto :goto_3

    :cond_9
    iget-object v6, p0, Lcom/android/launcher2/MenuView;->mTabDivider:Landroid/view/View;

    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4
.end method

.method private showNoDownloadedAppsToastMessage()V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher2/MenuView;->mNoDownloadedAppsToastMessage:Landroid/widget/Toast;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/MenuView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f09008c

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/MenuView;->mNoDownloadedAppsToastMessage:Landroid/widget/Toast;

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/MenuView;->mNoDownloadedAppsToastMessage:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private updateTranslationPosition(Landroid/animation/Animator;Z)V
    .locals 11

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/launcher2/Launcher;->getHomeView()Lcom/android/launcher2/HomeView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/launcher2/HomeView;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v4

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isTabletLayout()Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher2/MenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v7, v7, Landroid/content/res/Configuration;->orientation:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher2/MenuView;->getWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    invoke-virtual {v4}, Lcom/android/launcher2/Hotseat;->getLayout()Lcom/android/launcher2/CellLayout;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/launcher2/CellLayout;->getRight()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {p0}, Lcom/android/launcher2/MenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a0132

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    add-int/2addr v7, v8

    int-to-float v5, v7

    invoke-virtual {p0}, Lcom/android/launcher2/MenuView;->getHeight()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    neg-int v7, v7

    invoke-virtual {v4}, Lcom/android/launcher2/Hotseat;->getLayout()Lcom/android/launcher2/CellLayout;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/launcher2/CellLayout;->getTop()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v4}, Lcom/android/launcher2/Hotseat;->getLayout()Lcom/android/launcher2/CellLayout;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/launcher2/CellLayout;->getPaddingTop()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {p0}, Lcom/android/launcher2/MenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a012c

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    int-to-float v6, v7

    :goto_0
    move-object v1, p1

    check-cast v1, Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    move-object v3, v0

    check-cast v3, Landroid/animation/ObjectAnimator;

    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->getPropertyName()Ljava/lang/String;

    move-result-object v7

    const-string v9, "translationX"

    invoke-virtual {v7, v9}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    if-eqz p2, :cond_4

    const/4 v7, 0x2

    new-array v9, v7, [F

    const/4 v10, 0x0

    sget-boolean v7, Lcom/android/launcher2/Launcher;->sIsRtl:Z

    if-eqz v7, :cond_3

    neg-float v7, v5

    :goto_2
    aput v7, v9, v10

    const/4 v7, 0x1

    const/4 v10, 0x0

    aput v10, v9, v7

    invoke-virtual {v3, v9}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    :cond_1
    :goto_3
    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->getPropertyName()Ljava/lang/String;

    move-result-object v7

    const-string v9, "translationY"

    invoke-virtual {v7, v9}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    if-eqz p2, :cond_6

    const/4 v7, 0x2

    new-array v7, v7, [F

    const/4 v9, 0x0

    aput v6, v7, v9

    const/4 v9, 0x1

    const/4 v10, 0x0

    aput v10, v7, v9

    invoke-virtual {v3, v7}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/android/launcher2/MenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a0355

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    int-to-float v6, v7

    goto :goto_0

    :cond_3
    move v7, v5

    goto :goto_2

    :cond_4
    const/4 v7, 0x2

    new-array v9, v7, [F

    const/4 v7, 0x0

    const/4 v10, 0x0

    aput v10, v9, v7

    const/4 v10, 0x1

    sget-boolean v7, Lcom/android/launcher2/Launcher;->sIsRtl:Z

    if-eqz v7, :cond_5

    neg-float v7, v5

    :goto_4
    aput v7, v9, v10

    invoke-virtual {v3, v9}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    goto :goto_3

    :cond_5
    move v7, v5

    goto :goto_4

    :cond_6
    const/4 v7, 0x2

    new-array v7, v7, [F

    const/4 v9, 0x0

    const/4 v10, 0x0

    aput v10, v7, v9

    const/4 v9, 0x1

    aput v6, v7, v9

    invoke-virtual {v3, v7}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    goto :goto_1

    :cond_7
    return-void
.end method


# virtual methods
.method public appBadgeUpdated(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/AppItem;",
            ">;)V"
        }
    .end annotation

    iget-object v2, p0, Lcom/android/launcher2/MenuView;->mTabManager:Lcom/android/launcher2/tabs/TabManager;

    invoke-virtual {v2}, Lcom/android/launcher2/tabs/TabManager;->getTabInfo()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/tabs/TabManager$TabInfo;

    invoke-virtual {v1}, Lcom/android/launcher2/tabs/TabManager$TabInfo;->getFrag()Landroid/app/Fragment;

    move-result-object v0

    instance-of v3, v0, Lcom/android/launcher2/MenuView$AppModelNotifications;

    if-eqz v3, :cond_0

    check-cast v0, Lcom/android/launcher2/MenuView$AppModelNotifications;

    invoke-interface {v0, p1}, Lcom/android/launcher2/MenuView$AppModelNotifications;->appBadgeUpdated(Ljava/util/List;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public appModelLoaded()V
    .locals 4

    iget-object v2, p0, Lcom/android/launcher2/MenuView;->mTabManager:Lcom/android/launcher2/tabs/TabManager;

    invoke-virtual {v2}, Lcom/android/launcher2/tabs/TabManager;->getTabInfo()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/tabs/TabManager$TabInfo;

    invoke-virtual {v1}, Lcom/android/launcher2/tabs/TabManager$TabInfo;->getFrag()Landroid/app/Fragment;

    move-result-object v0

    instance-of v3, v0, Lcom/android/launcher2/MenuView$AppModelNotifications;

    if-eqz v3, :cond_0

    check-cast v0, Lcom/android/launcher2/MenuView$AppModelNotifications;

    invoke-interface {v0}, Lcom/android/launcher2/MenuView$AppModelNotifications;->appModelLoaded()V

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/launcher2/MenuView;->mMenuAppLoaded:Z

    return-void
.end method

.method public appModelUpdated()V
    .locals 4

    const-string v2, "MenuView"

    const-string v3, "appModelUpdated"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/launcher2/MenuView;->mTabManager:Lcom/android/launcher2/tabs/TabManager;

    invoke-virtual {v2}, Lcom/android/launcher2/tabs/TabManager;->getTabInfo()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/tabs/TabManager$TabInfo;

    invoke-virtual {v1}, Lcom/android/launcher2/tabs/TabManager$TabInfo;->getFrag()Landroid/app/Fragment;

    move-result-object v0

    instance-of v3, v0, Lcom/android/launcher2/MenuView$AppModelNotifications;

    if-eqz v3, :cond_0

    check-cast v0, Lcom/android/launcher2/MenuView$AppModelNotifications;

    invoke-interface {v0}, Lcom/android/launcher2/MenuView$AppModelNotifications;->appModelUpdated()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public applyMenuGridChangefinally()V
    .locals 5

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportFlexibleGrid()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "MenuView"

    const-string v3, "not support flexible grid"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/MenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getLauncherGridSize()Lcom/android/launcher2/LauncherApplication$HomeGridSize;

    move-result-object v0

    sget-object v2, Lcom/android/launcher2/LauncherApplication$HomeGridSize;->GRID_5x5:Lcom/android/launcher2/LauncherApplication$HomeGridSize;

    if-ne v0, v2, :cond_1

    const v2, 0x7f0c0021

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    const v3, 0x7f0c0022

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    mul-int/2addr v2, v3

    iput v2, p0, Lcom/android/launcher2/MenuView;->mMaxItemsPerScreen:I

    :goto_1
    const-string v2, "MenuView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MenuView::applyMenuGridChangefinally() mMaxItemsPerPage "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/launcher2/MenuView;->mMaxItemsPerScreen:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/launcher2/MenuView;->getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/launcher2/MenuAppsGrid;->changeGridSize(Lcom/android/launcher2/LauncherApplication$HomeGridSize;)V

    goto :goto_0

    :cond_1
    const v2, 0x7f0c000c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    const v3, 0x7f0c000d

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    mul-int/2addr v2, v3

    iput v2, p0, Lcom/android/launcher2/MenuView;->mMaxItemsPerScreen:I

    goto :goto_1
.end method

.method public changeState(Lcom/android/launcher2/MenuAppsGrid$State;)V
    .locals 4

    iget-object v1, p0, Lcom/android/launcher2/MenuView;->mTabManager:Lcom/android/launcher2/tabs/TabManager;

    const-string v2, "APPS"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher2/tabs/TabManager;->getFragmentForTab(Ljava/lang/String;Z)Landroid/app/Fragment;

    move-result-object v0

    instance-of v1, v0, Lcom/android/launcher2/MenuAppsGridFragment;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/app/Fragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/MenuView;->isMenuExiting()Z

    move-result v1

    if-nez v1, :cond_0

    check-cast v0, Lcom/android/launcher2/MenuAppsGridFragment;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/MenuAppsGridFragment;->changeState(Lcom/android/launcher2/MenuAppsGrid$State;)V

    :cond_0
    return-void
.end method

.method public chooseViewType()V
    .locals 2

    iget-object v1, p0, Lcom/android/launcher2/MenuView;->mViewType:Lcom/android/launcher2/MenuView$ViewType;

    invoke-virtual {p0}, Lcom/android/launcher2/MenuView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/launcher2/MenuViewTypeDialog;->createAndShow(Lcom/android/launcher2/MenuView$ViewType;Landroid/app/FragmentManager;)V

    return-void
.end method

.method public closeFolders()V
    .locals 4

    iget-object v2, p0, Lcom/android/launcher2/MenuView;->mTabManager:Lcom/android/launcher2/tabs/TabManager;

    invoke-virtual {v2}, Lcom/android/launcher2/tabs/TabManager;->getTabInfo()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/tabs/TabManager$TabInfo;

    invoke-virtual {v1}, Lcom/android/launcher2/tabs/TabManager$TabInfo;->getFrag()Landroid/app/Fragment;

    move-result-object v0

    instance-of v3, v0, Lcom/android/launcher2/MenuAppsGridFragment;

    if-eqz v3, :cond_1

    check-cast v0, Lcom/android/launcher2/MenuAppsGridFragment;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppsGridFragment;->closeFolders()V

    goto :goto_0

    :cond_1
    instance-of v3, v0, Lcom/android/launcher2/MenuWidgetsFragment;

    if-eqz v3, :cond_0

    check-cast v0, Lcom/android/launcher2/MenuWidgetsFragment;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuWidgetsFragment;->closeFolders()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public collectExitAllAppsAnimators(Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    const v6, 0x3f547ae1    # 0.83f

    const v5, 0x3e2e147b    # 0.17f

    iget-object v0, p0, Lcom/android/launcher2/MenuView;->mMenuViewDarken:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/MenuView;->mMenuViewDarken:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/MenuView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f06001a

    invoke-static {v0, v1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/launcher2/MenuView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f06001b

    invoke-static {v0, v1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/launcher2/MenuView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f060019

    invoke-static {v0, v1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v4

    const v0, 0x3f4ccccd    # 0.8f

    const/4 v1, 0x0

    invoke-static {v0, v1, v6, v6}, Landroid/support/v4/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const v0, 0x3ecccccd    # 0.4f

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v5, v5, v0, v1}, Landroid/support/v4/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v0, Lcom/android/launcher2/utils/interpolator/SineInOut33;

    invoke-direct {v0}, Lcom/android/launcher2/utils/interpolator/SineInOut33;-><init>()V

    invoke-virtual {v4, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/MenuView;->collectAnimators(Ljava/util/ArrayList;Landroid/animation/Animator;Landroid/animation/Animator;Landroid/animation/Animator;Z)V

    return-void
.end method

.method public collectExitAllAppsWithDragAnimators(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/launcher2/MenuView;->mMenuViewDarken:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/MenuView;->mMenuViewDarken:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/MenuView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f06001d

    invoke-static {v0, v1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v2

    new-instance v0, Lcom/android/launcher2/utils/interpolator/SineInOut70;

    invoke-direct {v0}, Lcom/android/launcher2/utils/interpolator/SineInOut70;-><init>()V

    invoke-virtual {v2, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/launcher2/MenuView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x10b0001

    invoke-static {v0, v1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/MenuView;->collectAnimators(Ljava/util/ArrayList;Landroid/animation/Animator;Landroid/animation/Animator;Landroid/animation/Animator;Z)V

    return-void
.end method

.method public collectExitWidgetListAnimators(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/launcher2/MenuView;->mMenuViewDarken:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/MenuView;->mMenuViewDarken:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/MenuView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f06001c

    invoke-static {v0, v1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v2

    new-instance v0, Lcom/android/launcher2/utils/interpolator/SineInOut90;

    invoke-direct {v0}, Lcom/android/launcher2/utils/interpolator/SineInOut90;-><init>()V

    invoke-virtual {v2, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/launcher2/MenuView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x10b0001

    invoke-static {v0, v1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/MenuView;->collectAnimators(Ljava/util/ArrayList;Landroid/animation/Animator;Landroid/animation/Animator;Landroid/animation/Animator;Z)V

    return-void
.end method

.method public collectShowAllAppsAnimators(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    const v5, 0x3f547ae1    # 0.83f

    invoke-virtual {p0}, Lcom/android/launcher2/MenuView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f06000f

    invoke-static {v0, v1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/launcher2/MenuView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f060010

    invoke-static {v0, v1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/launcher2/MenuView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f06000d

    invoke-static {v0, v1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v4

    new-instance v0, Lcom/android/launcher2/utils/interpolator/SineInOut80;

    invoke-direct {v0}, Lcom/android/launcher2/utils/interpolator/SineInOut80;-><init>()V

    invoke-virtual {v2, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const v0, 0x3f333333    # 0.7f

    const/4 v1, 0x0

    invoke-static {v0, v1, v5, v5}, Landroid/support/v4/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v0, Lcom/android/launcher2/utils/interpolator/SineInOut33;

    invoke-direct {v0}, Lcom/android/launcher2/utils/interpolator/SineInOut33;-><init>()V

    invoke-virtual {v4, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/MenuView;->collectAnimators(Ljava/util/ArrayList;Landroid/animation/Animator;Landroid/animation/Animator;Landroid/animation/Animator;Z)V

    const-string v0, "MenuView"

    const-string v1, "MenuView collectShowAllAppsAnimators"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public collectShowWidgetListAnimators(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/launcher2/MenuView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f060011

    invoke-static {v0, v1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v2

    new-instance v0, Lcom/android/launcher2/utils/interpolator/SineInOut90;

    invoke-direct {v0}, Lcom/android/launcher2/utils/interpolator/SineInOut90;-><init>()V

    invoke-virtual {v2, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/launcher2/MenuView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x10b0000

    invoke-static {v0, v1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v4

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/MenuView;->collectAnimators(Ljava/util/ArrayList;Landroid/animation/Animator;Landroid/animation/Animator;Landroid/animation/Animator;Z)V

    return-void
.end method

.method public dispatchDragEvent(Landroid/view/DragEvent;)Z
    .locals 3

    invoke-super {p0, p1}, Landroid/widget/TabHost;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public dispatchWindowFocusChanged(Z)V
    .locals 3

    invoke-super {p0, p1}, Landroid/widget/TabHost;->dispatchWindowFocusChanged(Z)V

    const v1, 0x7f1100a7

    invoke-virtual {p0, v1}, Lcom/android/launcher2/MenuView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher2/MenuView;->isCurrentTabAppGrid()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchWindowFocusChanged(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/MenuView;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher2/MenuView;->isCurrentTabWidgets()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher2/MenuView;->getWidgetState()Lcom/android/launcher2/MenuWidgets$WidgetState;

    move-result-object v1

    sget-object v2, Lcom/android/launcher2/MenuWidgets$WidgetState;->SEARCH:Lcom/android/launcher2/MenuWidgets$WidgetState;

    if-ne v1, v2, :cond_1

    const v1, 0x7f110112

    invoke-virtual {p0, v1}, Lcom/android/launcher2/MenuView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchWindowFocusChanged(Z)V

    :cond_1
    return-void
.end method

.method public enterAllStates()V
    .locals 5

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/launcher2/MenuView;->mTabManager:Lcom/android/launcher2/tabs/TabManager;

    const-string v3, "APPS"

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher2/tabs/TabManager;->getFragmentForTab(Ljava/lang/String;Z)Landroid/app/Fragment;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher2/MenuView;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v2

    sput-object v2, Lcom/android/launcher2/MenuView;->oldState:Lcom/android/launcher2/MenuAppsGrid$State;

    instance-of v2, v0, Lcom/android/launcher2/MenuAppsGridFragment;

    if-eqz v2, :cond_0

    check-cast v0, Lcom/android/launcher2/MenuAppsGridFragment;

    invoke-virtual {v0, p0}, Lcom/android/launcher2/MenuAppsGridFragment;->onShowTab(Lcom/android/launcher2/MenuView;)V

    :cond_0
    iget-object v2, p0, Lcom/android/launcher2/MenuView;->mTabManager:Lcom/android/launcher2/tabs/TabManager;

    const-string v3, "WIDGETS"

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher2/tabs/TabManager;->getFragmentForTab(Ljava/lang/String;Z)Landroid/app/Fragment;

    move-result-object v1

    instance-of v2, v1, Lcom/android/launcher2/MenuWidgetsFragment;

    if-eqz v2, :cond_1

    check-cast v1, Lcom/android/launcher2/MenuWidgetsFragment;

    invoke-virtual {v1, p0}, Lcom/android/launcher2/MenuWidgetsFragment;->onShowTab(Lcom/android/launcher2/MenuView;)V

    :cond_1
    return-void
.end method

.method public getCurrentFragment()Z
    .locals 3

    iget-object v1, p0, Lcom/android/launcher2/MenuView;->mTabManager:Lcom/android/launcher2/tabs/TabManager;

    invoke-virtual {v1}, Lcom/android/launcher2/tabs/TabManager;->getCurrentlyShownFragment()Landroid/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "APPS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCurrentQuickoptionsPopup()Lcom/android/launcher2/QuickOptionsPopup;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/MenuView;->mQuickOptionsPopup:Lcom/android/launcher2/QuickOptionsPopup;

    return-object v0
.end method

.method public getCurrentTabView()Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Lcom/android/launcher2/MenuView;->getCurrentView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getDescendantFocusability()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/launcher2/MenuView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x60000

    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/widget/TabHost;->getDescendantFocusability()I

    move-result v0

    goto :goto_0
.end method

.method public getEditButtonText()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/MenuView;->mEditButtonTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;
    .locals 4

    iget-object v1, p0, Lcom/android/launcher2/MenuView;->mTabManager:Lcom/android/launcher2/tabs/TabManager;

    const-string v2, "APPS"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher2/tabs/TabManager;->getFragmentForTab(Ljava/lang/String;Z)Landroid/app/Fragment;

    move-result-object v0

    instance-of v1, v0, Lcom/android/launcher2/MenuAppsGridFragment;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/android/launcher2/MenuAppsGridFragment;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppsGridFragment;->getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getMenuWidgets()Lcom/android/launcher2/MenuWidgets;
    .locals 4

    iget-object v1, p0, Lcom/android/launcher2/MenuView;->mTabManager:Lcom/android/launcher2/tabs/TabManager;

    const-string v2, "WIDGETS"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher2/tabs/TabManager;->getFragmentForTab(Ljava/lang/String;Z)Landroid/app/Fragment;

    move-result-object v0

    instance-of v1, v0, Lcom/android/launcher2/MenuWidgetsFragment;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/android/launcher2/MenuWidgetsFragment;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuWidgetsFragment;->getMenuWidgets()Lcom/android/launcher2/MenuWidgets;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSearchButtonText()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/MenuView;->mSearchButtonTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getState()Lcom/android/launcher2/MenuAppsGrid$State;
    .locals 4

    iget-object v1, p0, Lcom/android/launcher2/MenuView;->mTabManager:Lcom/android/launcher2/tabs/TabManager;

    const-string v2, "APPS"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher2/tabs/TabManager;->getFragmentForTab(Ljava/lang/String;Z)Landroid/app/Fragment;

    move-result-object v0

    instance-of v1, v0, Lcom/android/launcher2/MenuAppsGridFragment;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/app/Fragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    check-cast v0, Lcom/android/launcher2/MenuAppsGridFragment;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppsGridFragment;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    goto :goto_0
.end method

.method public getTabManager()Lcom/android/launcher2/tabs/TabManager;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/MenuView;->mTabManager:Lcom/android/launcher2/tabs/TabManager;

    return-object v0
.end method

.method public getTitleBarManager()Lcom/android/launcher2/MenuTitleBarManager;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/MenuView;->mTitleBarManager:Lcom/android/launcher2/MenuTitleBarManager;

    return-object v0
.end method

.method public getViewType()Lcom/android/launcher2/MenuView$ViewType;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/MenuView;->mViewType:Lcom/android/launcher2/MenuView$ViewType;

    return-object v0
.end method

.method public getWidgetState()Lcom/android/launcher2/MenuWidgets$WidgetState;
    .locals 4

    iget-object v1, p0, Lcom/android/launcher2/MenuView;->mTabManager:Lcom/android/launcher2/tabs/TabManager;

    const-string v2, "WIDGETS"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher2/tabs/TabManager;->getFragmentForTab(Ljava/lang/String;Z)Landroid/app/Fragment;

    move-result-object v0

    instance-of v1, v0, Lcom/android/launcher2/MenuWidgetsFragment;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/app/Fragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    check-cast v0, Lcom/android/launcher2/MenuWidgetsFragment;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuWidgetsFragment;->getWidgetState()Lcom/android/launcher2/MenuWidgets$WidgetState;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lcom/android/launcher2/MenuWidgets$WidgetState;->NORMAL:Lcom/android/launcher2/MenuWidgets$WidgetState;

    goto :goto_0
.end method

.method public isCurrentTabAppGrid()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/launcher2/MenuView;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "APPS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isCurrentTabAppsTab()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/launcher2/MenuView;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "APPS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isCurrentTabWidgets()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/launcher2/MenuView;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WIDGETS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isEditState()Z
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/launcher2/MenuView;->mTabManager:Lcom/android/launcher2/tabs/TabManager;

    const-string v3, "APPS"

    invoke-virtual {v2, v3, v1}, Lcom/android/launcher2/tabs/TabManager;->getFragmentForTab(Ljava/lang/String;Z)Landroid/app/Fragment;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher2/MenuView;->isCurrentTabAppGrid()Z

    move-result v2

    if-eqz v2, :cond_0

    instance-of v2, v0, Lcom/android/launcher2/MenuAppsGridFragment;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/MenuView;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v2

    sget-object v3, Lcom/android/launcher2/MenuAppsGrid$State;->EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public isMenuExiting()Z
    .locals 8

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/launcher2/MenuView;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher2/MenuView;->isVisible()Z

    move-result v5

    if-nez v5, :cond_2

    move v2, v3

    :goto_0
    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->isExitingAllApps()Z

    move-result v0

    const-string v5, "MenuView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "visible = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " isExit = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v2, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    move v4, v3

    :cond_1
    return v4

    :cond_2
    move v2, v4

    goto :goto_0
.end method

.method public isNormalState()Z
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/launcher2/MenuView;->mTabManager:Lcom/android/launcher2/tabs/TabManager;

    const-string v5, "APPS"

    invoke-virtual {v4, v5, v3}, Lcom/android/launcher2/tabs/TabManager;->getFragmentForTab(Ljava/lang/String;Z)Landroid/app/Fragment;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher2/MenuView;->isCurrentTabAppGrid()Z

    move-result v4

    if-eqz v4, :cond_2

    instance-of v4, v0, Lcom/android/launcher2/MenuAppsGridFragment;

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher2/MenuView;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v4

    sget-object v5, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v4, v5, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    move v2, v3

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/android/launcher2/MenuView;->mTabManager:Lcom/android/launcher2/tabs/TabManager;

    const-string v5, "WIDGETS"

    invoke-virtual {v4, v5, v3}, Lcom/android/launcher2/tabs/TabManager;->getFragmentForTab(Ljava/lang/String;Z)Landroid/app/Fragment;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/launcher2/MenuView;->isCurrentTabWidgets()Z

    move-result v4

    if-eqz v4, :cond_0

    instance-of v4, v1, Lcom/android/launcher2/MenuWidgetsFragment;

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/MenuView;->getWidgetState()Lcom/android/launcher2/MenuWidgets$WidgetState;

    move-result-object v4

    sget-object v5, Lcom/android/launcher2/MenuWidgets$WidgetState;->NORMAL:Lcom/android/launcher2/MenuWidgets$WidgetState;

    if-eq v4, v5, :cond_3

    invoke-virtual {p0}, Lcom/android/launcher2/MenuView;->getWidgetState()Lcom/android/launcher2/MenuWidgets$WidgetState;

    move-result-object v4

    sget-object v5, Lcom/android/launcher2/MenuWidgets$WidgetState;->SEARCH:Lcom/android/launcher2/MenuWidgets$WidgetState;

    if-ne v4, v5, :cond_4

    :cond_3
    move v3, v2

    :cond_4
    move v2, v3

    goto :goto_0
.end method

.method public isVisible()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/launcher2/MenuView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBackPressed()Z
    .locals 2

    iget-object v1, p0, Lcom/android/launcher2/MenuView;->mTabManager:Lcom/android/launcher2/tabs/TabManager;

    invoke-virtual {v1}, Lcom/android/launcher2/tabs/TabManager;->getCurrentlyShownFragment()Landroid/app/Fragment;

    move-result-object v0

    instance-of v1, v0, Lcom/android/launcher2/Launcher$HardwareKeys;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/android/launcher2/Launcher$HardwareKeys;

    invoke-interface {v0}, Lcom/android/launcher2/Launcher$HardwareKeys;->onBackPressed()Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 17

    invoke-super/range {p0 .. p1}, Landroid/widget/TabHost;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const v13, 0x7f110011

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/launcher2/MenuView;->findViewById(I)Landroid/view/View;

    move-result-object v13

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-virtual {v13, v14}, Landroid/view/View;->setAlpha(F)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/MenuView;->mEditButtonTextView:Landroid/widget/TextView;

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setAlpha(F)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/MenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v13, 0x7f0a03a1

    invoke-virtual {v4, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    const v13, 0x7f0a0174

    invoke-virtual {v4, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    const v13, 0x7f0a0175

    invoke-virtual {v4, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    const v13, 0x7f0a0177

    invoke-virtual {v4, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v13

    iget v5, v13, Landroid/content/res/Configuration;->orientation:I

    const v13, 0x7f0a03bf

    invoke-virtual {v4, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    const/4 v6, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/MenuView;->isCurrentTabWidgets()Z

    move-result v13

    if-eqz v13, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/MenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v13

    iget v13, v13, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v14, 0x320

    if-eq v13, v14, :cond_1

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/MenuView;->isCurrentTabWidgets()Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isTabletLayout()Z

    move-result v13

    if-nez v13, :cond_2

    :cond_1
    const v13, 0x7f0a0187

    invoke-virtual {v4, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    :cond_2
    const v13, 0x7f11009e

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/launcher2/MenuView;->findViewById(I)Landroid/view/View;

    move-result-object v11

    const v13, 0x1020011

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/launcher2/MenuView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportRTLLayout()Z

    move-result v13

    if-nez v13, :cond_5

    invoke-static {}, Lcom/android/launcher2/Utilities;->isLayoutRtl()Z

    move-result v13

    if-eqz v13, :cond_5

    const/4 v2, 0x1

    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/MenuView;->setupTabTitleBar()V

    if-eqz v11, :cond_3

    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v6, :cond_6

    iput v6, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    :goto_1
    iput v10, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iput v8, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iput v9, v3, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    invoke-virtual {v11, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v13, 0x0

    invoke-virtual {v11}, Landroid/view/View;->getPaddingTop()I

    move-result v14

    const/4 v15, 0x0

    invoke-virtual {v11}, Landroid/view/View;->getPaddingBottom()I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v11, v13, v14, v15, v0}, Landroid/view/View;->setPadding(IIII)V

    :cond_3
    if-eqz v7, :cond_4

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-virtual {v7, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/MenuView;->setupMargin()V

    return-void

    :cond_5
    const/4 v2, 0x0

    goto :goto_0

    :cond_6
    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    goto :goto_1
.end method

.method public onExitAllApps()V
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/android/launcher2/MenuView;->closeViewTypeDialog()V

    sget-object v2, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {p0, v2}, Lcom/android/launcher2/MenuView;->changeState(Lcom/android/launcher2/MenuAppsGrid$State;)V

    iget-object v2, p0, Lcom/android/launcher2/MenuView;->mTabManager:Lcom/android/launcher2/tabs/TabManager;

    const-string v3, "APPS"

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher2/tabs/TabManager;->getFragmentForTab(Ljava/lang/String;Z)Landroid/app/Fragment;

    move-result-object v0

    instance-of v2, v0, Lcom/android/launcher2/MenuAppsGridFragment;

    if-eqz v2, :cond_0

    check-cast v0, Lcom/android/launcher2/MenuAppsGridFragment;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppsGridFragment;->onExitAllApps()V

    :cond_0
    iget-object v2, p0, Lcom/android/launcher2/MenuView;->mTabManager:Lcom/android/launcher2/tabs/TabManager;

    const-string v3, "WIDGETS"

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher2/tabs/TabManager;->getFragmentForTab(Ljava/lang/String;Z)Landroid/app/Fragment;

    move-result-object v1

    instance-of v2, v1, Lcom/android/launcher2/MenuWidgetsFragment;

    if-eqz v2, :cond_1

    check-cast v1, Lcom/android/launcher2/MenuWidgetsFragment;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuWidgetsFragment;->onExitAllApps()V

    :cond_1
    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->isTransitedRotation()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/android/launcher2/ar/ARHelper;->getInstance()Lcom/android/launcher2/ar/ARHelper;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/android/launcher2/ar/ARHelper;->visibilityChanged(I)V

    :cond_2
    return-void
.end method

.method public onFinishExitAllApps()V
    .locals 0

    return-void
.end method

.method public onFinishInflate()V
    .locals 19

    invoke-super/range {p0 .. p0}, Landroid/widget/TabHost;->onFinishInflate()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/MenuView;->setup()V

    const v13, 0x1020013

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/launcher2/MenuView;->findViewById(I)Landroid/view/View;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/launcher2/MenuView;->mTabsView:Landroid/view/View;

    const v13, 0x7f1100ab

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/launcher2/MenuView;->findViewById(I)Landroid/view/View;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/launcher2/MenuView;->mTabDivider:Landroid/view/View;

    const v13, 0x7f1100ac

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/launcher2/MenuView;->findViewById(I)Landroid/view/View;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/launcher2/MenuView;->mTabGapView:Landroid/view/View;

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/MenuView;->setupTabTitleBar()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/MenuView;->mTitleBarManager:Lcom/android/launcher2/MenuTitleBarManager;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Lcom/android/launcher2/MenuTitleBarManager;->init(Lcom/android/launcher2/MenuView;)V

    const v13, 0x7f1100a2

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/launcher2/MenuView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout;

    const v13, 0x7f1100c2

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/launcher2/MenuView;->findViewById(I)Landroid/view/View;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/launcher2/MenuView;->mMenuViewDarken:Landroid/view/View;

    const v13, 0x7f11009d

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/launcher2/MenuView;->findViewById(I)Landroid/view/View;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/launcher2/MenuView;->mMenuContainer:Landroid/view/View;

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/MenuView;->getContext()Landroid/content/Context;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/Launcher;

    new-instance v13, Lcom/android/launcher2/tabs/TabManager;

    const v14, 0x1020011

    move-object/from16 v0, p0

    invoke-direct {v13, v5, v0, v14}, Lcom/android/launcher2/tabs/TabManager;-><init>(Landroid/app/Activity;Lcom/android/launcher2/MenuView;I)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/launcher2/MenuView;->mTabManager:Lcom/android/launcher2/tabs/TabManager;

    const v13, 0x1020013

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/launcher2/MenuView;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TabWidget;

    const-string v13, "layout_inflater"

    invoke-virtual {v5, v13}, Lcom/android/launcher2/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    const/4 v9, 0x0

    const v13, 0x7f040049

    const/4 v14, 0x0

    invoke-virtual {v4, v13, v11, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    const v13, 0x7f090001

    invoke-virtual {v10, v13}, Landroid/widget/TextView;->setText(I)V

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/MenuView;->getContext()Landroid/content/Context;

    move-result-object v14

    const v15, 0x7f0900cf

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/MenuView;->getContext()Landroid/content/Context;

    move-result-object v14

    const v15, 0x7f0900e1

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const/16 v18, 0x1

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x1

    const/16 v18, 0x3

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-virtual/range {v14 .. v16}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    const/4 v13, 0x0

    invoke-virtual {v10, v13}, Landroid/widget/TextView;->semSetHoverPopupType(I)V

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/launcher2/MenuView;->mAppsTabTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/MenuView;->mTabManager:Lcom/android/launcher2/tabs/TabManager;

    const-string v14, "APPS"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/launcher2/MenuView;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v14

    invoke-virtual {v14, v10}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v14

    const-class v15, Lcom/android/launcher2/MenuAppsGridFragment;

    const/16 v16, 0x0

    invoke-virtual/range {v13 .. v16}, Lcom/android/launcher2/tabs/TabManager;->addTab(Landroid/widget/TabHost$TabSpec;Ljava/lang/Class;Landroid/os/Bundle;)V

    const v13, 0x7f040049

    const/4 v14, 0x0

    invoke-virtual {v4, v13, v11, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    const v13, 0x7f090010

    invoke-virtual {v10, v13}, Landroid/widget/TextView;->setText(I)V

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/MenuView;->getContext()Landroid/content/Context;

    move-result-object v14

    const v15, 0x7f090010

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/MenuView;->getContext()Landroid/content/Context;

    move-result-object v14

    const v15, 0x7f0900e1

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const/16 v18, 0x2

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x1

    const/16 v18, 0x3

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-virtual/range {v14 .. v16}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    const/4 v13, 0x0

    invoke-virtual {v10, v13}, Landroid/widget/TextView;->semSetHoverPopupType(I)V

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/launcher2/MenuView;->mWidgetsTabTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/MenuView;->mTabManager:Lcom/android/launcher2/tabs/TabManager;

    const-string v14, "WIDGETS"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/launcher2/MenuView;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v14

    invoke-virtual {v14, v10}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v14

    const-class v15, Lcom/android/launcher2/MenuWidgetsFragment;

    const/16 v16, 0x0

    invoke-virtual/range {v13 .. v16}, Lcom/android/launcher2/tabs/TabManager;->addTab(Landroid/widget/TabHost$TabSpec;Ljava/lang/Class;Landroid/os/Bundle;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/MenuView;->mTabManager:Lcom/android/launcher2/tabs/TabManager;

    sget-object v14, Lcom/android/launcher2/FocusHelper;->APPS_CUSTOMIZE_TABKEY_LISTENER:Landroid/view/View$OnKeyListener;

    invoke-virtual {v13, v14}, Lcom/android/launcher2/tabs/TabManager;->setLastTabKeyListener(Landroid/view/View$OnKeyListener;)V

    const v13, 0x7f110034

    invoke-virtual {v6, v13}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/launcher2/MenuView;->mEditButtonTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/MenuView;->mEditButtonTextView:Landroid/widget/TextView;

    new-instance v14, Lcom/android/launcher2/MenuView$1;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/android/launcher2/MenuView$1;-><init>(Lcom/android/launcher2/MenuView;)V

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    const v13, 0x7f1100a1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/launcher2/MenuView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    const v13, 0x7f1100a5

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/launcher2/MenuView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    const v13, 0x7f1100a4

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/launcher2/MenuView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    if-eqz v1, :cond_0

    const v13, 0x7f110011

    invoke-virtual {v1, v13}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/launcher2/MenuView;->mAtoZButtonTextView:Landroid/widget/TextView;

    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v14, "fr"

    invoke-virtual {v13, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/MenuView;->getContext()Landroid/content/Context;

    move-result-object v13

    const v14, 0x7f09001f

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/MenuView;->mEditButtonTextView:Landroid/widget/TextView;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " \""

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/MenuView;->getContext()Landroid/content/Context;

    move-result-object v15

    const v16, 0x7f090099

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\""

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/MenuView;->mAtoZButtonTextView:Landroid/widget/TextView;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " \""

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/MenuView;->getContext()Landroid/content/Context;

    move-result-object v15

    const v16, 0x7f090013

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\""

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_0
    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportSearchBarApps()Z

    move-result v13

    if-eqz v13, :cond_1

    const v13, 0x7f1100a9

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/launcher2/MenuView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const v13, 0x7f1100c9

    invoke-virtual {v7, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/launcher2/MenuView;->mMoreOptionView:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/MenuView;->mMoreOptionView:Landroid/widget/ImageButton;

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/MenuView;->getContext()Landroid/content/Context;

    move-result-object v14

    const v15, 0x7f090099

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/MenuView;->mMoreOptionView:Landroid/widget/ImageButton;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/widget/ImageButton;->semSetHoverPopupType(I)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/MenuView;->mMoreOptionView:Landroid/widget/ImageButton;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/widget/ImageButton;->semGetHoverPopup(Z)Lcom/samsung/android/widget/SemHoverPopupWindow;

    move-result-object v13

    if-eqz v13, :cond_1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/MenuView;->mMoreOptionView:Landroid/widget/ImageButton;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/widget/ImageButton;->semGetHoverPopup(Z)Lcom/samsung/android/widget/SemHoverPopupWindow;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/MenuView;->getContext()Landroid/content/Context;

    move-result-object v14

    const v15, 0x7f090099

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/samsung/android/widget/SemHoverPopupWindow;->setContent(Ljava/lang/CharSequence;)V

    :cond_1
    const v13, 0x7f110012

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/launcher2/MenuView;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/launcher2/MenuView;->mAtoZSaveButtonTextView:Landroid/widget/TextView;

    const v13, 0x7f110013

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/launcher2/MenuView;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/launcher2/MenuView;->mAtoZCancelButtonTextView:Landroid/widget/TextView;

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportAppSearch()Z

    move-result v13

    if-eqz v13, :cond_2

    const v13, 0x7f1100a0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/launcher2/MenuView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/FrameLayout;

    if-eqz v8, :cond_2

    const v13, 0x7f1100e9

    invoke-virtual {v8, v13}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/launcher2/MenuView;->mSearchButtonTextView:Landroid/widget/TextView;

    :cond_2
    if-eqz v1, :cond_3

    const/4 v13, 0x0

    invoke-virtual {v1, v13}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_3
    if-eqz v3, :cond_4

    const/16 v13, 0x8

    invoke-virtual {v3, v13}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_4
    if-eqz v2, :cond_5

    const/16 v13, 0x8

    invoke-virtual {v2, v13}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_5
    const/4 v13, 0x1

    invoke-virtual {v5, v13}, Lcom/android/launcher2/Launcher;->setUseAtoZButton(Z)V

    const v13, 0x7f11009f

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/launcher2/MenuView;->findViewById(I)Landroid/view/View;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/launcher2/MenuView;->mMenuEditContainer:Landroid/view/View;

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/MenuView;->setEditTextBg()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/MenuView;->setArabicLayout()V

    return-void

    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/MenuView;->getContext()Landroid/content/Context;

    move-result-object v13

    const v14, 0x7f09001f

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/MenuView;->mEditButtonTextView:Landroid/widget/TextView;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/MenuView;->getContext()Landroid/content/Context;

    move-result-object v15

    const v16, 0x7f090099

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/MenuView;->mAtoZButtonTextView:Landroid/widget/TextView;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/MenuView;->getContext()Landroid/content/Context;

    move-result-object v15

    const v16, 0x7f090013

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method public onHomePressed(Z)Z
    .locals 2

    sget-object v1, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {p0, v1}, Lcom/android/launcher2/MenuView;->changeState(Lcom/android/launcher2/MenuAppsGrid$State;)V

    iget-object v1, p0, Lcom/android/launcher2/MenuView;->mTabManager:Lcom/android/launcher2/tabs/TabManager;

    invoke-virtual {v1}, Lcom/android/launcher2/tabs/TabManager;->getCurrentlyShownFragment()Landroid/app/Fragment;

    move-result-object v0

    instance-of v1, v0, Lcom/android/launcher2/Launcher$HardwareKeys;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/android/launcher2/Launcher$HardwareKeys;

    invoke-interface {v0, p1}, Lcom/android/launcher2/Launcher$HardwareKeys;->onHomePressed(Z)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 9

    invoke-super/range {p0 .. p5}, Landroid/widget/TabHost;->onLayout(ZIIII)V

    invoke-virtual {p0}, Lcom/android/launcher2/MenuView;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {p0, v2}, Lcom/android/launcher2/MenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    instance-of v4, v4, Lcom/android/launcher2/HomeView$LayoutParams;

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/HomeView$LayoutParams;

    iget v4, v3, Lcom/android/launcher2/HomeView$LayoutParams;->x:I

    iget v5, v3, Lcom/android/launcher2/HomeView$LayoutParams;->y:I

    iget v6, v3, Lcom/android/launcher2/HomeView$LayoutParams;->x:I

    iget v7, v3, Lcom/android/launcher2/HomeView$LayoutParams;->width:I

    add-int/2addr v6, v7

    iget v7, v3, Lcom/android/launcher2/HomeView$LayoutParams;->y:I

    iget v8, v3, Lcom/android/launcher2/HomeView$LayoutParams;->height:I

    add-int/2addr v7, v8

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/view/View;->layout(IIII)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onOptionSelectedAtoZ()V
    .locals 4

    iget-object v1, p0, Lcom/android/launcher2/MenuView;->mTabManager:Lcom/android/launcher2/tabs/TabManager;

    const-string v2, "APPS"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher2/tabs/TabManager;->getFragmentForTab(Ljava/lang/String;Z)Landroid/app/Fragment;

    move-result-object v0

    instance-of v1, v0, Lcom/android/launcher2/MenuAppsGridFragment;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/android/launcher2/MenuAppsGridFragment;

    invoke-virtual {v0, p0}, Lcom/android/launcher2/MenuAppsGridFragment;->onOptionSelectedAtoZ(Lcom/android/launcher2/MenuView;)V

    :cond_0
    return-void
.end method

.method public onOptionSelectedContactUs()V
    .locals 7

    invoke-virtual {p0}, Lcom/android/launcher2/MenuView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/launcher2/Utilities;->isSamsungMembersEnabled(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v3, "com.sec.android.app.launcher"

    const-string v0, "lwyvkp07y7"

    const-string v1, "TouchWiz home"

    const-string v4, "voc://view/contactUs"

    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v2, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v5, "packageName"

    invoke-virtual {v2, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "appId"

    invoke-virtual {v2, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "appName"

    invoke-virtual {v2, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/launcher2/MenuView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher2/MenuView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v5, "MenuView"

    const-string v6, "ContactUS(SamsungMembers) is not enabled"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onOptionSelectedEdit()V
    .locals 4

    iget-object v1, p0, Lcom/android/launcher2/MenuView;->mTabManager:Lcom/android/launcher2/tabs/TabManager;

    const-string v2, "APPS"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher2/tabs/TabManager;->getFragmentForTab(Ljava/lang/String;Z)Landroid/app/Fragment;

    move-result-object v0

    instance-of v1, v0, Lcom/android/launcher2/MenuAppsGridFragment;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/android/launcher2/MenuAppsGridFragment;

    invoke-virtual {v0, p0}, Lcom/android/launcher2/MenuAppsGridFragment;->onOptionSelectedEdit(Lcom/android/launcher2/MenuView;)V

    :cond_0
    return-void
.end method

.method public onOptionSelectedSearch()V
    .locals 4

    iget-object v1, p0, Lcom/android/launcher2/MenuView;->mTabManager:Lcom/android/launcher2/tabs/TabManager;

    const-string v2, "WIDGETS"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher2/tabs/TabManager;->getFragmentForTab(Ljava/lang/String;Z)Landroid/app/Fragment;

    move-result-object v0

    instance-of v1, v0, Lcom/android/launcher2/MenuWidgetsFragment;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/android/launcher2/MenuWidgetsFragment;

    invoke-virtual {v0, p0}, Lcom/android/launcher2/MenuWidgetsFragment;->onOptionSelectedSearch(Lcom/android/launcher2/MenuView;)V

    :cond_0
    return-void
.end method

.method public onOptionSelectedSearchRecommend()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/launcher2/MenuView;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    const-class v2, Lcom/android/launcher2/AppSearchSettingActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0}, Lcom/android/launcher2/MenuView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public onOptionSelectedUninstall()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/launcher2/MenuView;->isCurrentTabWidgets()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/MenuView;->mTabManager:Lcom/android/launcher2/tabs/TabManager;

    const-string v2, "WIDGETS"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher2/tabs/TabManager;->getFragmentForTab(Ljava/lang/String;Z)Landroid/app/Fragment;

    move-result-object v0

    instance-of v1, v0, Lcom/android/launcher2/MenuWidgetsFragment;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/android/launcher2/MenuWidgetsFragment;

    invoke-virtual {v0, p0}, Lcom/android/launcher2/MenuWidgetsFragment;->onOptionSelectedUninstall(Lcom/android/launcher2/MenuView;)V

    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3

    instance-of v2, p1, Lcom/android/launcher2/MenuView$SavedState;

    if-nez v2, :cond_1

    invoke-super {p0, p1}, Landroid/widget/TabHost;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/android/launcher2/MenuView$SavedState;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-super {p0, v2}, Landroid/widget/TabHost;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    const/4 v0, 0x0

    iget-object v2, v1, Lcom/android/launcher2/MenuView$SavedState;->extraTabTab:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v0, v1, Lcom/android/launcher2/MenuView$SavedState;->extraTabTab:Ljava/lang/String;

    :cond_2
    if-nez v0, :cond_3

    const-string v0, "APPS"

    :cond_3
    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/launcher2/Launcher;->mWidgetsTabShown:Z

    if-eqz v2, :cond_4

    const-string v0, "WIDGETS"

    :cond_4
    invoke-virtual {p0, v0}, Lcom/android/launcher2/MenuView;->setCurrentTabByTag(Ljava/lang/String;)V

    const-string v2, "WIDGETS"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/android/launcher2/MenuView;->setupMargin()V

    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    invoke-super {p0}, Landroid/widget/TabHost;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    new-instance v0, Lcom/android/launcher2/MenuView$SavedState;

    invoke-direct {v0, v1}, Lcom/android/launcher2/MenuView$SavedState;-><init>(Landroid/os/Parcelable;)V

    invoke-virtual {p0}, Lcom/android/launcher2/MenuView;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/launcher2/MenuView$SavedState;->extraTabTab:Ljava/lang/String;

    return-object v0
.end method

.method public onShowAllApps()V
    .locals 5

    iget-object v3, p0, Lcom/android/launcher2/MenuView;->mTabManager:Lcom/android/launcher2/tabs/TabManager;

    invoke-virtual {v3}, Lcom/android/launcher2/tabs/TabManager;->attachFragments()V

    iget-object v3, p0, Lcom/android/launcher2/MenuView;->mMenuViewDarken:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    const v3, 0x7f11009e

    invoke-virtual {p0, v3}, Lcom/android/launcher2/MenuView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher2/MenuView;->getMenuWidgets()Lcom/android/launcher2/MenuWidgets;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher2/MenuWidgets;->getWidgetState()Lcom/android/launcher2/MenuWidgets$WidgetState;

    move-result-object v2

    :cond_0
    sget-object v3, Lcom/android/launcher2/MenuWidgets$WidgetState;->UNINSTALL:Lcom/android/launcher2/MenuWidgets$WidgetState;

    if-ne v2, v3, :cond_2

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/android/launcher2/MenuView;->setupMargin()V

    invoke-virtual {p0}, Lcom/android/launcher2/MenuView;->enterAllStates()V

    return-void

    :cond_2
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public onVisibilityChanged(Landroid/view/View;I)V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0, p1, p2}, Landroid/widget/TabHost;->onVisibilityChanged(Landroid/view/View;I)V

    if-eqz p2, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher2/MenuView;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    if-ne p1, p0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/MenuView;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getTransitionToAllApps()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v1, v3}, Lcom/android/launcher2/Launcher;->setTransitionToAllApps(Z)V

    :cond_0
    return-void

    :cond_1
    move v0, v3

    goto :goto_0
.end method

.method public packagesChanged(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/AppItem;",
            ">;)V"
        }
    .end annotation

    const-string v3, "MenuView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "packageChanged:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/launcher2/MenuView;->isNeedtoCloseFolder()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/MenuView;->closeFolders()V

    :cond_0
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/android/launcher2/MenuView;->setNeedtoCloseFolder(Z)V

    const-string v3, "MenuView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "packagesChanged:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher2/MenuView;->mTabManager:Lcom/android/launcher2/tabs/TabManager;

    invoke-virtual {v5}, Lcom/android/launcher2/tabs/TabManager;->getTabInfo()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/launcher2/MenuView;->mTabManager:Lcom/android/launcher2/tabs/TabManager;

    invoke-virtual {v3}, Lcom/android/launcher2/tabs/TabManager;->getTabInfo()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/tabs/TabManager$TabInfo;

    invoke-virtual {v1}, Lcom/android/launcher2/tabs/TabManager$TabInfo;->getFrag()Landroid/app/Fragment;

    move-result-object v0

    const-string v3, "MenuView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "frag:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, ""

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    instance-of v3, v0, Lcom/android/launcher2/MenuView$AppModelNotifications;

    if-eqz v3, :cond_5

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/AppItem;

    invoke-virtual {v2}, Lcom/android/launcher2/AppItem;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v6, "com.samsung.android.game.gamehome"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "removed"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher2/MenuView;->getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/MenuAppsGrid;->appModelUpdatedForUnHidden()V

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportGameHome()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher2/MenuView;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->getGameHomeManager()Lcom/android/launcher2/gamehome/GameHomeManager;

    move-result-object v3

    if-nez v3, :cond_3

    invoke-virtual {p0}, Lcom/android/launcher2/MenuView;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->initGameHomeManager()V

    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher2/MenuView;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->getGameHomeManager()Lcom/android/launcher2/gamehome/GameHomeManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/gamehome/GameHomeManager;->ResetGameHomeHiddenValue()V

    goto :goto_1

    :cond_4
    check-cast v0, Lcom/android/launcher2/MenuView$AppModelNotifications;

    invoke-interface {v0, p1, p2}, Lcom/android/launcher2/MenuView$AppModelNotifications;->appModelUpdated(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto/16 :goto_0

    :cond_5
    instance-of v3, v0, Lcom/android/launcher2/MenuView$PackageNotifications;

    if-eqz v3, :cond_1

    check-cast v0, Lcom/android/launcher2/MenuView$PackageNotifications;

    invoke-interface {v0, p1}, Lcom/android/launcher2/MenuView$PackageNotifications;->packagesChanged(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    if-eqz p2, :cond_8

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_7
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/AppItem;

    const-string v4, "com.google.android.googlequicksearchbox"

    invoke-virtual {v2}, Lcom/android/launcher2/AppItem;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/android/launcher2/MenuView;->mTitleBarManager:Lcom/android/launcher2/MenuTitleBarManager;

    invoke-virtual {v4}, Lcom/android/launcher2/MenuTitleBarManager;->setVoiceSearch()V

    goto :goto_2

    :cond_8
    return-void
.end method

.method public resetEditTextBg()V
    .locals 7

    const v6, 0x7f020018

    invoke-virtual {p0}, Lcom/android/launcher2/MenuView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v1, 0x0

    :try_start_0
    const-string v3, "show_button_background"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_5

    const/4 v1, 0x1

    :goto_0
    if-eqz v1, :cond_4

    iget-object v3, p0, Lcom/android/launcher2/MenuView;->mEditButtonTextView:Landroid/widget/TextView;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/launcher2/MenuView;->mEditButtonTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setBackgroundResource(I)V

    :cond_0
    iget-object v3, p0, Lcom/android/launcher2/MenuView;->mAtoZButtonTextView:Landroid/widget/TextView;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/launcher2/MenuView;->mAtoZButtonTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setBackgroundResource(I)V

    :cond_1
    iget-object v3, p0, Lcom/android/launcher2/MenuView;->mSearchButtonTextView:Landroid/widget/TextView;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/launcher2/MenuView;->mSearchButtonTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setBackgroundResource(I)V

    :cond_2
    iget-object v3, p0, Lcom/android/launcher2/MenuView;->mAtoZSaveButtonTextView:Landroid/widget/TextView;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/launcher2/MenuView;->mAtoZSaveButtonTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setBackgroundResource(I)V

    :cond_3
    iget-object v3, p0, Lcom/android/launcher2/MenuView;->mAtoZCancelButtonTextView:Landroid/widget/TextView;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/launcher2/MenuView;->mAtoZCancelButtonTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setBackgroundResource(I)V

    :cond_4
    return-void

    :cond_5
    const/4 v1, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v3, "MenuView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setEditTextBg:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public selectAppsTab()V
    .locals 2

    const-string v0, "APPS"

    invoke-virtual {p0, v0}, Lcom/android/launcher2/MenuView;->setCurrentTabByTag(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->isTransitedRotation()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/launcher2/ar/ARHelper;->getInstance()Lcom/android/launcher2/ar/ARHelper;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/ar/ARHelper;->visibilityChanged(I)V

    :cond_0
    return-void
.end method

.method public selectWidgetsTab()V
    .locals 2

    const-string v0, "WIDGETS"

    invoke-virtual {p0, v0}, Lcom/android/launcher2/MenuView;->setCurrentTabByTag(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher2/MenuView;->mSearchButtonTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/MenuView;->mSearchButtonTextView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->isTransitedRotation()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/launcher2/ar/ARHelper;->getInstance()Lcom/android/launcher2/ar/ARHelper;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/launcher2/ar/ARHelper;->visibilityChanged(I)V

    :cond_1
    return-void
.end method

.method public setAccessibilityEnabled(Z)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/android/launcher2/MenuView;->mTabsView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setImportantForAccessibility(I)V

    iget-object v1, p0, Lcom/android/launcher2/MenuView;->mAppsTabTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/MenuView;->mAppsTabTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setImportantForAccessibility(I)V

    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/MenuView;->mWidgetsTabTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher2/MenuView;->mWidgetsTabTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setImportantForAccessibility(I)V

    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/MenuView;->mEditButtonTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/launcher2/MenuView;->mEditButtonTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setImportantForAccessibility(I)V

    :cond_2
    iget-object v1, p0, Lcom/android/launcher2/MenuView;->mSearchButtonTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/launcher2/MenuView;->mSearchButtonTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setImportantForAccessibility(I)V

    :cond_3
    return-void

    :cond_4
    const/4 v0, 0x2

    goto :goto_0
.end method

.method setArabicLayout()V
    .locals 10

    const v9, 0x800003

    const/4 v7, 0x1

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportRTLLayout()Z

    move-result v8

    if-nez v8, :cond_a

    invoke-static {}, Lcom/android/launcher2/Utilities;->isLayoutRtl()Z

    move-result v8

    if-eqz v8, :cond_a

    move v2, v7

    :goto_0
    if-eqz v2, :cond_9

    invoke-virtual {p0}, Lcom/android/launcher2/MenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v4, v8, Landroid/content/res/Configuration;->orientation:I

    const v8, 0x7f11009e

    invoke-virtual {p0, v8}, Lcom/android/launcher2/MenuView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    if-eq v4, v7, :cond_0

    iput v9, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    :cond_0
    invoke-virtual {v6, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    iget-object v8, p0, Lcom/android/launcher2/MenuView;->mMenuEditContainer:Landroid/view/View;

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/android/launcher2/MenuView;->mMenuEditContainer:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    if-ne v4, v7, :cond_2

    iput v9, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    :cond_2
    iget-object v8, p0, Lcom/android/launcher2/MenuView;->mMenuEditContainer:Landroid/view/View;

    invoke-virtual {v8, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    const v8, 0x7f1100a2

    invoke-virtual {p0, v8}, Lcom/android/launcher2/MenuView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    if-ne v4, v7, :cond_4

    iput v9, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    :cond_4
    invoke-virtual {v1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_5
    const v8, 0x7f1100a1

    invoke-virtual {p0, v8}, Lcom/android/launcher2/MenuView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    if-ne v4, v7, :cond_6

    iput v9, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    :cond_6
    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_7
    const v8, 0x7f1100a0

    invoke-virtual {p0, v8}, Lcom/android/launcher2/MenuView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_9

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    if-ne v4, v7, :cond_8

    iput v9, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    :cond_8
    invoke-virtual {v5, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_9
    return-void

    :cond_a
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public setCurrentQuickoptionsPopup(Lcom/android/launcher2/QuickOptionsPopup;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/MenuView;->mQuickOptionsPopup:Lcom/android/launcher2/QuickOptionsPopup;

    return-void
.end method

.method public setEditTextBg()V
    .locals 7

    const v6, 0x7f02001b

    invoke-virtual {p0}, Lcom/android/launcher2/MenuView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v1, 0x0

    :try_start_0
    const-string v3, "show_button_background"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_5

    const/4 v1, 0x1

    :goto_0
    if-eqz v1, :cond_4

    iget-object v3, p0, Lcom/android/launcher2/MenuView;->mEditButtonTextView:Landroid/widget/TextView;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/launcher2/MenuView;->mEditButtonTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setBackgroundResource(I)V

    :cond_0
    iget-object v3, p0, Lcom/android/launcher2/MenuView;->mAtoZButtonTextView:Landroid/widget/TextView;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/launcher2/MenuView;->mAtoZButtonTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setBackgroundResource(I)V

    :cond_1
    iget-object v3, p0, Lcom/android/launcher2/MenuView;->mSearchButtonTextView:Landroid/widget/TextView;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/launcher2/MenuView;->mSearchButtonTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setBackgroundResource(I)V

    :cond_2
    iget-object v3, p0, Lcom/android/launcher2/MenuView;->mAtoZSaveButtonTextView:Landroid/widget/TextView;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/launcher2/MenuView;->mAtoZSaveButtonTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setBackgroundResource(I)V

    :cond_3
    iget-object v3, p0, Lcom/android/launcher2/MenuView;->mAtoZCancelButtonTextView:Landroid/widget/TextView;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/launcher2/MenuView;->mAtoZCancelButtonTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setBackgroundResource(I)V

    :cond_4
    return-void

    :cond_5
    const/4 v1, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v3, "MenuView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setEditTextBg:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setEditTextBg(Z)V
    .locals 3

    const v2, 0x7f02001b

    const v1, 0x7f020018

    if-eqz p1, :cond_5

    iget-object v0, p0, Lcom/android/launcher2/MenuView;->mEditButtonTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/MenuView;->mEditButtonTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/MenuView;->mAtoZButtonTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/MenuView;->mAtoZButtonTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/MenuView;->mSearchButtonTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher2/MenuView;->mSearchButtonTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    :cond_2
    iget-object v0, p0, Lcom/android/launcher2/MenuView;->mAtoZSaveButtonTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/launcher2/MenuView;->mAtoZSaveButtonTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    :cond_3
    iget-object v0, p0, Lcom/android/launcher2/MenuView;->mAtoZCancelButtonTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/launcher2/MenuView;->mAtoZCancelButtonTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    :cond_4
    :goto_0
    return-void

    :cond_5
    iget-object v0, p0, Lcom/android/launcher2/MenuView;->mEditButtonTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/launcher2/MenuView;->mEditButtonTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    :cond_6
    iget-object v0, p0, Lcom/android/launcher2/MenuView;->mAtoZButtonTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/launcher2/MenuView;->mAtoZButtonTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    :cond_7
    iget-object v0, p0, Lcom/android/launcher2/MenuView;->mSearchButtonTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/launcher2/MenuView;->mSearchButtonTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    :cond_8
    iget-object v0, p0, Lcom/android/launcher2/MenuView;->mAtoZSaveButtonTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/launcher2/MenuView;->mAtoZSaveButtonTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    :cond_9
    iget-object v0, p0, Lcom/android/launcher2/MenuView;->mAtoZCancelButtonTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/launcher2/MenuView;->mAtoZCancelButtonTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public setMenuButtonsVisibility(Z)V
    .locals 2

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/launcher2/MenuView;->mMenuEditContainer:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/MenuView;->mMenuEditContainer:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public setViewType(Lcom/android/launcher2/MenuView$ViewType;)V
    .locals 5

    const-string v2, "MenuView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setViewType. old: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher2/MenuView;->mViewType:Lcom/android/launcher2/MenuView$ViewType;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", new: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/launcher2/MenuView;->mViewType:Lcom/android/launcher2/MenuView$ViewType;

    if-ne v2, p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-object p1, p0, Lcom/android/launcher2/MenuView;->mViewType:Lcom/android/launcher2/MenuView$ViewType;

    invoke-virtual {p0}, Lcom/android/launcher2/MenuView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "com.sec.android.app.launcher.prefs"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "MenuView.ViewType"

    iget-object v3, p0, Lcom/android/launcher2/MenuView;->mViewType:Lcom/android/launcher2/MenuView$ViewType;

    invoke-virtual {v3}, Lcom/android/launcher2/MenuView$ViewType;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string v2, "MenuView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "saved view Type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher2/MenuView;->mViewType:Lcom/android/launcher2/MenuView$ViewType;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", new: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/launcher2/MenuView;->setAppNormalizer()V

    iget-object v2, p0, Lcom/android/launcher2/MenuView;->mTabManager:Lcom/android/launcher2/tabs/TabManager;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/launcher2/MenuView$4;->$SwitchMap$com$android$launcher2$MenuView$ViewType:[I

    iget-object v3, p0, Lcom/android/launcher2/MenuView;->mViewType:Lcom/android/launcher2/MenuView$ViewType;

    invoke-virtual {v3}, Lcom/android/launcher2/MenuView$ViewType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/launcher2/MenuView;->getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher2/MenuView;->mViewType:Lcom/android/launcher2/MenuView$ViewType;

    invoke-virtual {v2, v3}, Lcom/android/launcher2/MenuAppsGrid;->setViewType(Lcom/android/launcher2/MenuView$ViewType;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
