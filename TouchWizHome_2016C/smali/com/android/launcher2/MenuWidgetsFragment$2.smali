.class Lcom/android/launcher2/MenuWidgetsFragment$2;
.super Ljava/lang/Object;
.source "MenuWidgetsFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/MenuWidgetsFragment;->setupSearchNotiView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/MenuWidgetsFragment;


# direct methods
.method constructor <init>(Lcom/android/launcher2/MenuWidgetsFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/MenuWidgetsFragment$2;->this$0:Lcom/android/launcher2/MenuWidgetsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 6

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iget-object v4, p0, Lcom/android/launcher2/MenuWidgetsFragment$2;->this$0:Lcom/android/launcher2/MenuWidgetsFragment;

    # getter for: Lcom/android/launcher2/MenuWidgetsFragment;->mNotiTextView:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/android/launcher2/MenuWidgetsFragment;->access$400(Lcom/android/launcher2/MenuWidgetsFragment;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getRootView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/android/launcher2/MenuWidgetsFragment$2;->this$0:Lcom/android/launcher2/MenuWidgetsFragment;

    # getter for: Lcom/android/launcher2/MenuWidgetsFragment;->mNotiTextView:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/android/launcher2/MenuWidgetsFragment;->access$400(Lcom/android/launcher2/MenuWidgetsFragment;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v3, v4

    iget-object v4, p0, Lcom/android/launcher2/MenuWidgetsFragment$2;->this$0:Lcom/android/launcher2/MenuWidgetsFragment;

    # getter for: Lcom/android/launcher2/MenuWidgetsFragment;->mNotiTextView:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/android/launcher2/MenuWidgetsFragment;->access$400(Lcom/android/launcher2/MenuWidgetsFragment;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    sub-int v5, v3, v0

    if-eq v4, v5, :cond_0

    sub-int v4, v3, v0

    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v4, p0, Lcom/android/launcher2/MenuWidgetsFragment$2;->this$0:Lcom/android/launcher2/MenuWidgetsFragment;

    # getter for: Lcom/android/launcher2/MenuWidgetsFragment;->mNotiTextView:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/android/launcher2/MenuWidgetsFragment;->access$400(Lcom/android/launcher2/MenuWidgetsFragment;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method
