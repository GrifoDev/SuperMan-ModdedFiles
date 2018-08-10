.class public Landroid/widget/SearchView$SearchAutoComplete;
.super Landroid/widget/AutoCompleteTextView;
.source "SearchView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/SearchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SearchAutoComplete"
.end annotation


# instance fields
.field private mHasPendingShowSoftInputRequest:Z

.field final mRunShowSoftInputIfNecessary:Ljava/lang/Runnable;

.field private mSearchView:Landroid/widget/SearchView;

.field private mThreshold:I


# direct methods
.method static synthetic -wrap0(Landroid/widget/SearchView$SearchAutoComplete;)Z
    .locals 1

    invoke-direct {p0}, Landroid/widget/SearchView$SearchAutoComplete;->isEmpty()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Landroid/widget/SearchView$SearchAutoComplete;Z)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/SearchView$SearchAutoComplete;->setImeVisibility(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/widget/-$Lambda$yUT_tnnGmSVjI_-JmJWApmrQubw;

    invoke-direct {v0, p0}, Landroid/widget/-$Lambda$yUT_tnnGmSVjI_-JmJWApmrQubw;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/widget/SearchView$SearchAutoComplete;->mRunShowSoftInputIfNecessary:Ljava/lang/Runnable;

    invoke-virtual {p0}, Landroid/widget/SearchView$SearchAutoComplete;->getThreshold()I

    move-result v0

    iput v0, p0, Landroid/widget/SearchView$SearchAutoComplete;->mThreshold:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/widget/-$Lambda$yUT_tnnGmSVjI_-JmJWApmrQubw$1;

    invoke-direct {v0, p0}, Landroid/widget/-$Lambda$yUT_tnnGmSVjI_-JmJWApmrQubw$1;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/widget/SearchView$SearchAutoComplete;->mRunShowSoftInputIfNecessary:Ljava/lang/Runnable;

    invoke-virtual {p0}, Landroid/widget/SearchView$SearchAutoComplete;->getThreshold()I

    move-result v0

    iput v0, p0, Landroid/widget/SearchView$SearchAutoComplete;->mThreshold:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Landroid/widget/-$Lambda$yUT_tnnGmSVjI_-JmJWApmrQubw$2;

    invoke-direct {v0, p0}, Landroid/widget/-$Lambda$yUT_tnnGmSVjI_-JmJWApmrQubw$2;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/widget/SearchView$SearchAutoComplete;->mRunShowSoftInputIfNecessary:Ljava/lang/Runnable;

    invoke-virtual {p0}, Landroid/widget/SearchView$SearchAutoComplete;->getThreshold()I

    move-result v0

    iput v0, p0, Landroid/widget/SearchView$SearchAutoComplete;->mThreshold:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance v0, Landroid/widget/-$Lambda$yUT_tnnGmSVjI_-JmJWApmrQubw$3;

    invoke-direct {v0, p0}, Landroid/widget/-$Lambda$yUT_tnnGmSVjI_-JmJWApmrQubw$3;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/widget/SearchView$SearchAutoComplete;->mRunShowSoftInputIfNecessary:Ljava/lang/Runnable;

    invoke-virtual {p0}, Landroid/widget/SearchView$SearchAutoComplete;->getThreshold()I

    move-result v0

    iput v0, p0, Landroid/widget/SearchView$SearchAutoComplete;->mThreshold:I

    return-void
.end method

.method private getSearchViewTextMinWidthDp()I
    .locals 5

    invoke-virtual {p0}, Landroid/widget/SearchView$SearchAutoComplete;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v3, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v1, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    iget v2, v0, Landroid/content/res/Configuration;->orientation:I

    const/16 v4, 0x3c0

    if-lt v3, v4, :cond_0

    const/16 v4, 0x2d0

    if-lt v1, v4, :cond_0

    const/4 v4, 0x2

    if-ne v2, v4, :cond_0

    const/16 v4, 0x100

    return v4

    :cond_0
    const/16 v4, 0x258

    if-ge v3, v4, :cond_1

    const/16 v4, 0x280

    if-lt v3, v4, :cond_2

    const/16 v4, 0x1e0

    if-lt v1, v4, :cond_2

    :cond_1
    const/16 v4, 0xc0

    return v4

    :cond_2
    const/16 v4, 0xa0

    return v4
.end method

.method private isEmpty()Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private setImeVisibility(Z)V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/widget/SearchView$SearchAutoComplete;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-nez p1, :cond_0

    iput-boolean v3, p0, Landroid/widget/SearchView$SearchAutoComplete;->mHasPendingShowSoftInputRequest:Z

    iget-object v1, p0, Landroid/widget/SearchView$SearchAutoComplete;->mRunShowSoftInputIfNecessary:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Landroid/widget/SearchView$SearchAutoComplete;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-virtual {p0}, Landroid/widget/SearchView$SearchAutoComplete;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void

    :cond_0
    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    iput-boolean v3, p0, Landroid/widget/SearchView$SearchAutoComplete;->mHasPendingShowSoftInputRequest:Z

    iget-object v1, p0, Landroid/widget/SearchView$SearchAutoComplete;->mRunShowSoftInputIfNecessary:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Landroid/widget/SearchView$SearchAutoComplete;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-virtual {v0, p0, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void

    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/SearchView$SearchAutoComplete;->mHasPendingShowSoftInputRequest:Z

    return-void
.end method

.method private showSoftInputIfNecessary()V
    .locals 4

    const/4 v3, 0x0

    iget-boolean v1, p0, Landroid/widget/SearchView$SearchAutoComplete;->mHasPendingShowSoftInputRequest:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/SearchView$SearchAutoComplete;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0, p0, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    iput-boolean v3, p0, Landroid/widget/SearchView$SearchAutoComplete;->mHasPendingShowSoftInputRequest:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public enoughToFilter()Z
    .locals 1

    iget v0, p0, Landroid/widget/SearchView$SearchAutoComplete;->mThreshold:I

    if-lez v0, :cond_0

    invoke-super {p0}, Landroid/widget/AutoCompleteTextView;->enoughToFilter()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method synthetic lambda$-android_widget_SearchView$SearchAutoComplete_81100()V
    .locals 0

    invoke-direct {p0}, Landroid/widget/SearchView$SearchAutoComplete;->showSoftInputIfNecessary()V

    return-void
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    iget-boolean v1, p0, Landroid/widget/SearchView$SearchAutoComplete;->mHasPendingShowSoftInputRequest:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/SearchView$SearchAutoComplete;->mRunShowSoftInputIfNecessary:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Landroid/widget/SearchView$SearchAutoComplete;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v1, p0, Landroid/widget/SearchView$SearchAutoComplete;->mRunShowSoftInputIfNecessary:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Landroid/widget/SearchView$SearchAutoComplete;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 3

    invoke-super {p0}, Landroid/widget/AutoCompleteTextView;->onFinishInflate()V

    invoke-virtual {p0}, Landroid/widget/SearchView$SearchAutoComplete;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-direct {p0}, Landroid/widget/SearchView$SearchAutoComplete;->getSearchViewTextMinWidthDp()I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x1

    invoke-static {v2, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0, v1}, Landroid/widget/SearchView$SearchAutoComplete;->setMinWidth(I)V

    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroid/widget/AutoCompleteTextView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    iget-object v0, p0, Landroid/widget/SearchView$SearchAutoComplete;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->onTextFocusChanged()V

    return-void
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v1, p0, Landroid/widget/SearchView$SearchAutoComplete;->mSearchView:Landroid/widget/SearchView;

    invoke-static {v1}, Landroid/widget/SearchView;->-get7(Landroid/widget/SearchView;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-super {p0, p1, p2}, Landroid/widget/AutoCompleteTextView;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1

    :cond_0
    const/4 v1, 0x4

    if-ne p1, v1, :cond_4

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Landroid/widget/SearchView$SearchAutoComplete;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p2, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    :cond_1
    return v3

    :cond_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v3, :cond_4

    invoke-virtual {p0}, Landroid/widget/SearchView$SearchAutoComplete;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0, p2}, Landroid/view/KeyEvent$DispatcherState;->handleUpEvent(Landroid/view/KeyEvent;)V

    :cond_3
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/widget/SearchView$SearchAutoComplete;->mSearchView:Landroid/widget/SearchView;

    invoke-static {v1}, Landroid/widget/SearchView;->-get7(Landroid/widget/SearchView;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Landroid/widget/SearchView$SearchAutoComplete;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v1}, Landroid/widget/SearchView;->clearFocus()V

    invoke-direct {p0, v2}, Landroid/widget/SearchView$SearchAutoComplete;->setImeVisibility(Z)V

    return v3

    :cond_4
    invoke-super {p0, p1, p2}, Landroid/widget/AutoCompleteTextView;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2

    const/4 v1, 0x1

    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->onWindowFocusChanged(Z)V

    iget-object v0, p0, Landroid/widget/SearchView$SearchAutoComplete;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->semIsForceHideSoftInput()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Landroid/widget/SearchView$SearchAutoComplete;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/SearchView$SearchAutoComplete;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iput-boolean v1, p0, Landroid/widget/SearchView$SearchAutoComplete;->mHasPendingShowSoftInputRequest:Z

    invoke-virtual {p0}, Landroid/widget/SearchView$SearchAutoComplete;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/widget/SearchView;->isLandscapeMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v1}, Landroid/widget/SearchView$SearchAutoComplete;->ensureImeVisible(Z)V

    :cond_1
    return-void
.end method

.method public performCompletion()V
    .locals 0

    return-void
.end method

.method protected replaceText(Ljava/lang/CharSequence;)V
    .locals 0

    return-void
.end method

.method setSearchView(Landroid/widget/SearchView;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/SearchView$SearchAutoComplete;->mSearchView:Landroid/widget/SearchView;

    return-void
.end method

.method public setThreshold(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->setThreshold(I)V

    iput p1, p0, Landroid/widget/SearchView$SearchAutoComplete;->mThreshold:I

    return-void
.end method
