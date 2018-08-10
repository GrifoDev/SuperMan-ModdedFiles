.class Lcom/samsung/android/settings/search/SecSearchPresenter$1;
.super Ljava/lang/Object;
.source "SecSearchPresenter.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/search/SecSearchPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/search/SecSearchPresenter;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/search/SecSearchPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/search/SecSearchPresenter$1;->this$0:Lcom/samsung/android/settings/search/SecSearchPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 3

    if-nez p2, :cond_0

    const-string/jumbo v1, "SecSearchPresenter"

    const-string/jumbo v2, "scroll skip, SCROLL_STATE_IDLE"

    invoke-static {v1, v2}, Lcom/samsung/android/settingslib/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/search/SecSearchPresenter$1;->this$0:Lcom/samsung/android/settings/search/SecSearchPresenter;

    invoke-static {v1}, Lcom/samsung/android/settings/search/SecSearchPresenter;->-get0(Lcom/samsung/android/settings/search/SecSearchPresenter;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/settings/Utils;->isUSA()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/16 v2, 0x16

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->minimizeSoftInput(Landroid/os/IBinder;I)Z

    :goto_0
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isInputMethodShown()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/search/SecSearchPresenter$1;->this$0:Lcom/samsung/android/settings/search/SecSearchPresenter;

    invoke-static {v1}, Lcom/samsung/android/settings/search/SecSearchPresenter;->-get3(Lcom/samsung/android/settings/search/SecSearchPresenter;)Lcom/samsung/android/settings/search/SecSearchInferface$View;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/settings/search/SecSearchInferface$View;->clearFocusOnSearchView()V

    :cond_1
    return-void

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/search/SecSearchPresenter$1;->this$0:Lcom/samsung/android/settings/search/SecSearchPresenter;

    invoke-static {v1}, Lcom/samsung/android/settings/search/SecSearchPresenter;->-get3(Lcom/samsung/android/settings/search/SecSearchPresenter;)Lcom/samsung/android/settings/search/SecSearchInferface$View;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/settings/search/SecSearchInferface$View;->clearFocusOnSearchView()V

    goto :goto_0
.end method
