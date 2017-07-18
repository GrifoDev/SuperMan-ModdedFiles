.class public Lcom/android/launcher2/tabs/TabManager;
.super Ljava/lang/Object;
.source "TabManager.java"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/tabs/TabManager$DummyTabFactory;,
        Lcom/android/launcher2/tabs/TabManager$TabInfo;
    }
.end annotation


# static fields
.field private static final DEBUGGABLE:Z

.field private static final TAG:Ljava/lang/String; = "TabManager"


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private final mContainerId:I

.field private mEndTabKeyListener:Landroid/view/View$OnKeyListener;

.field private mLastTab:Lcom/android/launcher2/tabs/TabManager$TabInfo;

.field private final mTabHost:Lcom/android/launcher2/MenuView;

.field private mTabWidget:Landroid/widget/TabWidget;

.field private final mTabs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/launcher2/tabs/TabManager$TabInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/android/launcher2/Utilities;->DEBUGGABLE()Z

    move-result v0

    sput-boolean v0, Lcom/android/launcher2/tabs/TabManager;->DEBUGGABLE:Z

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/android/launcher2/MenuView;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/tabs/TabManager;->mTabs:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/android/launcher2/tabs/TabManager;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/android/launcher2/tabs/TabManager;->mTabHost:Lcom/android/launcher2/MenuView;

    iput p3, p0, Lcom/android/launcher2/tabs/TabManager;->mContainerId:I

    iget-object v0, p0, Lcom/android/launcher2/tabs/TabManager;->mTabHost:Lcom/android/launcher2/MenuView;

    invoke-virtual {v0, p0}, Lcom/android/launcher2/MenuView;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    return-void
.end method

.method private onAddTab(Landroid/app/Fragment;)V
    .locals 2

    instance-of v0, p1, Lcom/android/launcher2/MenuView$NeedsTabHost;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/launcher2/MenuView$NeedsTabHost;

    iget-object v1, p0, Lcom/android/launcher2/tabs/TabManager;->mTabHost:Lcom/android/launcher2/MenuView;

    invoke-interface {v0, v1}, Lcom/android/launcher2/MenuView$NeedsTabHost;->setTabHost(Lcom/android/launcher2/MenuView;)V

    invoke-virtual {p1}, Landroid/app/Fragment;->isHidden()Z

    move-result v0

    if-eqz v0, :cond_1

    check-cast p1, Lcom/android/launcher2/MenuView$NeedsTabHost;

    iget-object v0, p0, Lcom/android/launcher2/tabs/TabManager;->mTabHost:Lcom/android/launcher2/MenuView;

    invoke-interface {p1, v0}, Lcom/android/launcher2/MenuView$NeedsTabHost;->onHideTab(Lcom/android/launcher2/MenuView;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    check-cast p1, Lcom/android/launcher2/MenuView$NeedsTabHost;

    iget-object v0, p0, Lcom/android/launcher2/tabs/TabManager;->mTabHost:Lcom/android/launcher2/MenuView;

    invoke-interface {p1, v0}, Lcom/android/launcher2/MenuView$NeedsTabHost;->onShowTab(Lcom/android/launcher2/MenuView;)V

    goto :goto_0
.end method

.method private onHideTab(Landroid/app/Fragment;)V
    .locals 1

    instance-of v0, p1, Lcom/android/launcher2/MenuView$NeedsTabHost;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/launcher2/MenuView$NeedsTabHost;

    iget-object v0, p0, Lcom/android/launcher2/tabs/TabManager;->mTabHost:Lcom/android/launcher2/MenuView;

    invoke-interface {p1, v0}, Lcom/android/launcher2/MenuView$NeedsTabHost;->onHideTab(Lcom/android/launcher2/MenuView;)V

    :cond_0
    return-void
.end method

.method private onShowTab(Landroid/app/Fragment;)V
    .locals 1

    instance-of v0, p1, Lcom/android/launcher2/MenuView$NeedsTabHost;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/launcher2/MenuView$NeedsTabHost;

    iget-object v0, p0, Lcom/android/launcher2/tabs/TabManager;->mTabHost:Lcom/android/launcher2/MenuView;

    invoke-interface {p1, v0}, Lcom/android/launcher2/MenuView$NeedsTabHost;->onShowTab(Lcom/android/launcher2/MenuView;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public addTab(Landroid/widget/TabHost$TabSpec;Ljava/lang/Class;Landroid/os/Bundle;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/TabHost$TabSpec;",
            "Ljava/lang/Class",
            "<*>;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    new-instance v3, Lcom/android/launcher2/tabs/TabManager$DummyTabFactory;

    iget-object v4, p0, Lcom/android/launcher2/tabs/TabManager;->mActivity:Landroid/app/Activity;

    invoke-direct {v3, v4}, Lcom/android/launcher2/tabs/TabManager$DummyTabFactory;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v3}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    new-instance v2, Lcom/android/launcher2/tabs/TabManager$TabInfo;

    invoke-virtual {p1}, Landroid/widget/TabHost$TabSpec;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, p2, p3}, Lcom/android/launcher2/tabs/TabManager$TabInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)V

    iget-object v3, p0, Lcom/android/launcher2/tabs/TabManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    iget-object v3, v2, Lcom/android/launcher2/tabs/TabManager$TabInfo;->tag:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/launcher2/tabs/TabManager$TabInfo;->access$002(Lcom/android/launcher2/tabs/TabManager$TabInfo;Landroid/app/Fragment;)Landroid/app/Fragment;

    invoke-static {v2}, Lcom/android/launcher2/tabs/TabManager$TabInfo;->access$000(Lcom/android/launcher2/tabs/TabManager$TabInfo;)Landroid/app/Fragment;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-static {v2}, Lcom/android/launcher2/tabs/TabManager$TabInfo;->access$000(Lcom/android/launcher2/tabs/TabManager$TabInfo;)Landroid/app/Fragment;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Fragment;->isDetached()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v3

    invoke-static {v2}, Lcom/android/launcher2/tabs/TabManager$TabInfo;->access$000(Lcom/android/launcher2/tabs/TabManager$TabInfo;)Landroid/app/Fragment;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentTransaction;->commit()I

    :cond_0
    invoke-static {v2}, Lcom/android/launcher2/tabs/TabManager$TabInfo;->access$000(Lcom/android/launcher2/tabs/TabManager$TabInfo;)Landroid/app/Fragment;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/launcher2/tabs/TabManager;->onAddTab(Landroid/app/Fragment;)V

    iget-object v3, p0, Lcom/android/launcher2/tabs/TabManager;->mTabs:Ljava/util/HashMap;

    iget-object v4, v2, Lcom/android/launcher2/tabs/TabManager$TabInfo;->tag:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/launcher2/tabs/TabManager;->mTabHost:Lcom/android/launcher2/MenuView;

    invoke-virtual {v3, p1}, Lcom/android/launcher2/MenuView;->addTab(Landroid/widget/TabHost$TabSpec;)V

    iget-object v3, p0, Lcom/android/launcher2/tabs/TabManager;->mTabHost:Lcom/android/launcher2/MenuView;

    invoke-virtual {v3}, Lcom/android/launcher2/MenuView;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher2/tabs/TabManager;->mTabWidget:Landroid/widget/TabWidget;

    iget-object v3, p0, Lcom/android/launcher2/tabs/TabManager;->mEndTabKeyListener:Landroid/view/View$OnKeyListener;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/launcher2/tabs/TabManager;->mTabWidget:Landroid/widget/TabWidget;

    invoke-virtual {v3}, Landroid/widget/TabWidget;->getChildCount()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    if-lez v0, :cond_1

    iget-object v3, p0, Lcom/android/launcher2/tabs/TabManager;->mTabWidget:Landroid/widget/TabWidget;

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {v3, v4}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    :cond_1
    iget-object v3, p0, Lcom/android/launcher2/tabs/TabManager;->mTabWidget:Landroid/widget/TabWidget;

    invoke-virtual {v3, v0}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher2/tabs/TabManager;->mEndTabKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    :cond_2
    return-void
.end method

.method public attachFragments()V
    .locals 0

    return-void
.end method

.method public getCurrentlyShownFragment()Landroid/app/Fragment;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/tabs/TabManager;->mLastTab:Lcom/android/launcher2/tabs/TabManager$TabInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/tabs/TabManager;->mLastTab:Lcom/android/launcher2/tabs/TabManager$TabInfo;

    invoke-static {v0}, Lcom/android/launcher2/tabs/TabManager$TabInfo;->access$000(Lcom/android/launcher2/tabs/TabManager$TabInfo;)Landroid/app/Fragment;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFragmentForTab(Ljava/lang/String;Z)Landroid/app/Fragment;
    .locals 6

    iget-object v2, p0, Lcom/android/launcher2/tabs/TabManager;->mTabs:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/tabs/TabManager$TabInfo;

    if-nez v1, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    invoke-static {v1}, Lcom/android/launcher2/tabs/TabManager$TabInfo;->access$000(Lcom/android/launcher2/tabs/TabManager$TabInfo;)Landroid/app/Fragment;

    move-result-object v2

    if-nez v2, :cond_1

    if-eqz p2, :cond_1

    iget-object v2, p0, Lcom/android/launcher2/tabs/TabManager;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/android/launcher2/tabs/TabManager$TabInfo;->access$100(Lcom/android/launcher2/tabs/TabManager$TabInfo;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1}, Lcom/android/launcher2/tabs/TabManager$TabInfo;->access$200(Lcom/android/launcher2/tabs/TabManager$TabInfo;)Landroid/os/Bundle;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/launcher2/tabs/TabManager$TabInfo;->access$002(Lcom/android/launcher2/tabs/TabManager$TabInfo;Landroid/app/Fragment;)Landroid/app/Fragment;

    iget-object v2, p0, Lcom/android/launcher2/tabs/TabManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    iget v3, p0, Lcom/android/launcher2/tabs/TabManager;->mContainerId:I

    invoke-static {v1}, Lcom/android/launcher2/tabs/TabManager$TabInfo;->access$000(Lcom/android/launcher2/tabs/TabManager$TabInfo;)Landroid/app/Fragment;

    move-result-object v4

    iget-object v5, v1, Lcom/android/launcher2/tabs/TabManager$TabInfo;->tag:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-static {v1}, Lcom/android/launcher2/tabs/TabManager$TabInfo;->access$000(Lcom/android/launcher2/tabs/TabManager$TabInfo;)Landroid/app/Fragment;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    iget-object v2, p0, Lcom/android/launcher2/tabs/TabManager;->mActivity:Landroid/app/Activity;

    check-cast v2, Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->isResumed_()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    :goto_1
    invoke-static {v1}, Lcom/android/launcher2/tabs/TabManager$TabInfo;->access$000(Lcom/android/launcher2/tabs/TabManager$TabInfo;)Landroid/app/Fragment;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/launcher2/tabs/TabManager;->onAddTab(Landroid/app/Fragment;)V

    :cond_1
    invoke-static {v1}, Lcom/android/launcher2/tabs/TabManager$TabInfo;->access$000(Lcom/android/launcher2/tabs/TabManager$TabInfo;)Landroid/app/Fragment;

    move-result-object v2

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    goto :goto_1
.end method

.method public getTabInfo()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/launcher2/tabs/TabManager$TabInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/launcher2/tabs/TabManager;->mTabs:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public onTabChanged(Ljava/lang/String;)V
    .locals 9

    iget-object v6, p0, Lcom/android/launcher2/tabs/TabManager;->mTabs:Ljava/util/HashMap;

    invoke-virtual {v6, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/tabs/TabManager$TabInfo;

    const/4 v6, 0x0

    sput-boolean v6, Lcom/android/launcher2/MenuView;->onShowAllAppsClicked:Z

    iget-object v6, p0, Lcom/android/launcher2/tabs/TabManager;->mLastTab:Lcom/android/launcher2/tabs/TabManager$TabInfo;

    if-eq v6, v5, :cond_9

    iget-object v6, p0, Lcom/android/launcher2/tabs/TabManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    iget-object v6, p0, Lcom/android/launcher2/tabs/TabManager;->mLastTab:Lcom/android/launcher2/tabs/TabManager$TabInfo;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/launcher2/tabs/TabManager;->mLastTab:Lcom/android/launcher2/tabs/TabManager$TabInfo;

    invoke-static {v6}, Lcom/android/launcher2/tabs/TabManager$TabInfo;->access$000(Lcom/android/launcher2/tabs/TabManager$TabInfo;)Landroid/app/Fragment;

    move-result-object v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/launcher2/tabs/TabManager;->mLastTab:Lcom/android/launcher2/tabs/TabManager$TabInfo;

    invoke-static {v6}, Lcom/android/launcher2/tabs/TabManager$TabInfo;->access$000(Lcom/android/launcher2/tabs/TabManager$TabInfo;)Landroid/app/Fragment;

    move-result-object v6

    instance-of v6, v6, Lcom/android/launcher2/MenuWidgetsFragment;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/launcher2/tabs/TabManager;->mLastTab:Lcom/android/launcher2/tabs/TabManager$TabInfo;

    invoke-static {v6}, Lcom/android/launcher2/tabs/TabManager$TabInfo;->access$000(Lcom/android/launcher2/tabs/TabManager$TabInfo;)Landroid/app/Fragment;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/MenuWidgetsFragment;

    invoke-virtual {v6}, Lcom/android/launcher2/MenuWidgetsFragment;->getMenuWidgets()Lcom/android/launcher2/MenuWidgets;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/android/launcher2/MenuWidgets;->changeToWidgetStateNormal()V

    :cond_0
    iget-object v6, p0, Lcom/android/launcher2/tabs/TabManager;->mLastTab:Lcom/android/launcher2/tabs/TabManager$TabInfo;

    invoke-static {v6}, Lcom/android/launcher2/tabs/TabManager$TabInfo;->access$000(Lcom/android/launcher2/tabs/TabManager$TabInfo;)Landroid/app/Fragment;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    iget-object v6, p0, Lcom/android/launcher2/tabs/TabManager;->mLastTab:Lcom/android/launcher2/tabs/TabManager$TabInfo;

    invoke-static {v6}, Lcom/android/launcher2/tabs/TabManager$TabInfo;->access$000(Lcom/android/launcher2/tabs/TabManager$TabInfo;)Landroid/app/Fragment;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/launcher2/tabs/TabManager;->onHideTab(Landroid/app/Fragment;)V

    :cond_1
    if-eqz v5, :cond_a

    invoke-static {v5}, Lcom/android/launcher2/tabs/TabManager$TabInfo;->access$000(Lcom/android/launcher2/tabs/TabManager$TabInfo;)Landroid/app/Fragment;

    move-result-object v6

    if-nez v6, :cond_5

    iget-object v6, p0, Lcom/android/launcher2/tabs/TabManager;->mActivity:Landroid/app/Activity;

    invoke-static {v5}, Lcom/android/launcher2/tabs/TabManager$TabInfo;->access$100(Lcom/android/launcher2/tabs/TabManager$TabInfo;)Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5}, Lcom/android/launcher2/tabs/TabManager$TabInfo;->access$200(Lcom/android/launcher2/tabs/TabManager$TabInfo;)Landroid/os/Bundle;

    move-result-object v8

    invoke-static {v6, v7, v8}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/launcher2/tabs/TabManager$TabInfo;->access$002(Lcom/android/launcher2/tabs/TabManager$TabInfo;Landroid/app/Fragment;)Landroid/app/Fragment;

    iget v6, p0, Lcom/android/launcher2/tabs/TabManager;->mContainerId:I

    invoke-static {v5}, Lcom/android/launcher2/tabs/TabManager$TabInfo;->access$000(Lcom/android/launcher2/tabs/TabManager$TabInfo;)Landroid/app/Fragment;

    move-result-object v7

    iget-object v8, v5, Lcom/android/launcher2/tabs/TabManager$TabInfo;->tag:Ljava/lang/String;

    invoke-virtual {v1, v6, v7, v8}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    invoke-static {v5}, Lcom/android/launcher2/tabs/TabManager$TabInfo;->access$000(Lcom/android/launcher2/tabs/TabManager$TabInfo;)Landroid/app/Fragment;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/launcher2/tabs/TabManager;->onAddTab(Landroid/app/Fragment;)V

    sget-boolean v6, Lcom/android/launcher2/tabs/TabManager;->DEBUGGABLE:Z

    if-eqz v6, :cond_2

    const-string v6, "TabManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onTabChanged() adding class "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v5}, Lcom/android/launcher2/tabs/TabManager$TabInfo;->access$100(Lcom/android/launcher2/tabs/TabManager$TabInfo;)Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " obj "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v5}, Lcom/android/launcher2/tabs/TabManager$TabInfo;->access$000(Lcom/android/launcher2/tabs/TabManager$TabInfo;)Landroid/app/Fragment;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    invoke-static {v5}, Lcom/android/launcher2/tabs/TabManager$TabInfo;->access$000(Lcom/android/launcher2/tabs/TabManager$TabInfo;)Landroid/app/Fragment;

    move-result-object v6

    instance-of v6, v6, Lcom/android/launcher2/MenuAppsGridFragment;

    if-eqz v6, :cond_8

    invoke-static {v5}, Lcom/android/launcher2/tabs/TabManager$TabInfo;->access$000(Lcom/android/launcher2/tabs/TabManager$TabInfo;)Landroid/app/Fragment;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/MenuAppsGridFragment;

    invoke-virtual {v6}, Lcom/android/launcher2/MenuAppsGridFragment;->getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v4

    if-eqz v4, :cond_7

    sget-boolean v6, Lcom/android/launcher2/tabs/TabManager;->DEBUGGABLE:Z

    if-eqz v6, :cond_3

    const-string v6, "TabManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onTabChanged() menu pages: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Lcom/android/launcher2/MenuAppsGrid;->getChildCount()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v4}, Lcom/android/launcher2/MenuAppsGrid;->getChildCount()I

    move-result v6

    if-ge v2, v6, :cond_8

    invoke-virtual {v4, v2}, Lcom/android/launcher2/MenuAppsGrid;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayoutMenu;

    sget-boolean v6, Lcom/android/launcher2/tabs/TabManager;->DEBUGGABLE:Z

    if-eqz v6, :cond_4

    const-string v6, "TabManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onTabChanged() Page "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " contains item "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutMenu;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    invoke-static {v5}, Lcom/android/launcher2/tabs/TabManager$TabInfo;->access$000(Lcom/android/launcher2/tabs/TabManager$TabInfo;)Landroid/app/Fragment;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Fragment;->isDetached()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-static {v5}, Lcom/android/launcher2/tabs/TabManager$TabInfo;->access$000(Lcom/android/launcher2/tabs/TabManager$TabInfo;)Landroid/app/Fragment;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/app/FragmentTransaction;->attach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    :cond_6
    invoke-static {v5}, Lcom/android/launcher2/tabs/TabManager$TabInfo;->access$000(Lcom/android/launcher2/tabs/TabManager$TabInfo;)Landroid/app/Fragment;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/app/FragmentTransaction;->show(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    invoke-static {v5}, Lcom/android/launcher2/tabs/TabManager$TabInfo;->access$000(Lcom/android/launcher2/tabs/TabManager$TabInfo;)Landroid/app/Fragment;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/launcher2/tabs/TabManager;->onShowTab(Landroid/app/Fragment;)V

    sget-boolean v6, Lcom/android/launcher2/tabs/TabManager;->DEBUGGABLE:Z

    if-eqz v6, :cond_2

    const-string v6, "TabManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onTabChanged() show fragment "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v5}, Lcom/android/launcher2/tabs/TabManager$TabInfo;->access$000(Lcom/android/launcher2/tabs/TabManager$TabInfo;)Landroid/app/Fragment;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_7
    sget-boolean v6, Lcom/android/launcher2/tabs/TabManager;->DEBUGGABLE:Z

    if-eqz v6, :cond_8

    const-string v6, "TabManager"

    const-string v7, "onTabChanged() no MenuAppsGrid!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    :goto_2
    iput-object v5, p0, Lcom/android/launcher2/tabs/TabManager;->mLastTab:Lcom/android/launcher2/tabs/TabManager$TabInfo;

    iget-object v6, p0, Lcom/android/launcher2/tabs/TabManager;->mActivity:Landroid/app/Activity;

    check-cast v6, Lcom/android/launcher2/Launcher;

    invoke-virtual {v6}, Lcom/android/launcher2/Launcher;->isResumed_()Z

    move-result v6

    if-nez v6, :cond_b

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    :cond_9
    :goto_3
    return-void

    :cond_a
    sget-boolean v6, Lcom/android/launcher2/tabs/TabManager;->DEBUGGABLE:Z

    if-eqz v6, :cond_8

    const-string v6, "TabManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onTabChanged() no tab for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_b
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    goto :goto_3
.end method

.method public setLastTabKeyListener(Landroid/view/View$OnKeyListener;)V
    .locals 2

    iput-object p1, p0, Lcom/android/launcher2/tabs/TabManager;->mEndTabKeyListener:Landroid/view/View$OnKeyListener;

    iget-object v0, p0, Lcom/android/launcher2/tabs/TabManager;->mTabWidget:Landroid/widget/TabWidget;

    iget-object v1, p0, Lcom/android/launcher2/tabs/TabManager;->mTabWidget:Landroid/widget/TabWidget;

    invoke-virtual {v1}, Landroid/widget/TabWidget;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/tabs/TabManager;->mEndTabKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v0, p0, Lcom/android/launcher2/tabs/TabManager;->mTabWidget:Landroid/widget/TabWidget;

    iget-object v1, p0, Lcom/android/launcher2/tabs/TabManager;->mTabWidget:Landroid/widget/TabWidget;

    invoke-virtual {v1}, Landroid/widget/TabWidget;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v1}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/tabs/TabManager;->mEndTabKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    return-void
.end method
