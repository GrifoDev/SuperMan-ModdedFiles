.class Lcom/android/launcher2/searchapp/SearchAppListFragment$2;
.super Ljava/lang/Object;
.source "SearchAppListFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


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

    iput-object p1, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment$2;->this$0:Lcom/android/launcher2/searchapp/SearchAppListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 6

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iget-object v4, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment$2;->this$0:Lcom/android/launcher2/searchapp/SearchAppListFragment;

    invoke-static {v4}, Lcom/android/launcher2/searchapp/SearchAppListFragment;->access$100(Lcom/android/launcher2/searchapp/SearchAppListFragment;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment$2;->this$0:Lcom/android/launcher2/searchapp/SearchAppListFragment;

    invoke-static {v4}, Lcom/android/launcher2/searchapp/SearchAppListFragment;->access$100(Lcom/android/launcher2/searchapp/SearchAppListFragment;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v3, v4

    iget-object v4, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment$2;->this$0:Lcom/android/launcher2/searchapp/SearchAppListFragment;

    invoke-static {v4}, Lcom/android/launcher2/searchapp/SearchAppListFragment;->access$100(Lcom/android/launcher2/searchapp/SearchAppListFragment;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    sub-int v5, v3, v0

    if-eq v4, v5, :cond_0

    sub-int v4, v3, v0

    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v4, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment$2;->this$0:Lcom/android/launcher2/searchapp/SearchAppListFragment;

    invoke-static {v4}, Lcom/android/launcher2/searchapp/SearchAppListFragment;->access$100(Lcom/android/launcher2/searchapp/SearchAppListFragment;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method
