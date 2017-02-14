.class Landroid/support/v17/leanback/widget/SearchBar$4;
.super Ljava/lang/Object;
.source "SearchBar.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v17/leanback/widget/SearchBar;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/leanback/widget/SearchBar;

.field final synthetic val$mOnTextChangedRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/widget/SearchBar;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v17/leanback/widget/SearchBar$4;->this$0:Landroid/support/v17/leanback/widget/SearchBar;

    iput-object p2, p0, Landroid/support/v17/leanback/widget/SearchBar$4;->val$mOnTextChangedRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchBar$4;->this$0:Landroid/support/v17/leanback/widget/SearchBar;

    invoke-static {v0}, Landroid/support/v17/leanback/widget/SearchBar;->-get3(Landroid/support/v17/leanback/widget/SearchBar;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchBar$4;->this$0:Landroid/support/v17/leanback/widget/SearchBar;

    invoke-static {v0}, Landroid/support/v17/leanback/widget/SearchBar;->-get2(Landroid/support/v17/leanback/widget/SearchBar;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v17/leanback/widget/SearchBar$4;->val$mOnTextChangedRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchBar$4;->this$0:Landroid/support/v17/leanback/widget/SearchBar;

    invoke-static {v0}, Landroid/support/v17/leanback/widget/SearchBar;->-get2(Landroid/support/v17/leanback/widget/SearchBar;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v17/leanback/widget/SearchBar$4;->val$mOnTextChangedRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
