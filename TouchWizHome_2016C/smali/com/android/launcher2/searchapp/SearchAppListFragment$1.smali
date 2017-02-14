.class Lcom/android/launcher2/searchapp/SearchAppListFragment$1;
.super Ljava/lang/Object;
.source "SearchAppListFragment.java"

# interfaces
.implements Lcom/android/launcher2/searchapp/SearchAppListFragment$SipHideListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/searchapp/SearchAppListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/searchapp/SearchAppListFragment;


# direct methods
.method constructor <init>(Lcom/android/launcher2/searchapp/SearchAppListFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment$1;->this$0:Lcom/android/launcher2/searchapp/SearchAppListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSipHide()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment$1;->this$0:Lcom/android/launcher2/searchapp/SearchAppListFragment;

    # getter for: Lcom/android/launcher2/searchapp/SearchAppListFragment;->mSearchEdit:Landroid/widget/SearchView;
    invoke-static {v0}, Lcom/android/launcher2/searchapp/SearchAppListFragment;->access$000(Lcom/android/launcher2/searchapp/SearchAppListFragment;)Landroid/widget/SearchView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment$1;->this$0:Lcom/android/launcher2/searchapp/SearchAppListFragment;

    # getter for: Lcom/android/launcher2/searchapp/SearchAppListFragment;->mSearchEdit:Landroid/widget/SearchView;
    invoke-static {v0}, Lcom/android/launcher2/searchapp/SearchAppListFragment;->access$000(Lcom/android/launcher2/searchapp/SearchAppListFragment;)Landroid/widget/SearchView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SearchView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment$1;->this$0:Lcom/android/launcher2/searchapp/SearchAppListFragment;

    # getter for: Lcom/android/launcher2/searchapp/SearchAppListFragment;->mSearchEdit:Landroid/widget/SearchView;
    invoke-static {v0}, Lcom/android/launcher2/searchapp/SearchAppListFragment;->access$000(Lcom/android/launcher2/searchapp/SearchAppListFragment;)Landroid/widget/SearchView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SearchView;->clearFocus()V

    :cond_0
    return-void
.end method
