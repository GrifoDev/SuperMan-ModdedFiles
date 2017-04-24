.class public Lcom/android/launcher2/searchapp/SearchAppListFragment;
.super Landroid/app/Fragment;
.source "SearchAppListFragment.java"

# interfaces
.implements Landroid/widget/SearchView$OnQueryTextListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/searchapp/SearchAppListFragment$AppListAdapter;,
        Lcom/android/launcher2/searchapp/SearchAppListFragment$SearchListAdapter;,
        Lcom/android/launcher2/searchapp/SearchAppListFragment$SearchFilter;,
        Lcom/android/launcher2/searchapp/SearchAppListFragment$AppListMode;,
        Lcom/android/launcher2/searchapp/SearchAppListFragment$SipHideListener;,
        Lcom/android/launcher2/searchapp/SearchAppListFragment$Filter;,
        Lcom/android/launcher2/searchapp/SearchAppListFragment$OperationListener;
    }
.end annotation


# static fields
.field private static final APP_RELOAD_INTERVAL:I = 0x12c

.field private static final FLAG_ENABLE_SHOW_ALL_APPS:Z = false

.field private static final SHOW_BUTTON_BACKGROUND:Ljava/lang/String; = "show_button_background"

.field private static final TAG:Ljava/lang/String; = "SearchAppListFragment"

.field private static mFromAppsEditMode:Z

.field private static mRefFolderItem:Lcom/android/launcher2/FolderItem;


# instance fields
.field private mAdapter:Lcom/android/launcher2/searchapp/SearchAppListFragment$AppListAdapter;

.field private mAddButton:Landroid/widget/TextView;

.field private mAppFolderItem:Lcom/android/launcher2/AppFolderItem;

.field private mAppListView:Landroid/widget/ListView;

.field private mApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/searchapp/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mAppsToShow:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/searchapp/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mBackupSoftInputParams:I

.field private mChangeShowButtonBackgroundObserver:Landroid/database/ContentObserver;

.field mCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mCheckedItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/BaseItem;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field mEnableCheck:Z

.field private mEnableSelectAll:Z

.field private mFirstCount:I

.field private mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private mHomeFolderItem:Lcom/android/launcher2/HomeFolderItem;

.field mIconClickListener:Landroid/view/View$OnClickListener;

.field private mIsHomeView:Z

.field private mListContainer:Lcom/android/launcher2/searchapp/AlphabeticalListContainer;

.field private mListItemCount:I

.field private mListItemCountMax:I

.field private mListener:Lcom/android/launcher2/searchapp/SearchAppListFragment$OperationListener;

.field private mMode:Lcom/android/launcher2/searchapp/SearchAppListFragment$AppListMode;

.field private mNoResultTextLayout:Landroid/widget/LinearLayout;

.field private mNoResultTextView:Landroid/widget/TextView;

.field private mPreCheckedItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPrefixHighlighter:Lcom/android/launcher2/searchapp/PrefixHighlighter;

.field mReceiver:Landroid/content/BroadcastReceiver;

.field private mRes:Landroid/content/res/Resources;

.field private mRootLayout:Landroid/view/View;

.field private mSearchAdapter:Lcom/android/launcher2/searchapp/SearchAppListFragment$SearchListAdapter;

.field private mSearchAppController:Lcom/android/launcher2/searchapp/SearchAppController;

.field private mSearchEdit:Landroid/widget/SearchView;

.field private mSearchEditText:Landroid/widget/EditText;

.field private mSearchListContainer:Lcom/android/launcher2/searchapp/AlphabeticalSearchListContainer;

.field private mSearchListView:Landroid/widget/ListView;

.field private mSearchSubResultText:Landroid/widget/TextView;

.field private mSearchSubTitleBar:Landroid/widget/LinearLayout;

.field private mSearchSubTitleText:Landroid/widget/TextView;

.field private mSelectedCnt:I

.field private mSelectionLayout:Landroid/widget/LinearLayout;

.field private mSelectionText:Landroid/widget/TextView;

.field private mSipHideListener:Lcom/android/launcher2/searchapp/SearchAppListFragment$SipHideListener;

.field private mSupportSearchIndex:Z

.field private mThemeColor:I

.field private mheader:Landroid/widget/FrameLayout;

.field private mkeyConsumeListener:Landroid/view/View$OnKeyListener;

.field private utils:Lcom/android/launcher2/searchapp/SearchAppLocaleUtils;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mThemeColor:I

    iput-boolean v1, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mEnableSelectAll:Z

    iput-boolean v1, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mEnableCheck:Z

    sget-object v0, Lcom/android/launcher2/searchapp/SearchAppListFragment$AppListMode;->SEARCH:Lcom/android/launcher2/searchapp/SearchAppListFragment$AppListMode;

    iput-object v0, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mMode:Lcom/android/launcher2/searchapp/SearchAppListFragment$AppListMode;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mSearchAppController:Lcom/android/launcher2/searchapp/SearchAppController;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mPreCheckedItems:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mCheckedItems:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mSupportSearchIndex:Z

    iput-boolean v1, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mIsHomeView:Z

    new-instance v0, Lcom/android/launcher2/searchapp/SearchAppListFragment$1;

    invoke-direct {v0, p0}, Lcom/android/launcher2/searchapp/SearchAppListFragment$1;-><init>(Lcom/android/launcher2/searchapp/SearchAppListFragment;)V

    iput-object v0, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mSipHideListener:Lcom/android/launcher2/searchapp/SearchAppListFragment$SipHideListener;

    new-instance v0, Lcom/android/launcher2/searchapp/SearchAppListFragment$2;

    invoke-direct {v0, p0}, Lcom/android/launcher2/searchapp/SearchAppListFragment$2;-><init>(Lcom/android/launcher2/searchapp/SearchAppListFragment;)V

    iput-object v0, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    new-instance v0, Lcom/android/launcher2/searchapp/SearchAppListFragment$6;

    invoke-direct {v0, p0}, Lcom/android/launcher2/searchapp/SearchAppListFragment$6;-><init>(Lcom/android/launcher2/searchapp/SearchAppListFragment;)V

    iput-object v0, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mkeyConsumeListener:Landroid/view/View$OnKeyListener;

    iput v1, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mSelectedCnt:I

    new-instance v0, Lcom/android/launcher2/searchapp/SearchAppListFragment$11;

    invoke-direct {v0, p0}, Lcom/android/launcher2/searchapp/SearchAppListFragment$11;-><init>(Lcom/android/launcher2/searchapp/SearchAppListFragment;)V

    iput-object v0, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/launcher2/searchapp/SearchAppListFragment$14;

    invoke-direct {v0, p0}, Lcom/android/launcher2/searchapp/SearchAppListFragment$14;-><init>(Lcom/android/launcher2/searchapp/SearchAppListFragment;)V

    iput-object v0, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    new-instance v0, Lcom/android/launcher2/searchapp/SearchAppListFragment$15;

    invoke-direct {v0, p0}, Lcom/android/launcher2/searchapp/SearchAppListFragment$15;-><init>(Lcom/android/launcher2/searchapp/SearchAppListFragment;)V

    iput-object v0, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mIconClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/launcher2/searchapp/SearchAppListFragment$17;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/launcher2/searchapp/SearchAppListFragment$17;-><init>(Lcom/android/launcher2/searchapp/SearchAppListFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mChangeShowButtonBackgroundObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher2/searchapp/SearchAppListFragment;)Landroid/widget/SearchView;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mSearchEdit:Landroid/widget/SearchView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/launcher2/searchapp/SearchAppListFragment;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mRootLayout:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/launcher2/searchapp/SearchAppListFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mIsHomeView:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/android/launcher2/searchapp/SearchAppListFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher2/searchapp/SearchAppListFragment;->setPreCheckedOfFolderHome()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/launcher2/searchapp/SearchAppListFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher2/searchapp/SearchAppListFragment;->setPreCheckedOfFolderApp()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/launcher2/searchapp/SearchAppListFragment;)Lcom/android/launcher2/searchapp/AlphabeticalListContainer;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mListContainer:Lcom/android/launcher2/searchapp/AlphabeticalListContainer;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/launcher2/searchapp/SearchAppListFragment;)Lcom/android/launcher2/searchapp/AlphabeticalSearchListContainer;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mSearchListContainer:Lcom/android/launcher2/searchapp/AlphabeticalSearchListContainer;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/launcher2/searchapp/SearchAppListFragment;)Lcom/android/launcher2/searchapp/SearchAppListFragment$SearchListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mSearchAdapter:Lcom/android/launcher2/searchapp/SearchAppListFragment$SearchListAdapter;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/launcher2/searchapp/SearchAppListFragment;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mAppsToShow:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/launcher2/searchapp/SearchAppListFragment;)Lcom/android/launcher2/searchapp/SearchAppLocaleUtils;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->utils:Lcom/android/launcher2/searchapp/SearchAppLocaleUtils;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/launcher2/searchapp/SearchAppListFragment;)Landroid/content/res/Resources;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mRes:Landroid/content/res/Resources;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/launcher2/searchapp/SearchAppListFragment;)I
    .locals 1

    iget v0, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mListItemCount:I

    return v0
.end method

.method static synthetic access$1902(Lcom/android/launcher2/searchapp/SearchAppListFragment;I)I
    .locals 0

    iput p1, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mListItemCount:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/launcher2/searchapp/SearchAppListFragment;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher2/searchapp/SearchAppListFragment;->setBackgroundAndStatusbar(Z)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/launcher2/searchapp/SearchAppListFragment;)Lcom/android/launcher2/searchapp/PrefixHighlighter;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mPrefixHighlighter:Lcom/android/launcher2/searchapp/PrefixHighlighter;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/android/launcher2/searchapp/SearchAppListFragment;Lcom/android/launcher2/searchapp/PrefixHighlighter;)Lcom/android/launcher2/searchapp/PrefixHighlighter;
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mPrefixHighlighter:Lcom/android/launcher2/searchapp/PrefixHighlighter;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/android/launcher2/searchapp/SearchAppListFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mSupportSearchIndex:Z

    return v0
.end method

.method static synthetic access$2200(Lcom/android/launcher2/searchapp/SearchAppListFragment;)I
    .locals 1

    iget v0, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mListItemCountMax:I

    return v0
.end method

.method static synthetic access$2300(Lcom/android/launcher2/searchapp/SearchAppListFragment;I)Ljava/util/ArrayList;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/launcher2/searchapp/SearchAppListFragment;->reConsistAppInfoFilter(I)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/launcher2/searchapp/SearchAppListFragment;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher2/searchapp/SearchAppListFragment;->setSelectionCount(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/launcher2/searchapp/SearchAppListFragment;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mAddButton:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/launcher2/searchapp/SearchAppListFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher2/searchapp/SearchAppListFragment;->addToFolder()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/launcher2/searchapp/SearchAppListFragment;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/launcher2/searchapp/SearchAppListFragment;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mNoResultTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/launcher2/searchapp/SearchAppListFragment;)Lcom/android/launcher2/searchapp/SearchAppListFragment$AppListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mAdapter:Lcom/android/launcher2/searchapp/SearchAppListFragment$AppListAdapter;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/launcher2/searchapp/SearchAppListFragment;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mApps:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/launcher2/searchapp/SearchAppListFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mApps:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/launcher2/searchapp/SearchAppListFragment;)Lcom/android/launcher2/searchapp/SearchAppController;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mSearchAppController:Lcom/android/launcher2/searchapp/SearchAppController;

    return-object v0
.end method

.method private addToFolder()V
    .locals 35

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v28

    const/16 v25, 0x0

    const/16 v23, 0x0

    const/16 v31, 0x0

    if-eqz v28, :cond_0

    invoke-virtual/range {v28 .. v28}, Lcom/android/launcher2/Launcher;->getHomeView()Lcom/android/launcher2/HomeView;

    move-result-object v23

    invoke-virtual/range {v28 .. v28}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v31

    :cond_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mAppsToShow:Ljava/util/ArrayList;

    if-eqz v5, :cond_1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mAppsToShow:Ljava/util/ArrayList;

    if-eqz v5, :cond_3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mAppsToShow:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_3

    :cond_1
    const-string v5, "SearchAppListFragment"

    const-string v6, "no apps"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void

    :cond_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mPreCheckedItems:Ljava/util/ArrayList;

    if-eqz v5, :cond_4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mCheckedItems:Ljava/util/ArrayList;

    if-nez v5, :cond_5

    :cond_4
    const-string v5, "SearchAppListFragment"

    const-string v6, "mPreCheckedItems or mCheckedItems is null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    if-eqz v23, :cond_16

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mIsHomeView:Z

    if-eqz v5, :cond_16

    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mAppsToShow:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_6
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/searchapp/AppInfo;

    if-eqz v4, :cond_6

    invoke-virtual {v4}, Lcom/android/launcher2/searchapp/AppInfo;->getChecked()Z

    move-result v6

    if-eqz v6, :cond_6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mPreCheckedItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Lcom/android/launcher2/searchapp/AppInfo;->getAppName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mCheckedItems:Ljava/util/ArrayList;

    sget-object v7, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v4}, Lcom/android/launcher2/searchapp/AppInfo;->getId()Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lcom/android/launcher2/MenuAppModel;->findItemById(J)Lcom/android/launcher2/AppItem;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_7
    const-string v5, "SearchAppListFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "selected = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mCheckedItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mAppsToShow:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", folder item = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mPreCheckedItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mCheckedItems:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v29, Ljava/util/ArrayList;

    invoke-direct/range {v29 .. v29}, Ljava/util/ArrayList;-><init>()V

    const/16 v24, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mCheckedItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    move/from16 v0, v24

    if-ge v0, v5, :cond_12

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mCheckedItems:Ljava/util/ArrayList;

    move/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/launcher2/AppItem;

    if-nez v11, :cond_8

    :goto_3
    add-int/lit8 v24, v24, 0x1

    goto :goto_2

    :cond_8
    const/4 v5, 0x1

    iput-boolean v5, v11, Lcom/android/launcher2/AppItem;->mDirty:Z

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isHomeOnlyModeEnabled()Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-virtual/range {v23 .. v23}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v34

    invoke-virtual/range {v23 .. v23}, Lcom/android/launcher2/HomeView;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v21

    if-eqz v34, :cond_d

    invoke-virtual/range {v34 .. v34}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v32

    const/16 v27, 0x0

    :goto_4
    move/from16 v0, v27

    move/from16 v1, v32

    if-ge v0, v1, :cond_d

    move-object/from16 v0, v34

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Lcom/android/launcher2/CellLayout;

    const/4 v5, 0x0

    iput-boolean v5, v12, Lcom/android/launcher2/CellLayout;->mTempPage:Z

    const/16 v26, 0x0

    :goto_5
    invoke-virtual {v12}, Lcom/android/launcher2/CellLayout;->getPageChildCount()I

    move-result v5

    move/from16 v0, v26

    if-ge v0, v5, :cond_9

    move/from16 v0, v26

    invoke-virtual {v12, v0}, Lcom/android/launcher2/CellLayout;->getChildOnPageAt(I)Landroid/view/View;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v33

    move-object/from16 v19, v33

    check-cast v19, Lcom/android/launcher2/HomeItem;

    if-eqz v19, :cond_a

    move-object/from16 v0, v19

    instance-of v5, v0, Lcom/android/launcher2/HomeShortcutItem;

    if-eqz v5, :cond_a

    move-object/from16 v0, v19

    iget-object v6, v0, Lcom/android/launcher2/HomeItem;->mTitle:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mCheckedItems:Ljava/util/ArrayList;

    move/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/BaseItem;

    iget-object v5, v5, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c

    move-object/from16 v0, v29

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    add-int/lit8 v27, v27, 0x1

    goto :goto_4

    :cond_a
    if-eqz v19, :cond_c

    move-object/from16 v0, v19

    instance-of v5, v0, Lcom/android/launcher2/HomeFolderItem;

    if-eqz v5, :cond_c

    check-cast v19, Lcom/android/launcher2/HomeFolderItem;

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher2/HomeFolderItem;->getAllItems()Ljava/util/List;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/launcher2/HomeItem;

    iget-object v7, v15, Lcom/android/launcher2/HomeItem;->mTitle:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mCheckedItems:Ljava/util/ArrayList;

    move/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/BaseItem;

    iget-object v5, v5, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    move-object/from16 v0, v29

    invoke-interface {v0, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_c
    add-int/lit8 v26, v26, 0x1

    goto :goto_5

    :cond_d
    if-eqz v21, :cond_e

    invoke-virtual/range {v21 .. v21}, Lcom/android/launcher2/Hotseat;->getLayout()Lcom/android/launcher2/CellLayout;

    move-result-object v13

    check-cast v13, Lcom/android/launcher2/CellLayoutHotseat;

    if-eqz v13, :cond_e

    const/16 v30, 0x0

    :goto_6
    invoke-virtual {v13}, Lcom/android/launcher2/CellLayoutHotseat;->getPageChildCount()I

    move-result v5

    move/from16 v0, v30

    if-ge v0, v5, :cond_e

    move/from16 v0, v30

    invoke-virtual {v13, v0}, Lcom/android/launcher2/CellLayoutHotseat;->getChildOnPageAt(I)Landroid/view/View;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v33

    move-object/from16 v22, v33

    check-cast v22, Lcom/android/launcher2/HomeItem;

    if-eqz v22, :cond_f

    move-object/from16 v0, v22

    instance-of v5, v0, Lcom/android/launcher2/HomeShortcutItem;

    if-eqz v5, :cond_f

    move-object/from16 v0, v22

    iget-object v6, v0, Lcom/android/launcher2/HomeItem;->mTitle:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mCheckedItems:Ljava/util/ArrayList;

    move/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/BaseItem;

    iget-object v5, v5, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_11

    move-object/from16 v0, v29

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_e
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v11, v5}, Lcom/android/launcher2/AppItem;->makeHomeItem(Landroid/content/Context;)Lcom/android/launcher2/HomeShortcutItem;

    move-result-object v19

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_f
    if-eqz v22, :cond_11

    move-object/from16 v0, v22

    instance-of v5, v0, Lcom/android/launcher2/HomeFolderItem;

    if-eqz v5, :cond_11

    check-cast v22, Lcom/android/launcher2/HomeFolderItem;

    invoke-virtual/range {v22 .. v22}, Lcom/android/launcher2/HomeFolderItem;->getAllItems()Ljava/util/List;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_10
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_11

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/launcher2/HomeItem;

    if-eqz v15, :cond_10

    iget-object v7, v15, Lcom/android/launcher2/HomeItem;->mTitle:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mCheckedItems:Ljava/util/ArrayList;

    move/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/BaseItem;

    iget-object v5, v5, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_10

    move-object/from16 v0, v29

    invoke-interface {v0, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_11
    add-int/lit8 v30, v30, 0x1

    goto/16 :goto_6

    :cond_12
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isHomeOnlyModeEnabled()Z

    move-result v5

    if-eqz v5, :cond_13

    invoke-interface/range {v29 .. v29}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_13

    move-object/from16 v0, v23

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/launcher2/HomeView;->bindHomeItemsRemoved(Ljava/util/List;)V

    :cond_13
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mHomeFolderItem:Lcom/android/launcher2/HomeFolderItem;

    if-eqz v5, :cond_14

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mHomeFolderItem:Lcom/android/launcher2/HomeFolderItem;

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Lcom/android/launcher2/HomeView;->setStateTargetFolder(Lcom/android/launcher2/FolderItem;)V

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/HomeView;->addShortcutItemsIntoExistingFolder(Ljava/util/List;Z)V

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportFolderLock()Z

    move-result v5

    if-eqz v5, :cond_14

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->enableFolderLock()Z

    move-result v5

    if-eqz v5, :cond_14

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mHomeFolderItem:Lcom/android/launcher2/HomeFolderItem;

    invoke-virtual {v5}, Lcom/android/launcher2/HomeFolderItem;->isLockedFolder()Z

    move-result v5

    if-eqz v5, :cond_14

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/launcher2/FolderLock;->getInstance(Landroid/content/Context;)Lcom/android/launcher2/FolderLock;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mHomeFolderItem:Lcom/android/launcher2/HomeFolderItem;

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Lcom/android/launcher2/FolderLock;->lockAppsInFolder(Lcom/android/launcher2/FolderItem;)V

    :cond_14
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mListener:Lcom/android/launcher2/searchapp/SearchAppListFragment$OperationListener;

    if-eqz v5, :cond_15

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mListener:Lcom/android/launcher2/searchapp/SearchAppListFragment$OperationListener;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mCheckedItems:Ljava/util/ArrayList;

    invoke-interface {v5, v6}, Lcom/android/launcher2/searchapp/SearchAppListFragment$OperationListener;->onCompleted(Ljava/util/ArrayList;)V

    :cond_15
    :goto_7
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mCheckedItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_2

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v5

    const-string v6, "FAMA"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mCheckedItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    const-wide/16 v8, -0x1

    const/4 v10, 0x0

    invoke-static/range {v5 .. v10}, Lcom/android/launcher2/Logging;->insertLog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;JZ)V

    goto/16 :goto_0

    :cond_16
    if-eqz v31, :cond_15

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mIsHomeView:Z

    if-nez v5, :cond_15

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mAppsToShow:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_17
    :goto_8
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_18

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/searchapp/AppInfo;

    invoke-virtual {v4}, Lcom/android/launcher2/searchapp/AppInfo;->getChecked()Z

    move-result v6

    if-eqz v6, :cond_17

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mPreCheckedItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Lcom/android/launcher2/searchapp/AppInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_17

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mCheckedItems:Ljava/util/ArrayList;

    sget-object v7, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v4}, Lcom/android/launcher2/searchapp/AppInfo;->getId()Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lcom/android/launcher2/MenuAppModel;->findItemById(J)Lcom/android/launcher2/AppItem;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_18
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mAppFolderItem:Lcom/android/launcher2/AppFolderItem;

    if-eqz v5, :cond_1a

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mAppFolderItem:Lcom/android/launcher2/AppFolderItem;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mCheckedItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Lcom/android/launcher2/AppFolderItem;->addItemForMulti(Ljava/util/ArrayList;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mAppFolderItem:Lcom/android/launcher2/AppFolderItem;

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/android/launcher2/AppFolderItem;->mDirty:Z

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportFolderLock()Z

    move-result v5

    if-eqz v5, :cond_19

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->enableFolderLock()Z

    move-result v5

    if-eqz v5, :cond_19

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mAppFolderItem:Lcom/android/launcher2/AppFolderItem;

    invoke-virtual {v5}, Lcom/android/launcher2/AppFolderItem;->isLockedFolder()Z

    move-result v5

    if-eqz v5, :cond_19

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/launcher2/FolderLock;->getInstance(Landroid/content/Context;)Lcom/android/launcher2/FolderLock;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mAppFolderItem:Lcom/android/launcher2/AppFolderItem;

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Lcom/android/launcher2/FolderLock;->lockAppsInFolder(Lcom/android/launcher2/FolderItem;)V

    :cond_19
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mListener:Lcom/android/launcher2/searchapp/SearchAppListFragment$OperationListener;

    if-eqz v5, :cond_1a

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mListener:Lcom/android/launcher2/searchapp/SearchAppListFragment$OperationListener;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mCheckedItems:Ljava/util/ArrayList;

    invoke-interface {v5, v6}, Lcom/android/launcher2/searchapp/SearchAppListFragment$OperationListener;->onCompleted(Ljava/util/ArrayList;)V

    :cond_1a
    sget-boolean v5, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mFromAppsEditMode:Z

    if-nez v5, :cond_1b

    sget-object v5, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v5}, Lcom/android/launcher2/MenuAppModel;->editBegin()V

    :cond_1b
    invoke-virtual/range {v31 .. v31}, Lcom/android/launcher2/MenuView;->getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher2/MenuAppsGrid;->appModelUpdated()V

    sget-boolean v5, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mFromAppsEditMode:Z

    if-nez v5, :cond_15

    sget-object v5, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v5}, Lcom/android/launcher2/MenuAppModel;->editCommit()V

    goto/16 :goto_7
.end method

.method private changeSearchViewColor(Landroid/widget/SearchView;)V
    .locals 3

    sget-boolean v2, Lcom/android/launcher2/Launcher;->sIsNeedDarkColor:Z

    if-eqz v2, :cond_0

    const v1, 0x7f0d002e

    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher2/searchapp/SearchAppListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/SearchView;->semGetAutoCompleteView()Landroid/widget/AutoCompleteTextView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/AutoCompleteTextView;->setTextColor(I)V

    invoke-virtual {p1}, Landroid/widget/SearchView;->semGetAutoCompleteView()Landroid/widget/AutoCompleteTextView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/AutoCompleteTextView;->setHintTextColor(I)V

    return-void

    :cond_0
    const v1, 0x7f0d0013

    goto :goto_0
.end method

.method private checkAllItem(Z)V
    .locals 6

    iget-object v4, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mSearchAppController:Lcom/android/launcher2/searchapp/SearchAppController;

    invoke-virtual {v4}, Lcom/android/launcher2/searchapp/SearchAppController;->getAppsMap()Ljava/util/TreeMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mSearchAppController:Lcom/android/launcher2/searchapp/SearchAppController;

    invoke-virtual {v4}, Lcom/android/launcher2/searchapp/SearchAppController;->getAppsMap()Ljava/util/TreeMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mSearchAppController:Lcom/android/launcher2/searchapp/SearchAppController;

    invoke-virtual {v4}, Lcom/android/launcher2/searchapp/SearchAppController;->getAppsMap()Ljava/util/TreeMap;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/searchapp/AppInfo;

    invoke-virtual {v0}, Lcom/android/launcher2/searchapp/AppInfo;->getEnabled()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v0, p1}, Lcom/android/launcher2/searchapp/AppInfo;->setChecked(Z)V

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mAdapter:Lcom/android/launcher2/searchapp/SearchAppListFragment$AppListAdapter;

    invoke-virtual {v4}, Lcom/android/launcher2/searchapp/SearchAppListFragment$AppListAdapter;->notifyDataSetChanged()V

    iget-object v4, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mSearchAdapter:Lcom/android/launcher2/searchapp/SearchAppListFragment$SearchListAdapter;

    invoke-virtual {v4}, Lcom/android/launcher2/searchapp/SearchAppListFragment$SearchListAdapter;->notifyDataSetChanged()V

    goto :goto_0

    :cond_3
    return-void
.end method

.method private filterAppsToShow()V
    .locals 3

    iget-object v1, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mAppsToShow:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mAppsToShow:Ljava/util/ArrayList;

    :goto_0
    iget-object v1, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mApps:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/searchapp/AppInfo;

    invoke-virtual {v0}, Lcom/android/launcher2/searchapp/AppInfo;->getEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher2/searchapp/AppInfo;->getHidden()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mAppsToShow:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mAppsToShow:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private getAppItemString(Lcom/android/launcher2/searchapp/AppInfo;)Ljava/lang/String;
    .locals 6

    invoke-virtual {p1}, Lcom/android/launcher2/searchapp/AppInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/android/launcher2/searchapp/AppInfo;->getUserHandle()Lcom/android/launcher2/compat/UserHandleCompat;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Lcom/android/launcher2/searchapp/AppInfo;->getUserHandle()Lcom/android/launcher2/compat/UserHandleCompat;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/compat/UserHandleCompat;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/android/launcher2/Utilities;->DEBUGGABLE()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "SearchAppListFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "appLoaded = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/android/launcher2/MenuAppLoader;->IsLoaded()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", getAppItemString() : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_1
    return-object v0

    :cond_1
    const-string v2, ""

    goto :goto_0

    :cond_2
    const-string v0, ""

    goto :goto_1
.end method

.method public static launchApp(Landroid/content/Intent;Landroid/content/Context;)V
    .locals 4

    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10200000

    invoke-virtual {p0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v1, 0x10000

    invoke-virtual {p0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "MENU"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to launch. tag= intent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "MENU"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Launcher does not have the permission to launch "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". Make sure to create a MAIN intent-filter for the corresponding activity "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "or use the exported attribute for this activity. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "tag="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " intent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static newInstance(Lcom/android/launcher2/FolderItem;Z)Lcom/android/launcher2/searchapp/SearchAppListFragment;
    .locals 1

    sput-object p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mRefFolderItem:Lcom/android/launcher2/FolderItem;

    sput-boolean p1, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mFromAppsEditMode:Z

    new-instance v0, Lcom/android/launcher2/searchapp/SearchAppListFragment;

    invoke-direct {v0}, Lcom/android/launcher2/searchapp/SearchAppListFragment;-><init>()V

    return-object v0
.end method

.method private populateData()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mAppListView:Landroid/widget/ListView;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mRootLayout:Landroid/view/View;

    const v1, 0x7f1000f0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mAppListView:Landroid/widget/ListView;

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mSearchListView:Landroid/widget/ListView;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mRootLayout:Landroid/view/View;

    const v1, 0x7f1000f4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mSearchListView:Landroid/widget/ListView;

    :cond_1
    return-void
.end method

.method private reConsistAppInfoFilter(I)Ljava/util/ArrayList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/searchapp/AppInfo;",
            ">;"
        }
    .end annotation

    const/4 v10, 0x0

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iget-object v8, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mAppsToShow:Ljava/util/ArrayList;

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mAppsToShow:Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_4

    iget-object v9, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->utils:Lcom/android/launcher2/searchapp/SearchAppLocaleUtils;

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/launcher2/searchapp/AppInfo;

    invoke-virtual {v8}, Lcom/android/launcher2/searchapp/AppInfo;->getAppName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8, v10}, Lcom/android/launcher2/searchapp/SearchAppLocaleUtils;->makeSectionString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    :goto_0
    iget-object v8, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mAppsToShow:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v4, v8, :cond_3

    iget-object v9, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->utils:Lcom/android/launcher2/searchapp/SearchAppLocaleUtils;

    iget-object v8, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mAppsToShow:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/launcher2/searchapp/AppInfo;

    invoke-virtual {v8}, Lcom/android/launcher2/searchapp/AppInfo;->getAppName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8, v10}, Lcom/android/launcher2/searchapp/SearchAppLocaleUtils;->makeSectionString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    add-int/lit8 v3, v3, 0x1

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    rem-int v8, v3, p1

    sub-int v2, p1, v8

    rem-int v8, v3, p1

    if-nez v8, :cond_1

    const/4 v2, 0x0

    :cond_1
    const/4 v5, 0x0

    :goto_2
    if-ge v5, v2, :cond_2

    add-int v8, v4, v6

    add-int/2addr v8, v5

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_2
    add-int/2addr v6, v2

    move-object v0, v1

    const/4 v3, 0x1

    goto :goto_1

    :cond_3
    const-string v8, "SearchAppListFragment"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "sumCount = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_3
    return-object v7

    :cond_5
    const-string v8, "SearchAppListFragment"

    const-string v9, "Apps list is null"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method private setAppItemString(Lcom/android/launcher2/BaseItem;)Ljava/lang/String;
    .locals 5

    invoke-virtual {p1}, Lcom/android/launcher2/BaseItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/android/launcher2/BaseItem;->getUserHandle()Lcom/android/launcher2/compat/UserHandleCompat;

    move-result-object v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/launcher2/BaseItem;->getUserHandle()Lcom/android/launcher2/compat/UserHandleCompat;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/compat/UserHandleCompat;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {}, Lcom/android/launcher2/Utilities;->DEBUGGABLE()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "SearchAppListFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "appLoaded = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/android/launcher2/MenuAppLoader;->IsLoaded()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", setAppItemString() : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_1
    return-object v0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string v0, ""

    goto :goto_1
.end method

.method private setBackgroundAndStatusbar(Z)V
    .locals 4

    const/16 v3, 0x800

    const v2, 0x3e4ccccd    # 0.2f

    sget-boolean v1, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mFromAppsEditMode:Z

    if-nez v1, :cond_0

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/Window;->clearFlags(I)V

    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mIsHomeView:Z

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getHomeView()Lcom/android/launcher2/HomeView;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v1

    if-eqz v1, :cond_1

    if-eqz p1, :cond_3

    invoke-virtual {v0}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/launcher2/Workspace;->setBackgroundDarken(F)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/Window;->addFlags(I)V

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->isFolderOpened()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/launcher2/Workspace;->setBackgroundDarken(F)V

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/launcher2/Workspace;->setBackgroundDarken(F)V

    goto :goto_1
.end method

.method private setFolderMultiSelectionView()V
    .locals 2

    sget-object v0, Lcom/android/launcher2/searchapp/SearchAppListFragment$AppListMode;->FOLDER:Lcom/android/launcher2/searchapp/SearchAppListFragment$AppListMode;

    iput-object v0, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mMode:Lcom/android/launcher2/searchapp/SearchAppListFragment$AppListMode;

    iget-object v0, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mSelectionLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mAddButton:Landroid/widget/TextView;

    sget-object v1, Lcom/android/launcher2/FocusHelper;->SEARCHAPPLIST_MENU_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v0, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mAddButton:Landroid/widget/TextView;

    new-instance v1, Lcom/android/launcher2/searchapp/SearchAppListFragment$9;

    invoke-direct {v1, p0}, Lcom/android/launcher2/searchapp/SearchAppListFragment$9;-><init>(Lcom/android/launcher2/searchapp/SearchAppListFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setPreCheckedOfFolderApp()V
    .locals 6

    iget-object v3, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mMode:Lcom/android/launcher2/searchapp/SearchAppListFragment$AppListMode;

    sget-object v4, Lcom/android/launcher2/searchapp/SearchAppListFragment$AppListMode;->FOLDER:Lcom/android/launcher2/searchapp/SearchAppListFragment$AppListMode;

    if-eq v3, v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mAppFolderItem:Lcom/android/launcher2/AppFolderItem;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mAppFolderItem:Lcom/android/launcher2/AppFolderItem;

    invoke-virtual {v3}, Lcom/android/launcher2/AppFolderItem;->getAllItems()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/BaseItem;

    iget-object v4, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mPreCheckedItems:Ljava/util/ArrayList;

    if-eqz v4, :cond_2

    if-eqz v1, :cond_2

    iget-object v4, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mPreCheckedItems:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcom/android/launcher2/searchapp/SearchAppListFragment;->setAppItemString(Lcom/android/launcher2/BaseItem;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mPreCheckedItems:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mPreCheckedItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_5

    iget-object v3, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mApps:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/searchapp/AppInfo;

    iget-object v4, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mPreCheckedItems:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/launcher2/searchapp/SearchAppListFragment;->getAppItemString(Lcom/android/launcher2/searchapp/AppInfo;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/android/launcher2/searchapp/AppInfo;->setChecked(Z)V

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/android/launcher2/searchapp/AppInfo;->setEnabled(Z)V

    goto :goto_2

    :cond_5
    invoke-direct {p0}, Lcom/android/launcher2/searchapp/SearchAppListFragment;->filterAppsToShow()V

    invoke-direct {p0}, Lcom/android/launcher2/searchapp/SearchAppListFragment;->setSelectionCount()Z

    goto :goto_0
.end method

.method private setPreCheckedOfFolderHome()V
    .locals 6

    iget-object v3, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mMode:Lcom/android/launcher2/searchapp/SearchAppListFragment$AppListMode;

    sget-object v4, Lcom/android/launcher2/searchapp/SearchAppListFragment$AppListMode;->FOLDER:Lcom/android/launcher2/searchapp/SearchAppListFragment$AppListMode;

    if-eq v3, v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mHomeFolderItem:Lcom/android/launcher2/HomeFolderItem;

    if-eqz v3, :cond_3

    const/4 v2, 0x0

    :goto_1
    iget-object v3, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mHomeFolderItem:Lcom/android/launcher2/HomeFolderItem;

    invoke-virtual {v3}, Lcom/android/launcher2/HomeFolderItem;->getItemCount()I

    move-result v3

    if-ge v2, v3, :cond_3

    iget-object v3, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mHomeFolderItem:Lcom/android/launcher2/HomeFolderItem;

    invoke-virtual {v3, v2}, Lcom/android/launcher2/HomeFolderItem;->getItemAt(I)Lcom/android/launcher2/BaseItem;

    move-result-object v1

    iget-object v3, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mPreCheckedItems:Ljava/util/ArrayList;

    if-eqz v3, :cond_2

    if-eqz v1, :cond_2

    iget-object v3, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mPreCheckedItems:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcom/android/launcher2/searchapp/SearchAppListFragment;->setAppItemString(Lcom/android/launcher2/BaseItem;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mPreCheckedItems:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mPreCheckedItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_5

    iget-object v3, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mApps:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/searchapp/AppInfo;

    iget-object v4, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mPreCheckedItems:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/launcher2/searchapp/SearchAppListFragment;->getAppItemString(Lcom/android/launcher2/searchapp/AppInfo;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/android/launcher2/searchapp/AppInfo;->setChecked(Z)V

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/android/launcher2/searchapp/AppInfo;->setEnabled(Z)V

    goto :goto_2

    :cond_5
    invoke-direct {p0}, Lcom/android/launcher2/searchapp/SearchAppListFragment;->filterAppsToShow()V

    invoke-direct {p0}, Lcom/android/launcher2/searchapp/SearchAppListFragment;->setSelectionCount()Z

    goto :goto_0
.end method

.method private setSelectionCount(Z)V
    .locals 7

    const/4 v2, 0x1

    const/4 v6, 0x0

    iget-object v1, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mAppsToShow:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v3, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mSelectedCnt:I

    if-eqz p1, :cond_0

    move v1, v2

    :goto_0
    add-int/2addr v1, v3

    iput v1, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mSelectedCnt:I

    iget-object v1, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mSelectionText:Landroid/widget/TextView;

    const-string v3, "%d / %d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget v5, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mSelectedCnt:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mSelectionText:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mSelectedCnt:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f0800ce

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget v1, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mSelectedCnt:I

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mAddButton:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    return-void

    :cond_0
    const/4 v1, -0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mAddButton:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method private setSelectionCount()Z
    .locals 13

    const/4 v12, 0x0

    const/4 v11, 0x1

    const-string v7, "SearchAppListFragment"

    const-string v8, "setSelectionCount()"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    const/4 v0, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    iget-object v7, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mAppsToShow:Ljava/util/ArrayList;

    if-eqz v7, :cond_b

    iget-object v7, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mListContainer:Lcom/android/launcher2/searchapp/AlphabeticalListContainer;

    invoke-virtual {v7}, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-eq v7, v8, :cond_6

    iget-object v7, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mAppsToShow:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v6

    iget-object v7, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mAppsToShow:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/searchapp/AppInfo;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/launcher2/searchapp/AppInfo;->getChecked()Z

    move-result v8

    if-eqz v8, :cond_1

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v0, v0, 0x1

    :goto_1
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/launcher2/searchapp/AppInfo;->getEnabled()Z

    move-result v8

    if-eqz v8, :cond_0

    iput-boolean v11, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mEnableCheck:Z

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    goto :goto_1

    :cond_2
    iput v2, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mSelectedCnt:I

    :cond_3
    :goto_2
    iget-object v7, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mSelectionText:Landroid/widget/TextView;

    const-string v8, "%d / %d"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v12

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v7, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mSelectionText:Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mRes:Landroid/content/res/Resources;

    const v10, 0x7f0800ce

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget v7, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mFirstCount:I

    const/4 v8, -0x1

    if-ne v7, v8, :cond_4

    iput v0, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mFirstCount:I

    :cond_4
    const/4 v3, 0x1

    if-nez v0, :cond_5

    const/4 v3, 0x0

    :cond_5
    if-eqz v3, :cond_c

    iget-object v7, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mAddButton:Landroid/widget/TextView;

    invoke-virtual {v7, v12}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_3
    return v5

    :cond_6
    iget-object v7, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mAppsToShow:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_7
    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/searchapp/AppInfo;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lcom/android/launcher2/searchapp/AppInfo;->getChecked()Z

    move-result v8

    if-eqz v8, :cond_7

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_8
    iget-object v7, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mSearchAdapter:Lcom/android/launcher2/searchapp/SearchAppListFragment$SearchListAdapter;

    invoke-virtual {v7}, Lcom/android/launcher2/searchapp/SearchAppListFragment$SearchListAdapter;->getSize()I

    move-result v6

    const/4 v4, 0x0

    :goto_5
    iget-object v7, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mSearchAdapter:Lcom/android/launcher2/searchapp/SearchAppListFragment$SearchListAdapter;

    invoke-virtual {v7}, Lcom/android/launcher2/searchapp/SearchAppListFragment$SearchListAdapter;->getSize()I

    move-result v7

    if-ge v4, v7, :cond_3

    iget-object v7, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mSearchAdapter:Lcom/android/launcher2/searchapp/SearchAppListFragment$SearchListAdapter;

    invoke-virtual {v7, v4}, Lcom/android/launcher2/searchapp/SearchAppListFragment$SearchListAdapter;->getItem(I)Lcom/android/launcher2/searchapp/AppInfo;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Lcom/android/launcher2/searchapp/AppInfo;->getChecked()Z

    move-result v7

    if-eqz v7, :cond_a

    add-int/lit8 v2, v2, 0x1

    :goto_6
    if-eqz v1, :cond_9

    invoke-virtual {v1}, Lcom/android/launcher2/searchapp/AppInfo;->getEnabled()Z

    move-result v7

    if-eqz v7, :cond_9

    iput-boolean v11, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mEnableCheck:Z

    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_a
    const/4 v5, 0x0

    goto :goto_6

    :cond_b
    const-string v7, "SearchAppListFragment"

    const-string v8, "Apps list is null"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_c
    iget-object v7, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mAddButton:Landroid/widget/TextView;

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3
.end method

.method private setupSearchNoResultView()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mRootLayout:Landroid/view/View;

    const v1, 0x7f1000f6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mNoResultTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mRootLayout:Landroid/view/View;

    const v1, 0x7f1000f5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mNoResultTextLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mNoResultTextLayout:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/android/launcher2/searchapp/SearchAppListFragment$16;

    invoke-direct {v1, p0}, Lcom/android/launcher2/searchapp/SearchAppListFragment$16;-><init>(Lcom/android/launcher2/searchapp/SearchAppListFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private showSearchList(Z)V
    .locals 3

    const/16 v2, 0x8

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mSearchListContainer:Lcom/android/launcher2/searchapp/AlphabeticalSearchListContainer;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/searchapp/AlphabeticalSearchListContainer;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mSearchSubTitleBar:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mNoResultTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mSearchListContainer:Lcom/android/launcher2/searchapp/AlphabeticalSearchListContainer;

    invoke-virtual {v0, v2}, Lcom/android/launcher2/searchapp/AlphabeticalSearchListContainer;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mSearchSubTitleBar:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mNoResultTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public clearAccessibiiltyFocus()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/launcher2/searchapp/SearchAppListFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher2/searchapp/SearchAppListFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mSearchEditText:Landroid/widget/EditText;

    const/16 v1, 0x80

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/EditText;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    iget-object v0, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mListContainer:Lcom/android/launcher2/searchapp/AlphabeticalListContainer;

    invoke-virtual {v0}, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mListContainer:Lcom/android/launcher2/searchapp/AlphabeticalListContainer;

    invoke-virtual {v0}, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->clearAccessibilityFocus()Z

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mSearchListContainer:Lcom/android/launcher2/searchapp/AlphabeticalSearchListContainer;

    invoke-virtual {v0}, Lcom/android/launcher2/searchapp/AlphabeticalSearchListContainer;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mSearchListContainer:Lcom/android/launcher2/searchapp/AlphabeticalSearchListContainer;

    invoke-virtual {v0}, Lcom/android/launcher2/searchapp/AlphabeticalSearchListContainer;->clearAccessibilityFocus()Z

    :cond_1
    return-void
.end method

.method public closeKeyboard(Landroid/content/Context;)V
    .locals 4

    iget-object v2, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mSearchEdit:Landroid/widget/SearchView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mSearchEdit:Landroid/widget/SearchView;

    invoke-virtual {v2}, Landroid/widget/SearchView;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "input_method"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    new-instance v1, Lcom/android/launcher2/searchapp/SearchAppListFragment$13;

    iget-object v2, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mSearchEdit:Landroid/widget/SearchView;

    invoke-virtual {v2}, Landroid/widget/SearchView;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/launcher2/searchapp/SearchAppListFragment$13;-><init>(Lcom/android/launcher2/searchapp/SearchAppListFragment;Landroid/os/Handler;)V

    iget-object v2, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mSearchEdit:Landroid/widget/SearchView;

    invoke-virtual {v2}, Landroid/widget/SearchView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;ILandroid/os/ResultReceiver;)Z

    :cond_0
    return-void
.end method

.method public enterAnimation()V
    .locals 3

    iget-object v1, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mContext:Landroid/content/Context;

    const v2, 0x7f050006

    invoke-static {v1, v2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mRootLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    new-instance v1, Lcom/android/launcher2/searchapp/SearchAppListFragment$7;

    invoke-direct {v1, p0}, Lcom/android/launcher2/searchapp/SearchAppListFragment$7;-><init>(Lcom/android/launcher2/searchapp/SearchAppListFragment;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v1, Lcom/android/launcher2/utils/interpolator/SineInOut33;

    invoke-direct {v1}, Lcom/android/launcher2/utils/interpolator/SineInOut33;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    :cond_0
    return-void
.end method

.method public getExitAnimation()Landroid/animation/Animator;
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mContext:Landroid/content/Context;

    const v2, 0x7f050012

    invoke-static {v1, v2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mRootLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    new-instance v1, Lcom/android/launcher2/utils/interpolator/SineInOut33;

    invoke-direct {v1}, Lcom/android/launcher2/utils/interpolator/SineInOut33;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v1, Lcom/android/launcher2/searchapp/SearchAppListFragment$8;

    invoke-direct {v1, p0}, Lcom/android/launcher2/searchapp/SearchAppListFragment$8;-><init>(Lcom/android/launcher2/searchapp/SearchAppListFragment;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_0
    return-object v0
.end method

.method public getListTitles(Ljava/util/ArrayList;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/searchapp/AppInfo;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const-string v3, "SearchAppListFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "listAppInfo.size() = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/searchapp/AppInfo;

    if-eqz v0, :cond_0

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher2/searchapp/AppInfo;->getAppName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->checkIsChinaModel()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {}, Lcom/android/launcher2/searchapp/SearchAppLocaleUtils;->isChineseUtils()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->utils:Lcom/android/launcher2/searchapp/SearchAppLocaleUtils;

    invoke-virtual {v0}, Lcom/android/launcher2/searchapp/AppInfo;->getAppName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/launcher2/searchapp/SearchAppLocaleUtils;->getConsistKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_1
    add-int/lit8 v4, v1, 0x1

    iget v5, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mListItemCount:I

    rem-int v1, v4, v5

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/android/launcher2/searchapp/AppInfo;->getAppName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    return-object v2
.end method

.method public getSearchView()Landroid/widget/SearchView;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mSearchEdit:Landroid/widget/SearchView;

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4

    const/4 v2, 0x1

    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/android/launcher2/searchapp/SearchAppListFragment;->setFolderMultiSelectionView()V

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getHomeView()Lcom/android/launcher2/HomeView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_4

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mIsHomeView:Z

    iget-boolean v1, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mIsHomeView:Z

    if-eqz v1, :cond_5

    sget-object v1, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mRefFolderItem:Lcom/android/launcher2/FolderItem;

    check-cast v1, Lcom/android/launcher2/HomeFolderItem;

    iput-object v1, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mHomeFolderItem:Lcom/android/launcher2/HomeFolderItem;

    invoke-direct {p0}, Lcom/android/launcher2/searchapp/SearchAppListFragment;->setPreCheckedOfFolderHome()V

    :goto_1
    new-instance v1, Lcom/android/launcher2/searchapp/SearchAppListFragment$AppListAdapter;

    iget-object v3, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v3}, Lcom/android/launcher2/searchapp/SearchAppListFragment$AppListAdapter;-><init>(Lcom/android/launcher2/searchapp/SearchAppListFragment;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mAdapter:Lcom/android/launcher2/searchapp/SearchAppListFragment$AppListAdapter;

    iget-object v1, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mAdapter:Lcom/android/launcher2/searchapp/SearchAppListFragment$AppListAdapter;

    invoke-virtual {v1}, Lcom/android/launcher2/searchapp/SearchAppListFragment$AppListAdapter;->runFilter()V

    iget-object v1, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mListContainer:Lcom/android/launcher2/searchapp/AlphabeticalListContainer;

    iget-object v3, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mAdapter:Lcom/android/launcher2/searchapp/SearchAppListFragment$AppListAdapter;

    invoke-virtual {v1, v3}, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->setAdapter(Landroid/widget/BaseAdapter;)V

    iget-object v1, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mListContainer:Lcom/android/launcher2/searchapp/AlphabeticalListContainer;

    iget-object v3, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mSipHideListener:Lcom/android/launcher2/searchapp/SearchAppListFragment$SipHideListener;

    invoke-virtual {v1, v3}, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->setSipHideListener(Lcom/android/launcher2/searchapp/SearchAppListFragment$SipHideListener;)V

    new-instance v1, Lcom/android/launcher2/searchapp/SearchAppListFragment$SearchListAdapter;

    iget-object v3, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v3}, Lcom/android/launcher2/searchapp/SearchAppListFragment$SearchListAdapter;-><init>(Lcom/android/launcher2/searchapp/SearchAppListFragment;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mSearchAdapter:Lcom/android/launcher2/searchapp/SearchAppListFragment$SearchListAdapter;

    iget-object v1, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mSearchAdapter:Lcom/android/launcher2/searchapp/SearchAppListFragment$SearchListAdapter;

    invoke-virtual {v1}, Lcom/android/launcher2/searchapp/SearchAppListFragment$SearchListAdapter;->runFilter()V

    iget-object v1, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mSearchListContainer:Lcom/android/launcher2/searchapp/AlphabeticalSearchListContainer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mSearchListContainer:Lcom/android/launcher2/searchapp/AlphabeticalSearchListContainer;

    iget-object v3, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mSearchAdapter:Lcom/android/launcher2/searchapp/SearchAppListFragment$SearchListAdapter;

    invoke-virtual {v1, v3}, Lcom/android/launcher2/searchapp/AlphabeticalSearchListContainer;->setAdapter(Landroid/widget/BaseAdapter;)V

    iget-object v1, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mSearchListContainer:Lcom/android/launcher2/searchapp/AlphabeticalSearchListContainer;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Lcom/android/launcher2/searchapp/AlphabeticalSearchListContainer;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mSearchListContainer:Lcom/android/launcher2/searchapp/AlphabeticalSearchListContainer;

    iget-object v3, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mSipHideListener:Lcom/android/launcher2/searchapp/SearchAppListFragment$SipHideListener;

    invoke-virtual {v1, v3}, Lcom/android/launcher2/searchapp/AlphabeticalSearchListContainer;->setSipHideListener(Lcom/android/launcher2/searchapp/SearchAppListFragment$SipHideListener;)V

    :cond_0
    invoke-direct {p0}, Lcom/android/launcher2/searchapp/SearchAppListFragment;->populateData()V

    new-instance v0, Lcom/android/launcher2/searchapp/SearchAppListFragment$5;

    invoke-direct {v0, p0}, Lcom/android/launcher2/searchapp/SearchAppListFragment$5;-><init>(Lcom/android/launcher2/searchapp/SearchAppListFragment;)V

    iget-object v1, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mAppListView:Landroid/widget/ListView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mAppListView:Landroid/widget/ListView;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    iget-object v1, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mAppListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    iget-object v1, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mAppListView:Landroid/widget/ListView;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->semSetGoToTopEnabled(Z)V

    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mSearchListView:Landroid/widget/ListView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mSearchListView:Landroid/widget/ListView;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    iget-object v1, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mSearchListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    iget-object v1, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mSearchListView:Landroid/widget/ListView;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->semSetGoToTopEnabled(Z)V

    :cond_2
    iget-object v1, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mListener:Lcom/android/launcher2/searchapp/SearchAppListFragment$OperationListener;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mListener:Lcom/android/launcher2/searchapp/SearchAppListFragment$OperationListener;

    invoke-interface {v1}, Lcom/android/launcher2/searchapp/SearchAppListFragment$OperationListener;->onShow()V

    :cond_3
    return-void

    :cond_4
    const/4 v1, 0x0

    goto/16 :goto_0

    :cond_5
    sget-object v1, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mRefFolderItem:Lcom/android/launcher2/FolderItem;

    check-cast v1, Lcom/android/launcher2/AppFolderItem;

    iput-object v1, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mAppFolderItem:Lcom/android/launcher2/AppFolderItem;

    invoke-direct {p0}, Lcom/android/launcher2/searchapp/SearchAppListFragment;->setPreCheckedOfFolderApp()V

    goto/16 :goto_1
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mContext:Landroid/content/Context;

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isTabletLayout()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher2/searchapp/SearchAppListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mRes:Landroid/content/res/Resources;

    iget-object v0, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mAdapter:Lcom/android/launcher2/searchapp/SearchAppListFragment$AppListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mAdapter:Lcom/android/launcher2/searchapp/SearchAppListFragment$AppListAdapter;

    invoke-virtual {v0}, Lcom/android/launcher2/searchapp/SearchAppListFragment$AppListAdapter;->updateLayout()V

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mSearchAdapter:Lcom/android/launcher2/searchapp/SearchAppListFragment$SearchListAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mSearchAdapter:Lcom/android/launcher2/searchapp/SearchAppListFragment$SearchListAdapter;

    invoke-virtual {v0}, Lcom/android/launcher2/searchapp/SearchAppListFragment$SearchListAdapter;->updateLayout()V

    :cond_1
    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_2
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/searchapp/SearchAppListFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->popBackStackImmediate()Z

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/searchapp/SearchAppListFragment;->registerContentObserver()V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    if-nez v17, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mContext:Landroid/content/Context;

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/searchapp/SearchAppListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mRes:Landroid/content/res/Resources;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mRes:Landroid/content/res/Resources;

    move-object/from16 v17, v0

    const v18, 0x7f0b0029

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mListItemCount:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mRes:Landroid/content/res/Resources;

    move-object/from16 v17, v0

    const v18, 0x7f0b002f

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mListItemCountMax:I

    const v17, 0x7f030044

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mRootLayout:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mRootLayout:Landroid/view/View;

    move-object/from16 v17, v0

    new-instance v18, Lcom/android/launcher2/searchapp/SearchAppListFragment$3;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/launcher2/searchapp/SearchAppListFragment$3;-><init>(Lcom/android/launcher2/searchapp/SearchAppListFragment;)V

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setOnGenericMotionListener(Landroid/view/View$OnGenericMotionListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mRootLayout:Landroid/view/View;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    sget-boolean v17, Lcom/android/launcher2/Launcher;->sIsNeedDarkColor:Z

    if-eqz v17, :cond_9

    const v5, 0x7f0d002e

    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/searchapp/SearchAppListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher2/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v17

    move-object/from16 v0, v17

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mBackupSoftInputParams:I

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher2/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v17

    const/16 v18, 0x10

    invoke-virtual/range {v17 .. v18}, Landroid/view/Window;->setSoftInputMode(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mRootLayout:Landroid/view/View;

    move-object/from16 v17, v0

    const v18, 0x7f1000ea

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/LinearLayout;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mSelectionLayout:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mRootLayout:Landroid/view/View;

    move-object/from16 v17, v0

    const v18, 0x7f1000eb

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mSelectionText:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mSelectionText:Landroid/widget/TextView;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mSelectionText:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mSelectionText:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const v18, 0x7f09027a

    invoke-static/range {v17 .. v18}, Lcom/android/launcher2/utils/common/FontSizeUtils;->setSystemFontSize(Landroid/widget/TextView;I)V

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mRootLayout:Landroid/view/View;

    move-object/from16 v17, v0

    const v18, 0x7f100018

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mAddButton:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mAddButton:Landroid/widget/TextView;

    move-object/from16 v17, v0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mAddButton:Landroid/widget/TextView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/searchapp/SearchAppListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f08001f

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mAddButton:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const v18, 0x7f090168

    invoke-static/range {v17 .. v18}, Lcom/android/launcher2/utils/common/FontSizeUtils;->setSystemFontSize(Landroid/widget/TextView;I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/searchapp/SearchAppListFragment;->getContext()Landroid/content/Context;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const/4 v10, 0x0

    :try_start_0
    const-string v17, "show_button_background"

    move-object/from16 v0, v17

    invoke-static {v11, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v17

    if-eqz v17, :cond_a

    const/4 v10, 0x1

    :goto_1
    if-eqz v10, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mAddButton:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const v18, 0x7f02001b

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setBackgroundResource(I)V

    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/searchapp/SearchAppListFragment;->setupSearchNoResultView()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/launcher2/searchapp/SearchAppLocaleUtils;->getInstance(Landroid/content/Context;)Lcom/android/launcher2/searchapp/SearchAppLocaleUtils;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/searchapp/SearchAppListFragment;->utils:Lcom/android/launcher2/searchapp/SearchAppLocaleUtils;

    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mFirstCount:I

    new-instance v17, Lcom/android/launcher2/searchapp/SearchAppController;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-direct/range {v17 .. v18}, Lcom/android/launcher2/searchapp/SearchAppController;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mSearchAppController:Lcom/android/launcher2/searchapp/SearchAppController;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mSearchAppController:Lcom/android/launcher2/searchapp/SearchAppController;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher2/searchapp/SearchAppController;->getMoreAppsListState()Z

    move-result v17

    if-nez v17, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mSearchAppController:Lcom/android/launcher2/searchapp/SearchAppController;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Lcom/android/launcher2/searchapp/SearchAppController;->loadApps(Z)V

    :cond_3
    new-instance v17, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mSearchAppController:Lcom/android/launcher2/searchapp/SearchAppController;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/launcher2/searchapp/SearchAppController;->mOtherAppsList:Ljava/util/concurrent/ConcurrentSkipListMap;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/concurrent/ConcurrentSkipListMap;->values()Ljava/util/Collection;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mApps:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mRootLayout:Landroid/view/View;

    move-object/from16 v17, v0

    const v18, 0x7f1000ec

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/SearchView;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mSearchEdit:Landroid/widget/SearchView;

    const/4 v14, 0x0

    sget-boolean v17, Lcom/android/launcher2/Launcher;->sIsNeedDarkColor:Z

    if-nez v17, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mRes:Landroid/content/res/Resources;

    move-object/from16 v17, v0

    const v18, 0x7f020001

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mSearchEdit:Landroid/widget/SearchView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Landroid/widget/SearchView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mSearchEdit:Landroid/widget/SearchView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mSearchEdit:Landroid/widget/SearchView;

    move-object/from16 v17, v0

    const-string v18, ""

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mSearchEdit:Landroid/widget/SearchView;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/widget/SearchView;->setIconifiedByDefault(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mSearchEdit:Landroid/widget/SearchView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/SearchView;->onActionViewExpanded()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mSearchEdit:Landroid/widget/SearchView;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/widget/SearchView;->setFocusable(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mSearchEdit:Landroid/widget/SearchView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/SearchView;->clearFocus()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mSearchEdit:Landroid/widget/SearchView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const-string v18, "android:id/search_src_text"

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-virtual/range {v17 .. v20}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mSearchEdit:Landroid/widget/SearchView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Landroid/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/EditText;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mSearchEditText:Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mSearchEditText:Landroid/widget/EditText;

    move-object/from16 v17, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/searchapp/SearchAppListFragment;->getContext()Landroid/content/Context;

    move-result-object v18

    const/16 v19, 0x1e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mSearchEditText:Landroid/widget/EditText;

    move-object/from16 v20, v0

    invoke-static/range {v18 .. v20}, Lcom/android/launcher2/Utilities;->getEditTextMaxLengthFilter(Landroid/content/Context;ILandroid/widget/EditText;)[Landroid/text/InputFilter;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mSearchEditText:Landroid/widget/EditText;

    move-object/from16 v17, v0

    sget-object v18, Lcom/android/launcher2/FocusHelper;->SEARCHAPPLIST_MENU_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    invoke-virtual/range {v17 .. v18}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mSearchEdit:Landroid/widget/SearchView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/SearchView;->semGetAutoCompleteView()Landroid/widget/AutoCompleteTextView;

    move-result-object v17

    const-string v18, "nm"

    invoke-virtual/range {v17 .. v18}, Landroid/widget/AutoCompleteTextView;->setPrivateImeOptions(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mSearchEdit:Landroid/widget/SearchView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v17

    check-cast v17, Lcom/android/launcher2/Launcher;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mSearchEdit:Landroid/widget/SearchView;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/android/launcher2/Launcher;->enableVoiceSearch(Landroid/widget/SearchView;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mSearchEdit:Landroid/widget/SearchView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/launcher2/searchapp/SearchAppListFragment;->changeSearchViewColor(Landroid/widget/SearchView;)V

    new-instance v4, Landroid/graphics/LightingColorFilter;

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-direct {v4, v3, v0}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mSearchEdit:Landroid/widget/SearchView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const-string v18, "android:id/search_voice_btn"

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-virtual/range {v17 .. v20}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mSearchEdit:Landroid/widget/SearchView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/ImageView;

    invoke-virtual {v15}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    sget-object v17, Lcom/android/launcher2/FocusHelper;->SEARCHAPPLIST_MENU_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    new-instance v17, Lcom/android/launcher2/searchapp/SearchAppListFragment$4;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/launcher2/searchapp/SearchAppListFragment$4;-><init>(Lcom/android/launcher2/searchapp/SearchAppListFragment;)V

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mSearchEdit:Landroid/widget/SearchView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const-string v18, "android:id/search_close_btn"

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-virtual/range {v17 .. v20}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mSearchEdit:Landroid/widget/SearchView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Landroid/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    sget-object v17, Lcom/android/launcher2/FocusHelper;->SEARCHAPPLIST_MENU_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/widget/ImageView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportFolderAppSearchIndex()Z

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mSupportSearchIndex:Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mSupportSearchIndex:Z

    move/from16 v17, v0

    if-nez v17, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mSearchEdit:Landroid/widget/SearchView;

    move-object/from16 v17, v0

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/widget/SearchView;->setVisibility(I)V

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mRootLayout:Landroid/view/View;

    move-object/from16 v17, v0

    const v18, 0x7f1000b0

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/LinearLayout;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mSearchSubTitleBar:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mRootLayout:Landroid/view/View;

    move-object/from16 v17, v0

    const v18, 0x7f1000b2

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mSearchSubTitleText:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mRootLayout:Landroid/view/View;

    move-object/from16 v17, v0

    const v18, 0x7f1000ed

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mSearchSubResultText:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mSearchSubTitleText:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mSearchSubResultText:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mNoResultTextView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v12}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    invoke-static {}, Lcom/android/launcher2/theme/OpenThemeManager;->getInstance()Lcom/android/launcher2/theme/OpenThemeManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher2/theme/OpenThemeManager;->getThemeLoader()Lcom/android/launcher2/theme/OpenThemeLoader;

    move-result-object v17

    sget-object v18, Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;->HOME:Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;->value()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Lcom/android/launcher2/theme/OpenThemeLoader;->getIsTheme(I)Z

    move-result v17

    if-eqz v17, :cond_6

    invoke-static {}, Lcom/android/launcher2/theme/OpenThemeManager;->getInstance()Lcom/android/launcher2/theme/OpenThemeManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher2/theme/OpenThemeManager;->getThemeStyle()Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle;->getHomeTextColor()I

    move-result v17

    const v18, 0x1ffffff

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_6

    invoke-static {}, Lcom/android/launcher2/theme/OpenThemeManager;->getInstance()Lcom/android/launcher2/theme/OpenThemeManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher2/theme/OpenThemeManager;->getThemeStyle()Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle;->getHomeTextColor()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mThemeColor:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mSelectionText:Landroid/widget/TextView;

    move-object/from16 v17, v0

    if-eqz v17, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mSelectionText:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mThemeColor:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mAddButton:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mThemeColor:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mRootLayout:Landroid/view/View;

    move-object/from16 v17, v0

    const v18, 0x7f1000ef

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mListContainer:Lcom/android/launcher2/searchapp/AlphabeticalListContainer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mRootLayout:Landroid/view/View;

    move-object/from16 v17, v0

    const v18, 0x7f1000f3

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Lcom/android/launcher2/searchapp/AlphabeticalSearchListContainer;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mSearchListContainer:Lcom/android/launcher2/searchapp/AlphabeticalSearchListContainer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mListContainer:Lcom/android/launcher2/searchapp/AlphabeticalListContainer;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->isEnableFluidIndexScroll()Z

    move-result v17

    if-eqz v17, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mListContainer:Lcom/android/launcher2/searchapp/AlphabeticalListContainer;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mListContainer:Lcom/android/launcher2/searchapp/AlphabeticalListContainer;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_7
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isHomeOnlyModeEnabled()Z

    move-result v17

    if-eqz v17, :cond_8

    invoke-static {}, Lcom/android/launcher2/MenuAppLoader;->IsLoaded()Z

    move-result v17

    if-nez v17, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mListContainer:Lcom/android/launcher2/searchapp/AlphabeticalListContainer;

    move-object/from16 v17, v0

    const/16 v18, 0x4

    invoke-virtual/range {v17 .. v18}, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->setVisibility(I)V

    :cond_8
    new-instance v8, Landroid/content/IntentFilter;

    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    const-string v17, "UpdateListData"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mSearchSubTitleBar:Landroid/widget/LinearLayout;

    move-object/from16 v17, v0

    const v18, 0x7f1000ee

    invoke-virtual/range {v17 .. v18}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/FrameLayout;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mheader:Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mheader:Landroid/widget/FrameLayout;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mAddButton:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/searchapp/SearchAppListFragment;->enterAnimation()V

    sget-object v17, Lcom/sec/dtl/launcher/Talk;->INSTANCE:Lcom/sec/dtl/launcher/Talk;

    const v18, 0x7f0800d7

    invoke-virtual/range {v17 .. v18}, Lcom/sec/dtl/launcher/Talk;->say(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mRootLayout:Landroid/view/View;

    move-object/from16 v17, v0

    return-object v17

    :cond_9
    const v5, 0x7f0d0013

    goto/16 :goto_0

    :cond_a
    const/4 v10, 0x0

    goto/16 :goto_1

    :catch_0
    move-exception v7

    invoke-virtual {v7}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto/16 :goto_1

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mRes:Landroid/content/res/Resources;

    move-object/from16 v17, v0

    const v18, 0x7f020002

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    goto/16 :goto_2
.end method

.method public onDestroyView()V
    .locals 3

    const/4 v2, 0x0

    sget-boolean v0, Lcom/android/launcher2/Launcher;->mIsStartSetting:Z

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/launcher2/searchapp/SearchAppListFragment;->setBackgroundAndStatusbar(Z)V

    :goto_0
    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mBackupSoftInputParams:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    iget-object v0, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mRootLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mRootLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mSearchAppController:Lcom/android/launcher2/searchapp/SearchAppController;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mSearchAppController:Lcom/android/launcher2/searchapp/SearchAppController;

    invoke-virtual {v0}, Lcom/android/launcher2/searchapp/SearchAppController;->destroy()V

    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mSearchAdapter:Lcom/android/launcher2/searchapp/SearchAppListFragment$SearchListAdapter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mSearchAdapter:Lcom/android/launcher2/searchapp/SearchAppListFragment$SearchListAdapter;

    invoke-virtual {v0}, Lcom/android/launcher2/searchapp/SearchAppListFragment$SearchListAdapter;->unBind()V

    :cond_2
    iget-object v0, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mAdapter:Lcom/android/launcher2/searchapp/SearchAppListFragment$AppListAdapter;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mAdapter:Lcom/android/launcher2/searchapp/SearchAppListFragment$AppListAdapter;

    invoke-virtual {v0}, Lcom/android/launcher2/searchapp/SearchAppListFragment$AppListAdapter;->unBind()V

    :cond_3
    iget-object v0, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mAppsToShow:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mAppsToShow:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iput-object v2, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mAppsToShow:Ljava/util/ArrayList;

    :cond_4
    iget-object v0, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mApps:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mApps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iput-object v2, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mApps:Ljava/util/ArrayList;

    :cond_5
    iget-object v0, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mSearchEdit:Landroid/widget/SearchView;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mSearchEdit:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->clearFocus()V

    iget-object v0, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mSearchEdit:Landroid/widget/SearchView;

    invoke-virtual {v0, v2}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    :cond_6
    iput-object v2, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mAppListView:Landroid/widget/ListView;

    iput-object v2, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mSearchListView:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-object v2, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mContext:Landroid/content/Context;

    :cond_7
    iput-object v2, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mAdapter:Lcom/android/launcher2/searchapp/SearchAppListFragment$AppListAdapter;

    iput-object v2, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mSearchAdapter:Lcom/android/launcher2/searchapp/SearchAppListFragment$SearchListAdapter;

    invoke-virtual {p0}, Lcom/android/launcher2/searchapp/SearchAppListFragment;->unregisterContentObserver()V

    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    return-void

    :cond_8
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/launcher2/searchapp/SearchAppListFragment;->setBackgroundAndStatusbar(Z)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mSearchAppController:Lcom/android/launcher2/searchapp/SearchAppController;

    iget-object v0, v0, Lcom/android/launcher2/searchapp/SearchAppController;->mOtherAppsList:Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentSkipListMap;->clear()V

    iget-object v0, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/searchapp/SearchAppListFragment;->closeKeyboard(Landroid/content/Context;)V

    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    return-void
.end method

.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 6

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mSearchEdit:Landroid/widget/SearchView;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mSearchAdapter:Lcom/android/launcher2/searchapp/SearchAppListFragment$SearchListAdapter;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mListContainer:Lcom/android/launcher2/searchapp/AlphabeticalListContainer;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mSearchListContainer:Lcom/android/launcher2/searchapp/AlphabeticalSearchListContainer;

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mListContainer:Lcom/android/launcher2/searchapp/AlphabeticalListContainer;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mSearchAdapter:Lcom/android/launcher2/searchapp/SearchAppListFragment$SearchListAdapter;

    invoke-virtual {v2}, Lcom/android/launcher2/searchapp/SearchAppListFragment$SearchListAdapter;->runFilter()V

    iget-object v2, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mSearchAdapter:Lcom/android/launcher2/searchapp/SearchAppListFragment$SearchListAdapter;

    invoke-virtual {v2}, Lcom/android/launcher2/searchapp/SearchAppListFragment$SearchListAdapter;->getSize()I

    move-result v2

    if-nez v2, :cond_2

    invoke-direct {p0, v5}, Lcom/android/launcher2/searchapp/SearchAppListFragment;->showSearchList(Z)V

    iget-object v2, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mNoResultTextLayout:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/android/launcher2/searchapp/SearchAppListFragment$10;

    invoke-direct {v3, p0}, Lcom/android/launcher2/searchapp/SearchAppListFragment$10;-><init>(Lcom/android/launcher2/searchapp/SearchAppListFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    :goto_0
    iput-boolean v5, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mEnableCheck:Z

    :cond_1
    :goto_1
    return v5

    :cond_2
    invoke-direct {p0, v4}, Lcom/android/launcher2/searchapp/SearchAppListFragment;->showSearchList(Z)V

    iget-object v2, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mSearchAdapter:Lcom/android/launcher2/searchapp/SearchAppListFragment$SearchListAdapter;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/searchapp/SearchAppListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0800c4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mSearchAdapter:Lcom/android/launcher2/searchapp/SearchAppListFragment$SearchListAdapter;

    invoke-virtual {v4}, Lcom/android/launcher2/searchapp/SearchAppListFragment$SearchListAdapter;->getSize()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mSearchSubTitleText:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/launcher2/searchapp/SearchAppListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080023

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mSearchSubTitleBar:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mAppListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->invalidateViews()V

    iget-object v2, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mListContainer:Lcom/android/launcher2/searchapp/AlphabeticalListContainer;

    invoke-virtual {v2, v5}, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->setVisibility(I)V

    invoke-direct {p0, v5}, Lcom/android/launcher2/searchapp/SearchAppListFragment;->showSearchList(Z)V

    goto :goto_1
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mSearchEdit:Landroid/widget/SearchView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mSearchEdit:Landroid/widget/SearchView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/launcher2/utils/SIPHelper;->hideInputMethod(Landroid/view/View;Z)V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onResume()V
    .locals 2

    const/4 v1, 0x1

    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    invoke-direct {p0, v1}, Lcom/android/launcher2/searchapp/SearchAppListFragment;->setBackgroundAndStatusbar(Z)V

    iget-object v0, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mListContainer:Lcom/android/launcher2/searchapp/AlphabeticalListContainer;

    invoke-virtual {v0}, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mAdapter:Lcom/android/launcher2/searchapp/SearchAppListFragment$AppListAdapter;

    invoke-virtual {v0}, Lcom/android/launcher2/searchapp/SearchAppListFragment$AppListAdapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mListContainer:Lcom/android/launcher2/searchapp/AlphabeticalListContainer;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->setFocusable(Z)V

    iget-object v0, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mListContainer:Lcom/android/launcher2/searchapp/AlphabeticalListContainer;

    iget-object v1, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mkeyConsumeListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    :goto_0
    iget-object v0, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mSearchEdit:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->clearFocus()V

    iget-object v0, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mListContainer:Lcom/android/launcher2/searchapp/AlphabeticalListContainer;

    invoke-virtual {v0}, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->requestFocus()Z

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mListContainer:Lcom/android/launcher2/searchapp/AlphabeticalListContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->setFocusable(Z)V

    iget-object v0, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mListContainer:Lcom/android/launcher2/searchapp/AlphabeticalListContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/searchapp/AlphabeticalListContainer;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mSearchListContainer:Lcom/android/launcher2/searchapp/AlphabeticalSearchListContainer;

    invoke-virtual {v0}, Lcom/android/launcher2/searchapp/AlphabeticalSearchListContainer;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mSearchAdapter:Lcom/android/launcher2/searchapp/SearchAppListFragment$SearchListAdapter;

    invoke-virtual {v0}, Lcom/android/launcher2/searchapp/SearchAppListFragment$SearchListAdapter;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mSearchEdit:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->clearFocus()V

    iget-object v0, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mSearchListContainer:Lcom/android/launcher2/searchapp/AlphabeticalSearchListContainer;

    invoke-virtual {v0}, Lcom/android/launcher2/searchapp/AlphabeticalSearchListContainer;->requestFocus()Z

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mSearchEdit:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->requestFocus()Z

    goto :goto_1
.end method

.method public openKeyboard()V
    .locals 6

    iget-object v2, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mSearchEdit:Landroid/widget/SearchView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mSearchEdit:Landroid/widget/SearchView;

    invoke-virtual {v2}, Landroid/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v2, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mSearchEdit:Landroid/widget/SearchView;

    invoke-virtual {v2}, Landroid/widget/SearchView;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->semIsInputMethodShown()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/android/launcher2/searchapp/SearchAppListFragment$12;

    invoke-direct {v2, p0, v0}, Lcom/android/launcher2/searchapp/SearchAppListFragment$12;-><init>(Lcom/android/launcher2/searchapp/SearchAppListFragment;Landroid/view/inputmethod/InputMethodManager;)V

    const-wide/16 v4, 0x96

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public registerContentObserver()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/launcher2/searchapp/SearchAppListFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "show_button_background"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mChangeShowButtonBackgroundObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public setOperationListener(Lcom/android/launcher2/searchapp/SearchAppListFragment$OperationListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mListener:Lcom/android/launcher2/searchapp/SearchAppListFragment$OperationListener;

    return-void
.end method

.method public setQueryString(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mSearchEdit:Landroid/widget/SearchView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mSearchEdit:Landroid/widget/SearchView;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    invoke-virtual {p0, p1}, Lcom/android/launcher2/searchapp/SearchAppListFragment;->onQueryTextChange(Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method public unregisterContentObserver()V
    .locals 2

    iget-object v1, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mChangeShowButtonBackgroundObserver:Landroid/database/ContentObserver;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/searchapp/SearchAppListFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mChangeShowButtonBackgroundObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment;->mChangeShowButtonBackgroundObserver:Landroid/database/ContentObserver;

    :cond_0
    return-void
.end method
