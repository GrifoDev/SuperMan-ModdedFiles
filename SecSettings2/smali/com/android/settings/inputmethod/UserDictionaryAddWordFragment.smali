.class public Lcom/android/settings/inputmethod/UserDictionaryAddWordFragment;
.super Lcom/android/settings/InstrumentedFragment;
.source "UserDictionaryAddWordFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;


# instance fields
.field private mContents:Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;

.field private mIsDeleting:Z

.field private mRootView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/InstrumentedFragment;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordFragment;->mIsDeleting:Z

    return-void
.end method

.method private updateSpinner()V
    .locals 4

    iget-object v2, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordFragment;->mContents:Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/UserDictionaryAddWordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->getLocalesList(Landroid/app/Activity;)Ljava/util/ArrayList;

    move-result-object v1

    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/UserDictionaryAddWordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x1090008

    invoke-direct {v0, v2, v3, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    const v2, 0x1090009

    invoke-virtual {v0, v2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    const/16 v0, 0x3e

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, 0x1

    invoke-super {p0, p1}, Lcom/android/settings/InstrumentedFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0, v2}, Lcom/android/settings/inputmethod/UserDictionaryAddWordFragment;->setHasOptionsMenu(Z)V

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/UserDictionaryAddWordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const v1, 0x7f0b15b1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    invoke-virtual {p0, v2}, Lcom/android/settings/inputmethod/UserDictionaryAddWordFragment;->setRetainInstance(Z)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v1, 0x1

    const v2, 0x7f0b178d

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x108003c

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const/4 v1, 0x0

    const v0, 0x7f040306

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordFragment;->mRootView:Landroid/view/View;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordFragment;->mIsDeleting:Z

    iget-object v0, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordFragment;->mContents:Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;

    iget-object v1, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordFragment;->mRootView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/UserDictionaryAddWordFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;-><init>(Landroid/view/View;Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordFragment;->mContents:Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;

    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/UserDictionaryAddWordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/UserDictionaryAddWordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordFragment;->mContents:Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;

    invoke-virtual {v2}, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->getCurrentUserDictionaryLocale()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/settings/inputmethod/UserDictionarySettingsUtils;->getLocaleDisplayName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordFragment;->mRootView:Landroid/view/View;

    return-object v0

    :cond_0
    new-instance v0, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;

    iget-object v1, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordFragment;->mRootView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordFragment;->mContents:Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;

    invoke-direct {v0, v1, v2}, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;-><init>(Landroid/view/View;Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;)V

    iput-object v0, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordFragment;->mContents:Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;

    goto :goto_0
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents$LocaleRenderer;

    invoke-virtual {v0}, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents$LocaleRenderer;->isMoreLanguages()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/UserDictionaryAddWordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/settings/SettingsActivity;

    new-instance v2, Lcom/android/settings/inputmethod/UserDictionaryLocalePicker;

    invoke-direct {v2, p0}, Lcom/android/settings/inputmethod/UserDictionaryLocalePicker;-><init>(Lcom/android/settings/inputmethod/UserDictionaryAddWordFragment;)V

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/SettingsActivity;->startPreferenceFragment(Landroid/app/Fragment;Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordFragment;->mContents:Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;

    invoke-virtual {v0}, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents$LocaleRenderer;->getLocaleString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->updateLocale(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onLocaleSelected(Ljava/util/Locale;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordFragment;->mContents:Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;

    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->updateLocale(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/UserDictionaryAddWordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/UserDictionaryAddWordFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordFragment;->mContents:Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;

    const-string/jumbo v2, "locale"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->updateLocale(Ljava/lang/String;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    const/4 v2, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordFragment;->mContents:Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/UserDictionaryAddWordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->delete(Landroid/content/Context;)V

    iput-boolean v2, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordFragment;->mIsDeleting:Z

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/UserDictionaryAddWordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    return v2

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onPause()V
    .locals 3

    invoke-super {p0}, Lcom/android/settings/InstrumentedFragment;->onPause()V

    iget-boolean v0, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordFragment;->mIsDeleting:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordFragment;->mContents:Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/UserDictionaryAddWordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->apply(Landroid/content/Context;Landroid/os/Bundle;)I

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/InstrumentedFragment;->onResume()V

    invoke-direct {p0}, Lcom/android/settings/inputmethod/UserDictionaryAddWordFragment;->updateSpinner()V

    return-void
.end method
