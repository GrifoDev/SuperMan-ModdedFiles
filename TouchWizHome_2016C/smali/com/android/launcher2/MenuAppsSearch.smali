.class public Lcom/android/launcher2/MenuAppsSearch;
.super Ljava/lang/Object;
.source "MenuAppsSearch.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/widget/SearchView$OnQueryTextListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/MenuAppsSearch$GalaxyAppsResultAdapter;,
        Lcom/android/launcher2/MenuAppsSearch$RecentAdapter;,
        Lcom/android/launcher2/MenuAppsSearch$SearchAdapter;,
        Lcom/android/launcher2/MenuAppsSearch$SearchFilter;
    }
.end annotation


# static fields
.field public static final APPS_QUERY_TIME:I = 0x7d0

.field private static final GALAXYAPPS:Ljava/lang/String; = "com.sec.android.app.samsungapps"

.field private static final INVALID_SOFTINPUT_PARAMS:I = -0x1

.field private static final MENU_APP_KEYBOARD_IS_UP:Ljava/lang/String; = "MENU_APP_KEYBOARD_IS_UP"

.field private static final MENU_APP_SEARCH_PATTERN:Ljava/lang/String; = "MENU_APP_SEARCH_PATTERN"

.field public static final NETWORK_NOT_CONNECTED:I = 0x5

.field private static final PLAYSTORE:Landroid/content/ComponentName;

.field public static final SEND_SEARCH_END:I = 0x2

.field public static final SEND_THREAD_INFORMATION:I = 0x1

.field private static final TAG:Ljava/lang/String; = "MenuAppsSearch"

.field private static final TO_RECENT_GRID_VIEW:Z = false

.field private static final TO_RESULT_GRID_VIEW:Z = true


# instance fields
.field called:I

.field check_keydown:Z

.field galaxyItem:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/AppItem;",
            ">;"
        }
    .end annotation
.end field

.field public handler:Landroid/os/Handler;

.field mAppItems:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/launcher2/AppItem;",
            ">;"
        }
    .end annotation
.end field

.field private mBackupSoftInputParams:I

.field private mCloseBtn:Landroid/widget/ImageView;

.field private mContext:Landroid/content/Context;

.field private mCurrentCellCount:I

.field private mFromTextQuerySubmit:Z

.field mGalaxyAppsAdapter:Lcom/android/launcher2/MenuAppsSearch$GalaxyAppsResultAdapter;

.field public mGalaxyAppsGridView:Landroid/widget/GridView;

.field mGalaxyAppsIconClickListener:Landroid/view/View$OnClickListener;

.field mGalaxyGridOnKeyListener:Landroid/view/View$OnKeyListener;

.field private mGalaxySearchResultLine:Landroid/widget/FrameLayout;

.field mGridOnKeyListener:Landroid/view/View$OnKeyListener;

.field private mHandler:Landroid/os/Handler;

.field mIconClickListener:Landroid/view/View$OnClickListener;

.field private mIconSize:I

.field mLongClickListener:Landroid/view/View$OnLongClickListener;

.field protected mMenu:Lcom/android/launcher2/MenuAppsGrid;

.field private mNotiTextView:Landroid/widget/TextView;

.field private mPrefixHighlighter:Lcom/android/launcher2/searchapp/PrefixHighlighter;

.field mRecentAdapter:Lcom/android/launcher2/MenuAppsSearch$RecentAdapter;

.field mRecentAppsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/launcher2/AppItem;",
            ">;"
        }
    .end annotation
.end field

.field private mRecentGridView:Landroid/widget/GridView;

.field private mRecentLineCount:I

.field private mResultGridView:Landroid/widget/GridView;

.field private mRunnable:Ljava/lang/Runnable;

.field private mScrollView:Landroid/widget/ScrollView;

.field mSearchAdapter:Lcom/android/launcher2/MenuAppsSearch$SearchAdapter;

.field private mSearchEdit:Landroid/widget/SearchView;

.field private mSearchGalaxyAppsResultBar:Landroid/widget/LinearLayout;

.field private mSearchGalaxyAppsResultTitle:Landroid/widget/TextView;

.field private mSearchResultLine:Landroid/widget/FrameLayout;

.field private mSearchSubTitle:Landroid/widget/TextView;

.field private mSearchSubTitleBar:Landroid/widget/LinearLayout;

.field private mSearchSubTitleText:Landroid/widget/TextView;

.field private mSkippedFirst:Z

.field private mTextSize:I

.field private mTitleBarManager:Lcom/android/launcher2/MenuTitleBarManager;

.field private mViewMoreGalaxyAppsBtn:Landroid/widget/LinearLayout;

.field private mViewMoreGalaxyAppsTitle:Landroid/widget/TextView;

.field private mViewMorePlayStoreBtn:Landroid/widget/LinearLayout;

.field private mViewMorePlayStoreTitle:Landroid/widget/TextView;

.field thread:Lcom/android/launcher2/appssearch/UpdateCheckThread;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.vending"

    const-string v2, "com.android.vending.AssetBrowserActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/launcher2/MenuAppsSearch;->PLAYSTORE:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher2/MenuView;Lcom/android/launcher2/MenuAppsGrid;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v4, p0, Lcom/android/launcher2/MenuAppsSearch;->mSkippedFirst:Z

    const/4 v3, -0x1

    iput v3, p0, Lcom/android/launcher2/MenuAppsSearch;->mBackupSoftInputParams:I

    iput v4, p0, Lcom/android/launcher2/MenuAppsSearch;->called:I

    iput-boolean v4, p0, Lcom/android/launcher2/MenuAppsSearch;->mFromTextQuerySubmit:Z

    iput-object v5, p0, Lcom/android/launcher2/MenuAppsSearch;->mScrollView:Landroid/widget/ScrollView;

    iput-boolean v4, p0, Lcom/android/launcher2/MenuAppsSearch;->check_keydown:Z

    iput-object v5, p0, Lcom/android/launcher2/MenuAppsSearch;->thread:Lcom/android/launcher2/appssearch/UpdateCheckThread;

    new-instance v3, Lcom/android/launcher2/MenuAppsSearch$10;

    invoke-direct {v3, p0}, Lcom/android/launcher2/MenuAppsSearch$10;-><init>(Lcom/android/launcher2/MenuAppsSearch;)V

    iput-object v3, p0, Lcom/android/launcher2/MenuAppsSearch;->mIconClickListener:Landroid/view/View$OnClickListener;

    new-instance v3, Lcom/android/launcher2/MenuAppsSearch$11;

    invoke-direct {v3, p0}, Lcom/android/launcher2/MenuAppsSearch$11;-><init>(Lcom/android/launcher2/MenuAppsSearch;)V

    iput-object v3, p0, Lcom/android/launcher2/MenuAppsSearch;->mGridOnKeyListener:Landroid/view/View$OnKeyListener;

    new-instance v3, Lcom/android/launcher2/MenuAppsSearch$12;

    invoke-direct {v3, p0}, Lcom/android/launcher2/MenuAppsSearch$12;-><init>(Lcom/android/launcher2/MenuAppsSearch;)V

    iput-object v3, p0, Lcom/android/launcher2/MenuAppsSearch;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    new-instance v3, Lcom/android/launcher2/MenuAppsSearch$13;

    invoke-direct {v3, p0}, Lcom/android/launcher2/MenuAppsSearch$13;-><init>(Lcom/android/launcher2/MenuAppsSearch;)V

    iput-object v3, p0, Lcom/android/launcher2/MenuAppsSearch;->mGalaxyAppsIconClickListener:Landroid/view/View$OnClickListener;

    new-instance v3, Lcom/android/launcher2/MenuAppsSearch$14;

    invoke-direct {v3, p0}, Lcom/android/launcher2/MenuAppsSearch$14;-><init>(Lcom/android/launcher2/MenuAppsSearch;)V

    iput-object v3, p0, Lcom/android/launcher2/MenuAppsSearch;->handler:Landroid/os/Handler;

    new-instance v3, Lcom/android/launcher2/MenuAppsSearch$15;

    invoke-direct {v3, p0}, Lcom/android/launcher2/MenuAppsSearch$15;-><init>(Lcom/android/launcher2/MenuAppsSearch;)V

    iput-object v3, p0, Lcom/android/launcher2/MenuAppsSearch;->mGalaxyGridOnKeyListener:Landroid/view/View$OnKeyListener;

    iput-object p2, p0, Lcom/android/launcher2/MenuAppsSearch;->mMenu:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {p2}, Lcom/android/launcher2/MenuAppsGrid;->getMenuAppsSearchBar()Landroid/view/ViewGroup;

    move-result-object v2

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    check-cast v2, Landroid/widget/SearchView;

    iput-object v2, p0, Lcom/android/launcher2/MenuAppsSearch;->mSearchEdit:Landroid/widget/SearchView;

    iget-object v3, p0, Lcom/android/launcher2/MenuAppsSearch;->mSearchEdit:Landroid/widget/SearchView;

    invoke-virtual {v3}, Landroid/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v3, p0, Lcom/android/launcher2/MenuAppsSearch;->mSearchEdit:Landroid/widget/SearchView;

    invoke-virtual {v3}, Landroid/widget/SearchView;->semGetAutoCompleteView()Landroid/widget/AutoCompleteTextView;

    move-result-object v3

    const-string v4, "nm"

    invoke-virtual {v3, v4}, Landroid/widget/AutoCompleteTextView;->setPrivateImeOptions(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v3

    const v4, 0x7f1100ae

    invoke-virtual {v3, v4}, Lcom/android/launcher2/MenuView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ScrollView;

    iput-object v3, p0, Lcom/android/launcher2/MenuAppsSearch;->mScrollView:Landroid/widget/ScrollView;

    iget-object v3, p0, Lcom/android/launcher2/MenuAppsSearch;->mScrollView:Landroid/widget/ScrollView;

    const v4, 0x7f1100af

    invoke-virtual {v3, v4}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    const v3, 0x7f1100b0

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/launcher2/MenuAppsSearch;->mSearchSubTitleBar:Landroid/widget/LinearLayout;

    const v3, 0x7f1100b2

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/launcher2/MenuAppsSearch;->mSearchSubTitleText:Landroid/widget/TextView;

    const v3, 0x7f1100b1

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/launcher2/MenuAppsSearch;->mSearchSubTitle:Landroid/widget/TextView;

    const v3, 0x7f1100b3

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    iput-object v3, p0, Lcom/android/launcher2/MenuAppsSearch;->mSearchResultLine:Landroid/widget/FrameLayout;

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->isTabletModel()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getLauncherGridSize()Lcom/android/launcher2/LauncherApplication$HomeGridSize;

    move-result-object v3

    sget-object v4, Lcom/android/launcher2/LauncherApplication$HomeGridSize;->GRID_4x4:Lcom/android/launcher2/LauncherApplication$HomeGridSize;

    if-ne v3, v4, :cond_3

    const v3, 0x7f0a0005

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/launcher2/MenuAppsSearch;->mIconSize:I

    :goto_1
    const v3, 0x7f0a02d1

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/launcher2/MenuAppsSearch;->mTextSize:I

    const v3, 0x7f1100b5

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/GridView;

    iput-object v3, p0, Lcom/android/launcher2/MenuAppsSearch;->mResultGridView:Landroid/widget/GridView;

    const v3, 0x7f1100b4

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/GridView;

    iput-object v3, p0, Lcom/android/launcher2/MenuAppsSearch;->mRecentGridView:Landroid/widget/GridView;

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportGalaxyAppsSearch()Z

    move-result v3

    if-eqz v3, :cond_1

    const v3, 0x7f1100b7

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/launcher2/MenuAppsSearch;->mSearchGalaxyAppsResultBar:Landroid/widget/LinearLayout;

    const v3, 0x7f1100b8

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/launcher2/MenuAppsSearch;->mSearchGalaxyAppsResultTitle:Landroid/widget/TextView;

    const v3, 0x7f1100ba

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/GridView;

    iput-object v3, p0, Lcom/android/launcher2/MenuAppsSearch;->mGalaxyAppsGridView:Landroid/widget/GridView;

    const v3, 0x7f1100bb

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/launcher2/MenuAppsSearch;->mViewMoreGalaxyAppsBtn:Landroid/widget/LinearLayout;

    const v3, 0x7f1100bc

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/launcher2/MenuAppsSearch;->mViewMoreGalaxyAppsTitle:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/launcher2/MenuAppsSearch;->mViewMoreGalaxyAppsTitle:Landroid/widget/TextView;

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0900ea

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v3, 0x7f1100bd

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/launcher2/MenuAppsSearch;->mViewMorePlayStoreBtn:Landroid/widget/LinearLayout;

    const v3, 0x7f1100be

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/launcher2/MenuAppsSearch;->mViewMorePlayStoreTitle:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/launcher2/MenuAppsSearch;->mViewMorePlayStoreTitle:Landroid/widget/TextView;

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0900eb

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v3, 0x7f1100b9

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    iput-object v3, p0, Lcom/android/launcher2/MenuAppsSearch;->mGalaxySearchResultLine:Landroid/widget/FrameLayout;

    :cond_1
    const v3, 0x7f0c0027

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Lcom/android/launcher2/MenuAppsSearch;->mCurrentCellCount:I

    const v3, 0x7f0c001d

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Lcom/android/launcher2/MenuAppsSearch;->mRecentLineCount:I

    iget-object v3, p0, Lcom/android/launcher2/MenuAppsSearch;->mResultGridView:Landroid/widget/GridView;

    iget v4, p0, Lcom/android/launcher2/MenuAppsSearch;->mCurrentCellCount:I

    invoke-virtual {v3, v4}, Landroid/widget/GridView;->setNumColumns(I)V

    iget-object v3, p0, Lcom/android/launcher2/MenuAppsSearch;->mRecentGridView:Landroid/widget/GridView;

    iget v4, p0, Lcom/android/launcher2/MenuAppsSearch;->mCurrentCellCount:I

    invoke-virtual {v3, v4}, Landroid/widget/GridView;->setNumColumns(I)V

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportGalaxyAppsSearch()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/launcher2/MenuAppsSearch;->mGalaxyAppsGridView:Landroid/widget/GridView;

    iget v4, p0, Lcom/android/launcher2/MenuAppsSearch;->mCurrentCellCount:I

    invoke-virtual {v3, v4}, Landroid/widget/GridView;->setNumColumns(I)V

    iget-object v3, p0, Lcom/android/launcher2/MenuAppsSearch;->mGalaxyAppsGridView:Landroid/widget/GridView;

    iget-object v4, p0, Lcom/android/launcher2/MenuAppsSearch;->mGalaxyGridOnKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v3, v4}, Landroid/widget/GridView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    :cond_2
    iget-object v3, p0, Lcom/android/launcher2/MenuAppsSearch;->mRecentGridView:Landroid/widget/GridView;

    iget-object v4, p0, Lcom/android/launcher2/MenuAppsSearch;->mGridOnKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v3, v4}, Landroid/widget/GridView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v3, p0, Lcom/android/launcher2/MenuAppsSearch;->mResultGridView:Landroid/widget/GridView;

    iget-object v4, p0, Lcom/android/launcher2/MenuAppsSearch;->mGridOnKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v3, v4}, Landroid/widget/GridView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    const v3, 0x7f1100b6

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/launcher2/MenuAppsSearch;->mNotiTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/launcher2/MenuAppsSearch;->mNotiTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    new-instance v4, Lcom/android/launcher2/MenuAppsSearch$1;

    invoke-direct {v4, p0}, Lcom/android/launcher2/MenuAppsSearch$1;-><init>(Lcom/android/launcher2/MenuAppsSearch;)V

    invoke-virtual {v3, v4}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/launcher2/MenuAppsSearch;->changeSoftInputParam(Z)V

    invoke-virtual {p1}, Lcom/android/launcher2/MenuView;->getTitleBarManager()Lcom/android/launcher2/MenuTitleBarManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher2/MenuAppsSearch;->mTitleBarManager:Lcom/android/launcher2/MenuTitleBarManager;

    goto/16 :goto_0

    :cond_3
    const v3, 0x7f0a01c7

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/launcher2/MenuAppsSearch;->mIconSize:I

    goto/16 :goto_1
.end method

.method static synthetic access$000(Lcom/android/launcher2/MenuAppsSearch;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsSearch;->mNotiTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/launcher2/MenuAppsSearch;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsSearch;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/launcher2/MenuAppsSearch;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher2/MenuAppsSearch;->showGalaxyAppsResult(Z)V

    return-void
.end method

.method static synthetic access$102(Lcom/android/launcher2/MenuAppsSearch;Landroid/content/Context;)Landroid/content/Context;
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/MenuAppsSearch;->mContext:Landroid/content/Context;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/launcher2/MenuAppsSearch;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsSearch;->mSearchSubTitleText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/launcher2/MenuAppsSearch;)I
    .locals 1

    iget v0, p0, Lcom/android/launcher2/MenuAppsSearch;->mTextSize:I

    return v0
.end method

.method static synthetic access$1300(Lcom/android/launcher2/MenuAppsSearch;)I
    .locals 1

    iget v0, p0, Lcom/android/launcher2/MenuAppsSearch;->mIconSize:I

    return v0
.end method

.method static synthetic access$1400(Lcom/android/launcher2/MenuAppsSearch;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher2/MenuAppsSearch;->showHistoryTitle(Z)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/launcher2/MenuAppsSearch;)I
    .locals 1

    iget v0, p0, Lcom/android/launcher2/MenuAppsSearch;->mRecentLineCount:I

    return v0
.end method

.method static synthetic access$1600(Lcom/android/launcher2/MenuAppsSearch;Lcom/android/launcher2/AppItem;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher2/MenuAppsSearch;->updateAndSaveRecentApps(Lcom/android/launcher2/AppItem;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/launcher2/MenuAppsSearch;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsSearch;->mSearchSubTitleBar:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/launcher2/MenuAppsSearch;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsSearch;->mSearchSubTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/launcher2/MenuAppsSearch;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher2/MenuAppsSearch;->startGalaxyAppsSearch()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/launcher2/MenuAppsSearch;)Landroid/widget/GridView;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsSearch;->mRecentGridView:Landroid/widget/GridView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/launcher2/MenuAppsSearch;)Landroid/widget/SearchView;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsSearch;->mSearchEdit:Landroid/widget/SearchView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/launcher2/MenuAppsSearch;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsSearch;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/launcher2/MenuAppsSearch;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/MenuAppsSearch;->mHandler:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/launcher2/MenuAppsSearch;)Landroid/widget/ScrollView;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsSearch;->mScrollView:Landroid/widget/ScrollView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/launcher2/MenuAppsSearch;)Landroid/widget/GridView;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsSearch;->mResultGridView:Landroid/widget/GridView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/launcher2/MenuAppsSearch;)I
    .locals 1

    iget v0, p0, Lcom/android/launcher2/MenuAppsSearch;->mCurrentCellCount:I

    return v0
.end method

.method static synthetic access$702(Lcom/android/launcher2/MenuAppsSearch;I)I
    .locals 0

    iput p1, p0, Lcom/android/launcher2/MenuAppsSearch;->mCurrentCellCount:I

    return p1
.end method

.method static synthetic access$800(Lcom/android/launcher2/MenuAppsSearch;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher2/MenuAppsSearch;->showSearchTitle(Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/launcher2/MenuAppsSearch;)Lcom/android/launcher2/searchapp/PrefixHighlighter;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsSearch;->mPrefixHighlighter:Lcom/android/launcher2/searchapp/PrefixHighlighter;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/launcher2/MenuAppsSearch;Lcom/android/launcher2/searchapp/PrefixHighlighter;)Lcom/android/launcher2/searchapp/PrefixHighlighter;
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/MenuAppsSearch;->mPrefixHighlighter:Lcom/android/launcher2/searchapp/PrefixHighlighter;

    return-object p1
.end method

.method private getRecentApp()V
    .locals 15

    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    iput-object v11, p0, Lcom/android/launcher2/MenuAppsSearch;->mRecentAppsMap:Ljava/util/Map;

    invoke-direct {p0}, Lcom/android/launcher2/MenuAppsSearch;->restoreRecentApp()Ljava/util/Set;

    move-result-object v8

    if-eqz v8, :cond_8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    const-string v11, "\\/"

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    const/4 v11, 0x1

    aget-object v11, v7, v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v11, 0x0

    aget-object v11, v7, v11

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-object v11, p0, Lcom/android/launcher2/MenuAppsSearch;->mAppItems:Ljava/util/Map;

    if-eqz v11, :cond_1

    iget-object v11, p0, Lcom/android/launcher2/MenuAppsSearch;->mAppItems:Ljava/util/Map;

    invoke-interface {v11, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    iget-object v11, p0, Lcom/android/launcher2/MenuAppsSearch;->mAppItems:Ljava/util/Map;

    invoke-interface {v11, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/launcher2/AppItem;

    invoke-virtual {v11}, Lcom/android/launcher2/AppItem;->getItemType()Lcom/android/launcher2/BaseItem$Type;

    move-result-object v11

    sget-object v12, Lcom/android/launcher2/BaseItem$Type;->MENU_APP:Lcom/android/launcher2/BaseItem$Type;

    if-ne v11, v12, :cond_0

    iget-object v11, p0, Lcom/android/launcher2/MenuAppsSearch;->mRecentAppsMap:Ljava/util/Map;

    iget-object v12, p0, Lcom/android/launcher2/MenuAppsSearch;->mAppItems:Ljava/util/Map;

    invoke-interface {v12, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    iget-object v11, p0, Lcom/android/launcher2/MenuAppsSearch;->mRecentAppsMap:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    iget-object v13, p0, Lcom/android/launcher2/MenuAppsSearch;->mAppItems:Ljava/util/Map;

    invoke-interface {v13, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    invoke-interface {v11, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const-string v11, "MenuAppsSearch"

    const-string v12, "mAppItems is null. Loading MenuAppLoader needs to be completed."

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget v11, p0, Lcom/android/launcher2/MenuAppsSearch;->mCurrentCellCount:I

    iget v12, p0, Lcom/android/launcher2/MenuAppsSearch;->mRecentLineCount:I

    mul-int v9, v11, v12

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v9, :cond_6

    iget-object v11, p0, Lcom/android/launcher2/MenuAppsSearch;->mRecentAppsMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_4

    move v6, v9

    move v5, v1

    :goto_2
    if-ge v5, v9, :cond_3

    iget-object v11, p0, Lcom/android/launcher2/MenuAppsSearch;->mRecentAppsMap:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    if-eqz v11, :cond_5

    move v6, v5

    :cond_3
    if-eq v6, v9, :cond_4

    iget-object v11, p0, Lcom/android/launcher2/MenuAppsSearch;->mRecentAppsMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    iget-object v13, p0, Lcom/android/launcher2/MenuAppsSearch;->mRecentAppsMap:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v13, v14}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    invoke-interface {v11, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_6
    iget-object v11, p0, Lcom/android/launcher2/MenuAppsSearch;->mRecentAppsMap:Ljava/util/Map;

    invoke-interface {v11}, Ljava/util/Map;->size()I

    move-result v11

    if-le v11, v9, :cond_7

    iget-object v11, p0, Lcom/android/launcher2/MenuAppsSearch;->mRecentAppsMap:Ljava/util/Map;

    invoke-interface {v11}, Ljava/util/Map;->size()I

    move-result v11

    sub-int v0, v11, v9

    :goto_3
    if-lez v0, :cond_7

    iget-object v11, p0, Lcom/android/launcher2/MenuAppsSearch;->mRecentAppsMap:Ljava/util/Map;

    iget-object v12, p0, Lcom/android/launcher2/MenuAppsSearch;->mRecentAppsMap:Ljava/util/Map;

    invoke-interface {v12}, Ljava/util/Map;->size()I

    move-result v12

    sub-int/2addr v12, v0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    :cond_7
    iget-object v11, p0, Lcom/android/launcher2/MenuAppsSearch;->mRecentAppsMap:Ljava/util/Map;

    invoke-interface {v11}, Ljava/util/Map;->size()I

    move-result v11

    if-lez v11, :cond_9

    iget-object v11, p0, Lcom/android/launcher2/MenuAppsSearch;->mNotiTextView:Landroid/widget/TextView;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_8
    :goto_4
    return-void

    :cond_9
    iget-object v11, p0, Lcom/android/launcher2/MenuAppsSearch;->mNotiTextView:Landroid/widget/TextView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4
.end method

.method static isAppInstalled(Landroid/content/ComponentName;)Z
    .locals 5

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher2/LauncherApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v2, p0, v4}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    const/4 v3, 0x1

    :goto_0
    return v3

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static isAppInstalled(Ljava/lang/String;)Z
    .locals 5

    const/4 v3, 0x1

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher2/LauncherApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v4, 0x1

    :try_start_0
    invoke-virtual {v2, p0, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return v3

    :catch_0
    move-exception v0

    const/4 v3, 0x0

    goto :goto_0
.end method

.method static isLauncherCategory(Ljava/lang/String;)Z
    .locals 3

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/LauncherApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private restoreRecentApp()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v1

    const-string v2, "com.sec.android.app.launcher.prefs"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher2/Launcher;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "recentAppForSearch"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    return-object v1
.end method

.method private saveRecentApp(Ljava/util/Map;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/launcher2/AppItem;",
            ">;)V"
        }
    .end annotation

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/AppItem;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v8, v2, Lcom/android/launcher2/AppItem;->mId:J

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v6

    const-string v7, "com.sec.android.app.launcher.prefs"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lcom/android/launcher2/Launcher;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v6, "recentAppForSearch"

    invoke-interface {v0, v6, v4}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private showGalaxyAppsResult(Z)V
    .locals 11

    const/4 v0, 0x0

    const/4 v5, 0x0

    iget-object v8, p0, Lcom/android/launcher2/MenuAppsSearch;->mResultGridView:Landroid/widget/GridView;

    invoke-virtual {v8}, Landroid/widget/GridView;->getCount()I

    move-result v8

    if-nez v8, :cond_2

    iget-object v8, p0, Lcom/android/launcher2/MenuAppsSearch;->mNotiTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getVisibility()I

    move-result v8

    if-nez v8, :cond_2

    iget-object v8, p0, Lcom/android/launcher2/MenuAppsSearch;->mNotiTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v8, p0, Lcom/android/launcher2/MenuAppsSearch;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a0310

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iget-object v8, p0, Lcom/android/launcher2/MenuAppsSearch;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a0177

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iget v8, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    sub-int v9, v6, v7

    if-eq v8, v9, :cond_0

    sub-int v8, v6, v7

    iput v8, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    :cond_0
    :goto_0
    if-eqz p1, :cond_4

    iget-object v8, p0, Lcom/android/launcher2/MenuAppsSearch;->mGalaxyAppsAdapter:Lcom/android/launcher2/MenuAppsSearch$GalaxyAppsResultAdapter;

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/android/launcher2/MenuAppsSearch;->mGalaxyAppsAdapter:Lcom/android/launcher2/MenuAppsSearch$GalaxyAppsResultAdapter;

    invoke-virtual {v8}, Lcom/android/launcher2/MenuAppsSearch$GalaxyAppsResultAdapter;->getCount()I

    move-result v8

    if-lez v8, :cond_4

    const-string v8, "com.sec.android.app.samsungapps"

    invoke-static {v8}, Lcom/android/launcher2/MenuAppsSearch;->isAppInstalled(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    const-string v8, "com.sec.android.app.samsungapps"

    invoke-static {v8}, Lcom/android/launcher2/MenuAppsSearch;->isLauncherCategory(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/android/launcher2/MenuAppsSearch;->mSearchGalaxyAppsResultBar:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    iget v8, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0a02ce

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    add-int/2addr v8, v9

    iput v8, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v8, p0, Lcom/android/launcher2/MenuAppsSearch;->mSearchGalaxyAppsResultBar:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v8, p0, Lcom/android/launcher2/MenuAppsSearch;->mSearchGalaxyAppsResultTitle:Landroid/widget/TextView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v8, p0, Lcom/android/launcher2/MenuAppsSearch;->mSearchGalaxyAppsResultBar:Landroid/widget/LinearLayout;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v8, p0, Lcom/android/launcher2/MenuAppsSearch;->mGalaxyAppsGridView:Landroid/widget/GridView;

    invoke-virtual {v8}, Landroid/widget/GridView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a02fc

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iget v9, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v8, v9

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0a0289

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    add-int/2addr v8, v9

    iput v8, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v8, p0, Lcom/android/launcher2/MenuAppsSearch;->mGalaxyAppsGridView:Landroid/widget/GridView;

    invoke-virtual {v8, v2}, Landroid/widget/GridView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v8, p0, Lcom/android/launcher2/MenuAppsSearch;->mGalaxyAppsGridView:Landroid/widget/GridView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/GridView;->setVisibility(I)V

    const-string v8, "MenuAppsSearch"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "GalaxyApps result count : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/launcher2/MenuAppsSearch;->mGalaxyAppsAdapter:Lcom/android/launcher2/MenuAppsSearch$GalaxyAppsResultAdapter;

    invoke-virtual {v10}, Lcom/android/launcher2/MenuAppsSearch$GalaxyAppsResultAdapter;->getCount()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/android/launcher2/MenuAppsSearch;->mViewMoreGalaxyAppsBtn:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    iget v8, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0a02f1

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    add-int/2addr v8, v9

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0a02fb

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    sub-int/2addr v8, v9

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0a02b5

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    add-int/2addr v8, v9

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0a02cf

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    add-int/2addr v8, v9

    iput v8, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget v5, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v8, p0, Lcom/android/launcher2/MenuAppsSearch;->mViewMoreGalaxyAppsBtn:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v8, p0, Lcom/android/launcher2/MenuAppsSearch;->mViewMoreGalaxyAppsTitle:Landroid/widget/TextView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v8, p0, Lcom/android/launcher2/MenuAppsSearch;->mViewMoreGalaxyAppsBtn:Landroid/widget/LinearLayout;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_1
    sget-object v8, Lcom/android/launcher2/MenuAppsSearch;->PLAYSTORE:Landroid/content/ComponentName;

    invoke-static {v8}, Lcom/android/launcher2/MenuAppsSearch;->isAppInstalled(Landroid/content/ComponentName;)Z

    move-result v8

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/launcher2/MenuAppsSearch;->mViewMorePlayStoreBtn:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a0315

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    add-int/2addr v8, v5

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0a02cf

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    add-int/2addr v8, v9

    iput v8, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v8, p0, Lcom/android/launcher2/MenuAppsSearch;->mViewMorePlayStoreBtn:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v8, p0, Lcom/android/launcher2/MenuAppsSearch;->mViewMorePlayStoreBtn:Landroid/widget/LinearLayout;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v8, p0, Lcom/android/launcher2/MenuAppsSearch;->mViewMorePlayStoreTitle:Landroid/widget/TextView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    :goto_2
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsSearch;->setGalaxySearchTextColor()V

    return-void

    :cond_2
    iget-object v8, p0, Lcom/android/launcher2/MenuAppsSearch;->mResultGridView:Landroid/widget/GridView;

    invoke-virtual {v8}, Landroid/widget/GridView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    goto/16 :goto_0

    :cond_3
    iget v8, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0a02ce

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    add-int/2addr v8, v9

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0a0315

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    sub-int/2addr v8, v9

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0a02cf

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    sub-int v5, v8, v9

    goto/16 :goto_1

    :cond_4
    const-string v8, "com.sec.android.app.samsungapps"

    invoke-static {v8}, Lcom/android/launcher2/MenuAppsSearch;->isAppInstalled(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    const-string v8, "com.sec.android.app.samsungapps"

    invoke-static {v8}, Lcom/android/launcher2/MenuAppsSearch;->isLauncherCategory(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/android/launcher2/MenuAppsSearch;->mViewMoreGalaxyAppsBtn:Landroid/widget/LinearLayout;

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/android/launcher2/MenuAppsSearch;->mViewMoreGalaxyAppsBtn:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    iget v8, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0a02ce

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    add-int/2addr v8, v9

    iput v8, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget v5, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v8, p0, Lcom/android/launcher2/MenuAppsSearch;->mViewMoreGalaxyAppsBtn:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v8, p0, Lcom/android/launcher2/MenuAppsSearch;->mViewMoreGalaxyAppsTitle:Landroid/widget/TextView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v8, p0, Lcom/android/launcher2/MenuAppsSearch;->mViewMoreGalaxyAppsBtn:Landroid/widget/LinearLayout;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_3
    sget-object v8, Lcom/android/launcher2/MenuAppsSearch;->PLAYSTORE:Landroid/content/ComponentName;

    invoke-static {v8}, Lcom/android/launcher2/MenuAppsSearch;->isAppInstalled(Landroid/content/ComponentName;)Z

    move-result v8

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/launcher2/MenuAppsSearch;->mViewMorePlayStoreBtn:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a02f2

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    add-int/2addr v8, v5

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0a02f1

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    sub-int/2addr v8, v9

    iput v8, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v8, p0, Lcom/android/launcher2/MenuAppsSearch;->mViewMorePlayStoreBtn:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v8, p0, Lcom/android/launcher2/MenuAppsSearch;->mViewMorePlayStoreBtn:Landroid/widget/LinearLayout;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v8, p0, Lcom/android/launcher2/MenuAppsSearch;->mViewMorePlayStoreTitle:Landroid/widget/TextView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    :cond_5
    iget v8, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0a02ce

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    add-int/2addr v8, v9

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0a02f2

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    sub-int/2addr v8, v9

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0a02f1

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    add-int v5, v8, v9

    goto :goto_3
.end method

.method private showHistoryTitle(Z)V
    .locals 4

    const/16 v3, 0x8

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsSearch;->mSearchSubTitle:Landroid/widget/TextView;

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090015

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsSearch;->mSearchSubTitleText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsSearch;->mSearchSubTitleBar:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsSearch;->mSearchSubTitleBar:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private showSearchTitle(Z)V
    .locals 4

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsSearch;->mSearchSubTitle:Landroid/widget/TextView;

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090023

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsSearch;->mSearchSubTitleText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsSearch;->mSearchSubTitleBar:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsSearch;->mSearchSubTitleBar:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private startGalaxyAppsSearch()V
    .locals 4

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsSearch;->mSearchEdit:Landroid/widget/SearchView;

    invoke-virtual {v1}, Landroid/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsSearch;->mGalaxyAppsAdapter:Lcom/android/launcher2/MenuAppsSearch$GalaxyAppsResultAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsSearch;->mGalaxyAppsAdapter:Lcom/android/launcher2/MenuAppsSearch$GalaxyAppsResultAdapter;

    invoke-virtual {v1, v0}, Lcom/android/launcher2/MenuAppsSearch$GalaxyAppsResultAdapter;->setSearchText(Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsSearch;->thread:Lcom/android/launcher2/appssearch/UpdateCheckThread;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsSearch;->thread:Lcom/android/launcher2/appssearch/UpdateCheckThread;

    invoke-virtual {v1}, Lcom/android/launcher2/appssearch/UpdateCheckThread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsSearch;->thread:Lcom/android/launcher2/appssearch/UpdateCheckThread;

    invoke-virtual {v1}, Lcom/android/launcher2/appssearch/UpdateCheckThread;->interrupt()V

    :cond_1
    new-instance v1, Lcom/android/launcher2/appssearch/UpdateCheckThread;

    iget-object v2, p0, Lcom/android/launcher2/MenuAppsSearch;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v0}, Lcom/android/launcher2/appssearch/UpdateCheckThread;-><init>(Landroid/content/Context;ZLjava/lang/String;)V

    iput-object v1, p0, Lcom/android/launcher2/MenuAppsSearch;->thread:Lcom/android/launcher2/appssearch/UpdateCheckThread;

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsSearch;->thread:Lcom/android/launcher2/appssearch/UpdateCheckThread;

    invoke-virtual {v1}, Lcom/android/launcher2/appssearch/UpdateCheckThread;->start()V

    :cond_2
    return-void
.end method

.method private updateAndSaveRecentApps(Lcom/android/launcher2/AppItem;)V
    .locals 7

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/android/launcher2/MenuAppsSearch;->mRecentAppsMap:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    iget v4, p0, Lcom/android/launcher2/MenuAppsSearch;->mRecentLineCount:I

    iget v5, p0, Lcom/android/launcher2/MenuAppsSearch;->mCurrentCellCount:I

    mul-int/2addr v4, v5

    add-int/lit8 v2, v4, -0x2

    :goto_0
    if-ltz v2, :cond_1

    iget-object v4, p0, Lcom/android/launcher2/MenuAppsSearch;->mRecentAppsMap:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AppItem;

    if-eqz v0, :cond_0

    iget-object v4, p0, Lcom/android/launcher2/MenuAppsSearch;->mRecentAppsMap:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/launcher2/MenuAppsSearch;->mRecentAppsMap:Ljava/util/Map;

    add-int/lit8 v5, v2, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/android/launcher2/MenuAppsSearch;->mRecentAppsMap:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/launcher2/MenuAppsSearch;->mRecentAppsMap:Ljava/util/Map;

    invoke-direct {p0, v4}, Lcom/android/launcher2/MenuAppsSearch;->saveRecentApp(Ljava/util/Map;)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/launcher2/MenuAppsSearch;->mRecentAppsMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    move v2, v1

    :goto_2
    if-ltz v2, :cond_6

    if-eqz v3, :cond_5

    iget-object v4, p0, Lcom/android/launcher2/MenuAppsSearch;->mRecentAppsMap:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AppItem;

    if-eqz v0, :cond_4

    iget-object v4, p0, Lcom/android/launcher2/MenuAppsSearch;->mRecentAppsMap:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/launcher2/MenuAppsSearch;->mRecentAppsMap:Ljava/util/Map;

    add-int/lit8 v5, v2, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    :goto_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    :cond_5
    iget-object v4, p0, Lcom/android/launcher2/MenuAppsSearch;->mRecentAppsMap:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/launcher2/MenuAppsSearch;->mRecentAppsMap:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/AppItem;

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v3, 0x1

    goto :goto_3

    :cond_6
    if-eqz v3, :cond_2

    iget-object v4, p0, Lcom/android/launcher2/MenuAppsSearch;->mRecentAppsMap:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/launcher2/MenuAppsSearch;->mRecentAppsMap:Ljava/util/Map;

    invoke-direct {p0, v4}, Lcom/android/launcher2/MenuAppsSearch;->saveRecentApp(Ljava/util/Map;)V

    goto :goto_1
.end method


# virtual methods
.method public changeSoftInputParam(Z)V
    .locals 2

    iget v0, p0, Lcom/android/launcher2/MenuAppsSearch;->mBackupSoftInputParams:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    iput v0, p0, Lcom/android/launcher2/MenuAppsSearch;->mBackupSoftInputParams:I

    :cond_0
    if-eqz p1, :cond_1

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher2/MenuAppsSearch;->mBackupSoftInputParams:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x25

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    goto :goto_0
.end method

.method public clearGalaxyAppsResult()V
    .locals 2

    const/16 v1, 0x8

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher2/MenuAppsSearch;->called:I

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsSearch;->galaxyItem:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsSearch;->galaxyItem:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsSearch;->mGalaxyAppsGridView:Landroid/widget/GridView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsSearch;->mGalaxyAppsGridView:Landroid/widget/GridView;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsSearch;->mSearchGalaxyAppsResultBar:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsSearch;->mSearchGalaxyAppsResultBar:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsSearch;->mViewMoreGalaxyAppsBtn:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsSearch;->mViewMoreGalaxyAppsBtn:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_3
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsSearch;->mViewMorePlayStoreBtn:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsSearch;->mViewMorePlayStoreBtn:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_4
    return-void
.end method

.method public closeKeyboard()V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsSearch;->mSearchEdit:Landroid/widget/SearchView;

    invoke-virtual {v1}, Landroid/widget/SearchView;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsSearch;->mResultGridView:Landroid/widget/GridView;

    invoke-virtual {v1, v3}, Landroid/widget/GridView;->setFocusable(Z)V

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsSearch;->mSearchEdit:Landroid/widget/SearchView;

    invoke-virtual {v1}, Landroid/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->semIsInputMethodShown()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsSearch;->mSearchEdit:Landroid/widget/SearchView;

    invoke-virtual {v1}, Landroid/widget/SearchView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromInputMethod(Landroid/os/IBinder;I)V

    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsSearch;->mSearchEdit:Landroid/widget/SearchView;

    invoke-virtual {v1}, Landroid/widget/SearchView;->clearFocus()V

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsSearch;->mResultGridView:Landroid/widget/GridView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setFocusable(Z)V

    :cond_1
    return-void
.end method

.method public enter(Lcom/android/launcher2/MenuAppsGrid$State;Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher2/MenuAppsGrid$State;",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    const/4 v11, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string v6, "MenuAppsSearch"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "enter search state. oldState is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsSearch;->openKeyboard()V

    iget-object v6, p0, Lcom/android/launcher2/MenuAppsSearch;->mSearchEdit:Landroid/widget/SearchView;

    invoke-virtual {v6}, Landroid/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v6, p0, Lcom/android/launcher2/MenuAppsSearch;->mBackupSoftInputParams:I

    const/4 v9, -0x1

    if-ne v6, v9, :cond_0

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher2/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    iput v6, p0, Lcom/android/launcher2/MenuAppsSearch;->mBackupSoftInputParams:I

    :cond_0
    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher2/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/16 v9, 0x20

    invoke-virtual {v6, v9}, Landroid/view/Window;->setSoftInputMode(I)V

    sget-object v6, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v6}, Lcom/android/launcher2/MenuAppModel;->getAppItems()Ljava/util/Map;

    move-result-object v6

    iput-object v6, p0, Lcom/android/launcher2/MenuAppsSearch;->mAppItems:Ljava/util/Map;

    invoke-direct {p0}, Lcom/android/launcher2/MenuAppsSearch;->getRecentApp()V

    iget-object v6, p0, Lcom/android/launcher2/MenuAppsSearch;->mResultGridView:Landroid/widget/GridView;

    const/16 v9, 0x8

    invoke-virtual {v6, v9}, Landroid/widget/GridView;->setVisibility(I)V

    new-instance v6, Lcom/android/launcher2/MenuAppsSearch$SearchAdapter;

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v9

    invoke-direct {v6, p0, v9}, Lcom/android/launcher2/MenuAppsSearch$SearchAdapter;-><init>(Lcom/android/launcher2/MenuAppsSearch;Landroid/content/Context;)V

    iput-object v6, p0, Lcom/android/launcher2/MenuAppsSearch;->mSearchAdapter:Lcom/android/launcher2/MenuAppsSearch$SearchAdapter;

    iget-object v6, p0, Lcom/android/launcher2/MenuAppsSearch;->mSearchAdapter:Lcom/android/launcher2/MenuAppsSearch$SearchAdapter;

    invoke-virtual {v6}, Lcom/android/launcher2/MenuAppsSearch$SearchAdapter;->runFilter()V

    iget-object v6, p0, Lcom/android/launcher2/MenuAppsSearch;->mResultGridView:Landroid/widget/GridView;

    iget-object v9, p0, Lcom/android/launcher2/MenuAppsSearch;->mSearchAdapter:Lcom/android/launcher2/MenuAppsSearch$SearchAdapter;

    invoke-virtual {v6, v9}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v6, p0, Lcom/android/launcher2/MenuAppsSearch;->mResultGridView:Landroid/widget/GridView;

    new-instance v9, Lcom/android/launcher2/MenuAppsSearch$2;

    invoke-direct {v9, p0}, Lcom/android/launcher2/MenuAppsSearch$2;-><init>(Lcom/android/launcher2/MenuAppsSearch;)V

    invoke-virtual {v6, v9}, Landroid/widget/GridView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    iget-object v6, p0, Lcom/android/launcher2/MenuAppsSearch;->mResultGridView:Landroid/widget/GridView;

    new-instance v9, Lcom/android/launcher2/MenuAppsSearch$3;

    invoke-direct {v9, p0}, Lcom/android/launcher2/MenuAppsSearch$3;-><init>(Lcom/android/launcher2/MenuAppsSearch;)V

    invoke-virtual {v6, v9}, Landroid/widget/GridView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v6, p0, Lcom/android/launcher2/MenuAppsSearch;->mScrollView:Landroid/widget/ScrollView;

    new-instance v9, Lcom/android/launcher2/MenuAppsSearch$4;

    invoke-direct {v9, p0}, Lcom/android/launcher2/MenuAppsSearch$4;-><init>(Lcom/android/launcher2/MenuAppsSearch;)V

    invoke-virtual {v6, v9}, Landroid/widget/ScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v6, Lcom/android/launcher2/MenuAppsSearch$RecentAdapter;

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v9

    invoke-direct {v6, p0, v9}, Lcom/android/launcher2/MenuAppsSearch$RecentAdapter;-><init>(Lcom/android/launcher2/MenuAppsSearch;Landroid/content/Context;)V

    iput-object v6, p0, Lcom/android/launcher2/MenuAppsSearch;->mRecentAdapter:Lcom/android/launcher2/MenuAppsSearch$RecentAdapter;

    iget-object v6, p0, Lcom/android/launcher2/MenuAppsSearch;->mRecentGridView:Landroid/widget/GridView;

    iget-object v9, p0, Lcom/android/launcher2/MenuAppsSearch;->mRecentAdapter:Lcom/android/launcher2/MenuAppsSearch$RecentAdapter;

    invoke-virtual {v6, v9}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportGalaxyAppsSearch()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsSearch;->initialiseGalaxyAppSearch()V

    :cond_1
    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportSearchTextColorLight()Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "android:id/search_src_text"

    invoke-virtual {v3, v6, v11, v11}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    iget-object v6, p0, Lcom/android/launcher2/MenuAppsSearch;->mSearchEdit:Landroid/widget/SearchView;

    invoke-virtual {v6, v5}, Landroid/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/AutoCompleteTextView;

    if-eqz v4, :cond_2

    const/high16 v6, -0x1000000

    invoke-virtual {v4, v6}, Landroid/widget/AutoCompleteTextView;->setTextColor(I)V

    :cond_2
    iget-object v6, p0, Lcom/android/launcher2/MenuAppsSearch;->mSearchEdit:Landroid/widget/SearchView;

    invoke-virtual {v6}, Landroid/widget/SearchView;->semGetAutoCompleteView()Landroid/widget/AutoCompleteTextView;

    move-result-object v6

    new-instance v9, Lcom/android/launcher2/MenuAppsSearch$5;

    invoke-direct {v9, p0}, Lcom/android/launcher2/MenuAppsSearch$5;-><init>(Lcom/android/launcher2/MenuAppsSearch;)V

    invoke-virtual {v6, v9}, Landroid/widget/AutoCompleteTextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsSearch;->setSearchHistoryTextColor()V

    iget-object v6, p0, Lcom/android/launcher2/MenuAppsSearch;->mSearchEdit:Landroid/widget/SearchView;

    invoke-virtual {v6}, Landroid/widget/SearchView;->semGetAutoCompleteView()Landroid/widget/AutoCompleteTextView;

    move-result-object v6

    iget-object v9, p0, Lcom/android/launcher2/MenuAppsSearch;->mSearchEdit:Landroid/widget/SearchView;

    invoke-virtual {v9}, Landroid/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v9

    const/16 v10, 0x1e

    iget-object v11, p0, Lcom/android/launcher2/MenuAppsSearch;->mSearchEdit:Landroid/widget/SearchView;

    invoke-virtual {v11}, Landroid/widget/SearchView;->semGetAutoCompleteView()Landroid/widget/AutoCompleteTextView;

    move-result-object v11

    invoke-static {v9, v10, v11}, Lcom/android/launcher2/Utilities;->getEditTextMaxLengthFilter(Landroid/content/Context;ILandroid/widget/EditText;)[Landroid/text/InputFilter;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/widget/AutoCompleteTextView;->setFilters([Landroid/text/InputFilter;)V

    iget-object v6, p0, Lcom/android/launcher2/MenuAppsSearch;->mSearchEdit:Landroid/widget/SearchView;

    invoke-virtual {v6, p0}, Landroid/widget/SearchView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v6, p0, Lcom/android/launcher2/MenuAppsSearch;->mSearchEdit:Landroid/widget/SearchView;

    invoke-virtual {v6, p0}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    iget-object v6, p0, Lcom/android/launcher2/MenuAppsSearch;->mSearchEdit:Landroid/widget/SearchView;

    invoke-virtual {v6}, Landroid/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/Launcher;

    iget-object v9, p0, Lcom/android/launcher2/MenuAppsSearch;->mSearchEdit:Landroid/widget/SearchView;

    invoke-virtual {v6, v9}, Lcom/android/launcher2/Launcher;->enableVoiceSearch(Landroid/widget/SearchView;)V

    iget-object v6, p0, Lcom/android/launcher2/MenuAppsSearch;->mTitleBarManager:Lcom/android/launcher2/MenuTitleBarManager;

    iget-boolean v6, v6, Lcom/android/launcher2/MenuTitleBarManager;->mAppSearchVI:Z

    if-eqz v6, :cond_3

    if-nez p2, :cond_8

    :cond_3
    move v1, v8

    :goto_0
    iget-object v6, p0, Lcom/android/launcher2/MenuAppsSearch;->mTitleBarManager:Lcom/android/launcher2/MenuTitleBarManager;

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/launcher2/MenuView;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v9

    invoke-virtual {v6, p2, v9, v1}, Lcom/android/launcher2/MenuTitleBarManager;->changeTitleBar(Ljava/util/List;Lcom/android/launcher2/MenuAppsGrid$State;Z)V

    iput-boolean v7, p0, Lcom/android/launcher2/MenuAppsSearch;->mSkippedFirst:Z

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportGalaxyAppsSearch()Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/launcher2/MenuAppsSearch;->mViewMoreGalaxyAppsBtn:Landroid/widget/LinearLayout;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/launcher2/MenuAppsSearch;->mViewMoreGalaxyAppsBtn:Landroid/widget/LinearLayout;

    const v9, 0x7f1100bb

    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v6, Lcom/android/launcher2/MenuAppsSearch$6;

    invoke-direct {v6, p0}, Lcom/android/launcher2/MenuAppsSearch$6;-><init>(Lcom/android/launcher2/MenuAppsSearch;)V

    invoke-virtual {v0, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v6, p0, Lcom/android/launcher2/MenuAppsSearch;->mViewMorePlayStoreBtn:Landroid/widget/LinearLayout;

    const v9, 0x7f1100bd

    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v6, Lcom/android/launcher2/MenuAppsSearch$7;

    invoke-direct {v6, p0}, Lcom/android/launcher2/MenuAppsSearch$7;-><init>(Lcom/android/launcher2/MenuAppsSearch;)V

    invoke-virtual {v2, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    iget-object v6, p0, Lcom/android/launcher2/MenuAppsSearch;->mSearchEdit:Landroid/widget/SearchView;

    invoke-virtual {v6}, Landroid/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/Launcher;

    invoke-virtual {v6}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher2/MenuView;->isVisible()Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/android/launcher2/MenuAppsSearch;->mSearchEdit:Landroid/widget/SearchView;

    invoke-virtual {v6}, Landroid/widget/SearchView;->requestFocus()Z

    iget-object v6, p0, Lcom/android/launcher2/MenuAppsSearch;->mSearchEdit:Landroid/widget/SearchView;

    invoke-virtual {v6, v8}, Landroid/widget/SearchView;->setFocusable(Z)V

    :cond_5
    iget-object v6, p0, Lcom/android/launcher2/MenuAppsSearch;->mMenu:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v6}, Lcom/android/launcher2/MenuAppsGrid;->getVisibility()I

    move-result v6

    if-nez v6, :cond_7

    iget-object v6, p0, Lcom/android/launcher2/MenuAppsSearch;->mHandler:Landroid/os/Handler;

    if-nez v6, :cond_6

    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    iput-object v6, p0, Lcom/android/launcher2/MenuAppsSearch;->mHandler:Landroid/os/Handler;

    :cond_6
    iget-object v6, p0, Lcom/android/launcher2/MenuAppsSearch;->mHandler:Landroid/os/Handler;

    new-instance v8, Lcom/android/launcher2/MenuAppsSearch$8;

    invoke-direct {v8, p0}, Lcom/android/launcher2/MenuAppsSearch$8;-><init>(Lcom/android/launcher2/MenuAppsSearch;)V

    const-wide/16 v10, 0x1f4

    invoke-virtual {v6, v8, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_7
    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v6

    const v8, 0x7f1100af

    invoke-virtual {v6, v8}, Lcom/android/launcher2/MenuView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_8
    move v1, v7

    goto/16 :goto_0
.end method

.method public exit(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v2, 0x8

    const-string v0, "MenuAppsSearch"

    const-string v1, "exit search state"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v4}, Lcom/android/launcher2/MenuAppsSearch;->changeSoftInputParam(Z)V

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsSearch;->mSearchEdit:Landroid/widget/SearchView;

    const/16 v1, 0x80

    invoke-virtual {v0, v1, v3}, Landroid/widget/SearchView;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsSearch;->mSearchEdit:Landroid/widget/SearchView;

    invoke-virtual {v0, v3}, Landroid/widget/SearchView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsSearch;->mSearchEdit:Landroid/widget/SearchView;

    invoke-virtual {v0, v3}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsSearch;->mSearchEdit:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportGalaxyAppsSearch()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsSearch;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsSearch;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsSearch;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsSearch;->mSearchEdit:Landroid/widget/SearchView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/launcher2/utils/SIPHelper;->hideInputMethod(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsSearch;->mSearchEdit:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsSearch;->mSearchEdit:Landroid/widget/SearchView;

    const-string v1, ""

    invoke-virtual {v0, v1, v4}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsSearch;->mNotiTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsSearch;->mNotiTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsSearch;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, v2}, Landroid/widget/ScrollView;->setVisibility(I)V

    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/android/launcher2/MenuAppsSearch;->setQueryString(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v0

    const v1, 0x7f1100af

    invoke-virtual {v0, v1}, Lcom/android/launcher2/MenuView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public getSearchEdit()Landroid/widget/SearchView;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsSearch;->mSearchEdit:Landroid/widget/SearchView;

    return-object v0
.end method

.method public initialiseGalaxyAppSearch()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsSearch;->mGalaxyAppsAdapter:Lcom/android/launcher2/MenuAppsSearch$GalaxyAppsResultAdapter;

    if-nez v0, :cond_1

    new-instance v0, Lcom/android/launcher2/MenuAppsSearch$GalaxyAppsResultAdapter;

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/launcher2/MenuAppsSearch$GalaxyAppsResultAdapter;-><init>(Lcom/android/launcher2/MenuAppsSearch;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/launcher2/MenuAppsSearch;->mGalaxyAppsAdapter:Lcom/android/launcher2/MenuAppsSearch$GalaxyAppsResultAdapter;

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsSearch;->mGalaxyAppsGridView:Landroid/widget/GridView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsSearch;->mGalaxyAppsGridView:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsSearch;->mGalaxyAppsAdapter:Lcom/android/launcher2/MenuAppsSearch$GalaxyAppsResultAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_0
    new-instance v0, Lcom/android/launcher2/MenuAppsSearch$16;

    invoke-direct {v0, p0}, Lcom/android/launcher2/MenuAppsSearch$16;-><init>(Lcom/android/launcher2/MenuAppsSearch;)V

    iput-object v0, p0, Lcom/android/launcher2/MenuAppsSearch;->mRunnable:Ljava/lang/Runnable;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/MenuAppsSearch;->mHandler:Landroid/os/Handler;

    :cond_1
    return-void
.end method

.method public isFocusSearchEdit()Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsSearch;->mSearchEdit:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->isFocused()Z

    move-result v0

    return v0
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x42

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 5

    const/4 v4, 0x0

    iget-boolean v0, p0, Lcom/android/launcher2/MenuAppsSearch;->mSkippedFirst:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsSearch;->mSearchAdapter:Lcom/android/launcher2/MenuAppsSearch$SearchAdapter;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppsSearch$SearchAdapter;->runFilter()V

    :cond_1
    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportGalaxyAppsSearch()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsSearch;->clearGalaxyAppsResult()V

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsSearch;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsSearch;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsSearch;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    invoke-direct {p0, v4}, Lcom/android/launcher2/MenuAppsSearch;->showGalaxyAppsResult(Z)V

    iget-boolean v0, p0, Lcom/android/launcher2/MenuAppsSearch;->mFromTextQuerySubmit:Z

    if-eqz v0, :cond_4

    iput-boolean v4, p0, Lcom/android/launcher2/MenuAppsSearch;->mFromTextQuerySubmit:Z

    const-string v0, "com.sec.android.app.samsungapps"

    invoke-static {v0}, Lcom/android/launcher2/MenuAppsSearch;->isAppInstalled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "com.sec.android.app.samsungapps"

    invoke-static {v0}, Lcom/android/launcher2/MenuAppsSearch;->isLauncherCategory(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/android/launcher2/MenuAppsSearch;->startGalaxyAppsSearch()V

    :cond_3
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/MenuAppsSearch;->mSkippedFirst:Z

    return v4

    :cond_4
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsSearch;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsSearch;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsSearch;->mRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 2

    const/4 v1, 0x1

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportGalaxyAppsSearch()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/android/launcher2/MenuAppsSearch;->mFromTextQuerySubmit:Z

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsSearch;->closeKeyboard()V

    return v1
.end method

.method public onResume(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsSearch;->clearGalaxyAppsResult()V

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportGalaxyAppsSearch()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsSearch;->initialiseGalaxyAppSearch()V

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsSearch;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsSearch;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsSearch;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsSearch;->mSearchEdit:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsSearch;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsSearch;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsSearch;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    invoke-static {p1}, Lcom/android/launcher2/LauncherFeature;->setSupportGalaxyAppsSearch(Z)V

    return-void
.end method

.method public openKeyboard()V
    .locals 6

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsSearch;->mSearchEdit:Landroid/widget/SearchView;

    invoke-virtual {v1}, Landroid/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsSearch;->mSearchEdit:Landroid/widget/SearchView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/SearchView;->setFocusable(Z)V

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsSearch;->mSearchEdit:Landroid/widget/SearchView;

    invoke-virtual {v1}, Landroid/widget/SearchView;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->semIsInputMethodShown()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsSearch;->mHandler:Landroid/os/Handler;

    if-nez v1, :cond_0

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/launcher2/MenuAppsSearch;->mHandler:Landroid/os/Handler;

    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsSearch;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/launcher2/MenuAppsSearch$9;

    invoke-direct {v2, p0, v0}, Lcom/android/launcher2/MenuAppsSearch$9;-><init>(Lcom/android/launcher2/MenuAppsSearch;Landroid/view/inputmethod/InputMethodManager;)V

    const-wide/16 v4, 0x96

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method public refreschRecentView()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsSearch;->mRecentAdapter:Lcom/android/launcher2/MenuAppsSearch$RecentAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsSearch;->mRecentAdapter:Lcom/android/launcher2/MenuAppsSearch$RecentAdapter;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppsSearch$RecentAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public refreshFilter()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsSearch;->mSearchAdapter:Lcom/android/launcher2/MenuAppsSearch$SearchAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsSearch;->mSearchAdapter:Lcom/android/launcher2/MenuAppsSearch$SearchAdapter;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppsSearch$SearchAdapter;->runFilter()V

    :cond_0
    return-void
.end method

.method public requestFocusSearchEdit()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsSearch;->mSearchEdit:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->requestFocus()Z

    return-void
.end method

.method public restore(Landroid/os/Bundle;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    const-string v1, "MENU_APP_SEARCH_PATTERN"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsSearch;->mSearchEdit:Landroid/widget/SearchView;

    invoke-virtual {v1, v0, v5}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    const-string v1, "MenuAppsSearch"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "restore:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "MENU_APP_KEYBOARD_IS_UP"

    invoke-virtual {p1, v1, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsSearch;->mSearchEdit:Landroid/widget/SearchView;

    invoke-virtual {v1, v4}, Landroid/widget/SearchView;->setIconified(Z)V

    :goto_0
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsSearch;->mRecentAppsMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsSearch;->mNotiTextView:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsSearch;->mSearchEdit:Landroid/widget/SearchView;

    invoke-virtual {v1}, Landroid/widget/SearchView;->clearFocus()V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsSearch;->mNotiTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method public save(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "MENU_APP_SEARCH_PATTERN"

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsSearch;->mSearchEdit:Landroid/widget/SearchView;

    invoke-virtual {v1}, Landroid/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "MENU_APP_KEYBOARD_IS_UP"

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsSearch;->mSearchEdit:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "input_method"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isAcceptingText()Z

    move-result v0

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setAppItems(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/launcher2/AppItem;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/launcher2/MenuAppsSearch;->mAppItems:Ljava/util/Map;

    invoke-direct {p0}, Lcom/android/launcher2/MenuAppsSearch;->getRecentApp()V

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsSearch;->refreschRecentView()V

    return-void
.end method

.method setGalaxySearchTextColor()V
    .locals 8

    const/high16 v7, 0x40800000    # 4.0f

    const/4 v6, 0x0

    iget-object v5, p0, Lcom/android/launcher2/MenuAppsSearch;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget-boolean v5, Lcom/android/launcher2/Launcher;->sIsNeedDarkColor:Z

    if-eqz v5, :cond_2

    const v5, 0x7f0e002f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    const v5, 0x7f0e002e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    const/4 v3, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v5, p0, Lcom/android/launcher2/MenuAppsSearch;->mSearchGalaxyAppsResultTitle:Landroid/widget/TextView;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v5, p0, Lcom/android/launcher2/MenuAppsSearch;->mSearchGalaxyAppsResultTitle:Landroid/widget/TextView;

    invoke-virtual {v5, v3, v6, v2, v0}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    iget-object v5, p0, Lcom/android/launcher2/MenuAppsSearch;->mViewMoreGalaxyAppsTitle:Landroid/widget/TextView;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->isTabletModel()Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/launcher2/MenuAppsSearch;->mViewMoreGalaxyAppsTitle:Landroid/widget/TextView;

    invoke-virtual {v5, v3, v6, v7, v0}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    :cond_0
    iget-object v5, p0, Lcom/android/launcher2/MenuAppsSearch;->mViewMorePlayStoreTitle:Landroid/widget/TextView;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->isTabletModel()Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/android/launcher2/MenuAppsSearch;->mViewMorePlayStoreTitle:Landroid/widget/TextView;

    invoke-virtual {v5, v3, v6, v7, v0}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    :cond_1
    iget-object v5, p0, Lcom/android/launcher2/MenuAppsSearch;->mGalaxySearchResultLine:Landroid/widget/FrameLayout;

    invoke-virtual {v5, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    return-void

    :cond_2
    const v5, 0x7f0e0047

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    const v5, 0x7f0e000a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    const/high16 v3, 0x40000000    # 2.0f

    const/high16 v2, 0x40400000    # 3.0f

    goto :goto_0
.end method

.method public setQueryString(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsSearch;->mSearchEdit:Landroid/widget/SearchView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsSearch;->mSearchEdit:Landroid/widget/SearchView;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    invoke-virtual {p0, p1}, Lcom/android/launcher2/MenuAppsSearch;->onQueryTextChange(Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method setSearchHistoryTextColor()V
    .locals 9

    const/4 v8, 0x0

    iget-object v6, p0, Lcom/android/launcher2/MenuAppsSearch;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget-boolean v6, Lcom/android/launcher2/Launcher;->sIsNeedDarkColor:Z

    if-eqz v6, :cond_2

    const v6, 0x7f0e002f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    const v6, 0x7f0e002e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    const/4 v4, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v6, p0, Lcom/android/launcher2/MenuAppsSearch;->mSearchSubTitleText:Landroid/widget/TextView;

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v6, p0, Lcom/android/launcher2/MenuAppsSearch;->mSearchSubTitle:Landroid/widget/TextView;

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v6, p0, Lcom/android/launcher2/MenuAppsSearch;->mSearchSubTitle:Landroid/widget/TextView;

    invoke-virtual {v6, v4, v8, v2, v0}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    iget-object v6, p0, Lcom/android/launcher2/MenuAppsSearch;->mNotiTextView:Landroid/widget/TextView;

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->isTabletModel()Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/android/launcher2/MenuAppsSearch;->mNotiTextView:Landroid/widget/TextView;

    const/high16 v7, 0x40000000    # 2.0f

    invoke-virtual {v6, v7, v8, v2, v0}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    :cond_0
    iget-object v6, p0, Lcom/android/launcher2/MenuAppsSearch;->mSearchEdit:Landroid/widget/SearchView;

    invoke-virtual {v6}, Landroid/widget/SearchView;->semGetAutoCompleteView()Landroid/widget/AutoCompleteTextView;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/widget/AutoCompleteTextView;->setTextColor(I)V

    iget-object v6, p0, Lcom/android/launcher2/MenuAppsSearch;->mSearchEdit:Landroid/widget/SearchView;

    invoke-virtual {v6}, Landroid/widget/SearchView;->semGetAutoCompleteView()Landroid/widget/AutoCompleteTextView;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/widget/AutoCompleteTextView;->setHintTextColor(I)V

    iget-object v6, p0, Lcom/android/launcher2/MenuAppsSearch;->mSearchResultLine:Landroid/widget/FrameLayout;

    invoke-virtual {v6, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportSearchBarApps()Z

    move-result v6

    if-eqz v6, :cond_1

    new-instance v3, Landroid/graphics/LightingColorFilter;

    const/4 v6, 0x0

    invoke-direct {v3, v1, v6}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    iget-object v6, p0, Lcom/android/launcher2/MenuAppsSearch;->mCloseBtn:Landroid/widget/ImageView;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/launcher2/MenuAppsSearch;->mCloseBtn:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_1
    return-void

    :cond_2
    const v6, 0x7f0e0047

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    const v6, 0x7f0e000a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    const/high16 v4, 0x40000000    # 2.0f

    const/high16 v2, 0x40400000    # 3.0f

    goto :goto_0
.end method

.method public switchGridView(Z)V
    .locals 5

    const/16 v4, 0x8

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsSearch;->mResultGridView:Landroid/widget/GridView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsSearch;->mRecentGridView:Landroid/widget/GridView;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/WindowManager$LayoutParams;->semAddExtensionFlags(I)V

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsSearch;->mResultGridView:Landroid/widget/GridView;

    invoke-virtual {v1, v3}, Landroid/widget/GridView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsSearch;->mRecentGridView:Landroid/widget/GridView;

    invoke-virtual {v1, v4}, Landroid/widget/GridView;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, v2}, Lcom/android/launcher2/MenuAppsSearch;->showHistoryTitle(Z)V

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/WindowManager$LayoutParams;->semClearExtensionFlags(I)V

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsSearch;->mResultGridView:Landroid/widget/GridView;

    invoke-virtual {v1, v4}, Landroid/widget/GridView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsSearch;->mRecentGridView:Landroid/widget/GridView;

    invoke-virtual {v1, v3}, Landroid/widget/GridView;->setVisibility(I)V

    goto :goto_0
.end method
