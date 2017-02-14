.class Landroid/support/v17/leanback/widget/SearchBar$3;
.super Ljava/lang/Object;
.source "SearchBar.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    iput-object p1, p0, Landroid/support/v17/leanback/widget/SearchBar$3;->this$0:Landroid/support/v17/leanback/widget/SearchBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchBar$3;->this$0:Landroid/support/v17/leanback/widget/SearchBar;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/SearchBar$3;->this$0:Landroid/support/v17/leanback/widget/SearchBar;

    invoke-static {v1}, Landroid/support/v17/leanback/widget/SearchBar;->-get6(Landroid/support/v17/leanback/widget/SearchBar;)Landroid/support/v17/leanback/widget/SearchEditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/SearchEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/v17/leanback/widget/SearchBar;->-wrap4(Landroid/support/v17/leanback/widget/SearchBar;Ljava/lang/String;)V

    return-void
.end method
