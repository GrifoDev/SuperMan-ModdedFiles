.class Lcom/android/launcher2/MenuWidgetsSearch;
.super Ljava/lang/Object;
.source "MenuWidgetsSearch.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/widget/SearchView$OnQueryTextListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/MenuWidgetsSearch$SearchFilter;
    }
.end annotation


# static fields
.field private static final MENU_WIDGET_KEYBOARD_IS_UP:Ljava/lang/String; = "MENU_WIDGET_KEYBOARD_IS_UP"

.field private static final MENU_WIDGET_SEARCH_PATTERN:Ljava/lang/String; = "MENU_WIDGET_SEARCH_PATTERN"


# instance fields
.field private mMenuWidgets:Lcom/android/launcher2/MenuWidgets;

.field private mSearchEdit:Landroid/widget/SearchView;

.field private mSkippedFirst:Z


# direct methods
.method public constructor <init>(Lcom/android/launcher2/MenuView;Lcom/android/launcher2/MenuWidgets;)V
    .locals 6

    const/4 v5, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/launcher2/MenuWidgetsSearch;->mSkippedFirst:Z

    iput-object p2, p0, Lcom/android/launcher2/MenuWidgetsSearch;->mMenuWidgets:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {p2}, Lcom/android/launcher2/MenuWidgets;->getWidgetSearchBar()Landroid/view/ViewGroup;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    check-cast v2, Landroid/widget/SearchView;

    iput-object v2, p0, Lcom/android/launcher2/MenuWidgetsSearch;->mSearchEdit:Landroid/widget/SearchView;

    iget-object v3, p0, Lcom/android/launcher2/MenuWidgetsSearch;->mSearchEdit:Landroid/widget/SearchView;

    invoke-virtual {v3}, Landroid/widget/SearchView;->onActionViewCollapsed()V

    iget-object v3, p0, Lcom/android/launcher2/MenuWidgetsSearch;->mSearchEdit:Landroid/widget/SearchView;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/widget/SearchView;->setImeOptions(I)V

    iget-object v3, p0, Lcom/android/launcher2/MenuWidgetsSearch;->mSearchEdit:Landroid/widget/SearchView;

    const/16 v4, 0x2001

    invoke-virtual {v3, v4}, Landroid/widget/SearchView;->setInputType(I)V

    iget-object v3, p0, Lcom/android/launcher2/MenuWidgetsSearch;->mSearchEdit:Landroid/widget/SearchView;

    invoke-virtual {v3}, Landroid/widget/SearchView;->onActionViewExpanded()V

    iget-object v3, p0, Lcom/android/launcher2/MenuWidgetsSearch;->mSearchEdit:Landroid/widget/SearchView;

    invoke-virtual {v3}, Landroid/widget/SearchView;->semGetAutoCompleteView()Landroid/widget/AutoCompleteTextView;

    move-result-object v3

    const-string v4, "nm"

    invoke-virtual {v3, v4}, Landroid/widget/AutoCompleteTextView;->setPrivateImeOptions(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportSearchTextColorLight()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/launcher2/MenuWidgetsSearch;->mSearchEdit:Landroid/widget/SearchView;

    invoke-virtual {v3}, Landroid/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "android:id/search_src_text"

    invoke-virtual {v3, v4, v5, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iget-object v3, p0, Lcom/android/launcher2/MenuWidgetsSearch;->mSearchEdit:Landroid/widget/SearchView;

    invoke-virtual {v3, v1}, Landroid/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/AutoCompleteTextView;

    if-eqz v0, :cond_0

    const/high16 v3, -0x1000000

    invoke-virtual {v0, v3}, Landroid/widget/AutoCompleteTextView;->setTextColor(I)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/launcher2/MenuWidgetsSearch;)Landroid/widget/SearchView;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsSearch;->mSearchEdit:Landroid/widget/SearchView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/launcher2/MenuWidgetsSearch;)Lcom/android/launcher2/MenuWidgets;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsSearch;->mMenuWidgets:Lcom/android/launcher2/MenuWidgets;

    return-object v0
.end method


# virtual methods
.method public closeKeyboard(ZZ)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsSearch;->mSearchEdit:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->disableFullyHideKeypad()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsSearch;->mSearchEdit:Landroid/widget/SearchView;

    invoke-static {v0, p1}, Lcom/android/launcher2/utils/SIPHelper;->hideInputMethod(Landroid/view/View;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsSearch;->mSearchEdit:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->clearFocus()V

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsSearch;->mMenuWidgets:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuWidgets;->changeToWidgetStateNormal()V

    goto :goto_0
.end method

.method public enter(Lcom/android/launcher2/MenuWidgets$WidgetState;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher2/MenuWidgets$WidgetState;",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsSearch;->mSearchEdit:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->semGetAutoCompleteView()Landroid/widget/AutoCompleteTextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/MenuWidgetsSearch;->mSearchEdit:Landroid/widget/SearchView;

    invoke-virtual {v1}, Landroid/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x1e

    iget-object v3, p0, Lcom/android/launcher2/MenuWidgetsSearch;->mSearchEdit:Landroid/widget/SearchView;

    invoke-virtual {v3}, Landroid/widget/SearchView;->semGetAutoCompleteView()Landroid/widget/AutoCompleteTextView;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/launcher2/Utilities;->getEditTextMaxLengthFilter(Landroid/content/Context;ILandroid/widget/EditText;)[Landroid/text/InputFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setFilters([Landroid/text/InputFilter;)V

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsSearch;->mSearchEdit:Landroid/widget/SearchView;

    invoke-virtual {v0, p0}, Landroid/widget/SearchView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsSearch;->mSearchEdit:Landroid/widget/SearchView;

    invoke-virtual {v0, p0}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsSearch;->mSearchEdit:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    iget-object v1, p0, Lcom/android/launcher2/MenuWidgetsSearch;->mSearchEdit:Landroid/widget/SearchView;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Launcher;->enableVoiceSearch(Landroid/widget/SearchView;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/MenuWidgetsSearch;->mSkippedFirst:Z

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsSearch;->mMenuWidgets:Lcom/android/launcher2/MenuWidgets;

    new-instance v1, Lcom/android/launcher2/MenuWidgetsSearch$SearchFilter;

    invoke-direct {v1, p0}, Lcom/android/launcher2/MenuWidgetsSearch$SearchFilter;-><init>(Lcom/android/launcher2/MenuWidgetsSearch;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher2/MenuWidgets;->setFilter(Lcom/android/launcher2/MenuWidgets$Filter;)V

    sget-object v0, Lcom/android/launcher2/MenuWidgets$WidgetState;->NORMAL:Lcom/android/launcher2/MenuWidgets$WidgetState;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsSearch;->mMenuWidgets:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuWidgets;->runFilter()V

    :cond_0
    return-void
.end method

.method public exit(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsSearch;->mSearchEdit:Landroid/widget/SearchView;

    const/16 v1, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/widget/SearchView;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsSearch;->mSearchEdit:Landroid/widget/SearchView;

    invoke-virtual {v0, v2}, Landroid/widget/SearchView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsSearch;->mSearchEdit:Landroid/widget/SearchView;

    invoke-virtual {v0, v2}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsSearch;->mMenuWidgets:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v0, v2}, Lcom/android/launcher2/MenuWidgets;->setFilter(Lcom/android/launcher2/MenuWidgets$Filter;)V

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsSearch;->mSearchEdit:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsSearch;->mSearchEdit:Landroid/widget/SearchView;

    const-string v1, ""

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsSearch;->mMenuWidgets:Lcom/android/launcher2/MenuWidgets;

    iget-boolean v0, v0, Lcom/android/launcher2/MenuWidgets;->mDragOnSearchState:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsSearch;->mMenuWidgets:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuWidgets;->runFilter()V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    return-void
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
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/MenuWidgetsSearch;->mSkippedFirst:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsSearch;->mMenuWidgets:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuWidgets;->runFilter()V

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/MenuWidgetsSearch;->mSkippedFirst:Z

    const/4 v0, 0x0

    return v0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/android/launcher2/MenuWidgetsSearch;->closeKeyboard(ZZ)V

    const/4 v0, 0x1

    return v0
.end method

.method public onTouchModeChanged(Z)V
    .locals 1

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsSearch;->mSearchEdit:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->requestFocus()Z

    :cond_0
    return-void
.end method

.method public openKeyboard()V
    .locals 6

    iget-object v2, p0, Lcom/android/launcher2/MenuWidgetsSearch;->mSearchEdit:Landroid/widget/SearchView;

    invoke-virtual {v2}, Landroid/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v2, p0, Lcom/android/launcher2/MenuWidgetsSearch;->mSearchEdit:Landroid/widget/SearchView;

    invoke-virtual {v2}, Landroid/widget/SearchView;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->semIsInputMethodShown()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/android/launcher2/MenuWidgetsSearch$1;

    invoke-direct {v2, p0}, Lcom/android/launcher2/MenuWidgetsSearch$1;-><init>(Lcom/android/launcher2/MenuWidgetsSearch;)V

    const-wide/16 v4, 0x96

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public requestFocusSearchEdit()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsSearch;->mSearchEdit:Landroid/widget/SearchView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setFocusable(Z)V

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsSearch;->mSearchEdit:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->requestFocus()Z

    return-void
.end method

.method public restore(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsSearch;->mSearchEdit:Landroid/widget/SearchView;

    const-string v1, "MENU_WIDGET_SEARCH_PATTERN"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    const-string v0, "MENU_WIDGET_KEYBOARD_IS_UP"

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsSearch;->mSearchEdit:Landroid/widget/SearchView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setIconified(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsSearch;->mSearchEdit:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->clearFocus()V

    goto :goto_0
.end method

.method public save(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "MENU_WIDGET_SEARCH_PATTERN"

    iget-object v1, p0, Lcom/android/launcher2/MenuWidgetsSearch;->mSearchEdit:Landroid/widget/SearchView;

    invoke-virtual {v1}, Landroid/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "MENU_WIDGET_KEYBOARD_IS_UP"

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsSearch;->mSearchEdit:Landroid/widget/SearchView;

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

.method public setQueryString(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsSearch;->mSearchEdit:Landroid/widget/SearchView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsSearch;->mSearchEdit:Landroid/widget/SearchView;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    invoke-virtual {p0, p1}, Lcom/android/launcher2/MenuWidgetsSearch;->onQueryTextChange(Ljava/lang/String;)Z

    :cond_0
    return-void
.end method
