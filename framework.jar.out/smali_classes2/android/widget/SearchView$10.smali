.class Landroid/widget/SearchView$10;
.super Ljava/lang/Object;
.source "SearchView.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/SearchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/SearchView;


# direct methods
.method constructor <init>(Landroid/widget/SearchView;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/SearchView;

    .prologue
    .line 373
    iput-object p1, p0, Landroid/widget/SearchView$10;->this$0:Landroid/widget/SearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 376
    iget-object v0, p0, Landroid/widget/SearchView$10;->this$0:Landroid/widget/SearchView;

    invoke-static {v0}, Landroid/widget/SearchView;->-get3(Landroid/widget/SearchView;)Landroid/view/View$OnFocusChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 377
    iget-object v0, p0, Landroid/widget/SearchView$10;->this$0:Landroid/widget/SearchView;

    invoke-static {v0}, Landroid/widget/SearchView;->-get3(Landroid/widget/SearchView;)Landroid/view/View$OnFocusChangeListener;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/SearchView$10;->this$0:Landroid/widget/SearchView;

    invoke-interface {v0, v1, p2}, Landroid/view/View$OnFocusChangeListener;->onFocusChange(Landroid/view/View;Z)V

    .line 375
    :cond_0
    return-void
.end method
