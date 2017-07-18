.class Lcom/android/launcher2/MenuWidgets$WidgetStateNormal;
.super Lcom/android/launcher2/MenuWidgets$WidgetStateObj;
.source "MenuWidgets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/MenuWidgets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WidgetStateNormal"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/MenuWidgets;


# direct methods
.method private constructor <init>(Lcom/android/launcher2/MenuWidgets;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/MenuWidgets$WidgetStateNormal;->this$0:Lcom/android/launcher2/MenuWidgets;

    invoke-direct {p0, p1}, Lcom/android/launcher2/MenuWidgets$WidgetStateObj;-><init>(Lcom/android/launcher2/MenuWidgets;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher2/MenuWidgets;Lcom/android/launcher2/MenuWidgets$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher2/MenuWidgets$WidgetStateNormal;-><init>(Lcom/android/launcher2/MenuWidgets;)V

    return-void
.end method

.method private initSearchBarContainerView()V
    .locals 7

    iget-object v5, p0, Lcom/android/launcher2/MenuWidgets$WidgetStateNormal;->this$0:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v5}, Lcom/android/launcher2/MenuWidgets;->getWidgetSearchBar()Landroid/view/ViewGroup;

    move-result-object v2

    check-cast v2, Landroid/widget/SearchView;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v5, p0, Lcom/android/launcher2/MenuWidgets$WidgetStateNormal;->this$0:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v5}, Lcom/android/launcher2/MenuWidgets;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0200a4

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/SearchView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v2}, Landroid/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/Launcher;

    invoke-virtual {v5, v2}, Lcom/android/launcher2/Launcher;->enableVoiceSearch(Landroid/widget/SearchView;)V

    invoke-virtual {v2}, Landroid/widget/SearchView;->onActionViewExpanded()V

    iget-object v5, p0, Lcom/android/launcher2/MenuWidgets$WidgetStateNormal;->this$0:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v5}, Lcom/android/launcher2/MenuWidgets;->getWidgetMoreButton()Landroid/view/ViewGroup;

    move-result-object v1

    if-eqz v1, :cond_0

    const v5, 0x7f1100c9

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->semSetHoverPopupType(I)V

    iget-object v5, p0, Lcom/android/launcher2/MenuWidgets$WidgetStateNormal;->this$0:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v5, v2}, Lcom/android/launcher2/MenuWidgets;->getVoiceSearchButton(Landroid/widget/SearchView;)Landroid/widget/ImageView;

    move-result-object v4

    if-eqz v4, :cond_0

    new-instance v5, Lcom/android/launcher2/MenuWidgets$WidgetStateNormal$1;

    invoke-direct {v5, p0}, Lcom/android/launcher2/MenuWidgets$WidgetStateNormal$1;-><init>(Lcom/android/launcher2/MenuWidgets$WidgetStateNormal;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method


# virtual methods
.method public enter(Lcom/android/launcher2/MenuWidgets$WidgetState;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher2/MenuWidgets$WidgetState;",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    const/4 v3, 0x0

    if-nez p1, :cond_2

    const/4 v0, 0x1

    :goto_0
    sget-object v4, Lcom/android/launcher2/MenuWidgets$WidgetState;->SEARCH:Lcom/android/launcher2/MenuWidgets$WidgetState;

    if-eq p1, v4, :cond_0

    iget-object v4, p0, Lcom/android/launcher2/MenuWidgets$WidgetStateNormal;->this$0:Lcom/android/launcher2/MenuWidgets;

    invoke-static {v4}, Lcom/android/launcher2/MenuWidgets;->access$1900(Lcom/android/launcher2/MenuWidgets;)Lcom/android/launcher2/MenuTitleBarManager;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher2/MenuWidgets$WidgetStateNormal;->this$0:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v5}, Lcom/android/launcher2/MenuWidgets;->getWidgetState()Lcom/android/launcher2/MenuWidgets$WidgetState;

    move-result-object v5

    invoke-virtual {v4, p2, v5, v0}, Lcom/android/launcher2/MenuTitleBarManager;->changeTitleBar(Ljava/util/List;Lcom/android/launcher2/MenuWidgets$WidgetState;Z)V

    :cond_0
    iget-object v4, p0, Lcom/android/launcher2/MenuWidgets$WidgetStateNormal;->this$0:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v4, v3}, Lcom/android/launcher2/MenuWidgets;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/launcher2/MenuWidgets$WidgetStateNormal;->this$0:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v4}, Lcom/android/launcher2/MenuWidgets;->getWidgetSearchBar()Landroid/view/ViewGroup;

    move-result-object v2

    check-cast v2, Landroid/widget/SearchView;

    if-nez v2, :cond_3

    :cond_1
    :goto_1
    return-void

    :cond_2
    move v0, v3

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lcom/android/launcher2/MenuWidgets$WidgetStateNormal;->this$0:Lcom/android/launcher2/MenuWidgets;

    invoke-static {v4}, Lcom/android/launcher2/MenuWidgets;->access$200(Lcom/android/launcher2/MenuWidgets;)Lcom/android/launcher2/MenuWidgetsFragment;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/launcher2/MenuWidgetsFragment;->setSoftInputParam(Z)V

    iget-object v4, p0, Lcom/android/launcher2/MenuWidgets$WidgetStateNormal;->this$0:Lcom/android/launcher2/MenuWidgets;

    invoke-static {v4}, Lcom/android/launcher2/MenuWidgets;->access$2000(Lcom/android/launcher2/MenuWidgets;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-direct {p0}, Lcom/android/launcher2/MenuWidgets$WidgetStateNormal;->initSearchBarContainerView()V

    iget-object v4, p0, Lcom/android/launcher2/MenuWidgets$WidgetStateNormal;->this$0:Lcom/android/launcher2/MenuWidgets;

    invoke-static {v4, v3}, Lcom/android/launcher2/MenuWidgets;->access$2002(Lcom/android/launcher2/MenuWidgets;Z)Z

    :cond_4
    invoke-virtual {v2}, Landroid/widget/SearchView;->semGetAutoCompleteView()Landroid/widget/AutoCompleteTextView;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher2/MenuWidgets$WidgetStateNormal;->this$0:Lcom/android/launcher2/MenuWidgets;

    invoke-static {v5}, Lcom/android/launcher2/MenuWidgets;->access$2100(Lcom/android/launcher2/MenuWidgets;)Landroid/view/View$OnFocusChangeListener;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/AutoCompleteTextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v4, p0, Lcom/android/launcher2/MenuWidgets$WidgetStateNormal;->this$0:Lcom/android/launcher2/MenuWidgets;

    invoke-static {v4}, Lcom/android/launcher2/MenuWidgets;->access$2200(Lcom/android/launcher2/MenuWidgets;)V

    invoke-virtual {v2}, Landroid/widget/SearchView;->clearFocus()V

    invoke-virtual {v2, v3}, Landroid/widget/SearchView;->setFocusable(Z)V

    iget-object v3, p0, Lcom/android/launcher2/MenuWidgets$WidgetStateNormal;->this$0:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v3}, Lcom/android/launcher2/MenuWidgets;->getWidgetMoreButton()Landroid/view/ViewGroup;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    goto :goto_1
.end method

.method public exit(Lcom/android/launcher2/MenuWidgets$WidgetState;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher2/MenuWidgets$WidgetState;",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onClickWidget(Lcom/android/launcher2/HomePendingItem;Landroid/view/View;)V
    .locals 1

    instance-of v0, p2, Lcom/android/launcher2/WidgetFolderView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStateNormal;->this$0:Lcom/android/launcher2/MenuWidgets;

    check-cast p2, Lcom/android/launcher2/WidgetFolderView;

    invoke-static {v0, p2}, Lcom/android/launcher2/MenuWidgets;->access$1700(Lcom/android/launcher2/MenuWidgets;Lcom/android/launcher2/WidgetFolderView;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStateNormal;->this$0:Lcom/android/launcher2/MenuWidgets;

    invoke-static {v0, p2}, Lcom/android/launcher2/MenuWidgets;->access$1800(Lcom/android/launcher2/MenuWidgets;Landroid/view/View;)V

    goto :goto_0
.end method

.method public onVoiceSearch(Ljava/lang/String;)V
    .locals 2

    iget-object v1, p0, Lcom/android/launcher2/MenuWidgets$WidgetStateNormal;->this$0:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuWidgets;->changeToWidgetStateSearch()V

    iget-object v1, p0, Lcom/android/launcher2/MenuWidgets$WidgetStateNormal;->this$0:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuWidgets;->getWidgetStateObj()Lcom/android/launcher2/MenuWidgets$WidgetStateObj;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/launcher2/MenuWidgets$WidgetStateObj;->onVoiceSearch(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public refreshModel()V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStateNormal;->this$0:Lcom/android/launcher2/MenuWidgets;

    iget-object v1, p0, Lcom/android/launcher2/MenuWidgets$WidgetStateNormal;->this$0:Lcom/android/launcher2/MenuWidgets;

    invoke-static {v1}, Lcom/android/launcher2/MenuWidgets;->access$1900(Lcom/android/launcher2/MenuWidgets;)Lcom/android/launcher2/MenuTitleBarManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/MenuWidgets$WidgetStateNormal;->this$0:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v2}, Lcom/android/launcher2/MenuWidgets;->getWidgetState()Lcom/android/launcher2/MenuWidgets$WidgetState;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/launcher2/MenuTitleBarManager;->getActiveTitleBarForState(Lcom/android/launcher2/MenuWidgets$WidgetState;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/launcher2/MenuWidgets;->access$2302(Lcom/android/launcher2/MenuWidgets;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    return-void
.end method
