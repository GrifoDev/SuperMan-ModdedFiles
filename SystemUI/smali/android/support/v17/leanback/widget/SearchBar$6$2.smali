.class Landroid/support/v17/leanback/widget/SearchBar$6$2;
.super Ljava/lang/Object;
.source "SearchBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v17/leanback/widget/SearchBar$6;->onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/support/v17/leanback/widget/SearchBar$6;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/widget/SearchBar$6;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v17/leanback/widget/SearchBar$6$2;->this$1:Landroid/support/v17/leanback/widget/SearchBar$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchBar$6$2;->this$1:Landroid/support/v17/leanback/widget/SearchBar$6;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/SearchBar$6;->this$0:Landroid/support/v17/leanback/widget/SearchBar;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/SearchBar;->mSearchBarListener:Landroid/support/v17/leanback/widget/SearchBar$SearchBarListener;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/SearchBar$6$2;->this$1:Landroid/support/v17/leanback/widget/SearchBar$6;

    iget-object v1, v1, Landroid/support/v17/leanback/widget/SearchBar$6;->this$0:Landroid/support/v17/leanback/widget/SearchBar;

    iget-object v1, v1, Landroid/support/v17/leanback/widget/SearchBar;->mSearchQuery:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/support/v17/leanback/widget/SearchBar$SearchBarListener;->onKeyboardDismiss(Ljava/lang/String;)V

    return-void
.end method
