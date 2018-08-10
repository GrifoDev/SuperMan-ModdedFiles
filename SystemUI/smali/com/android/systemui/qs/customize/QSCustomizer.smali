.class public Lcom/android/systemui/qs/customize/QSCustomizer;
.super Landroid/widget/LinearLayout;
.source "QSCustomizer.java"

# interfaces
.implements Landroid/widget/Toolbar$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/customize/QSCustomizer$1;,
        Lcom/android/systemui/qs/customize/QSCustomizer$2;
    }
.end annotation


# instance fields
.field private isShown:Z

.field private final mClipper:Lcom/android/systemui/qs/QSDetailClipper;

.field private final mCollapseAnimationListener:Landroid/animation/Animator$AnimatorListener;

.field private mCustomizing:Z

.field private final mExpandAnimationListener:Landroid/animation/Animator$AnimatorListener;

.field private mFinishedFetchingTiles:Z

.field private mHost:Lcom/android/systemui/qs/QSTileHost;

.field private final mKeyguardCallback:Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;

.field private mNotifQsContainer:Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

.field private mOpening:Z

.field private mQs:Lcom/android/systemui/plugins/qs/QS;

.field private mRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field private mTileAdapter:Lcom/android/systemui/qs/customize/TileAdapter;

.field private mToolbar:Landroid/widget/Toolbar;

.field private mX:I

.field private mY:I


# direct methods
.method static synthetic -get0(Lcom/android/systemui/qs/customize/QSCustomizer;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->isShown:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/systemui/qs/customize/QSCustomizer;)Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mNotifQsContainer:Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/qs/customize/QSCustomizer;)Landroid/support/v7/widget/RecyclerView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/qs/customize/QSCustomizer;)Lcom/android/systemui/qs/customize/TileAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mTileAdapter:Lcom/android/systemui/qs/customize/TileAdapter;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/qs/customize/QSCustomizer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mOpening:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/qs/customize/QSCustomizer;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/customize/QSCustomizer;->setCustomizing(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    new-instance v3, Landroid/view/ContextThemeWrapper;

    const v4, 0x7f13028e

    invoke-direct {v3, p1, v4}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {p0, v3, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean v7, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mFinishedFetchingTiles:Z

    new-instance v3, Lcom/android/systemui/qs/customize/-$Lambda$OFSFzbLV5l5KmOQGG6P-9IOaSaM;

    invoke-direct {v3, p0}, Lcom/android/systemui/qs/customize/-$Lambda$OFSFzbLV5l5KmOQGG6P-9IOaSaM;-><init>(Ljava/lang/Object;)V

    iput-object v3, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mKeyguardCallback:Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;

    new-instance v3, Lcom/android/systemui/qs/customize/QSCustomizer$1;

    invoke-direct {v3, p0}, Lcom/android/systemui/qs/customize/QSCustomizer$1;-><init>(Lcom/android/systemui/qs/customize/QSCustomizer;)V

    iput-object v3, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mExpandAnimationListener:Landroid/animation/Animator$AnimatorListener;

    new-instance v3, Lcom/android/systemui/qs/customize/QSCustomizer$2;

    invoke-direct {v3, p0}, Lcom/android/systemui/qs/customize/QSCustomizer$2;-><init>(Lcom/android/systemui/qs/customize/QSCustomizer;)V

    iput-object v3, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mCollapseAnimationListener:Landroid/animation/Animator$AnimatorListener;

    new-instance v3, Lcom/android/systemui/qs/QSDetailClipper;

    invoke-direct {v3, p0}, Lcom/android/systemui/qs/QSDetailClipper;-><init>(Landroid/view/View;)V

    iput-object v3, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mClipper:Lcom/android/systemui/qs/QSDetailClipper;

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/QSCustomizer;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0d0135

    invoke-virtual {v3, v4, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const v3, 0x10201b9

    invoke-virtual {p0, v3}, Lcom/android/systemui/qs/customize/QSCustomizer;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Toolbar;

    iput-object v3, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mToolbar:Landroid/widget/Toolbar;

    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    iget-object v3, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const v4, 0x101030b

    invoke-virtual {v3, v4, v2, v8}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget-object v3, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/QSCustomizer;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, v2, Landroid/util/TypedValue;->resourceId:I

    iget-object v6, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mToolbar:Landroid/widget/Toolbar;

    new-instance v4, Lcom/android/systemui/qs/customize/QSCustomizer$3;

    invoke-direct {v4, p0}, Lcom/android/systemui/qs/customize/QSCustomizer$3;-><init>(Lcom/android/systemui/qs/customize/QSCustomizer;)V

    invoke-virtual {v3, v4}, Landroid/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v3, p0}, Landroid/widget/Toolbar;->setOnMenuItemClickListener(Landroid/widget/Toolbar$OnMenuItemClickListener;)V

    iget-object v3, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v3}, Landroid/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mContext:Landroid/content/Context;

    const v5, 0x104089c

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v7, v8, v7, v4}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    iget-object v3, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mToolbar:Landroid/widget/Toolbar;

    const v4, 0x7f120892

    invoke-virtual {v3, v4}, Landroid/widget/Toolbar;->setTitle(I)V

    const v3, 0x102000a

    invoke-virtual {p0, v3}, Lcom/android/systemui/qs/customize/QSCustomizer;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/RecyclerView;

    iput-object v3, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v3, Lcom/android/systemui/qs/customize/TileAdapter;

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/QSCustomizer;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/systemui/qs/customize/TileAdapter;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mTileAdapter:Lcom/android/systemui/qs/customize/TileAdapter;

    iget-object v3, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mTileAdapter:Lcom/android/systemui/qs/customize/TileAdapter;

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    iget-object v3, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mTileAdapter:Lcom/android/systemui/qs/customize/TileAdapter;

    invoke-virtual {v3}, Lcom/android/systemui/qs/customize/TileAdapter;->getItemTouchHelper()Landroid/support/v7/widget/helper/ItemTouchHelper;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/helper/ItemTouchHelper;->attachToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    new-instance v1, Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/QSCustomizer;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x3

    invoke-direct {v1, v3, v4}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    iget-object v3, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mTileAdapter:Lcom/android/systemui/qs/customize/TileAdapter;

    invoke-virtual {v3}, Lcom/android/systemui/qs/customize/TileAdapter;->getSizeLookup()Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/support/v7/widget/GridLayoutManager;->setSpanSizeLookup(Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;)V

    iget-object v3, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    iget-object v3, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mTileAdapter:Lcom/android/systemui/qs/customize/TileAdapter;

    invoke-virtual {v4}, Lcom/android/systemui/qs/customize/TileAdapter;->getItemDecoration()Landroid/support/v7/widget/RecyclerView$ItemDecoration;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    new-instance v0, Landroid/support/v7/widget/DefaultItemAnimator;

    invoke-direct {v0}, Landroid/support/v7/widget/DefaultItemAnimator;-><init>()V

    const-wide/16 v4, 0x96

    invoke-virtual {v0, v4, v5}, Landroid/support/v7/widget/DefaultItemAnimator;->setMoveDuration(J)V

    iget-object v3, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3, v0}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    return-void
.end method

.method private reset()V
    .locals 6

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mContext:Landroid/content/Context;

    const v4, 0x7f12092e

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v3, 0x0

    array-length v5, v4

    :goto_0
    if-ge v3, v5, :cond_0

    aget-object v1, v4, v3

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mTileAdapter:Lcom/android/systemui/qs/customize/TileAdapter;

    iget-object v4, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {v3, v4, v2}, Lcom/android/systemui/qs/customize/TileAdapter;->resetTileSpecs(Lcom/android/systemui/qs/QSTileHost;Ljava/util/List;)V

    return-void
.end method

.method private save()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mFinishedFetchingTiles:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mTileAdapter:Lcom/android/systemui/qs/customize/TileAdapter;

    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/customize/TileAdapter;->saveSpecs(Lcom/android/systemui/qs/QSTileHost;)V

    :cond_0
    return-void
.end method

.method private setCustomizing(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mCustomizing:Z

    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v0}, Lcom/android/systemui/plugins/qs/QS;->notifyCustomizeChanged()V

    return-void
.end method


# virtual methods
.method public hide(II)V
    .locals 5

    const/4 v4, 0x0

    iget-boolean v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->isShown:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/QSCustomizer;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x166

    invoke-static {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->hidden(Landroid/content/Context;I)V

    iput-boolean v4, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->isShown:Z

    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v0}, Landroid/widget/Toolbar;->dismissPopupMenus()V

    invoke-direct {p0, v4}, Lcom/android/systemui/qs/customize/QSCustomizer;->setCustomizing(Z)V

    invoke-direct {p0}, Lcom/android/systemui/qs/customize/QSCustomizer;->save()V

    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mClipper:Lcom/android/systemui/qs/QSDetailClipper;

    iget v1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mX:I

    iget v2, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mY:I

    iget-object v3, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mCollapseAnimationListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/android/systemui/qs/QSDetailClipper;->animateCircularClip(IIZLandroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mNotifQsContainer:Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->setCustomizerAnimating(Z)V

    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mNotifQsContainer:Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->setCustomizerShowing(Z)V

    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mContext:Landroid/content/Context;

    const v1, 0x7f120064

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/customize/QSCustomizer;->announceForAccessibility(Ljava/lang/CharSequence;)V

    const-class v0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mKeyguardCallback:Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->removeCallback(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public isShown()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->isShown:Z

    return v0
.end method

.method synthetic lambda$-com_android_systemui_qs_customize_QSCustomizer_8633()V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/QSCustomizer;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-class v0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mOpening:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p0, v1, v1}, Lcom/android/systemui/qs/customize/QSCustomizer;->hide(II)V

    :cond_1
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const v2, 0x7f0a0378

    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/customize/QSCustomizer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v2, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v3, 0x258

    if-ge v2, v3, :cond_1

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    const/4 v1, 0x1

    :goto_0
    if-eqz v1, :cond_3

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    const/16 v2, 0x8

    goto :goto_1
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    const/4 v0, 0x0

    return v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/QSCustomizer;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x167

    invoke-static {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    invoke-direct {p0}, Lcom/android/systemui/qs/customize/QSCustomizer;->reset()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
