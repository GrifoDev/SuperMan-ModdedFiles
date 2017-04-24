.class Lcom/android/launcher2/MenuAppsSearch$9;
.super Ljava/lang/Object;
.source "MenuAppsSearch.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/MenuAppsSearch;->openKeyboard()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/MenuAppsSearch;

.field final synthetic val$inputManager:Landroid/view/inputmethod/InputMethodManager;


# direct methods
.method constructor <init>(Lcom/android/launcher2/MenuAppsSearch;Landroid/view/inputmethod/InputMethodManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/MenuAppsSearch$9;->this$0:Lcom/android/launcher2/MenuAppsSearch;

    iput-object p2, p0, Lcom/android/launcher2/MenuAppsSearch$9;->val$inputManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher2/MenuView;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher2/MenuView;->isCurrentTabAppsTab()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher2/MenuView;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v1

    sget-object v2, Lcom/android/launcher2/MenuAppsGrid$State;->SEARCH:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsSearch$9;->this$0:Lcom/android/launcher2/MenuAppsSearch;

    # getter for: Lcom/android/launcher2/MenuAppsSearch;->mSearchEdit:Landroid/widget/SearchView;
    invoke-static {v1}, Lcom/android/launcher2/MenuAppsSearch;->access$300(Lcom/android/launcher2/MenuAppsSearch;)Landroid/widget/SearchView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/SearchView;->requestFocus()Z

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsSearch$9;->val$inputManager:Landroid/view/inputmethod/InputMethodManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/inputmethod/InputMethodManager;->semShowSideSyncSoftInput(I)V

    :cond_0
    return-void
.end method
