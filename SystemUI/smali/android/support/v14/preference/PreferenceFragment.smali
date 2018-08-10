.class public abstract Landroid/support/v14/preference/PreferenceFragment;
.super Landroid/app/Fragment;
.source "PreferenceFragment.java"

# interfaces
.implements Landroid/support/v7/preference/PreferenceManager$OnPreferenceTreeClickListener;
.implements Landroid/support/v7/preference/PreferenceManager$OnDisplayPreferenceDialogListener;
.implements Landroid/support/v7/preference/PreferenceManager$OnNavigateToScreenListener;
.implements Landroid/support/v7/preference/DialogPreference$TargetFragment;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v14/preference/PreferenceFragment$1;,
        Landroid/support/v14/preference/PreferenceFragment$2;,
        Landroid/support/v14/preference/PreferenceFragment$3;,
        Landroid/support/v14/preference/PreferenceFragment$DividerDecoration;,
        Landroid/support/v14/preference/PreferenceFragment$OnPreferenceDisplayDialogCallback;,
        Landroid/support/v14/preference/PreferenceFragment$OnPreferenceStartFragmentCallback;,
        Landroid/support/v14/preference/PreferenceFragment$OnPreferenceStartScreenCallback;,
        Landroid/support/v14/preference/PreferenceFragment$ScrollToPreferenceObserver;
    }
.end annotation


# instance fields
.field private final mDividerDecoration:Landroid/support/v14/preference/PreferenceFragment$DividerDecoration;

.field private mHandler:Landroid/os/Handler;

.field private mHavePrefs:Z

.field private mInitDone:Z

.field private mLayoutResId:I

.field private mList:Landroid/support/v7/widget/RecyclerView;

.field private mPreferenceManager:Landroid/support/v7/preference/PreferenceManager;

.field private final mRequestFocus:Ljava/lang/Runnable;

.field private mSelectPreferenceRunnable:Ljava/lang/Runnable;

.field private mStyledContext:Landroid/content/Context;


# direct methods
.method static synthetic -get0(Landroid/support/v14/preference/PreferenceFragment;)Landroid/support/v7/widget/RecyclerView;
    .locals 1

    iget-object v0, p0, Landroid/support/v14/preference/PreferenceFragment;->mList:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method static synthetic -wrap0(Landroid/support/v14/preference/PreferenceFragment;)V
    .locals 0

    invoke-direct {p0}, Landroid/support/v14/preference/PreferenceFragment;->bindPreferences()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    sget v0, Landroid/support/v7/preference/R$layout;->preference_list_fragment:I

    iput v0, p0, Landroid/support/v14/preference/PreferenceFragment;->mLayoutResId:I

    new-instance v0, Landroid/support/v14/preference/PreferenceFragment$DividerDecoration;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/support/v14/preference/PreferenceFragment$DividerDecoration;-><init>(Landroid/support/v14/preference/PreferenceFragment;Landroid/support/v14/preference/PreferenceFragment$DividerDecoration;)V

    iput-object v0, p0, Landroid/support/v14/preference/PreferenceFragment;->mDividerDecoration:Landroid/support/v14/preference/PreferenceFragment$DividerDecoration;

    new-instance v0, Landroid/support/v14/preference/PreferenceFragment$1;

    invoke-direct {v0, p0}, Landroid/support/v14/preference/PreferenceFragment$1;-><init>(Landroid/support/v14/preference/PreferenceFragment;)V

    iput-object v0, p0, Landroid/support/v14/preference/PreferenceFragment;->mHandler:Landroid/os/Handler;

    new-instance v0, Landroid/support/v14/preference/PreferenceFragment$2;

    invoke-direct {v0, p0}, Landroid/support/v14/preference/PreferenceFragment$2;-><init>(Landroid/support/v14/preference/PreferenceFragment;)V

    iput-object v0, p0, Landroid/support/v14/preference/PreferenceFragment;->mRequestFocus:Ljava/lang/Runnable;

    return-void
.end method

.method private bindPreferences()V
    .locals 3

    invoke-virtual {p0}, Landroid/support/v14/preference/PreferenceFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v14/preference/PreferenceFragment;->getListView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {p0, v0}, Landroid/support/v14/preference/PreferenceFragment;->onCreateAdapter(Landroid/support/v7/preference/PreferenceScreen;)Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceScreen;->onAttached()V

    :cond_0
    invoke-virtual {p0}, Landroid/support/v14/preference/PreferenceFragment;->onBindPreferences()V

    return-void
.end method

.method private postBindPreferences()V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Landroid/support/v14/preference/PreferenceFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/v14/preference/PreferenceFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private requirePreferenceManager()V
    .locals 2

    iget-object v0, p0, Landroid/support/v14/preference/PreferenceFragment;->mPreferenceManager:Landroid/support/v7/preference/PreferenceManager;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "This should be called after super.onCreate."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private unbindPreferences()V
    .locals 1

    invoke-virtual {p0}, Landroid/support/v14/preference/PreferenceFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceScreen;->onDetached()V

    :cond_0
    invoke-virtual {p0}, Landroid/support/v14/preference/PreferenceFragment;->onUnbindPreferences()V

    return-void
.end method


# virtual methods
.method public addPreferencesFromResource(I)V
    .locals 3
    .param p1    # I
        .annotation build Landroid/support/annotation/XmlRes;
        .end annotation
    .end param

    invoke-direct {p0}, Landroid/support/v14/preference/PreferenceFragment;->requirePreferenceManager()V

    iget-object v0, p0, Landroid/support/v14/preference/PreferenceFragment;->mPreferenceManager:Landroid/support/v7/preference/PreferenceManager;

    iget-object v1, p0, Landroid/support/v14/preference/PreferenceFragment;->mStyledContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/support/v14/preference/PreferenceFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Landroid/support/v7/preference/PreferenceManager;->inflateFromResource(Landroid/content/Context;ILandroid/support/v7/preference/PreferenceScreen;)Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v14/preference/PreferenceFragment;->setPreferenceScreen(Landroid/support/v7/preference/PreferenceScreen;)V

    return-void
.end method

.method public findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/support/v14/preference/PreferenceFragment;->mPreferenceManager:Landroid/support/v7/preference/PreferenceManager;

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Landroid/support/v14/preference/PreferenceFragment;->mPreferenceManager:Landroid/support/v7/preference/PreferenceManager;

    invoke-virtual {v0, p1}, Landroid/support/v7/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    return-object v0
.end method

.method public getCallbackFragment()Landroid/app/Fragment;
    .locals 1
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getListView()Landroid/support/v7/widget/RecyclerView;
    .locals 1

    iget-object v0, p0, Landroid/support/v14/preference/PreferenceFragment;->mList:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method public getPreferenceManager()Landroid/support/v7/preference/PreferenceManager;
    .locals 1

    iget-object v0, p0, Landroid/support/v14/preference/PreferenceFragment;->mPreferenceManager:Landroid/support/v7/preference/PreferenceManager;

    return-object v0
.end method

.method public getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;
    .locals 1

    iget-object v0, p0, Landroid/support/v14/preference/PreferenceFragment;->mPreferenceManager:Landroid/support/v7/preference/PreferenceManager;

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceManager;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const-string/jumbo v2, "android:preferences"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v14/preference/PreferenceFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/PreferenceScreen;->restoreHierarchyState(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method protected onBindPreferences()V
    .locals 0
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Landroid/support/v14/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    sget v5, Landroid/support/v7/preference/R$attr;->preferenceTheme:I

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v3, v6}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v2, v3, Landroid/util/TypedValue;->resourceId:I

    if-nez v2, :cond_0

    new-instance v4, Ljava/lang/IllegalStateException;

    const-string/jumbo v5, "Must specify preferenceTheme in theme"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    new-instance v4, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Landroid/support/v14/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v4, p0, Landroid/support/v14/preference/PreferenceFragment;->mStyledContext:Landroid/content/Context;

    new-instance v4, Landroid/support/v7/preference/PreferenceManager;

    iget-object v5, p0, Landroid/support/v14/preference/PreferenceFragment;->mStyledContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/support/v7/preference/PreferenceManager;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Landroid/support/v14/preference/PreferenceFragment;->mPreferenceManager:Landroid/support/v7/preference/PreferenceManager;

    iget-object v4, p0, Landroid/support/v14/preference/PreferenceFragment;->mPreferenceManager:Landroid/support/v7/preference/PreferenceManager;

    invoke-virtual {v4, p0}, Landroid/support/v7/preference/PreferenceManager;->setOnNavigateToScreenListener(Landroid/support/v7/preference/PreferenceManager$OnNavigateToScreenListener;)V

    invoke-virtual {p0}, Landroid/support/v14/preference/PreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/support/v14/preference/PreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v5, "android.support.v7.preference.PreferenceFragmentCompat.PREFERENCE_ROOT"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {p0, p1, v1}, Landroid/support/v14/preference/PreferenceFragment;->onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onCreateAdapter(Landroid/support/v7/preference/PreferenceScreen;)Landroid/support/v7/widget/RecyclerView$Adapter;
    .locals 1

    new-instance v0, Landroid/support/v7/preference/PreferenceGroupAdapter;

    invoke-direct {v0, p1}, Landroid/support/v7/preference/PreferenceGroupAdapter;-><init>(Landroid/support/v7/preference/PreferenceGroup;)V

    return-object v0
.end method

.method public onCreateLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;
    .locals 2

    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroid/support/v14/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public abstract onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
.end method

.method public onCreateRecyclerView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/support/v7/widget/RecyclerView;
    .locals 3

    sget v1, Landroid/support/v7/preference/R$layout;->preference_recyclerview:I

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p0}, Landroid/support/v14/preference/PreferenceFragment;->onCreateLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    new-instance v1, Landroid/support/v7/preference/PreferenceRecyclerViewAccessibilityDelegate;

    invoke-direct {v1, v0}, Landroid/support/v7/preference/PreferenceRecyclerViewAccessibilityDelegate;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAccessibilityDelegateCompat(Landroid/support/v7/widget/RecyclerViewAccessibilityDelegate;)V

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 22

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v14/preference/PreferenceFragment;->mStyledContext:Landroid/content/Context;

    move-object/from16 v17, v0

    sget-object v18, Landroid/support/v14/preference/R$styleable;->PreferenceFragment:[I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v14/preference/PreferenceFragment;->mStyledContext:Landroid/content/Context;

    move-object/from16 v19, v0

    sget v20, Landroid/support/v7/preference/R$attr;->preferenceFragmentStyle:I

    const v21, 0x1010506

    invoke-static/range {v19 .. v21}, Landroid/support/v4/content/res/TypedArrayUtils;->getAttr(Landroid/content/Context;II)I

    move-result v19

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move-object/from16 v2, v18

    move/from16 v3, v19

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v5

    sget v17, Landroid/support/v14/preference/R$styleable;->PreferenceFragment_android_layout:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v14/preference/PreferenceFragment;->mLayoutResId:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v14/preference/PreferenceFragment;->mLayoutResId:I

    sget v17, Landroid/support/v14/preference/R$styleable;->PreferenceFragment_android_divider:I

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    sget v17, Landroid/support/v14/preference/R$styleable;->PreferenceFragment_android_dividerHeight:I

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    sget v17, Landroid/support/v14/preference/R$styleable;->PreferenceFragment_allowDividerAfterLastItem:I

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    new-instance v15, Landroid/util/TypedValue;

    invoke-direct {v15}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroid/support/v14/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v17

    sget v18, Landroid/support/v7/preference/R$attr;->preferenceTheme:I

    const/16 v19, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v15, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v12, v15, Landroid/util/TypedValue;->resourceId:I

    new-instance v13, Landroid/view/ContextThemeWrapper;

    invoke-virtual/range {p1 .. p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v13, v0, v12}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v14

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v14/preference/PreferenceFragment;->mLayoutResId:I

    move/from16 v17, v0

    const/16 v18, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p2

    move/from16 v2, v18

    invoke-virtual {v14, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v16

    const v17, 0x102003f

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    instance-of v0, v11, Landroid/view/ViewGroup;

    move/from16 v17, v0

    if-nez v17, :cond_0

    new-instance v17, Ljava/lang/RuntimeException;

    const-string/jumbo v18, "Content has view with id attribute \'android.R.id.list_container\' that is not a ViewGroup class"

    invoke-direct/range {v17 .. v18}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v17

    :cond_0
    move-object v9, v11

    check-cast v9, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v14, v9, v1}, Landroid/support/v14/preference/PreferenceFragment;->onCreateRecyclerView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v10

    if-nez v10, :cond_1

    new-instance v17, Ljava/lang/RuntimeException;

    const-string/jumbo v18, "Could not create RecyclerView"

    invoke-direct/range {v17 .. v18}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v17

    :cond_1
    move-object/from16 v0, p0

    iput-object v10, v0, Landroid/support/v14/preference/PreferenceFragment;->mList:Landroid/support/v7/widget/RecyclerView;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v14/preference/PreferenceFragment;->mDividerDecoration:Landroid/support/v14/preference/PreferenceFragment$DividerDecoration;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/support/v14/preference/PreferenceFragment;->setDivider(Landroid/graphics/drawable/Drawable;)V

    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v8, v0, :cond_2

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/support/v14/preference/PreferenceFragment;->setDividerHeight(I)V

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v14/preference/PreferenceFragment;->mDividerDecoration:Landroid/support/v14/preference/PreferenceFragment$DividerDecoration;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Landroid/support/v14/preference/PreferenceFragment$DividerDecoration;->setAllowDividerAfterLastItem(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v14/preference/PreferenceFragment;->mList:Landroid/support/v7/widget/RecyclerView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v14/preference/PreferenceFragment;->mHandler:Landroid/os/Handler;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v14/preference/PreferenceFragment;->mRequestFocus:Ljava/lang/Runnable;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-object v16
.end method

.method public onDestroyView()V
    .locals 2

    iget-object v0, p0, Landroid/support/v14/preference/PreferenceFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/support/v14/preference/PreferenceFragment;->mRequestFocus:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Landroid/support/v14/preference/PreferenceFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-boolean v0, p0, Landroid/support/v14/preference/PreferenceFragment;->mHavePrefs:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/support/v14/preference/PreferenceFragment;->unbindPreferences()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v14/preference/PreferenceFragment;->mList:Landroid/support/v7/widget/RecyclerView;

    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    return-void
.end method

.method public onDisplayPreferenceDialog(Landroid/support/v7/preference/Preference;)V
    .locals 4

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/support/v14/preference/PreferenceFragment;->getCallbackFragment()Landroid/app/Fragment;

    move-result-object v2

    instance-of v2, v2, Landroid/support/v14/preference/PreferenceFragment$OnPreferenceDisplayDialogCallback;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/support/v14/preference/PreferenceFragment;->getCallbackFragment()Landroid/app/Fragment;

    move-result-object v2

    check-cast v2, Landroid/support/v14/preference/PreferenceFragment$OnPreferenceDisplayDialogCallback;

    invoke-interface {v2, p0, p1}, Landroid/support/v14/preference/PreferenceFragment$OnPreferenceDisplayDialogCallback;->onPreferenceDisplayDialog(Landroid/support/v14/preference/PreferenceFragment;Landroid/support/v7/preference/Preference;)Z

    move-result v1

    :cond_0
    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/support/v14/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    instance-of v2, v2, Landroid/support/v14/preference/PreferenceFragment$OnPreferenceDisplayDialogCallback;

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroid/support/v14/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Landroid/support/v14/preference/PreferenceFragment$OnPreferenceDisplayDialogCallback;

    invoke-interface {v2, p0, p1}, Landroid/support/v14/preference/PreferenceFragment$OnPreferenceDisplayDialogCallback;->onPreferenceDisplayDialog(Landroid/support/v14/preference/PreferenceFragment;Landroid/support/v7/preference/Preference;)Z

    move-result v1

    :cond_1
    if-eqz v1, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0}, Landroid/support/v14/preference/PreferenceFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string/jumbo v3, "android.support.v14.preference.PreferenceFragment.DIALOG"

    invoke-virtual {v2, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    if-eqz v2, :cond_3

    return-void

    :cond_3
    instance-of v2, p1, Landroid/support/v7/preference/EditTextPreference;

    if-eqz v2, :cond_4

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v14/preference/EditTextPreferenceDialogFragment;->newInstance(Ljava/lang/String;)Landroid/support/v14/preference/EditTextPreferenceDialogFragment;

    move-result-object v0

    :goto_0
    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2}, Landroid/app/DialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    invoke-virtual {p0}, Landroid/support/v14/preference/PreferenceFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string/jumbo v3, "android.support.v14.preference.PreferenceFragment.DIALOG"

    invoke-virtual {v0, v2, v3}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void

    :cond_4
    instance-of v2, p1, Landroid/support/v7/preference/ListPreference;

    if-eqz v2, :cond_5

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v14/preference/ListPreferenceDialogFragment;->newInstance(Ljava/lang/String;)Landroid/support/v14/preference/ListPreferenceDialogFragment;

    move-result-object v0

    goto :goto_0

    :cond_5
    instance-of v2, p1, Landroid/support/v14/preference/MultiSelectListPreference;

    if-eqz v2, :cond_6

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v14/preference/MultiSelectListPreferenceDialogFragment;->newInstance(Ljava/lang/String;)Landroid/support/v14/preference/MultiSelectListPreferenceDialogFragment;

    move-result-object v0

    goto :goto_0

    :cond_6
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Tried to display dialog for unknown preference type. Did you forget to override onDisplayPreferenceDialog()?"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public onNavigateToScreen(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/support/v14/preference/PreferenceFragment;->getCallbackFragment()Landroid/app/Fragment;

    move-result-object v1

    instance-of v1, v1, Landroid/support/v14/preference/PreferenceFragment$OnPreferenceStartScreenCallback;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/support/v14/preference/PreferenceFragment;->getCallbackFragment()Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Landroid/support/v14/preference/PreferenceFragment$OnPreferenceStartScreenCallback;

    invoke-interface {v1, p0, p1}, Landroid/support/v14/preference/PreferenceFragment$OnPreferenceStartScreenCallback;->onPreferenceStartScreen(Landroid/support/v14/preference/PreferenceFragment;Landroid/support/v7/preference/PreferenceScreen;)Z

    move-result v0

    :cond_0
    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/support/v14/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    instance-of v1, v1, Landroid/support/v14/preference/PreferenceFragment$OnPreferenceStartScreenCallback;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/support/v14/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Landroid/support/v14/preference/PreferenceFragment$OnPreferenceStartScreenCallback;

    invoke-interface {v1, p0, p1}, Landroid/support/v14/preference/PreferenceFragment$OnPreferenceStartScreenCallback;->onPreferenceStartScreen(Landroid/support/v14/preference/PreferenceFragment;Landroid/support/v7/preference/PreferenceScreen;)Z

    :cond_1
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/support/v14/preference/PreferenceFragment;->getCallbackFragment()Landroid/app/Fragment;

    move-result-object v1

    instance-of v1, v1, Landroid/support/v14/preference/PreferenceFragment$OnPreferenceStartFragmentCallback;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/support/v14/preference/PreferenceFragment;->getCallbackFragment()Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Landroid/support/v14/preference/PreferenceFragment$OnPreferenceStartFragmentCallback;

    invoke-interface {v1, p0, p1}, Landroid/support/v14/preference/PreferenceFragment$OnPreferenceStartFragmentCallback;->onPreferenceStartFragment(Landroid/support/v14/preference/PreferenceFragment;Landroid/support/v7/preference/Preference;)Z

    move-result v0

    :cond_0
    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/support/v14/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    instance-of v1, v1, Landroid/support/v14/preference/PreferenceFragment$OnPreferenceStartFragmentCallback;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/support/v14/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Landroid/support/v14/preference/PreferenceFragment$OnPreferenceStartFragmentCallback;

    invoke-interface {v1, p0, p1}, Landroid/support/v14/preference/PreferenceFragment$OnPreferenceStartFragmentCallback;->onPreferenceStartFragment(Landroid/support/v14/preference/PreferenceFragment;Landroid/support/v7/preference/Preference;)Z

    move-result v0

    :cond_1
    return v0

    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/support/v14/preference/PreferenceFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/PreferenceScreen;->saveHierarchyState(Landroid/os/Bundle;)V

    const-string/jumbo v2, "android:preferences"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    iget-object v0, p0, Landroid/support/v14/preference/PreferenceFragment;->mPreferenceManager:Landroid/support/v7/preference/PreferenceManager;

    invoke-virtual {v0, p0}, Landroid/support/v7/preference/PreferenceManager;->setOnPreferenceTreeClickListener(Landroid/support/v7/preference/PreferenceManager$OnPreferenceTreeClickListener;)V

    iget-object v0, p0, Landroid/support/v14/preference/PreferenceFragment;->mPreferenceManager:Landroid/support/v7/preference/PreferenceManager;

    invoke-virtual {v0, p0}, Landroid/support/v7/preference/PreferenceManager;->setOnDisplayPreferenceDialogListener(Landroid/support/v7/preference/PreferenceManager$OnDisplayPreferenceDialogListener;)V

    return-void
.end method

.method public onStop()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    iget-object v0, p0, Landroid/support/v14/preference/PreferenceFragment;->mPreferenceManager:Landroid/support/v7/preference/PreferenceManager;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceManager;->setOnPreferenceTreeClickListener(Landroid/support/v7/preference/PreferenceManager$OnPreferenceTreeClickListener;)V

    iget-object v0, p0, Landroid/support/v14/preference/PreferenceFragment;->mPreferenceManager:Landroid/support/v7/preference/PreferenceManager;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceManager;->setOnDisplayPreferenceDialogListener(Landroid/support/v7/preference/PreferenceManager$OnDisplayPreferenceDialogListener;)V

    return-void
.end method

.method protected onUnbindPreferences()V
    .locals 0
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    iget-boolean v0, p0, Landroid/support/v14/preference/PreferenceFragment;->mHavePrefs:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/support/v14/preference/PreferenceFragment;->bindPreferences()V

    iget-object v0, p0, Landroid/support/v14/preference/PreferenceFragment;->mSelectPreferenceRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v14/preference/PreferenceFragment;->mSelectPreferenceRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iput-object v1, p0, Landroid/support/v14/preference/PreferenceFragment;->mSelectPreferenceRunnable:Ljava/lang/Runnable;

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v14/preference/PreferenceFragment;->mInitDone:Z

    return-void
.end method

.method public setDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v14/preference/PreferenceFragment;->mDividerDecoration:Landroid/support/v14/preference/PreferenceFragment$DividerDecoration;

    invoke-virtual {v0, p1}, Landroid/support/v14/preference/PreferenceFragment$DividerDecoration;->setDivider(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setDividerHeight(I)V
    .locals 1

    iget-object v0, p0, Landroid/support/v14/preference/PreferenceFragment;->mDividerDecoration:Landroid/support/v14/preference/PreferenceFragment$DividerDecoration;

    invoke-virtual {v0, p1}, Landroid/support/v14/preference/PreferenceFragment$DividerDecoration;->setDividerHeight(I)V

    return-void
.end method

.method public setPreferenceScreen(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v14/preference/PreferenceFragment;->mPreferenceManager:Landroid/support/v7/preference/PreferenceManager;

    invoke-virtual {v0, p1}, Landroid/support/v7/preference/PreferenceManager;->setPreferences(Landroid/support/v7/preference/PreferenceScreen;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/support/v14/preference/PreferenceFragment;->onUnbindPreferences()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v14/preference/PreferenceFragment;->mHavePrefs:Z

    iget-boolean v0, p0, Landroid/support/v14/preference/PreferenceFragment;->mInitDone:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/support/v14/preference/PreferenceFragment;->postBindPreferences()V

    :cond_0
    return-void
.end method
