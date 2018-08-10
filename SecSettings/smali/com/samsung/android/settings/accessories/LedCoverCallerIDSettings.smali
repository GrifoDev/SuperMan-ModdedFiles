.class public Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "LedCoverCallerIDSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings$1;,
        Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings$2;,
        Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings$3;,
        Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings$4;,
        Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings$5;,
        Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings$6;,
        Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings$7;,
        Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings$8;,
        Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings$CallerIdAdapter;
    }
.end annotation


# instance fields
.field private mActionBar:Landroid/app/ActionBar;

.field private mCallerIDIconStyle:I

.field private mCustomCallerIdAdapter:Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings$CallerIdAdapter;

.field private mCustomCategoryDivider:Landroid/view/View;

.field private mCustomCategoryTitle:Landroid/widget/TextView;

.field mDuplicatedChecker:Landroid/util/SparseIntArray;

.field private mFabListner:Landroid/view/View$OnClickListener;

.field private mFloatingActionButton:Lcom/android/settings/widget/FloatingActionButton;

.field private mGridViewCustom:Lcom/samsung/android/settings/accessories/LedIconGridView;

.field private mGridViewCustomKeyListener:Landroid/view/View$OnKeyListener;

.field private mGridViewCustomListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mGridViewPreload:Lcom/samsung/android/settings/accessories/LedIconGridView;

.field private mGridViewPreloadListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mGridViewWrapper:Landroid/widget/LinearLayout;

.field private mIsSupportedCallerIDIconCustom:Ljava/lang/Boolean;

.field private final mLedIconReceiver:Landroid/content/BroadcastReceiver;

.field private mListCustomCallerID:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/settings/accessories/AccessoriesUtils$CallerIDInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mListItemCheckedListner:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mListItemEditListner:Landroid/view/View$OnClickListener;

.field private mListItemTouchListner:Landroid/view/View$OnTouchListener;

.field private mListPreloadCallerID:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/settings/accessories/AccessoriesUtils$CallerIDInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mNumOfCustomCallerID:I

.field private mNumOfPreloadCallerID:I

.field private mOptionsMenu:Landroid/view/Menu;

.field private mPreloadCallerIdAdapter:Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings$CallerIdAdapter;

.field private mScrollView:Landroid/widget/ScrollView;

.field private mSelectActionView:Landroid/view/View;

.field private mSelectAllCheckbox:Landroid/widget/CheckBox;

.field private mSelectAllText:Landroid/widget/TextView;

.field private mSelectedContactTextView:Landroid/widget/TextView;

.field private mUIMode:I

.field private mbShowAddButton:Z


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mCallerIDIconStyle:I

    return v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;)Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings$CallerIdAdapter;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mCustomCallerIdAdapter:Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings$CallerIdAdapter;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;)Lcom/samsung/android/settings/accessories/LedIconGridView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mGridViewCustom:Lcom/samsung/android/settings/accessories/LedIconGridView;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;)Landroid/widget/CompoundButton$OnCheckedChangeListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mListItemCheckedListner:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;)Landroid/view/View$OnClickListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mListItemEditListner:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic -get5(Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;)Landroid/view/View$OnTouchListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mListItemTouchListner:Landroid/view/View$OnTouchListener;

    return-object v0
.end method

.method static synthetic -get6(Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;)Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings$CallerIdAdapter;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mPreloadCallerIdAdapter:Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings$CallerIdAdapter;

    return-object v0
.end method

.method static synthetic -get7(Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;)Landroid/widget/CheckBox;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mSelectAllCheckbox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic -get8(Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mUIMode:I

    return v0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;I)Landroid/graphics/drawable/Drawable;
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->encircle(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->getCustomIconByArray(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->ToggleAllCheck(Z)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->showDialog(I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mIsSupportedCallerIDIconCustom:Ljava/lang/Boolean;

    iput v2, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mNumOfPreloadCallerID:I

    iput v2, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mNumOfCustomCallerID:I

    iput-object v1, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mListPreloadCallerID:Ljava/util/List;

    iput-object v1, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mListCustomCallerID:Ljava/util/List;

    iput-object v1, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mPreloadCallerIdAdapter:Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings$CallerIdAdapter;

    iput-object v1, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mCustomCallerIdAdapter:Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings$CallerIdAdapter;

    iput v2, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mUIMode:I

    iput-object v1, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mScrollView:Landroid/widget/ScrollView;

    iput-object v1, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mGridViewWrapper:Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mGridViewPreload:Lcom/samsung/android/settings/accessories/LedIconGridView;

    iput-object v1, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mGridViewCustom:Lcom/samsung/android/settings/accessories/LedIconGridView;

    iput-object v1, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mCustomCategoryTitle:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mCustomCategoryDivider:Landroid/view/View;

    iput-object v1, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mFloatingActionButton:Lcom/android/settings/widget/FloatingActionButton;

    iput-object v1, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mSelectAllCheckbox:Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mSelectAllText:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mSelectedContactTextView:Landroid/widget/TextView;

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mCallerIDIconStyle:I

    iput-boolean v2, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mbShowAddButton:Z

    iput-object v1, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mDuplicatedChecker:Landroid/util/SparseIntArray;

    new-instance v0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings$1;-><init>(Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mFabListner:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings$2;-><init>(Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mLedIconReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings$3;-><init>(Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mGridViewPreloadListener:Landroid/widget/AdapterView$OnItemClickListener;

    new-instance v0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings$4;-><init>(Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mGridViewCustomListener:Landroid/widget/AdapterView$OnItemClickListener;

    new-instance v0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings$5;-><init>(Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mGridViewCustomKeyListener:Landroid/view/View$OnKeyListener;

    new-instance v0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings$6;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings$6;-><init>(Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mListItemCheckedListner:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    new-instance v0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings$7;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings$7;-><init>(Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mListItemTouchListner:Landroid/view/View$OnTouchListener;

    new-instance v0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings$8;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings$8;-><init>(Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mListItemEditListner:Landroid/view/View$OnClickListener;

    return-void
.end method

.method private ToggleAllCheck(Z)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mListCustomCallerID:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mListCustomCallerID:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/accessories/AccessoriesUtils$CallerIDInfo;

    iput-boolean p1, v1, Lcom/samsung/android/settings/accessories/AccessoriesUtils$CallerIDInfo;->mChecked:Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mCustomCallerIdAdapter:Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings$CallerIdAdapter;

    invoke-virtual {v1}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings$CallerIdAdapter;->notifyDataSetChanged()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->updateActionbarState()V

    return-void
.end method

.method private checkCallerIDContactCount()V
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mListPreloadCallerID:Ljava/util/List;

    if-nez v1, :cond_0

    const-string/jumbo v1, "LedCoverCallerIDSettings"

    const-string/jumbo v2, "checkCallerIDContactCount, mCallerIDInfoList is null"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mListPreloadCallerID:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v16

    if-nez v16, :cond_1

    const-string/jumbo v1, "LedCoverCallerIDSettings"

    const-string/jumbo v2, "checkCallerIDContactCount, mCallerIDInfoList size is 0"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    const/4 v13, 0x0

    :goto_0
    move/from16 v0, v16

    if-ge v13, v0, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mListPreloadCallerID:Ljava/util/List;

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/accessories/AccessoriesUtils$CallerIDInfo;

    invoke-virtual {v1}, Lcom/samsung/android/settings/accessories/AccessoriesUtils$CallerIDInfo;->resetCallerIDCount()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mListPreloadCallerID:Ljava/util/List;

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/accessories/AccessoriesUtils$CallerIDInfo;

    iget v1, v1, Lcom/samsung/android/settings/accessories/AccessoriesUtils$CallerIDInfo;->mId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget v1, v0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mNumOfCustomCallerID:I

    if-lez v1, :cond_3

    const/4 v13, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget v1, v0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mNumOfCustomCallerID:I

    if-ge v13, v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mListCustomCallerID:Ljava/util/List;

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/accessories/AccessoriesUtils$CallerIDInfo;

    invoke-virtual {v1}, Lcom/samsung/android/settings/accessories/AccessoriesUtils$CallerIDInfo;->resetCallerIDCount()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mListCustomCallerID:Ljava/util/List;

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/accessories/AccessoriesUtils$CallerIDInfo;

    iget v1, v1, Lcom/samsung/android/settings/accessories/AccessoriesUtils$CallerIDInfo;->mId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_3
    const/4 v8, 0x0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "_id"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string/jumbo v4, "sec_led"

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    const/4 v10, 0x0

    if-eqz v8, :cond_9

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v10

    const-string/jumbo v1, "LedCoverCallerIDSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "checkCallerIDCount() Count : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v10, :cond_6

    :cond_4
    :goto_2
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v1, 0x1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_4

    const-string/jumbo v1, ""

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_4

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    if-eqz v14, :cond_4

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mNumOfPreloadCallerID:I

    if-gt v1, v2, :cond_5

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mListPreloadCallerID:Ljava/util/List;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/accessories/AccessoriesUtils$CallerIDInfo;

    invoke-virtual {v1}, Lcom/samsung/android/settings/accessories/AccessoriesUtils$CallerIDInfo;->increaseCallerIDCount()V

    const-string/jumbo v1, "LedCoverCallerIDSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "increaseCallerIDCount(preload) contact_id : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", caller ID : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catch_0
    move-exception v12

    const-string/jumbo v1, "LedCoverCallerIDSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "SQL Exception : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    return-void

    :cond_5
    move-object/from16 v0, p0

    iget v1, v0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mNumOfCustomCallerID:I

    if-lez v1, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mListCustomCallerID:Ljava/util/List;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/accessories/AccessoriesUtils$CallerIDInfo;

    invoke-virtual {v1}, Lcom/samsung/android/settings/accessories/AccessoriesUtils$CallerIDInfo;->increaseCallerIDCount()V

    const-string/jumbo v1, "LedCoverCallerIDSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "increaseCallerIDCount(custom) contact_id : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", caller ID : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mPreloadCallerIdAdapter:Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings$CallerIdAdapter;

    if-eqz v1, :cond_7

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mPreloadCallerIdAdapter:Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings$CallerIdAdapter;

    invoke-virtual {v1}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings$CallerIdAdapter;->notifyDataSetChanged()V

    :cond_7
    move-object/from16 v0, p0

    iget v1, v0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mNumOfCustomCallerID:I

    if-lez v1, :cond_8

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mCustomCallerIdAdapter:Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings$CallerIdAdapter;

    if-eqz v1, :cond_8

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mCustomCallerIdAdapter:Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings$CallerIdAdapter;

    invoke-virtual {v1}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings$CallerIdAdapter;->notifyDataSetChanged()V

    :cond_8
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_9
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v13, 0x0

    :goto_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mListPreloadCallerID:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v13, v1, :cond_a

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mListPreloadCallerID:Ljava/util/List;

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/accessories/AccessoriesUtils$CallerIDInfo;

    iget v1, v1, Lcom/samsung/android/settings/accessories/AccessoriesUtils$CallerIDInfo;->mId:I

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const v1, 0x7f121afd

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mListPreloadCallerID:Ljava/util/List;

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/accessories/AccessoriesUtils$CallerIDInfo;

    iget v1, v1, Lcom/samsung/android/settings/accessories/AccessoriesUtils$CallerIDInfo;->mCallerIDCount:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    :cond_a
    const/4 v13, 0x0

    :goto_4
    move-object/from16 v0, p0

    iget v1, v0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mNumOfCustomCallerID:I

    if-ge v13, v1, :cond_b

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mListCustomCallerID:Ljava/util/List;

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/accessories/AccessoriesUtils$CallerIDInfo;

    iget v1, v1, Lcom/samsung/android/settings/accessories/AccessoriesUtils$CallerIDInfo;->mId:I

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const v1, 0x7f121afd

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mListCustomCallerID:Ljava/util/List;

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/accessories/AccessoriesUtils$CallerIDInfo;

    iget v1, v1, Lcom/samsung/android/settings/accessories/AccessoriesUtils$CallerIDInfo;->mCallerIDCount:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "com.android.settings"

    const-string/jumbo v3, "LVCC"

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "LedCoverCallerIDSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "insertLog : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private createDownloadLEDCoverFeaturePopup()Landroid/app/Dialog;
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f121b29

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f121b28

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings$11;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings$11;-><init>(Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;)V

    const v2, 0x7f1211a1

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings$12;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings$12;-><init>(Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;)V

    const/high16 v2, 0x1040000

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method

.method private encircle(I)Landroid/graphics/drawable/Drawable;
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    instance-of v3, v2, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v3, :cond_0

    move-object v1, v2

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/samsung/android/settings/accessories/AccessoriesUtils;->encircle(Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    return-object v3

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method private getCustomIconByArray(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 21

    if-nez p1, :cond_0

    const-string/jumbo v18, "LedCoverCallerIDSettings"

    const-string/jumbo v19, "getCustomIconByArray led array is null"

    invoke-static/range {v18 .. v19}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v18, 0x0

    return-object v18

    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v18

    const/16 v19, 0x99

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_1

    const-string/jumbo v18, "LedCoverCallerIDSettings"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "getCustomIconByArray led array size unmatch : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, " / "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v20, 0x99

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v18, 0x0

    return-object v18

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->getActivity()Landroid/app/Activity;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f0704c1

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v18

    move/from16 v0, v18

    int-to-float v9, v0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->getActivity()Landroid/app/Activity;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f0704c2

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v18

    move/from16 v0, v18

    int-to-float v10, v0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->getActivity()Landroid/app/Activity;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f0704c4

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v18

    move/from16 v0, v18

    int-to-float v13, v0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->getActivity()Landroid/app/Activity;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f0704c3

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v18

    move/from16 v0, v18

    int-to-float v11, v0

    const/high16 v18, 0x40000000    # 2.0f

    mul-float v18, v18, v10

    sub-float v14, v13, v18

    const/high16 v18, 0x40000000    # 2.0f

    mul-float v18, v18, v10

    sub-float v12, v11, v18

    move/from16 v16, v10

    move/from16 v17, v10

    const/4 v15, 0x0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    new-instance v2, Landroid/graphics/Paint;

    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-direct {v2, v0}, Landroid/graphics/Paint;-><init>(I)V

    float-to-int v0, v13

    move/from16 v18, v0

    float-to-int v0, v11

    move/from16 v19, v0

    sget-object v20, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v18 .. v20}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v8, 0x0

    :goto_0
    const/16 v18, 0x99

    move/from16 v0, v18

    if-ge v8, v0, :cond_4

    const/16 v18, 0x11

    move/from16 v0, v18

    if-lt v15, v0, :cond_2

    const/high16 v18, 0x41100000    # 9.0f

    div-float v18, v12, v18

    const v19, 0x3ecccccd    # 0.4f

    add-float v18, v18, v19

    add-float v17, v17, v18

    move/from16 v16, v10

    const/4 v15, 0x0

    :cond_2
    aget-byte v18, v5, v8

    const/16 v19, 0x31

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_3

    add-float v6, v16, v9

    add-float v7, v17, v9

    const/high16 v18, 0x3f800000    # 1.0f

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/16 v18, -0x1

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v18, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {v3, v6, v7, v9, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_3
    const/high16 v18, 0x41880000    # 17.0f

    div-float v18, v14, v18

    const v19, 0x3ecccccd    # 0.4f

    add-float v18, v18, v19

    add-float v16, v16, v18

    add-int/lit8 v15, v15, 0x1

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_4
    new-instance v18, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, v18

    invoke-direct {v0, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    return-object v18
.end method

.method private getNumOfCheckedCustomList()I
    .locals 4

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mListCustomCallerID:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mListCustomCallerID:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_1

    :cond_0
    return v3

    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mListCustomCallerID:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mListCustomCallerID:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/accessories/AccessoriesUtils$CallerIDInfo;

    iget-boolean v2, v2, Lcom/samsung/android/settings/accessories/AccessoriesUtils$CallerIDInfo;->mChecked:Z

    if-eqz v2, :cond_2

    add-int/lit8 v0, v0, 0x1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return v0
.end method

.method private setCustomGridViewCategoryTitle(Landroid/content/Context;Landroid/widget/TextView;)V
    .locals 4

    if-nez p2, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "device_name"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "device_name"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    const v1, 0x7f121afc

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setGridViewCustom()V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mCustomCallerIdAdapter:Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings$CallerIdAdapter;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings$CallerIdAdapter;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v5, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mListCustomCallerID:Ljava/util/List;

    const v3, 0x7f0d0173

    const/4 v4, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings$CallerIdAdapter;-><init>(Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;Landroid/content/Context;IILjava/util/List;)V

    iput-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mCustomCallerIdAdapter:Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings$CallerIdAdapter;

    iget-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mGridViewCustom:Lcom/samsung/android/settings/accessories/LedIconGridView;

    iget-object v1, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mCustomCallerIdAdapter:Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings$CallerIdAdapter;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/accessories/LedIconGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mGridViewCustom:Lcom/samsung/android/settings/accessories/LedIconGridView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/accessories/LedIconGridView;->setExpanded(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mGridViewCustom:Lcom/samsung/android/settings/accessories/LedIconGridView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settings/accessories/LedIconGridView;->setParents(Landroid/app/Activity;Landroid/widget/ScrollView;)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mGridViewCustom:Lcom/samsung/android/settings/accessories/LedIconGridView;

    iget-object v1, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mGridViewCustomListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/accessories/LedIconGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mGridViewCustom:Lcom/samsung/android/settings/accessories/LedIconGridView;

    iget-object v1, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mGridViewCustomKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/accessories/LedIconGridView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    :cond_0
    return-void
.end method

.method private setGridViewPreload()V
    .locals 6

    new-instance v0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings$CallerIdAdapter;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v5, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mListPreloadCallerID:Ljava/util/List;

    const v3, 0x7f0d0173

    const/4 v4, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings$CallerIdAdapter;-><init>(Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;Landroid/content/Context;IILjava/util/List;)V

    iput-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mPreloadCallerIdAdapter:Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings$CallerIdAdapter;

    iget-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mGridViewPreload:Lcom/samsung/android/settings/accessories/LedIconGridView;

    iget-object v1, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mPreloadCallerIdAdapter:Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings$CallerIdAdapter;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/accessories/LedIconGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mGridViewPreload:Lcom/samsung/android/settings/accessories/LedIconGridView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/accessories/LedIconGridView;->setExpanded(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mGridViewPreload:Lcom/samsung/android/settings/accessories/LedIconGridView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settings/accessories/LedIconGridView;->setParents(Landroid/app/Activity;Landroid/widget/ScrollView;)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mGridViewPreload:Lcom/samsung/android/settings/accessories/LedIconGridView;

    iget-object v1, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mGridViewPreloadListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/accessories/LedIconGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method private updateListCustomCallerID()V
    .locals 15

    const/4 v14, 0x0

    iget-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mListCustomCallerID:Ljava/util/List;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mListCustomCallerID:Ljava/util/List;

    :goto_0
    const/4 v0, 0x5

    new-array v2, v0, [Ljava/lang/String;

    const-string/jumbo v0, "_id"

    aput-object v0, v2, v14

    const-string/jumbo v0, "icon_id"

    const/4 v1, 0x1

    aput-object v0, v2, v1

    const-string/jumbo v0, "icon_array"

    const/4 v1, 0x2

    aput-object v0, v2, v1

    const-string/jumbo v0, "icon_name"

    const/4 v1, 0x3

    aput-object v0, v2, v1

    const-string/jumbo v0, "icon_count"

    const/4 v1, 0x4

    aput-object v0, v2, v1

    const/4 v11, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "content://com.samsung.android.app.ledcovergrace.cp"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    const/4 v12, 0x0

    if-eqz v11, :cond_4

    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v12

    const-string/jumbo v0, "LedCoverCallerIDSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "checkCallerIDCount() Count : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v12, :cond_2

    const-string/jumbo v0, "icon_id"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    const-string/jumbo v0, "icon_array"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    const-string/jumbo v0, "icon_name"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    :cond_0
    :goto_1
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v11, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-interface {v11, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v11, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    if-lez v4, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mDuplicatedChecker:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v4}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    if-nez v0, :cond_0

    if-eqz v6, :cond_0

    const-string/jumbo v0, ""

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mListCustomCallerID:Ljava/util/List;

    new-instance v3, Lcom/samsung/android/settings/accessories/AccessoriesUtils$CallerIDInfo;

    move v5, v14

    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/settings/accessories/AccessoriesUtils$CallerIDInfo;-><init>(IILjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v0, "LedCoverCallerIDSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "LED CUSTOM ICON (list added): "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " / "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mListCustomCallerID:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto/16 :goto_0

    :catch_0
    move-exception v13

    const-string/jumbo v0, "LedCoverCallerIDSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "SQL Exception : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mCustomCallerIdAdapter:Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings$CallerIdAdapter;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mCustomCallerIdAdapter:Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings$CallerIdAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings$CallerIdAdapter;->notifyDataSetChanged()V

    :cond_3
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_4
    return-void
.end method

.method private updateListPreloadCallerID()V
    .locals 12

    const/4 v5, 0x0

    const/4 v11, 0x0

    iget-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mListPreloadCallerID:Ljava/util/List;

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mListPreloadCallerID:Ljava/util/List;

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0300db

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v9

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0300d9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v7

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0300da

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v8

    iget-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mDuplicatedChecker:Landroid/util/SparseIntArray;

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mDuplicatedChecker:Landroid/util/SparseIntArray;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mDuplicatedChecker:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    invoke-virtual {v9}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mNumOfPreloadCallerID:I

    iget-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mIsSupportedCallerIDIconCustom:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x14

    iput v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mNumOfPreloadCallerID:I

    :cond_1
    const/4 v6, 0x0

    :goto_1
    iget v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mNumOfPreloadCallerID:I

    if-ge v6, v0, :cond_3

    iget-object v10, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mListPreloadCallerID:Ljava/util/List;

    new-instance v0, Lcom/samsung/android/settings/accessories/AccessoriesUtils$CallerIDInfo;

    invoke-virtual {v8, v6, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {v7, v6, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v9, v6, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v6, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/settings/accessories/AccessoriesUtils$CallerIDInfo;-><init>(IILjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mDuplicatedChecker:Landroid/util/SparseIntArray;

    invoke-virtual {v8, v6, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {v8, v6, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mListPreloadCallerID:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto/16 :goto_0

    :cond_3
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x28

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->updateListPreloadCallerID()V

    iget-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mListPreloadCallerID:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->setGridViewPreload()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->setHasOptionsMenu(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/app/Activity;->setRequestedOrientation(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v4, "change_mode"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    if-eqz v0, :cond_0

    const-string/jumbo v4, "edit_mode"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    :cond_0
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_3

    iput v6, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mUIMode:I

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    const v5, 0x7f120587

    invoke-virtual {v4, v5}, Landroid/app/ActionBar;->setTitle(I)V

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->hasCoverLEDCallerIDCustomFeature(Landroid/content/Context;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mIsSupportedCallerIDIconCustom:Ljava/lang/Boolean;

    iget v4, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mUIMode:I

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mIsSupportedCallerIDIconCustom:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1

    iput-boolean v6, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mbShowAddButton:Z

    :cond_1
    iget-object v4, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mIsSupportedCallerIDIconCustom:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_2

    iput v6, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mCallerIDIconStyle:I

    :cond_2
    return-void

    :cond_3
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v4, 0x2

    iput v4, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mUIMode:I

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mActionBar:Landroid/app/ActionBar;

    goto :goto_0

    :cond_4
    iput v5, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mUIMode:I

    goto :goto_0
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->createDownloadLEDCoverFeaturePopup()Landroid/app/Dialog;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 8

    const/4 v7, -0x1

    const/16 v6, 0x10

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    iput-object p1, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mOptionsMenu:Landroid/view/Menu;

    iget-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v0}, Landroid/view/Menu;->clear()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0172

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mSelectActionView:Landroid/view/View;

    iget-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v6, v6}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mActionBar:Landroid/app/ActionBar;

    iget-object v1, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mSelectActionView:Landroid/view/View;

    new-instance v2, Landroid/app/ActionBar$LayoutParams;

    invoke-direct {v2, v7, v7, v6}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mSelectActionView:Landroid/view/View;

    const v1, 0x7f0a05db

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mSelectAllText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mSelectAllText:Landroid/widget/TextView;

    new-instance v1, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings$9;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings$9;-><init>(Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mSelectActionView:Landroid/view/View;

    const v1, 0x7f0a08e4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mSelectAllCheckbox:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mSelectAllCheckbox:Landroid/widget/CheckBox;

    new-instance v1, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings$10;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings$10;-><init>(Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mSelectActionView:Landroid/view/View;

    const v1, 0x7f0a05de

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mSelectedContactTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mSelectedContactTextView:Landroid/widget/TextView;

    const v1, 0x7f121b31

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    const v0, 0x7f1205fa

    invoke-interface {p1, v3, v4, v3, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    const v0, 0x7f1205fe

    invoke-interface {p1, v3, v5, v3, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mIsSupportedCallerIDIconCustom:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mUIMode:I

    if-ne v0, v4, :cond_2

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_0
    :goto_1
    return-void

    :cond_1
    const-string/jumbo v0, "LedCoverCallerIDSettings"

    const-string/jumbo v1, "updateSelectMenu null!!"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mUIMode:I

    if-ne v0, v5, :cond_3

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-direct {p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->getNumOfCheckedCustomList()I

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    :cond_3
    iget v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mNumOfCustomCallerID:I

    if-nez v0, :cond_4

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_4
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    :cond_5
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7

    const/4 v6, 0x0

    const/16 v5, 0x8

    const v1, 0x7f0d0174

    invoke-virtual {p1, v1, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0394

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mGridViewWrapper:Landroid/widget/LinearLayout;

    const v1, 0x7f0a0393

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/accessories/LedIconGridView;

    iput-object v1, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mGridViewPreload:Lcom/samsung/android/settings/accessories/LedIconGridView;

    const v1, 0x7f0a0392

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/accessories/LedIconGridView;

    iput-object v1, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mGridViewCustom:Lcom/samsung/android/settings/accessories/LedIconGridView;

    const v1, 0x7f0a01e7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mCustomCategoryTitle:Landroid/widget/TextView;

    const v1, 0x7f0a01e6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mCustomCategoryDivider:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mIsSupportedCallerIDIconCustom:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mGridViewWrapper:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mGridViewWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mGridViewWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mGridViewWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    iget-object v1, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mGridViewCustom:Lcom/samsung/android/settings/accessories/LedIconGridView;

    invoke-virtual {v1, v5}, Lcom/samsung/android/settings/accessories/LedIconGridView;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mCustomCategoryTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mCustomCategoryDivider:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    const v1, 0x7f0a02fd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/settings/widget/FloatingActionButton;

    iput-object v1, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mFloatingActionButton:Lcom/android/settings/widget/FloatingActionButton;

    iget-boolean v1, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mbShowAddButton:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mFloatingActionButton:Lcom/android/settings/widget/FloatingActionButton;

    iget-object v2, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mFabListner:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    iget v1, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mUIMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mGridViewPreload:Lcom/samsung/android/settings/accessories/LedIconGridView;

    invoke-virtual {v1, v5}, Lcom/samsung/android/settings/accessories/LedIconGridView;->setVisibility(I)V

    :cond_1
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v1

    if-eqz v1, :cond_2

    const v1, 0x7f0a075a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ScrollView;

    iput-object v1, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mScrollView:Landroid/widget/ScrollView;

    iget-object v1, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mScrollView:Landroid/widget/ScrollView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->semSetGoToTopEnabled(Z)V

    :cond_2
    return-object v0

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mFloatingActionButton:Lcom/android/settings/widget/FloatingActionButton;

    invoke-virtual {v1, v5}, Lcom/android/settings/widget/FloatingActionButton;->setVisibility(I)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 13

    const/4 v3, 0x0

    const/4 v12, 0x1

    const/4 v4, 0x0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return v4

    :pswitch_0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v0, "edit_mode"

    invoke-virtual {v2, v0, v12}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-class v1, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    move v5, v4

    move-object v6, v3

    move v7, v4

    invoke-static/range {v0 .. v7}, Lcom/android/settings/Utils;->startWithFragment(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;IILjava/lang/CharSequence;I)V

    return v12

    :pswitch_1
    invoke-direct {p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->getNumOfCheckedCustomList()I

    move-result v8

    if-nez v8, :cond_0

    return v4

    :cond_0
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    const/4 v9, 0x0

    :goto_1
    iget-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mListCustomCallerID:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v9, v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mListCustomCallerID:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/accessories/AccessoriesUtils$CallerIDInfo;

    iget-boolean v0, v0, Lcom/samsung/android/settings/accessories/AccessoriesUtils$CallerIDInfo;->mChecked:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mListCustomCallerID:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/accessories/AccessoriesUtils$CallerIDInfo;

    iget v0, v0, Lcom/samsung/android/settings/accessories/AccessoriesUtils$CallerIDInfo;->mId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "LedCoverCallerIDSettings"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onOptionsItemSelected - remove : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mListCustomCallerID:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/accessories/AccessoriesUtils$CallerIDInfo;

    iget v0, v0, Lcom/samsung/android/settings/accessories/AccessoriesUtils$CallerIDInfo;->mId:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mListCustomCallerID:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/accessories/AccessoriesUtils$CallerIDInfo;

    iget-object v0, v0, Lcom/samsung/android/settings/accessories/AccessoriesUtils$CallerIDInfo;->mName:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_2
    new-instance v11, Landroid/content/Intent;

    const-string/jumbo v0, "com.samsung.android.app.ledcovergrace.REMOVE_CUSTOM_ICON"

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "led_id"

    invoke-virtual {v11, v0, v10}, Landroid/content/Intent;->putIntegerArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->finish()V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    iget-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mIsSupportedCallerIDIconCustom:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mLedIconReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    iget-object v1, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mIsSupportedCallerIDIconCustom:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "com.samsung.android.app.ledcovergrace.REMOVE_CUSTOM_ICON_COMPLETE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mLedIconReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->updateCustomIconAllItems()V

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->checkCallerIDContactCount()V

    return-void
.end method

.method public updateActionbarState()V
    .locals 8

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->getNumOfCheckedCustomList()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mSelectedContactTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    const v4, 0x7f121857

    invoke-virtual {v2, v4, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mListCustomCallerID:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mSelectAllCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    :goto_1
    if-nez v0, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_2
    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mSelectedContactTextView:Landroid/widget/TextView;

    const v2, 0x7f121b31

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mSelectAllCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_2
.end method

.method updateCustomIconAllItems()V
    .locals 3

    const/16 v2, 0x8

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->updateListCustomCallerID()V

    iget-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mListCustomCallerID:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mNumOfCustomCallerID:I

    iget v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mNumOfCustomCallerID:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mGridViewCustom:Lcom/samsung/android/settings/accessories/LedIconGridView;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/accessories/LedIconGridView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mCustomCategoryTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mCustomCategoryDivider:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->setGridViewCustom()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mCustomCategoryTitle:Landroid/widget/TextView;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->setCustomGridViewCategoryTitle(Landroid/content/Context;Landroid/widget/TextView;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mGridViewCustom:Lcom/samsung/android/settings/accessories/LedIconGridView;

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/accessories/LedIconGridView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mCustomCategoryTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->mCustomCategoryDivider:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
