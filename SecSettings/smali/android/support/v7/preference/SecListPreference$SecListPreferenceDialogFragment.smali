.class public Landroid/support/v7/preference/SecListPreference$SecListPreferenceDialogFragment;
.super Landroid/support/v14/preference/ListPreferenceDialogFragment;
.source "SecListPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/preference/SecListPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SecListPreferenceDialogFragment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/preference/SecListPreference$SecListPreferenceDialogFragment$FullScreeListArrayAdapter;
    }
.end annotation


# instance fields
.field protected mDialog:Landroid/app/Dialog;

.field private mListItemListener:Landroid/widget/AdapterView$OnItemClickListener;

.field protected mListView:Landroid/widget/ListView;

.field protected mPreference:Landroid/support/v7/preference/ListPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v14/preference/ListPreferenceDialogFragment;-><init>()V

    return-void
.end method

.method private getSecListPreference()Landroid/support/v7/preference/SecListPreference;
    .locals 1

    invoke-virtual {p0}, Landroid/support/v7/preference/SecListPreference$SecListPreferenceDialogFragment;->getPreference()Landroid/support/v7/preference/DialogPreference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/SecListPreference;

    return-object v0
.end method

.method private getValueIndex()I
    .locals 2

    iget-object v0, p0, Landroid/support/v7/preference/SecListPreference$SecListPreferenceDialogFragment;->mPreference:Landroid/support/v7/preference/ListPreference;

    iget-object v1, p0, Landroid/support/v7/preference/SecListPreference$SecListPreferenceDialogFragment;->mPreference:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v1}, Landroid/support/v7/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    return v0
.end method


# virtual methods
.method protected createListAdapter()Landroid/widget/ListAdapter;
    .locals 4

    new-instance v0, Landroid/support/v7/preference/SecListPreference$SecListPreferenceDialogFragment$FullScreeListArrayAdapter;

    invoke-virtual {p0}, Landroid/support/v7/preference/SecListPreference$SecListPreferenceDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/preference/SecListPreference$SecListPreferenceDialogFragment;->mPreference:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v2}, Landroid/support/v7/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {p0}, Landroid/support/v7/preference/SecListPreference$SecListPreferenceDialogFragment;->getValueIndex()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Landroid/support/v7/preference/SecListPreference$SecListPreferenceDialogFragment$FullScreeListArrayAdapter;-><init>(Landroid/content/Context;[Ljava/lang/CharSequence;I)V

    return-object v0
.end method

.method protected getItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;
    .locals 2

    iget-object v1, p0, Landroid/support/v7/preference/SecListPreference$SecListPreferenceDialogFragment;->mListItemListener:Landroid/widget/AdapterView$OnItemClickListener;

    if-nez v1, :cond_0

    new-instance v0, Landroid/support/v7/preference/SecListPreference$SecListPreferenceDialogFragment$3;

    invoke-direct {v0, p0}, Landroid/support/v7/preference/SecListPreference$SecListPreferenceDialogFragment$3;-><init>(Landroid/support/v7/preference/SecListPreference$SecListPreferenceDialogFragment;)V

    iput-object v0, p0, Landroid/support/v7/preference/SecListPreference$SecListPreferenceDialogFragment;->mListItemListener:Landroid/widget/AdapterView$OnItemClickListener;

    :cond_0
    iget-object v1, p0, Landroid/support/v7/preference/SecListPreference$SecListPreferenceDialogFragment;->mListItemListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-object v1
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/preference/SecListPreference$SecListPreferenceDialogFragment;->mPreference:Landroid/support/v7/preference/ListPreference;

    check-cast v0, Landroid/support/v7/preference/SecListPreference;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/preference/SecListPreference;->onClick(Landroid/content/DialogInterface;I)V

    invoke-super {p0, p1, p2}, Landroid/support/v14/preference/ListPreferenceDialogFragment;->onClick(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    invoke-virtual {p0}, Landroid/support/v7/preference/SecListPreference$SecListPreferenceDialogFragment;->getPreference()Landroid/support/v7/preference/DialogPreference;

    move-result-object v2

    check-cast v2, Landroid/support/v7/preference/ListPreference;

    iput-object v2, p0, Landroid/support/v7/preference/SecListPreference$SecListPreferenceDialogFragment;->mPreference:Landroid/support/v7/preference/ListPreference;

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-super {p0, p1}, Landroid/support/v14/preference/ListPreferenceDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v2

    return-object v2

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/preference/SecListPreference$SecListPreferenceDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/content/Context;->getThemeResId()I

    move-result v3

    invoke-direct {v2, v1, v3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Landroid/support/v7/preference/SecListPreference$SecListPreferenceDialogFragment;->mDialog:Landroid/app/Dialog;

    iget-object v2, p0, Landroid/support/v7/preference/SecListPreference$SecListPreferenceDialogFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/Window;->requestFeature(I)Z

    iget-object v2, p0, Landroid/support/v7/preference/SecListPreference$SecListPreferenceDialogFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v7/preference/SecListPreference$SecListPreferenceDialogFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/settings/Utils;->applyLandscapeFullScreen(Landroid/content/Context;Landroid/view/Window;)V

    iget-object v2, p0, Landroid/support/v7/preference/SecListPreference$SecListPreferenceDialogFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    const v3, 0x7f130001

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    invoke-super {p0, v1}, Landroid/support/v14/preference/ListPreferenceDialogFragment;->onCreateDialogView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Landroid/support/v7/preference/SecListPreference$SecListPreferenceDialogFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v2, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    invoke-virtual {p0, v1, v0}, Landroid/support/v7/preference/SecListPreference$SecListPreferenceDialogFragment;->setFullScreenLayout(Landroid/content/Context;Landroid/view/View;)V

    iget-object v2, p0, Landroid/support/v7/preference/SecListPreference$SecListPreferenceDialogFragment;->mDialog:Landroid/app/Dialog;

    return-object v2
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/support/v14/preference/ListPreferenceDialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/preference/SecListPreference$SecListPreferenceDialogFragment;->mDialog:Landroid/app/Dialog;

    return-void
.end method

.method protected setFullScreenLayout(Landroid/content/Context;Landroid/view/View;)V
    .locals 16

    if-nez p2, :cond_0

    return-void

    :cond_0
    const v2, 0x7f0a03bb

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v10, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "current_sec_active_themepackage"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    const v2, 0x7f080130

    invoke-virtual {v10, v2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    :cond_1
    const v2, 0x7f0a0557

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/Toolbar;

    new-instance v2, Landroid/support/v7/preference/SecListPreference$SecListPreferenceDialogFragment$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Landroid/support/v7/preference/SecListPreference$SecListPreferenceDialogFragment$1;-><init>(Landroid/support/v7/preference/SecListPreference$SecListPreferenceDialogFragment;)V

    invoke-virtual {v15, v2}, Landroid/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/preference/SecListPreference$SecListPreferenceDialogFragment;->mPreference:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v2}, Landroid/support/v7/preference/ListPreference;->getDialogTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/preference/SecListPreference$SecListPreferenceDialogFragment;->mPreference:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v2}, Landroid/support/v7/preference/ListPreference;->getDialogTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v15, v2}, Landroid/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    :cond_2
    const v2, 0x7f0a0544

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/support/v7/preference/SecListPreference$SecListPreferenceDialogFragment;->mListView:Landroid/widget/ListView;

    invoke-direct/range {p0 .. p0}, Landroid/support/v7/preference/SecListPreference$SecListPreferenceDialogFragment;->getSecListPreference()Landroid/support/v7/preference/SecListPreference;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/preference/SecListPreference$SecListPreferenceDialogFragment;->mListView:Landroid/widget/ListView;

    invoke-static {v2, v3}, Landroid/support/v7/preference/SecListPreference;->-wrap0(Landroid/support/v7/preference/SecListPreference;Landroid/widget/ListView;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/preference/SecListPreference$SecListPreferenceDialogFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/preference/SecListPreference$SecListPreferenceDialogFragment;->createListAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/preference/SecListPreference$SecListPreferenceDialogFragment;->mListView:Landroid/widget/ListView;

    invoke-direct/range {p0 .. p0}, Landroid/support/v7/preference/SecListPreference$SecListPreferenceDialogFragment;->getValueIndex()I

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/widget/ListView;->setItemChecked(IZ)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/preference/SecListPreference$SecListPreferenceDialogFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/preference/SecListPreference$SecListPreferenceDialogFragment;->getItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/preference/SecListPreference$SecListPreferenceDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "device_policy"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/app/admin/DevicePolicyManager;

    const v2, 0x7f0a0058

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    if-eqz v13, :cond_3

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/preference/SecListPreference$SecListPreferenceDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfMaximumTimeToLockIsSet(Landroid/content/Context;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v11

    if-eqz v11, :cond_3

    const/4 v2, 0x0

    invoke-virtual {v12, v2}, Landroid/view/View;->setVisibility(I)V

    const v2, 0x7f0a0058

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const v2, 0x7f0a005a

    invoke-virtual {v9, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Landroid/support/v7/preference/SecListPreference$SecListPreferenceDialogFragment$2;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v11}, Landroid/support/v7/preference/SecListPreference$SecListPreferenceDialogFragment$2;-><init>(Landroid/support/v7/preference/SecListPreference$SecListPreferenceDialogFragment;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v2

    if-nez v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/preference/SecListPreference$SecListPreferenceDialogFragment;->mListView:Landroid/widget/ListView;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v2, v3, v4, v6, v7}, Landroid/widget/ListView;->setPaddingRelative(IIII)V

    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/preference/SecListPreference$SecListPreferenceDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v2, 0x7f0704fa

    invoke-virtual {v14, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const v3, 0x7f0704ec

    invoke-virtual {v14, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int/2addr v2, v3

    const v3, 0x7f070502

    invoke-virtual {v14, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int v5, v2, v3

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/preference/SecListPreference$SecListPreferenceDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_5

    new-instance v1, Landroid/graphics/drawable/InsetDrawable;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/preference/SecListPreference$SecListPreferenceDialogFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/preference/SecListPreference$SecListPreferenceDialogFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/preference/SecListPreference$SecListPreferenceDialogFragment;->mPreference:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v2}, Landroid/support/v7/preference/ListPreference;->onAttached()V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/preference/SecListPreference$SecListPreferenceDialogFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->requestFocus()Z

    return-void

    :cond_5
    new-instance v1, Landroid/graphics/drawable/InsetDrawable;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/preference/SecListPreference$SecListPreferenceDialogFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/preference/SecListPreference$SecListPreferenceDialogFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
