.class Lcom/android/launcher2/searchapp/SearchAppListFragment$12;
.super Ljava/lang/Object;
.source "SearchAppListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/searchapp/SearchAppListFragment;->openKeyboard()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/searchapp/SearchAppListFragment;

.field final synthetic val$inputManager:Landroid/view/inputmethod/InputMethodManager;


# direct methods
.method constructor <init>(Lcom/android/launcher2/searchapp/SearchAppListFragment;Landroid/view/inputmethod/InputMethodManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment$12;->this$0:Lcom/android/launcher2/searchapp/SearchAppListFragment;

    iput-object p2, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment$12;->val$inputManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment$12;->this$0:Lcom/android/launcher2/searchapp/SearchAppListFragment;

    invoke-static {v0}, Lcom/android/launcher2/searchapp/SearchAppListFragment;->access$000(Lcom/android/launcher2/searchapp/SearchAppListFragment;)Landroid/widget/SearchView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SearchView;->requestFocus()Z

    iget-object v0, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment$12;->val$inputManager:Landroid/view/inputmethod/InputMethodManager;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->semShowSoftInput(ILandroid/os/ResultReceiver;)V

    return-void
.end method
