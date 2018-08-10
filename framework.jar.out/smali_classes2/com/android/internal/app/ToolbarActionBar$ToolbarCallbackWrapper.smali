.class Lcom/android/internal/app/ToolbarActionBar$ToolbarCallbackWrapper;
.super Landroid/view/WindowCallbackWrapper;
.source "ToolbarActionBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ToolbarActionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ToolbarCallbackWrapper"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/ToolbarActionBar;


# direct methods
.method public constructor <init>(Lcom/android/internal/app/ToolbarActionBar;Landroid/view/Window$Callback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/app/ToolbarActionBar$ToolbarCallbackWrapper;->this$0:Lcom/android/internal/app/ToolbarActionBar;

    invoke-direct {p0, p2}, Landroid/view/WindowCallbackWrapper;-><init>(Landroid/view/Window$Callback;)V

    return-void
.end method


# virtual methods
.method public onCreatePanelView(I)Landroid/view/View;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lcom/android/internal/app/ToolbarActionBar$ToolbarCallbackWrapper;->this$0:Lcom/android/internal/app/ToolbarActionBar;

    invoke-static {v1}, Lcom/android/internal/app/ToolbarActionBar;->-get0(Lcom/android/internal/app/ToolbarActionBar;)Lcom/android/internal/widget/DecorToolbar;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/widget/DecorToolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-object v0

    :cond_0
    invoke-super {p0, p1}, Landroid/view/WindowCallbackWrapper;->onCreatePanelView(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 3

    invoke-super {p0, p1, p2, p3}, Landroid/view/WindowCallbackWrapper;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/internal/app/ToolbarActionBar$ToolbarCallbackWrapper;->this$0:Lcom/android/internal/app/ToolbarActionBar;

    invoke-static {v1}, Lcom/android/internal/app/ToolbarActionBar;->-get1(Lcom/android/internal/app/ToolbarActionBar;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/app/ToolbarActionBar$ToolbarCallbackWrapper;->this$0:Lcom/android/internal/app/ToolbarActionBar;

    invoke-static {v1}, Lcom/android/internal/app/ToolbarActionBar;->-get0(Lcom/android/internal/app/ToolbarActionBar;)Lcom/android/internal/widget/DecorToolbar;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/widget/DecorToolbar;->setMenuPrepared()V

    iget-object v1, p0, Lcom/android/internal/app/ToolbarActionBar$ToolbarCallbackWrapper;->this$0:Lcom/android/internal/app/ToolbarActionBar;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/internal/app/ToolbarActionBar;->-set0(Lcom/android/internal/app/ToolbarActionBar;Z)Z

    :cond_0
    return v0
.end method
