.class Landroid/widget/SearchView$4;
.super Ljava/lang/Object;
.source "SearchView.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/SearchView;
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

    iput-object p1, p0, Landroid/widget/SearchView$4;->this$0:Landroid/widget/SearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v3, p0, Landroid/widget/SearchView$4;->this$0:Landroid/widget/SearchView;

    invoke-virtual {v3}, Landroid/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string/jumbo v4, "com.sec.feature.folder_type"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v3, p0, Landroid/widget/SearchView$4;->this$0:Landroid/widget/SearchView;

    invoke-virtual {v3}, Landroid/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "input_method"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    const/16 v3, 0x17

    if-ne p2, v3, :cond_0

    invoke-virtual {v1, p1}, Landroid/view/inputmethod/InputMethodManager;->viewClicked(Landroid/view/View;)V

    invoke-virtual {v1, p1, v6}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_0
    iget-object v3, p0, Landroid/widget/SearchView$4;->this$0:Landroid/widget/SearchView;

    invoke-static {v3}, Landroid/widget/SearchView;->-get5(Landroid/widget/SearchView;)Landroid/app/SearchableInfo;

    move-result-object v3

    if-nez v3, :cond_1

    return v5

    :cond_1
    iget-object v3, p0, Landroid/widget/SearchView$4;->this$0:Landroid/widget/SearchView;

    invoke-static {v3}, Landroid/widget/SearchView;->-get4(Landroid/widget/SearchView;)Landroid/widget/SearchView$SearchAutoComplete;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/SearchView$SearchAutoComplete;->isPopupShowing()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/widget/SearchView$4;->this$0:Landroid/widget/SearchView;

    invoke-static {v3}, Landroid/widget/SearchView;->-get4(Landroid/widget/SearchView;)Landroid/widget/SearchView$SearchAutoComplete;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/SearchView$SearchAutoComplete;->getListSelection()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Landroid/widget/SearchView$4;->this$0:Landroid/widget/SearchView;

    invoke-static {v3, p1, p2, p3}, Landroid/widget/SearchView;->-wrap2(Landroid/widget/SearchView;Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v3

    return v3

    :cond_2
    iget-object v3, p0, Landroid/widget/SearchView$4;->this$0:Landroid/widget/SearchView;

    invoke-static {v3}, Landroid/widget/SearchView;->-get4(Landroid/widget/SearchView;)Landroid/widget/SearchView$SearchAutoComplete;

    move-result-object v3

    invoke-static {v3}, Landroid/widget/SearchView$SearchAutoComplete;->-wrap0(Landroid/widget/SearchView$SearchAutoComplete;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-ne v3, v6, :cond_3

    const/16 v3, 0x42

    if-ne p2, v3, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->cancelLongPress()V

    iget-object v3, p0, Landroid/widget/SearchView$4;->this$0:Landroid/widget/SearchView;

    iget-object v4, p0, Landroid/widget/SearchView$4;->this$0:Landroid/widget/SearchView;

    invoke-static {v4}, Landroid/widget/SearchView;->-get4(Landroid/widget/SearchView;)Landroid/widget/SearchView$SearchAutoComplete;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v5, v7, v4}, Landroid/widget/SearchView;->-wrap5(Landroid/widget/SearchView;ILjava/lang/String;Ljava/lang/String;)V

    return v6

    :cond_3
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Landroid/widget/SearchView$4;->this$0:Landroid/widget/SearchView;

    invoke-static {v3}, Landroid/widget/SearchView;->-get5(Landroid/widget/SearchView;)Landroid/app/SearchableInfo;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/app/SearchableInfo;->findActionKey(I)Landroid/app/SearchableInfo$ActionKeyInfo;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/app/SearchableInfo$ActionKeyInfo;->getQueryActionMsg()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Landroid/widget/SearchView$4;->this$0:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/app/SearchableInfo$ActionKeyInfo;->getQueryActionMsg()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Landroid/widget/SearchView$4;->this$0:Landroid/widget/SearchView;

    invoke-static {v5}, Landroid/widget/SearchView;->-get4(Landroid/widget/SearchView;)Landroid/widget/SearchView$SearchAutoComplete;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, p2, v4, v5}, Landroid/widget/SearchView;->-wrap5(Landroid/widget/SearchView;ILjava/lang/String;Ljava/lang/String;)V

    return v6

    :cond_4
    return v5
.end method
