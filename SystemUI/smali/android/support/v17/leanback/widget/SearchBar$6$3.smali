.class Landroid/support/v17/leanback/widget/SearchBar$6$3;
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

    iput-object p1, p0, Landroid/support/v17/leanback/widget/SearchBar$6$3;->this$1:Landroid/support/v17/leanback/widget/SearchBar$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchBar$6$3;->this$1:Landroid/support/v17/leanback/widget/SearchBar$6;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/SearchBar$6;->this$0:Landroid/support/v17/leanback/widget/SearchBar;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/support/v17/leanback/widget/SearchBar;->-set0(Landroid/support/v17/leanback/widget/SearchBar;Z)Z

    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchBar$6$3;->this$1:Landroid/support/v17/leanback/widget/SearchBar$6;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/SearchBar$6;->this$0:Landroid/support/v17/leanback/widget/SearchBar;

    invoke-static {v0}, Landroid/support/v17/leanback/widget/SearchBar;->-get9(Landroid/support/v17/leanback/widget/SearchBar;)Landroid/support/v17/leanback/widget/SpeechOrbView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/SpeechOrbView;->requestFocus()Z

    return-void
.end method
