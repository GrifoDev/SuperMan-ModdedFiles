.class Landroid/widget/Toolbar$6;
.super Ljava/lang/Object;
.source "Toolbar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/Toolbar;->ensureCollapseButtonView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/Toolbar;


# direct methods
.method constructor <init>(Landroid/widget/Toolbar;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/Toolbar;

    .prologue
    .line 1748
    iput-object p1, p0, Landroid/widget/Toolbar$6;->this$0:Landroid/widget/Toolbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1752
    iget-object v1, p0, Landroid/widget/Toolbar$6;->this$0:Landroid/widget/Toolbar;

    invoke-static {v1}, Landroid/widget/Toolbar;->-get3(Landroid/widget/Toolbar;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1753
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 1754
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/widget/Toolbar$6;->this$0:Landroid/widget/Toolbar;

    iget-object v1, v1, Landroid/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1755
    iget-object v1, p0, Landroid/widget/Toolbar$6;->this$0:Landroid/widget/Toolbar;

    iget-object v1, v1, Landroid/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1757
    :cond_0
    iget-object v1, p0, Landroid/widget/Toolbar$6;->this$0:Landroid/widget/Toolbar;

    invoke-static {v1}, Landroid/widget/Toolbar;->-get2(Landroid/widget/Toolbar;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/Toolbar$6;->this$0:Landroid/widget/Toolbar;

    invoke-static {v2}, Landroid/widget/Toolbar;->-get5(Landroid/widget/Toolbar;)Ljava/lang/Runnable;

    move-result-object v2

    const-wide/16 v4, 0x64

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1750
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :goto_0
    return-void

    .line 1759
    :cond_1
    iget-object v1, p0, Landroid/widget/Toolbar$6;->this$0:Landroid/widget/Toolbar;

    invoke-virtual {v1}, Landroid/widget/Toolbar;->collapseActionView()V

    goto :goto_0
.end method
