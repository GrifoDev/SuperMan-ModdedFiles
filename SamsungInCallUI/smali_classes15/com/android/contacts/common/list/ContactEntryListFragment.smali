.class public abstract Lcom/android/contacts/common/list/ContactEntryListFragment;
.super Landroid/app/Fragment;
.source "ContactEntryListFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Landroid/view/View$OnFocusChangeListener;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/android/contacts/common/list/ContactEntryListAdapter;",
        ">",
        "Landroid/app/Fragment;",
        "Landroid/widget/AdapterView$OnItemClickListener;",
        "Landroid/widget/AbsListView$OnScrollListener;",
        "Landroid/view/View$OnFocusChangeListener;",
        "Landroid/view/View$OnTouchListener;",
        "Landroid/widget/AdapterView$OnItemLongClickListener;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# static fields
.field public static final ACTIVITY_REQUEST_CODE_PICKER:I = 0x1

.field private static final DEFAULT_DIRECTORY_RESULT_LIMIT:I = 0x14

.field private static final DIRECTORY_ID_ARG_KEY:Ljava/lang/String; = "directoryId"

.field private static final DIRECTORY_LOADER_ID:I = -0x1

.field private static final DIRECTORY_SEARCH_DELAY_MILLIS:I = 0x12c

.field private static final DIRECTORY_SEARCH_MESSAGE:I = 0x1

.field private static final KEY_ADJUST_SELECTION_BOUNDS_ENABLED:Ljava/lang/String; = "adjustSelectionBoundsEnabled"

.field private static final KEY_DARK_THEME:Ljava/lang/String; = "darkTheme"

.field private static final KEY_DIRECTORY_RESULT_LIMIT:Ljava/lang/String; = "directoryResultLimit"

.field private static final KEY_DIRECTORY_SEARCH_MODE:Ljava/lang/String; = "directorySearchMode"

.field private static final KEY_INCLUDE_PROFILE:Ljava/lang/String; = "includeProfile"

.field private static final KEY_LEGACY_COMPATIBILITY:Ljava/lang/String; = "legacyCompatibility"

.field private static final KEY_LIST_STATE:Ljava/lang/String; = "liststate"

.field private static final KEY_PHOTO_LOADER_ENABLED:Ljava/lang/String; = "photoLoaderEnabled"

.field private static final KEY_QUERY_STRING:Ljava/lang/String; = "queryString"

.field private static final KEY_QUICK_CONTACT_ENABLED:Ljava/lang/String; = "quickContactEnabled"

.field private static final KEY_REQUEST:Ljava/lang/String; = "request"

.field private static final KEY_SCROLLBAR_POSITION:Ljava/lang/String; = "scrollbarPosition"

.field private static final KEY_SEARCH_MODE:Ljava/lang/String; = "searchMode"

.field private static final KEY_SECTION_HEADER_DISPLAY_ENABLED:Ljava/lang/String; = "sectionHeaderDisplayEnabled"

.field private static final KEY_SELECTION_VISIBLE:Ljava/lang/String; = "selectionVisible"

.field private static final KEY_VISIBLE_SCROLLBAR_ENABLED:Ljava/lang/String; = "visibleScrollbarEnabled"

.field private static final STATUS_LOADED:I = 0x2

.field private static final STATUS_LOADING:I = 0x1

.field private static final STATUS_NOT_LOADED:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ContactEntryListFragment"


# instance fields
.field private defaultVerticalScrollbarPosition:I

.field private mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mAdjustSelectionBoundsEnabled:Z

.field private mContactsPrefs:Lcom/android/contacts/common/preference/ContactsPreferences;

.field private mContext:Landroid/content/Context;

.field private mDarkTheme:Z

.field private mDelayedDirectorySearchHandler:Landroid/os/Handler;

.field private mDirectoryListStatus:I

.field private mDirectoryResultLimit:I

.field private mDirectorySearchMode:I

.field private mDisplayOrder:I

.field private mEnabled:Z

.field private mForceLoad:Z

.field private mIncludeProfile:Z

.field private mLegacyCompatibility:Z

.field private mListState:Landroid/os/Parcelable;

.field private mListView:Landroid/widget/ListView;

.field private mListViewTopIndex:I

.field private mListViewTopOffset:I

.field private mLoadPriorityDirectoriesOnly:Z

.field private mLoaderManager:Landroid/app/LoaderManager;

.field private mPhotoLoaderEnabled:Z

.field private mPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

.field private mPreferencesChangeListener:Lcom/android/contacts/common/preference/ContactsPreferences$ChangeListener;

.field private mQueryString:Ljava/lang/String;

.field private mQuickContactEnabled:Z

.field private mSearchMode:Z

.field private mSectionHeaderDisplayEnabled:Z

.field private mSelectionVisible:Z

.field private mShowEmptyListForEmptyQuery:Z

.field private mSortOrder:I

.field protected mUserProfileExists:Z

.field private mVerticalScrollbarPosition:I

.field private mView:Landroid/view/View;

.field private mVisibleScrollbarEnabled:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 58
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 98
    iput-boolean v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mQuickContactEnabled:Z

    .line 99
    iput-boolean v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdjustSelectionBoundsEnabled:Z

    .line 104
    invoke-direct {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->getDefaultVerticalScrollbarPosition()I

    move-result v0

    iput v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mVerticalScrollbarPosition:I

    .line 106
    iput v2, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mDirectorySearchMode:I

    .line 110
    iput-boolean v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mEnabled:Z

    .line 129
    const/16 v0, 0x14

    iput v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mDirectoryResultLimit:I

    .line 144
    iput v2, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mDirectoryListStatus:I

    .line 156
    new-instance v0, Lcom/android/contacts/common/list/ContactEntryListFragment$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/common/list/ContactEntryListFragment$1;-><init>(Lcom/android/contacts/common/list/ContactEntryListFragment;)V

    iput-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mDelayedDirectorySearchHandler:Landroid/os/Handler;

    .line 923
    new-instance v0, Lcom/android/contacts/common/list/ContactEntryListFragment$3;

    invoke-direct {v0, p0}, Lcom/android/contacts/common/list/ContactEntryListFragment$3;-><init>(Lcom/android/contacts/common/list/ContactEntryListFragment;)V

    iput-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mPreferencesChangeListener:Lcom/android/contacts/common/preference/ContactsPreferences$ChangeListener;

    return-void
.end method

.method private configureVerticalScrollbar()V
    .locals 3

    .prologue
    .line 546
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->isVisibleScrollbarEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->isSectionHeaderDisplayEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 548
    .local v0, "hasScrollbar":Z
    :goto_0
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    if-eqz v1, :cond_0

    .line 549
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setFastScrollEnabled(Z)V

    .line 550
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setFastScrollAlwaysVisible(Z)V

    .line 551
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    iget v2, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mVerticalScrollbarPosition:I

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setVerticalScrollbarPosition(I)V

    .line 552
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    const/high16 v2, 0x2000000

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setScrollBarStyle(I)V

    .line 554
    :cond_0
    return-void

    .line 546
    .end local v0    # "hasScrollbar":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getDefaultVerticalScrollbarPosition()I
    .locals 3

    .prologue
    .line 933
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 934
    .local v1, "locale":Ljava/util/Locale;
    invoke-static {v1}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v0

    .line 935
    .local v0, "layoutDirection":I
    packed-switch v0, :pswitch_data_0

    .line 940
    const/4 v2, 0x2

    :goto_0
    return v2

    .line 937
    :pswitch_0
    const/4 v2, 0x1

    goto :goto_0

    .line 935
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private hideSoftKeyboard()V
    .locals 3

    .prologue
    .line 855
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mContext:Landroid/content/Context;

    const-string v2, "input_method"

    .line 856
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 857
    .local v0, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 858
    return-void
.end method

.method private loadDirectoryPartitionDelayed(ILcom/android/contacts/common/list/DirectoryPartition;)V
    .locals 4
    .param p1, "partitionIndex"    # I
    .param p2, "partition"    # Lcom/android/contacts/common/list/DirectoryPartition;

    .prologue
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    const/4 v3, 0x1

    .line 395
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mDelayedDirectorySearchHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3, p2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 396
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mDelayedDirectorySearchHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v3, p1, v2, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 398
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mDelayedDirectorySearchHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 399
    return-void
.end method

.method private removePendingDirectorySearchRequests()V
    .locals 2

    .prologue
    .line 414
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mDelayedDirectorySearchHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 415
    return-void
.end method

.method private startLoadingDirectoryPartition(I)V
    .locals 6
    .param p1, "partitionIndex"    # I

    .prologue
    .line 373
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    iget-object v4, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    invoke-virtual {v4, p1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getPartition(I)Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/common/list/DirectoryPartition;

    .line 374
    .local v1, "partition":Lcom/android/contacts/common/list/DirectoryPartition;
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/android/contacts/common/list/DirectoryPartition;->setStatus(I)V

    .line 375
    invoke-virtual {v1}, Lcom/android/contacts/common/list/DirectoryPartition;->getDirectoryId()J

    move-result-wide v2

    .line 376
    .local v2, "directoryId":J
    iget-boolean v4, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mForceLoad:Z

    if-eqz v4, :cond_1

    .line 377
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_0

    .line 378
    invoke-virtual {p0, p1, v1}, Lcom/android/contacts/common/list/ContactEntryListFragment;->loadDirectoryPartition(ILcom/android/contacts/common/list/DirectoryPartition;)V

    .line 387
    :goto_0
    return-void

    .line 380
    :cond_0
    invoke-direct {p0, p1, v1}, Lcom/android/contacts/common/list/ContactEntryListFragment;->loadDirectoryPartitionDelayed(ILcom/android/contacts/common/list/DirectoryPartition;)V

    goto :goto_0

    .line 383
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 384
    .local v0, "args":Landroid/os/Bundle;
    const-string v4, "directoryId"

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 385
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v4

    invoke-virtual {v4, p1, v0, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    goto :goto_0
.end method


# virtual methods
.method protected completeRestoreInstanceState()V
    .locals 2

    .prologue
    .line 905
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mListState:Landroid/os/Parcelable;

    if-eqz v0, :cond_0

    .line 906
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mListState:Landroid/os/Parcelable;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 907
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mListState:Landroid/os/Parcelable;

    .line 909
    :cond_0
    return-void
.end method

.method protected configureAdapter()V
    .locals 2

    .prologue
    .line 801
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    if-nez v0, :cond_0

    .line 817
    :goto_0
    return-void

    .line 805
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    iget-boolean v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mQuickContactEnabled:Z

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->setQuickContactEnabled(Z)V

    .line 806
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    iget-boolean v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdjustSelectionBoundsEnabled:Z

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->setAdjustSelectionBoundsEnabled(Z)V

    .line 807
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    iget-boolean v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mIncludeProfile:Z

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->setIncludeProfile(Z)V

    .line 808
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mQueryString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->setQueryString(Ljava/lang/String;)V

    .line 809
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    iget v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mDirectorySearchMode:I

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->setDirectorySearchMode(I)V

    .line 810
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->setPinnedPartitionHeadersEnabled(Z)V

    .line 811
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    iget v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mDisplayOrder:I

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->setContactNameDisplayOrder(I)V

    .line 812
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    iget v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mSortOrder:I

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->setSortOrder(I)V

    .line 813
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    iget-boolean v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mSectionHeaderDisplayEnabled:Z

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->setSectionHeaderDisplayEnabled(Z)V

    .line 814
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    iget-boolean v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mSelectionVisible:Z

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->setSelectionVisible(Z)V

    .line 815
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    iget v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mDirectoryResultLimit:I

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->setDirectoryResultLimit(I)V

    .line 816
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    iget-boolean v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mDarkTheme:Z

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->setDarkTheme(Z)V

    goto :goto_0
.end method

.method protected configurePhotoLoader()V
    .locals 2

    .prologue
    .line 787
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->isPhotoLoaderEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_2

    .line 788
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

    if-nez v0, :cond_0

    .line 789
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/contacts/common/ContactPhotoManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/ContactPhotoManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

    .line 791
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_1

    .line 792
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 794
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    if-eqz v0, :cond_2

    .line 795
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->setPhotoLoader(Lcom/android/contacts/common/ContactPhotoManager;)V

    .line 798
    :cond_2
    return-void
.end method

.method public createCursorLoader(Landroid/content/Context;)Landroid/content/CursorLoader;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    const/4 v3, 0x0

    .line 357
    new-instance v0, Lcom/android/contacts/common/list/ContactEntryListFragment$2;

    move-object v1, p0

    move-object v2, p1

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-direct/range {v0 .. v7}, Lcom/android/contacts/common/list/ContactEntryListFragment$2;-><init>(Lcom/android/contacts/common/list/ContactEntryListFragment;Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method protected abstract createListAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method protected finish()V
    .locals 0

    .prologue
    .line 511
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    return-void
.end method

.method public getAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 231
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    return-object v0
.end method

.method protected getContactNameDisplayOrder()I
    .locals 1

    .prologue
    .line 681
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    iget v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mDisplayOrder:I

    return v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 202
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getDirectoryLoaderId()I
    .locals 1

    .prologue
    .line 661
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    const/4 v0, -0x1

    return v0
.end method

.method public getDirectorySearchMode()I
    .locals 1

    .prologue
    .line 665
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    iget v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mDirectorySearchMode:I

    return v0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 240
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method public getLoaderManager()Landroid/app/LoaderManager;
    .locals 1

    .prologue
    .line 227
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mLoaderManager:Landroid/app/LoaderManager;

    return-object v0
.end method

.method public final getQueryString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 631
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mQueryString:Ljava/lang/String;

    return-object v0
.end method

.method public getSortOrder()I
    .locals 1

    .prologue
    .line 692
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    iget v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mSortOrder:I

    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 236
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mView:Landroid/view/View;

    return-object v0
.end method

.method protected abstract inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public isLegacyCompatibilityMode()Z
    .locals 1

    .prologue
    .line 673
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    iget-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mLegacyCompatibility:Z

    return v0
.end method

.method public isLoading()Z
    .locals 2

    .prologue
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    const/4 v0, 0x1

    .line 466
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    invoke-virtual {v1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->isLoading()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 474
    :cond_0
    :goto_0
    return v0

    .line 470
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->isLoadingDirectoryList()Z

    move-result v1

    if-nez v1, :cond_0

    .line 474
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLoadingDirectoryList()Z
    .locals 2

    .prologue
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    const/4 v0, 0x1

    .line 478
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->isSearchMode()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->getDirectorySearchMode()I

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mDirectoryListStatus:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mDirectoryListStatus:I

    if-ne v1, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPhotoLoaderEnabled()Z
    .locals 1

    .prologue
    .line 562
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    iget-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mPhotoLoaderEnabled:Z

    return v0
.end method

.method public final isSearchMode()Z
    .locals 1

    .prologue
    .line 627
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    iget-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mSearchMode:Z

    return v0
.end method

.method public isSectionHeaderDisplayEnabled()Z
    .locals 1

    .prologue
    .line 524
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    iget-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mSectionHeaderDisplayEnabled:Z

    return v0
.end method

.method public isSelectionVisible()Z
    .locals 1

    .prologue
    .line 569
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    iget-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mSelectionVisible:Z

    return v0
.end method

.method public isVisibleScrollbarEnabled()Z
    .locals 1

    .prologue
    .line 535
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    iget-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mVisibleScrollbarEnabled:Z

    return v0
.end method

.method protected loadDirectoryPartition(ILcom/android/contacts/common/list/DirectoryPartition;)V
    .locals 4
    .param p1, "partitionIndex"    # I
    .param p2, "partition"    # Lcom/android/contacts/common/list/DirectoryPartition;

    .prologue
    .line 405
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 406
    .local v0, "args":Landroid/os/Bundle;
    const-string v1, "directoryId"

    invoke-virtual {p2}, Lcom/android/contacts/common/list/DirectoryPartition;->getDirectoryId()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 407
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p0}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 408
    return-void
.end method

.method protected loadPreferences()Z
    .locals 3

    .prologue
    .line 707
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    const/4 v0, 0x0

    .line 708
    .local v0, "changed":Z
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->getContactNameDisplayOrder()I

    move-result v1

    iget-object v2, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mContactsPrefs:Lcom/android/contacts/common/preference/ContactsPreferences;

    invoke-virtual {v2}, Lcom/android/contacts/common/preference/ContactsPreferences;->getDisplayOrder()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 709
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mContactsPrefs:Lcom/android/contacts/common/preference/ContactsPreferences;

    invoke-virtual {v1}, Lcom/android/contacts/common/preference/ContactsPreferences;->getDisplayOrder()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/contacts/common/list/ContactEntryListFragment;->setContactNameDisplayOrder(I)V

    .line 710
    const/4 v0, 0x1

    .line 713
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->getSortOrder()I

    move-result v1

    iget-object v2, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mContactsPrefs:Lcom/android/contacts/common/preference/ContactsPreferences;

    invoke-virtual {v2}, Lcom/android/contacts/common/preference/ContactsPreferences;->getSortOrder()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 714
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mContactsPrefs:Lcom/android/contacts/common/preference/ContactsPreferences;

    invoke-virtual {v1}, Lcom/android/contacts/common/preference/ContactsPreferences;->getSortOrder()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/contacts/common/list/ContactEntryListFragment;->setSortOrder(I)V

    .line 715
    const/4 v0, 0x1

    .line 718
    :cond_1
    return v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 188
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 189
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/ContactEntryListFragment;->setContext(Landroid/content/Context;)V

    .line 190
    invoke-super {p0}, Landroid/app/Fragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->setLoaderManager(Landroid/app/LoaderManager;)V

    .line 191
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    .line 268
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 269
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/ContactEntryListFragment;->restoreSavedState(Landroid/os/Bundle;)V

    .line 270
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->createListAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    .line 271
    new-instance v0, Lcom/android/contacts/common/preference/ContactsPreferences;

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/contacts/common/preference/ContactsPreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mContactsPrefs:Lcom/android/contacts/common/preference/ContactsPreferences;

    .line 272
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 4
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 340
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    const/4 v3, -0x1

    if-ne p1, v3, :cond_0

    .line 341
    new-instance v2, Lcom/android/contacts/common/list/DirectoryListLoader;

    iget-object v3, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/contacts/common/list/DirectoryListLoader;-><init>(Landroid/content/Context;)V

    .line 342
    .local v2, "loader":Lcom/android/contacts/common/list/DirectoryListLoader;
    iget-object v3, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    invoke-virtual {v3}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getDirectorySearchMode()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/contacts/common/list/DirectoryListLoader;->setDirectorySearchMode(I)V

    .line 343
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/contacts/common/list/DirectoryListLoader;->setLocalInvisibleDirectoryEnabled(Z)V

    .line 352
    .end local v2    # "loader":Lcom/android/contacts/common/list/DirectoryListLoader;
    :goto_0
    return-object v2

    .line 347
    :cond_0
    iget-object v3, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v3}, Lcom/android/contacts/common/list/ContactEntryListFragment;->createCursorLoader(Landroid/content/Context;)Landroid/content/CursorLoader;

    move-result-object v2

    .line 348
    .local v2, "loader":Landroid/content/CursorLoader;
    if-eqz p2, :cond_1

    const-string v3, "directoryId"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "directoryId"

    .line 349
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 351
    .local v0, "directoryId":J
    :goto_1
    iget-object v3, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    invoke-virtual {v3, v2, v0, v1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->configureLoader(Landroid/content/CursorLoader;J)V

    goto :goto_0

    .line 349
    .end local v0    # "directoryId":J
    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 724
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/common/list/ContactEntryListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    .line 726
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->isSearchMode()Z

    move-result v0

    .line 727
    .local v0, "searchMode":Z
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    invoke-virtual {v1, v0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->setSearchMode(Z)V

    .line 728
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->configureDefaultPartition(ZZ)V

    .line 729
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    iget-object v2, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

    invoke-virtual {v1, v2}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->setPhotoLoader(Lcom/android/contacts/common/ContactPhotoManager;)V

    .line 730
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 732
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->isSearchMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 733
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setFocusableInTouchMode(Z)V

    .line 734
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->requestFocus()Z

    .line 737
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mView:Landroid/view/View;

    return-object v1
.end method

.method protected onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;

    .prologue
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    const/4 v2, 0x0

    .line 741
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/common/list/ContactEntryListFragment;->inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mView:Landroid/view/View;

    .line 743
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mView:Landroid/view/View;

    const v3, 0x102000a

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    .line 744
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    if-nez v1, :cond_0

    .line 745
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Your content must have a ListView whose id attribute is \'android.R.id.list\'"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 750
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mView:Landroid/view/View;

    const v3, 0x1020004

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 751
    .local v0, "emptyView":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 752
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 755
    :cond_1
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 756
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 757
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 758
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 759
    iget-object v3, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->isSearchMode()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v3, v1}, Landroid/widget/ListView;->setFastScrollEnabled(Z)V

    .line 763
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 766
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setSaveEnabled(Z)V

    .line 768
    invoke-direct {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->configureVerticalScrollbar()V

    .line 769
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->configurePhotoLoader()V

    .line 771
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->getAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->setFragmentRootView(Landroid/view/View;)V

    .line 773
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mView:Landroid/view/View;

    invoke-static {v1, v2, v3}, Lcom/android/contacts/common/util/ContactListViewUtils;->applyCardPaddingToView(Landroid/content/res/Resources;Landroid/widget/ListView;Landroid/view/View;)V

    .line 774
    return-void

    :cond_2
    move v1, v2

    .line 759
    goto :goto_0
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 865
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    if-ne p1, v0, :cond_0

    if-eqz p2, :cond_0

    .line 866
    invoke-direct {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->hideSoftKeyboard()V

    .line 868
    :cond_0
    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 3
    .param p1, "hidden"    # Z

    .prologue
    .line 778
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    invoke-super {p0, p1}, Landroid/app/Fragment;->onHiddenChanged(Z)V

    .line 779
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 782
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->getView()Landroid/view/View;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/contacts/common/util/ContactListViewUtils;->applyCardPaddingToView(Landroid/content/res/Resources;Landroid/widget/ListView;Landroid/view/View;)V

    .line 784
    :cond_0
    return-void
.end method

.method protected abstract onItemClick(IJ)V
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 835
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-direct {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->hideSoftKeyboard()V

    .line 837
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    sub-int v0, p3, v1

    .line 838
    .local v0, "adjPosition":I
    if-ltz v0, :cond_0

    .line 839
    invoke-virtual {p0, v0, p4, p5}, Lcom/android/contacts/common/list/ContactEntryListFragment;->onItemClick(IJ)V

    .line 841
    :cond_0
    return-void
.end method

.method protected onItemLongClick(IJ)Z
    .locals 1
    .param p1, "position"    # I
    .param p2, "id"    # J

    .prologue
    .line 183
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 845
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    sub-int v0, p3, v1

    .line 847
    .local v0, "adjPosition":I
    if-ltz v0, :cond_0

    .line 848
    invoke-virtual {p0, v0, p4, p5}, Lcom/android/contacts/common/list/ContactEntryListFragment;->onItemLongClick(IJ)Z

    move-result v1

    .line 850
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 5
    .param p2, "data"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    const/4 v4, -0x1

    .line 419
    iget-boolean v2, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mEnabled:Z

    if-nez v2, :cond_1

    .line 445
    :cond_0
    :goto_0
    return-void

    .line 423
    :cond_1
    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v1

    .line 424
    .local v1, "loaderId":I
    if-ne v1, v4, :cond_2

    .line 425
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mDirectoryListStatus:I

    .line 426
    iget-object v2, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    invoke-virtual {v2, p2}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->changeDirectories(Landroid/database/Cursor;)V

    .line 427
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->startLoading()V

    goto :goto_0

    .line 429
    :cond_2
    invoke-virtual {p0, v1, p2}, Lcom/android/contacts/common/list/ContactEntryListFragment;->onPartitionLoaded(ILandroid/database/Cursor;)V

    .line 430
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->isSearchMode()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 431
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->getDirectorySearchMode()I

    move-result v0

    .line 432
    .local v0, "directorySearchMode":I
    if-eqz v0, :cond_0

    .line 433
    iget v2, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mDirectoryListStatus:I

    if-nez v2, :cond_3

    .line 434
    const/4 v2, 0x1

    iput v2, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mDirectoryListStatus:I

    .line 435
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v4, v3, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    goto :goto_0

    .line 437
    :cond_3
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->startLoading()V

    goto :goto_0

    .line 441
    .end local v0    # "directorySearchMode":I
    :cond_4
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mDirectoryListStatus:I

    .line 442
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/LoaderManager;->destroyLoader(I)V

    goto :goto_0
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 58
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/common/list/ContactEntryListFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 448
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    return-void
.end method

.method protected onPartitionLoaded(ILandroid/database/Cursor;)V
    .locals 1
    .param p1, "partitionIndex"    # I
    .param p2, "data"    # Landroid/database/Cursor;

    .prologue
    .line 451
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getPartitionCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 463
    :cond_0
    :goto_0
    return-void

    .line 457
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->changeCursor(ILandroid/database/Cursor;)V

    .line 458
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->setProfileHeader()V

    .line 460
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->isLoading()Z

    move-result v0

    if-nez v0, :cond_0

    .line 461
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->completeRestoreInstanceState()V

    goto :goto_0
.end method

.method public onPause()V
    .locals 3

    .prologue
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    const/4 v1, 0x0

    .line 884
    iget-object v2, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v2

    iput v2, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mListViewTopIndex:I

    .line 885
    iget-object v2, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 886
    .local v0, "v":Landroid/view/View;
    if-nez v0, :cond_0

    :goto_0
    iput v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mListViewTopOffset:I

    .line 888
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 889
    invoke-direct {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->removePendingDirectorySearchRequests()V

    .line 890
    return-void

    .line 886
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    iget-object v2, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    goto :goto_0
.end method

.method public onPickerResult(Landroid/content/Intent;)V
    .locals 2
    .param p1, "data"    # Landroid/content/Intent;

    .prologue
    .line 920
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Picker result handler is not implemented."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 894
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 898
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    iget v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mListViewTopIndex:I

    iget v2, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mListViewTopOffset:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 899
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 245
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 246
    const-string v0, "sectionHeaderDisplayEnabled"

    iget-boolean v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mSectionHeaderDisplayEnabled:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 247
    const-string v0, "photoLoaderEnabled"

    iget-boolean v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mPhotoLoaderEnabled:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 248
    const-string v0, "quickContactEnabled"

    iget-boolean v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mQuickContactEnabled:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 249
    const-string v0, "adjustSelectionBoundsEnabled"

    iget-boolean v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdjustSelectionBoundsEnabled:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 250
    const-string v0, "includeProfile"

    iget-boolean v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mIncludeProfile:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 251
    const-string v0, "searchMode"

    iget-boolean v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mSearchMode:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 252
    const-string v0, "visibleScrollbarEnabled"

    iget-boolean v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mVisibleScrollbarEnabled:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 253
    const-string v0, "scrollbarPosition"

    iget v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mVerticalScrollbarPosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 254
    const-string v0, "directorySearchMode"

    iget v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mDirectorySearchMode:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 255
    const-string v0, "selectionVisible"

    iget-boolean v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mSelectionVisible:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 256
    const-string v0, "legacyCompatibility"

    iget-boolean v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mLegacyCompatibility:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 257
    const-string v0, "queryString"

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mQueryString:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    const-string v0, "directoryResultLimit"

    iget v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mDirectoryResultLimit:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 259
    const-string v0, "darkTheme"

    iget-boolean v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mDarkTheme:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 261
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 262
    const-string v0, "liststate"

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 264
    :cond_0
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 822
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 826
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    .line 827
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

    invoke-virtual {v0}, Lcom/android/contacts/common/ContactPhotoManager;->pause()V

    .line 831
    :cond_0
    :goto_0
    return-void

    .line 828
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->isPhotoLoaderEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 829
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

    invoke-virtual {v0}, Lcom/android/contacts/common/ContactPhotoManager;->resume()V

    goto :goto_0
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 300
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 302
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mContactsPrefs:Lcom/android/contacts/common/preference/ContactsPreferences;

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mPreferencesChangeListener:Lcom/android/contacts/common/preference/ContactsPreferences$ChangeListener;

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/preference/ContactsPreferences;->registerChangeListener(Lcom/android/contacts/common/preference/ContactsPreferences$ChangeListener;)V

    .line 304
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->loadPreferences()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mForceLoad:Z

    .line 306
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mDirectoryListStatus:I

    .line 307
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mLoadPriorityDirectoriesOnly:Z

    .line 309
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->startLoading()V

    .line 310
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 485
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 486
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mContactsPrefs:Lcom/android/contacts/common/preference/ContactsPreferences;

    invoke-virtual {v0}, Lcom/android/contacts/common/preference/ContactsPreferences;->unregisterChangeListener()V

    .line 487
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->clearPartitions()V

    .line 488
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 875
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    if-ne p1, v0, :cond_0

    .line 876
    invoke-direct {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->hideSoftKeyboard()V

    .line 878
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected reloadData()V
    .locals 2

    .prologue
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    const/4 v1, 0x1

    .line 491
    invoke-direct {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->removePendingDirectorySearchRequests()V

    .line 492
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->onDataReload()V

    .line 493
    iput-boolean v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mLoadPriorityDirectoriesOnly:Z

    .line 494
    iput-boolean v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mForceLoad:Z

    .line 495
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->startLoading()V

    .line 496
    return-void
.end method

.method public restoreSavedState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    .line 275
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    if-nez p1, :cond_0

    .line 296
    :goto_0
    return-void

    .line 279
    :cond_0
    const-string v0, "sectionHeaderDisplayEnabled"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mSectionHeaderDisplayEnabled:Z

    .line 280
    const-string v0, "photoLoaderEnabled"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mPhotoLoaderEnabled:Z

    .line 281
    const-string v0, "quickContactEnabled"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mQuickContactEnabled:Z

    .line 282
    const-string v0, "adjustSelectionBoundsEnabled"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdjustSelectionBoundsEnabled:Z

    .line 283
    const-string v0, "includeProfile"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mIncludeProfile:Z

    .line 284
    const-string v0, "searchMode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mSearchMode:Z

    .line 285
    const-string v0, "visibleScrollbarEnabled"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mVisibleScrollbarEnabled:Z

    .line 286
    const-string v0, "scrollbarPosition"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mVerticalScrollbarPosition:I

    .line 287
    const-string v0, "directorySearchMode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mDirectorySearchMode:I

    .line 288
    const-string v0, "selectionVisible"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mSelectionVisible:Z

    .line 289
    const-string v0, "legacyCompatibility"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mLegacyCompatibility:Z

    .line 290
    const-string v0, "queryString"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mQueryString:Ljava/lang/String;

    .line 291
    const-string v0, "directoryResultLimit"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mDirectoryResultLimit:I

    .line 292
    const-string v0, "darkTheme"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mDarkTheme:Z

    .line 295
    const-string v0, "liststate"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mListState:Landroid/os/Parcelable;

    goto :goto_0
.end method

.method public setAdjustSelectionBoundsEnabled(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 581
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    iput-boolean p1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdjustSelectionBoundsEnabled:Z

    .line 582
    return-void
.end method

.method protected setContactNameDisplayOrder(I)V
    .locals 1
    .param p1, "displayOrder"    # I

    .prologue
    .line 685
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    iput p1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mDisplayOrder:I

    .line 686
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    if-eqz v0, :cond_0

    .line 687
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    invoke-virtual {v0, p1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->setContactNameDisplayOrder(I)V

    .line 689
    :cond_0
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 197
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    iput-object p1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mContext:Landroid/content/Context;

    .line 198
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->configurePhotoLoader()V

    .line 199
    return-void
.end method

.method public setDarkTheme(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 912
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    iput-boolean p1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mDarkTheme:Z

    .line 913
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    invoke-virtual {v0, p1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->setDarkTheme(Z)V

    .line 914
    :cond_0
    return-void
.end method

.method public setDirectoryResultLimit(I)V
    .locals 0
    .param p1, "limit"    # I

    .prologue
    .line 703
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    iput p1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mDirectoryResultLimit:I

    .line 704
    return-void
.end method

.method public setDirectorySearchMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 669
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    iput p1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mDirectorySearchMode:I

    .line 670
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 206
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    iget-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mEnabled:Z

    if-eq v0, p1, :cond_0

    .line 207
    iput-boolean p1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mEnabled:Z

    .line 208
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    if-eqz v0, :cond_0

    .line 209
    iget-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mEnabled:Z

    if-eqz v0, :cond_1

    .line 210
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->reloadData()V

    .line 216
    :cond_0
    :goto_0
    return-void

    .line 212
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->clearPartitions()V

    goto :goto_0
.end method

.method public setIncludeProfile(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 585
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    iput-boolean p1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mIncludeProfile:Z

    .line 586
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    if-eqz v0, :cond_0

    .line 587
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    invoke-virtual {v0, p1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->setIncludeProfile(Z)V

    .line 589
    :cond_0
    return-void
.end method

.method public setLegacyCompatibilityMode(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 677
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    iput-boolean p1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mLegacyCompatibility:Z

    .line 678
    return-void
.end method

.method public setLoaderManager(Landroid/app/LoaderManager;)V
    .locals 0
    .param p1, "loaderManager"    # Landroid/app/LoaderManager;

    .prologue
    .line 222
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    iput-object p1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mLoaderManager:Landroid/app/LoaderManager;

    .line 223
    return-void
.end method

.method public setPhotoLoaderEnabled(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 557
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    iput-boolean p1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mPhotoLoaderEnabled:Z

    .line 558
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->configurePhotoLoader()V

    .line 559
    return-void
.end method

.method protected setProfileHeader()V
    .locals 1

    .prologue
    .line 503
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mUserProfileExists:Z

    .line 504
    return-void
.end method

.method public setQueryString(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "queryString"    # Ljava/lang/String;
    .param p2, "delaySelection"    # Z

    .prologue
    .line 635
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mQueryString:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 636
    iget-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mShowEmptyListForEmptyQuery:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 637
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mQueryString:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 639
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 646
    :cond_0
    :goto_0
    iput-object p1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mQueryString:Ljava/lang/String;

    .line 647
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mQueryString:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mShowEmptyListForEmptyQuery:Z

    if-eqz v0, :cond_4

    :cond_1
    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->setSearchMode(Z)V

    .line 649
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    if-eqz v0, :cond_2

    .line 650
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    invoke-virtual {v0, p1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->setQueryString(Ljava/lang/String;)V

    .line 651
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->reloadData()V

    .line 654
    :cond_2
    return-void

    .line 640
    :cond_3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 642
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    .line 647
    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setQuickContactEnabled(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 577
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    iput-boolean p1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mQuickContactEnabled:Z

    .line 578
    return-void
.end method

.method protected setSearchMode(Z)V
    .locals 4
    .param p1, "flag"    # Z

    .prologue
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 598
    iget-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mSearchMode:Z

    if-eq v0, p1, :cond_3

    .line 599
    iput-boolean p1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mSearchMode:Z

    .line 600
    iget-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mSearchMode:Z

    if-nez v0, :cond_4

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->setSectionHeaderDisplayEnabled(Z)V

    .line 602
    if-nez p1, :cond_0

    .line 603
    iput v2, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mDirectoryListStatus:I

    .line 604
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 607
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    if-eqz v0, :cond_2

    .line 608
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    invoke-virtual {v0, p1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->setSearchMode(Z)V

    .line 610
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->clearPartitions()V

    .line 611
    if-nez p1, :cond_1

    .line 615
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->removeDirectoriesAfterDefault()V

    .line 617
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    invoke-virtual {v0, v2, p1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->configureDefaultPartition(ZZ)V

    .line 620
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_3

    .line 621
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    if-nez p1, :cond_5

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setFastScrollEnabled(Z)V

    .line 624
    :cond_3
    return-void

    :cond_4
    move v0, v2

    .line 600
    goto :goto_0

    :cond_5
    move v1, v2

    .line 621
    goto :goto_1
.end method

.method public setSectionHeaderDisplayEnabled(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 514
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    iget-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mSectionHeaderDisplayEnabled:Z

    if-eq v0, p1, :cond_1

    .line 515
    iput-boolean p1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mSectionHeaderDisplayEnabled:Z

    .line 516
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    if-eqz v0, :cond_0

    .line 517
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    invoke-virtual {v0, p1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->setSectionHeaderDisplayEnabled(Z)V

    .line 519
    :cond_0
    invoke-direct {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->configureVerticalScrollbar()V

    .line 521
    :cond_1
    return-void
.end method

.method public setSelectionVisible(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 573
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    iput-boolean p1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mSelectionVisible:Z

    .line 574
    return-void
.end method

.method public setShowEmptyListForNullQuery(Z)V
    .locals 0
    .param p1, "show"    # Z

    .prologue
    .line 657
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    iput-boolean p1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mShowEmptyListForEmptyQuery:Z

    .line 658
    return-void
.end method

.method public setSortOrder(I)V
    .locals 1
    .param p1, "sortOrder"    # I

    .prologue
    .line 696
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    iput p1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mSortOrder:I

    .line 697
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    if-eqz v0, :cond_0

    .line 698
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    invoke-virtual {v0, p1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->setSortOrder(I)V

    .line 700
    :cond_0
    return-void
.end method

.method public setVerticalScrollbarPosition(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 539
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    iget v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mVerticalScrollbarPosition:I

    if-eq v0, p1, :cond_0

    .line 540
    iput p1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mVerticalScrollbarPosition:I

    .line 541
    invoke-direct {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->configureVerticalScrollbar()V

    .line 543
    :cond_0
    return-void
.end method

.method public setVisibleScrollbarEnabled(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 528
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    iget-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mVisibleScrollbarEnabled:Z

    if-eq v0, p1, :cond_0

    .line 529
    iput-boolean p1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mVisibleScrollbarEnabled:Z

    .line 530
    invoke-direct {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->configureVerticalScrollbar()V

    .line 532
    :cond_0
    return-void
.end method

.method protected startLoading()V
    .locals 6

    .prologue
    .line 313
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment;, "Lcom/android/contacts/common/list/ContactEntryListFragment<TT;>;"
    iget-object v4, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    if-nez v4, :cond_0

    .line 336
    :goto_0
    return-void

    .line 318
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->configureAdapter()V

    .line 319
    iget-object v4, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    invoke-virtual {v4}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getPartitionCount()I

    move-result v3

    .line 320
    .local v3, "partitionCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v3, :cond_4

    .line 321
    iget-object v4, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    invoke-virtual {v4, v1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getPartition(I)Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;

    move-result-object v2

    .line 322
    .local v2, "partition":Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;
    instance-of v4, v2, Lcom/android/contacts/common/list/DirectoryPartition;

    if-eqz v4, :cond_3

    move-object v0, v2

    .line 323
    check-cast v0, Lcom/android/contacts/common/list/DirectoryPartition;

    .line 324
    .local v0, "directoryPartition":Lcom/android/contacts/common/list/DirectoryPartition;
    invoke-virtual {v0}, Lcom/android/contacts/common/list/DirectoryPartition;->getStatus()I

    move-result v4

    if-nez v4, :cond_2

    .line 325
    invoke-virtual {v0}, Lcom/android/contacts/common/list/DirectoryPartition;->isPriorityDirectory()Z

    move-result v4

    if-nez v4, :cond_1

    iget-boolean v4, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mLoadPriorityDirectoriesOnly:Z

    if-nez v4, :cond_2

    .line 326
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/contacts/common/list/ContactEntryListFragment;->startLoadingDirectoryPartition(I)V

    .line 320
    .end local v0    # "directoryPartition":Lcom/android/contacts/common/list/DirectoryPartition;
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 330
    :cond_3
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v1, v5, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    goto :goto_2

    .line 335
    .end local v2    # "partition":Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;
    :cond_4
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mLoadPriorityDirectoriesOnly:Z

    goto :goto_0
.end method
