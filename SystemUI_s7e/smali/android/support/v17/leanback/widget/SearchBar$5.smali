.class Landroid/support/v17/leanback/widget/SearchBar$5;
.super Ljava/lang/Object;
.source "SearchBar.java"

# interfaces
.implements Landroid/support/v17/leanback/widget/SearchEditText$OnKeyboardDismissListener;


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


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/widget/SearchBar;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v17/leanback/widget/SearchBar$5;->this$0:Landroid/support/v17/leanback/widget/SearchBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyboardDismiss()V
    .locals 2

    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchBar$5;->this$0:Landroid/support/v17/leanback/widget/SearchBar;

    invoke-static {v0}, Landroid/support/v17/leanback/widget/SearchBar;->-get4(Landroid/support/v17/leanback/widget/SearchBar;)Landroid/support/v17/leanback/widget/SearchBar$SearchBarListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchBar$5;->this$0:Landroid/support/v17/leanback/widget/SearchBar;

    invoke-static {v0}, Landroid/support/v17/leanback/widget/SearchBar;->-get4(Landroid/support/v17/leanback/widget/SearchBar;)Landroid/support/v17/leanback/widget/SearchBar$SearchBarListener;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v17/leanback/widget/SearchBar$5;->this$0:Landroid/support/v17/leanback/widget/SearchBar;

    invoke-static {v1}, Landroid/support/v17/leanback/widget/SearchBar;->-get5(Landroid/support/v17/leanback/widget/SearchBar;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/support/v17/leanback/widget/SearchBar$SearchBarListener;->onKeyboardDismiss(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
