.class Lcom/android/launcher2/searchapp/SearchAppListFragment$10;
.super Ljava/lang/Object;
.source "SearchAppListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/searchapp/SearchAppListFragment;->onQueryTextChange(Ljava/lang/String;)Z
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

    iput-object p1, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment$10;->this$0:Lcom/android/launcher2/searchapp/SearchAppListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment$10;->this$0:Lcom/android/launcher2/searchapp/SearchAppListFragment;

    # getter for: Lcom/android/launcher2/searchapp/SearchAppListFragment;->mNoResultTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/launcher2/searchapp/SearchAppListFragment;->access$600(Lcom/android/launcher2/searchapp/SearchAppListFragment;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/launcher2/utils/SIPHelper;->hideInputMethod(Landroid/view/View;Z)V

    return-void
.end method
