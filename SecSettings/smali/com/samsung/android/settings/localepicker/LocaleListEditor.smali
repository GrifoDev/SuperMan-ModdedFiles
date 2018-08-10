.class public Lcom/samsung/android/settings/localepicker/LocaleListEditor;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "LocaleListEditor.java"

# interfaces
.implements Lcom/android/internal/app/LocalePickerWithRegion$LocaleSelectedListener;
.implements Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter$OnCheckChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/localepicker/LocaleListEditor$1;,
        Lcom/samsung/android/settings/localepicker/LocaleListEditor$2;,
        Lcom/samsung/android/settings/localepicker/LocaleListEditor$3;
    }
.end annotation


# instance fields
.field private final LANGUAGE_BASIC_MODE:I

.field private final LANGUAGE_EDIT_MODE:I

.field private mActionBar:Landroid/app/ActionBar;

.field private mAdapter:Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;

.field private mCancelButton:Landroid/widget/Button;

.field private mDataSetObserver:Landroid/database/DataSetObserver;

.field private mDndAnimator:Lcom/samsung/android/animation/SemDragAndDropListAnimator;

.field private mDndController:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropController;

.field public mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

.field private mFirstPreDraw:Z

.field private mFooterView:Landroid/view/View;

.field private mIsEnabledShowBtnBg:Z

.field private mIsShowHardKey:Z

.field private mListView:Landroid/widget/ListView;

.field private mMenu:Landroid/view/Menu;

.field private mNofiticationDialog:Landroid/app/AlertDialog;

.field private mRemoveMode:Z

.field private mSaveButton:Landroid/widget/Button;

.field private mScreenType:I

.field private mShowingRemoveDialog:Z


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/localepicker/LocaleListEditor;)Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mAdapter:Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/localepicker/LocaleListEditor;)Lcom/samsung/android/animation/SemDragAndDropListAnimator;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mDndAnimator:Lcom/samsung/android/animation/SemDragAndDropListAnimator;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/localepicker/LocaleListEditor;)Lcom/samsung/android/settings/bixby/EmSettingsManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/localepicker/LocaleListEditor;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mFirstPreDraw:Z

    return v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/localepicker/LocaleListEditor;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mFooterView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get5(Lcom/samsung/android/settings/localepicker/LocaleListEditor;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic -get6(Lcom/samsung/android/settings/localepicker/LocaleListEditor;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mRemoveMode:Z

    return v0
.end method

.method static synthetic -get7(Lcom/samsung/android/settings/localepicker/LocaleListEditor;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mScreenType:I

    return v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/localepicker/LocaleListEditor;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mFirstPreDraw:Z

    return p1
.end method

.method static synthetic -set1(Lcom/samsung/android/settings/localepicker/LocaleListEditor;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mRemoveMode:Z

    return p1
.end method

.method static synthetic -set2(Lcom/samsung/android/settings/localepicker/LocaleListEditor;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mShowingRemoveDialog:Z

    return p1
.end method

.method static synthetic -wrap0(Landroid/content/Context;)Ljava/util/List;
    .locals 1

    invoke-static {p0}, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->getUserLocaleList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/localepicker/LocaleListEditor;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->callAddLanguagesSettings()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/samsung/android/settings/localepicker/LocaleListEditor;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->initActionBarBtn(I)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/samsung/android/settings/localepicker/LocaleListEditor;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->setRemoveMode(Z)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/samsung/android/settings/localepicker/LocaleListEditor;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->updateViewConfiguration()V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    iput-boolean v2, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mFirstPreDraw:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mNofiticationDialog:Landroid/app/AlertDialog;

    iput-boolean v1, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mIsShowHardKey:Z

    iput-boolean v1, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mIsEnabledShowBtnBg:Z

    iput v1, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->LANGUAGE_BASIC_MODE:I

    iput v2, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->LANGUAGE_EDIT_MODE:I

    iput v1, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mScreenType:I

    new-instance v0, Lcom/samsung/android/settings/localepicker/LocaleListEditor$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/localepicker/LocaleListEditor$1;-><init>(Lcom/samsung/android/settings/localepicker/LocaleListEditor;)V

    iput-object v0, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mDataSetObserver:Landroid/database/DataSetObserver;

    new-instance v0, Lcom/samsung/android/settings/localepicker/LocaleListEditor$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/localepicker/LocaleListEditor$2;-><init>(Lcom/samsung/android/settings/localepicker/LocaleListEditor;)V

    iput-object v0, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mDndController:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropController;

    new-instance v0, Lcom/samsung/android/settings/localepicker/LocaleListEditor$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/localepicker/LocaleListEditor$3;-><init>(Lcom/samsung/android/settings/localepicker/LocaleListEditor;)V

    iput-object v0, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    return-void
.end method

.method private callAddLanguagesSettings()V
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b02d8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, p0, v2}, Lcom/android/internal/app/LocalePickerWithRegion;->createLanguagePicker(Landroid/content/Context;Lcom/android/internal/app/LocalePickerWithRegion$LocaleSelectedListener;Z)Lcom/android/internal/app/LocalePickerWithRegion;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    const/16 v2, 0x1001

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->getId()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v1

    const-string/jumbo v2, "localeListEditor"

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    return-void
.end method

.method private configureDragAndDrop(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mListView:Landroid/widget/ListView;

    if-nez v0, :cond_0

    const v0, 0x7f0a02a7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mListView:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mAdapter:Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setCacheColorHint(I)V

    new-instance v0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;

    invoke-virtual {p0}, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mListView:Landroid/widget/ListView;

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;-><init>(Landroid/content/Context;Landroid/widget/ListView;)V

    iput-object v0, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mDndAnimator:Lcom/samsung/android/animation/SemDragAndDropListAnimator;

    iget-object v0, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mDndAnimator:Lcom/samsung/android/animation/SemDragAndDropListAnimator;

    iget-object v1, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mDndController:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropController;

    invoke-virtual {v0, v1}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->setDragAndDropController(Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropController;)V

    iget-object v0, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mDndAnimator:Lcom/samsung/android/animation/SemDragAndDropListAnimator;

    const v1, 0x7f0803e9

    invoke-virtual {v0, v1}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->setDragGrabHandleDrawable(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mDndAnimator:Lcom/samsung/android/animation/SemDragAndDropListAnimator;

    const v1, 0x800005

    invoke-virtual {v0, v1}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->setDragGrabHandlePositionGravity(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/localepicker/LocaleListEditor$12;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/localepicker/LocaleListEditor$12;-><init>(Lcom/samsung/android/settings/localepicker/LocaleListEditor;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method

.method private static getUserLocaleList(Landroid/content/Context;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            ">;"
        }
    .end annotation

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/android/internal/app/LocalePicker;->getLocales()Landroid/os/LocaleList;

    move-result-object v2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2}, Landroid/os/LocaleList;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    invoke-virtual {v2, v0}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/app/LocaleStore;->getLocaleInfo(Ljava/util/Locale;)Lcom/android/internal/app/LocaleStore$LocaleInfo;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v3
.end method

.method private initActionBarBtn(I)V
    .locals 14

    iput p1, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mScreenType:I

    invoke-virtual {p0}, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->getActivity()Landroid/app/Activity;

    move-result-object v9

    if-nez v9, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v9

    iput-object v9, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mActionBar:Landroid/app/ActionBar;

    const/4 v9, 0x1

    if-ne p1, v9, :cond_a

    iget-object v9, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mMenu:Landroid/view/Menu;

    const/4 v10, 0x2

    invoke-interface {v9, v10}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    if-eqz v6, :cond_1

    iget-object v9, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mMenu:Landroid/view/Menu;

    const/4 v10, 0x2

    invoke-interface {v9, v10}, Landroid/view/Menu;->removeItem(I)V

    :cond_1
    iget-object v9, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mFooterView:Landroid/view/View;

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mListView:Landroid/widget/ListView;

    iget-object v10, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mFooterView:Landroid/view/View;

    invoke-virtual {v9, v10}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    :cond_2
    iget-object v9, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mActionBar:Landroid/app/ActionBar;

    if-eqz v9, :cond_6

    iget-object v9, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mActionBar:Landroid/app/ActionBar;

    const/16 v10, 0x10

    invoke-virtual {v9, v10}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    new-instance v4, Landroid/app/ActionBar$LayoutParams;

    const/4 v9, -0x1

    const/4 v10, -0x2

    invoke-direct {v4, v9, v10}, Landroid/app/ActionBar$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-static {v9}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v9, 0x7f0d00a7

    const/4 v10, 0x0

    invoke-virtual {v3, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iget-object v9, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v9, v0, v4}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    iget-object v9, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mActionBar:Landroid/app/ActionBar;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    iget-object v9, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v9}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroid/widget/Toolbar;

    if-eqz v7, :cond_3

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v7, v9, v10}, Landroid/widget/Toolbar;->setContentInsetsAbsolute(II)V

    :cond_3
    const v9, 0x7f0a01e3

    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-static {v9}, Lcom/android/settings/Utils;->isSetOpenTheme(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_8

    const v9, 0x7f080130

    invoke-virtual {v2, v9}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    :cond_4
    :goto_0
    const v9, 0x7f0a0520

    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Button;

    iput-object v9, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->getActivity()Landroid/app/Activity;

    move-result-object v9

    iget-object v10, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mCancelButton:Landroid/widget/Button;

    invoke-static {v9, v10}, Lcom/android/settings/Utils;->setMaxFontScale(Landroid/content/Context;Landroid/widget/Button;)V

    iget-object v9, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mCancelButton:Landroid/widget/Button;

    new-instance v10, Lcom/samsung/android/settings/localepicker/LocaleListEditor$5;

    invoke-direct {v10, p0}, Lcom/samsung/android/settings/localepicker/LocaleListEditor$5;-><init>(Lcom/samsung/android/settings/localepicker/LocaleListEditor;)V

    invoke-virtual {v9, v10}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v9, 0x7f0a0521

    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Button;

    iput-object v9, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mSaveButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->getActivity()Landroid/app/Activity;

    move-result-object v9

    iget-object v10, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mSaveButton:Landroid/widget/Button;

    invoke-static {v9, v10}, Lcom/android/settings/Utils;->setMaxFontScale(Landroid/content/Context;Landroid/widget/Button;)V

    iget-boolean v9, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mIsShowHardKey:Z

    if-eqz v9, :cond_5

    iget-object v9, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mSaveButton:Landroid/widget/Button;

    const v10, 0x7f1205f5

    invoke-virtual {v9, v10}, Landroid/widget/Button;->setText(I)V

    :cond_5
    iget-object v9, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mSaveButton:Landroid/widget/Button;

    new-instance v10, Lcom/samsung/android/settings/localepicker/LocaleListEditor$6;

    invoke-direct {v10, p0}, Lcom/samsung/android/settings/localepicker/LocaleListEditor$6;-><init>(Lcom/samsung/android/settings/localepicker/LocaleListEditor;)V

    invoke-virtual {v9, v10}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-boolean v9, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mIsEnabledShowBtnBg:Z

    if-eqz v9, :cond_6

    iget-object v9, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mCancelButton:Landroid/widget/Button;

    const v10, 0x7f080784

    invoke-virtual {v9, v10}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v9, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mSaveButton:Landroid/widget/Button;

    const v10, 0x7f080784

    invoke-virtual {v9, v10}, Landroid/widget/Button;->setBackgroundResource(I)V

    :cond_6
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v9

    if-nez v9, :cond_7

    invoke-virtual {p0}, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v8

    const/high16 v9, 0x4000000

    invoke-virtual {v8, v9}, Landroid/view/Window;->clearFlags(I)V

    const/high16 v9, -0x80000000

    invoke-virtual {v8, v9}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-static {v9}, Lcom/android/settings/Utils;->isSetOpenTheme(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-virtual {p0}, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f060233

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    :goto_1
    invoke-virtual {v8, v9}, Landroid/view/Window;->setStatusBarColor(I)V

    :cond_7
    :goto_2
    return-void

    :cond_8
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v9

    if-nez v9, :cond_4

    const v9, 0x7f08015f

    invoke-virtual {v2, v9}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto/16 :goto_0

    :cond_9
    invoke-virtual {p0}, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0600f9

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    goto :goto_1

    :cond_a
    iget-object v9, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mActionBar:Landroid/app/ActionBar;

    if-eqz v9, :cond_b

    iget-object v9, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mActionBar:Landroid/app/ActionBar;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    iget-object v9, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mActionBar:Landroid/app/ActionBar;

    const/16 v10, 0xc

    invoke-virtual {v9, v10}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    iget-object v9, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mActionBar:Landroid/app/ActionBar;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    iget-object v9, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mActionBar:Landroid/app/ActionBar;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const v10, 0x7f12145b

    invoke-virtual {v9, v10}, Landroid/app/Activity;->setTitle(I)V

    :cond_b
    iget-object v9, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mListView:Landroid/widget/ListView;

    invoke-virtual {v9}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v9

    if-nez v9, :cond_c

    iget-object v9, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mFooterView:Landroid/view/View;

    if-eqz v9, :cond_c

    iget-boolean v9, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mRemoveMode:Z

    xor-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_c

    iget-object v9, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mListView:Landroid/widget/ListView;

    iget-object v10, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mFooterView:Landroid/view/View;

    invoke-virtual {v9, v10}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    :cond_c
    iget-object v9, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mMenu:Landroid/view/Menu;

    const/4 v10, 0x0

    const/4 v11, 0x2

    const/4 v12, 0x0

    const v13, 0x7f12114c

    invoke-interface {v9, v10, v11, v12, v13}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/MenuItem;->isVisible()Z

    move-result v9

    if-nez v9, :cond_d

    const/4 v9, 0x2

    invoke-interface {v5, v9}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_d
    invoke-direct {p0}, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->updateVisibilityOfRemoveMenu()V

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v9

    if-nez v9, :cond_7

    invoke-virtual {p0}, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v8

    const/high16 v9, 0x4000000

    invoke-virtual {v8, v9}, Landroid/view/Window;->clearFlags(I)V

    const/high16 v9, -0x80000000

    invoke-virtual {v8, v9}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f060233

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/view/Window;->setStatusBarColor(I)V

    goto/16 :goto_2
.end method

.method private setRemoveMode(Z)V
    .locals 3

    const/4 v2, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mRemoveMode:Z

    iget-object v0, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mAdapter:Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;

    iget-boolean v1, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mRemoveMode:Z

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->setRemoveMode(Z)V

    iget-boolean v0, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mRemoveMode:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v0

    if-lt v0, v2, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mFooterView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->updateViewConfiguration()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v0

    if-ge v0, v2, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mFooterView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private showNotificationDialog(Landroid/content/Context;)V
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mNofiticationDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mNofiticationDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iput-object v1, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mNofiticationDialog:Landroid/app/AlertDialog;

    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f121a17

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f120f55

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/localepicker/LocaleListEditor$13;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/localepicker/LocaleListEditor$13;-><init>(Lcom/samsung/android/settings/localepicker/LocaleListEditor;)V

    const v2, 0x7f120899

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mNofiticationDialog:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mNofiticationDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private showRemoveLocaleWarningDialog()V
    .locals 6

    const v5, 0x1040013

    const/4 v4, 0x1

    iget-object v2, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mAdapter:Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-virtual {v2}, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->getCheckedCount()I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v2, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mRemoveMode:Z

    xor-int/lit8 v2, v2, 0x1

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->setRemoveMode(Z)V

    return-void

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mAdapter:Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-virtual {v2}, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->getCount()I

    move-result v2

    if-ne v0, v2, :cond_1

    iput-boolean v4, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mShowingRemoveDialog:Z

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f12089b

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f12089a

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/settings/localepicker/LocaleListEditor$7;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/localepicker/LocaleListEditor$7;-><init>(Lcom/samsung/android/settings/localepicker/LocaleListEditor;)V

    invoke-virtual {v2, v5, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/settings/localepicker/LocaleListEditor$8;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/localepicker/LocaleListEditor$8;-><init>(Lcom/samsung/android/settings/localepicker/LocaleListEditor;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f100011

    invoke-virtual {v2, v3, v0}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v1

    iput-boolean v4, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mShowingRemoveDialog:Z

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f12089c

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/settings/localepicker/LocaleListEditor$9;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/localepicker/LocaleListEditor$9;-><init>(Lcom/samsung/android/settings/localepicker/LocaleListEditor;)V

    const v4, 0x1040009

    invoke-virtual {v2, v4, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/settings/localepicker/LocaleListEditor$10;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/localepicker/LocaleListEditor$10;-><init>(Lcom/samsung/android/settings/localepicker/LocaleListEditor;)V

    invoke-virtual {v2, v5, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/settings/localepicker/LocaleListEditor$11;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/localepicker/LocaleListEditor$11;-><init>(Lcom/samsung/android/settings/localepicker/LocaleListEditor;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private updateViewConfiguration()V
    .locals 5

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mDndAnimator:Lcom/samsung/android/animation/SemDragAndDropListAnimator;

    invoke-virtual {p0}, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0704f8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    mul-int/2addr v0, v2

    invoke-virtual {v1, v4, v4, v0, v4}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->setDragGrabHandlePadding(IIII)V

    iget-object v0, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mDndAnimator:Lcom/samsung/android/animation/SemDragAndDropListAnimator;

    iget-object v1, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mAdapter:Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-virtual {v1}, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->getDragEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->setDraggable(Z)V

    invoke-direct {p0}, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->updateVisibilityOfRemoveMenu()V

    return-void

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private updateVisibilityOfRemoveMenu()V
    .locals 5

    const/4 v2, 0x2

    const/4 v4, 0x1

    iget-object v3, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mMenu:Landroid/view/Menu;

    if-nez v3, :cond_0

    return-void

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mMenu:Landroid/view/Menu;

    invoke-interface {v3, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_2

    const v3, 0x7f1207a4

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    iget-boolean v3, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mRemoveMode:Z

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mAdapter:Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-virtual {v3}, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->getCount()I

    move-result v3

    if-le v3, v4, :cond_3

    :cond_1
    const/4 v1, 0x1

    :goto_0
    if-eqz v1, :cond_5

    :goto_1
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_2
    return-void

    :cond_3
    iget-object v3, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mAdapter:Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-virtual {v3}, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->getCount()I

    move-result v3

    if-le v3, v4, :cond_4

    iget-object v3, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mAdapter:Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-virtual {v3}, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->getCheckedCount()I

    move-result v3

    if-ge v3, v4, :cond_1

    :cond_4
    const/4 v1, 0x0

    goto :goto_0

    :cond_5
    const/4 v2, 0x0

    goto :goto_1
.end method


# virtual methods
.method public customOnKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5

    const/4 v4, 0x0

    const/16 v1, 0x43

    if-eq p1, v1, :cond_0

    const/16 v1, 0x70

    if-ne p1, v1, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mAdapter:Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-virtual {v1}, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->getCheckedCount()I

    move-result v0

    iget-boolean v1, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mRemoveMode:Z

    if-eqz v1, :cond_1

    if-lez v0, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->showRemoveLocaleWarningDialog()V

    :cond_1
    :goto_0
    return v4

    :cond_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x20

    if-eq p1, v1, :cond_0

    :cond_3
    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    const-string/jumbo v1, "LocaleListEditor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "snooze click + "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " is back key"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mRemoveMode:Z

    if-eqz v1, :cond_1

    invoke-direct {p0, v4}, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->setRemoveMode(Z)V

    goto :goto_0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x158

    return v0
.end method

.method public onCheckedChange()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->updateVisibilityOfRemoveMenu()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->setHasOptionsMenu(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/app/LocaleStore;->fillCache(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->getUserLocaleList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    new-instance v5, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-virtual {p0}, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6, v0}, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v5, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mAdapter:Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-virtual {p0}, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/Utils;->isShopDemo(Landroid/content/Context;)Z

    move-result v2

    invoke-static {}, Lcom/android/settings/Utils;->isLDUModel()Z

    move-result v1

    if-nez v2, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->showNotificationDialog(Landroid/content/Context;)V

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1120096

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mIsShowHardKey:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "show_button_background"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_2

    :goto_0
    iput-boolean v3, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mIsEnabledShowBtnBg:Z

    new-instance v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v3, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-void

    :cond_2
    move v3, v4

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    iput-object p1, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mMenu:Landroid/view/Menu;

    iget v0, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mScreenType:I

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->initActionBarBtn(I)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x0

    iput-object v5, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mListView:Landroid/widget/ListView;

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Landroid/view/ViewGroup;

    const v4, 0x7f0d0299

    invoke-virtual {p1, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->configureDragAndDrop(Landroid/view/View;)V

    const v3, 0x7f0d029b

    invoke-virtual {p1, v3, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v3, 0x7f0d029a

    invoke-virtual {p1, v3, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mFooterView:Landroid/view/View;

    iget-object v3, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, v0}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    iget-object v3, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mListView:Landroid/widget/ListView;

    new-instance v4, Lcom/samsung/android/settings/localepicker/LocaleListEditor$4;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/localepicker/LocaleListEditor$4;-><init>(Lcom/samsung/android/settings/localepicker/LocaleListEditor;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v3, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mAdapter:Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-virtual {v3, p0}, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->setOnCheckedChangeListener(Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter$OnCheckChangeListener;)V

    return-object v2
.end method

.method public onLocaleSelected(Lcom/android/internal/app/LocaleStore$LocaleInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mAdapter:Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->addLocale(Lcom/android/internal/app/LocaleStore$LocaleInfo;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    const/4 v3, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    :pswitch_0
    iget-boolean v0, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mRemoveMode:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b02e0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    invoke-direct {p0}, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->showRemoveLocaleWarningDialog()V

    :goto_0
    return v3

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b02e1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    invoke-direct {p0, v3}, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->setRemoveMode(Z)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    iget-object v0, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mAdapter:Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mAdapter:Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;

    iget-object v1, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "Language"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    return-void
.end method

.method public onResume()V
    .locals 4

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    iget-object v0, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mAdapter:Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mAdapter:Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;

    iget-object v1, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v3, "Language"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string/jumbo v0, "localeRemoveMode"

    iget-boolean v1, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mRemoveMode:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-boolean v0, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mRemoveMode:Z

    if-nez v0, :cond_0

    const-string/jumbo v0, "localeScreenType"

    iget v1, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mScreenType:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    const-string/jumbo v0, "showingLocaleRemoveDialog"

    iget-boolean v1, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mShowingRemoveDialog:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mAdapter:Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->saveState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onViewStateRestored(Landroid/os/Bundle;)V

    if-eqz p1, :cond_1

    const-string/jumbo v0, "localeRemoveMode"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mRemoveMode:Z

    iget-boolean v0, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mRemoveMode:Z

    if-nez v0, :cond_0

    const-string/jumbo v0, "localeScreenType"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mScreenType:I

    :cond_0
    const-string/jumbo v0, "showingLocaleRemoveDialog"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mShowingRemoveDialog:Z

    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mRemoveMode:Z

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->setRemoveMode(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mAdapter:Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->restoreState(Landroid/os/Bundle;)V

    iget-boolean v0, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mShowingRemoveDialog:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->showRemoveLocaleWarningDialog()V

    :cond_2
    return-void
.end method
