.class Landroid/support/v17/leanback/widget/SearchBar$2;
.super Ljava/lang/Object;
.source "SearchBar.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


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

    iput-object p1, p0, Landroid/support/v17/leanback/widget/SearchBar$2;->this$0:Landroid/support/v17/leanback/widget/SearchBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1

    if-eqz p2, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchBar$2;->this$0:Landroid/support/v17/leanback/widget/SearchBar;

    invoke-static {v0}, Landroid/support/v17/leanback/widget/SearchBar;->-wrap5(Landroid/support/v17/leanback/widget/SearchBar;)V

    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchBar$2;->this$0:Landroid/support/v17/leanback/widget/SearchBar;

    invoke-static {v0, p2}, Landroid/support/v17/leanback/widget/SearchBar;->-wrap8(Landroid/support/v17/leanback/widget/SearchBar;Z)V

    return-void
.end method
