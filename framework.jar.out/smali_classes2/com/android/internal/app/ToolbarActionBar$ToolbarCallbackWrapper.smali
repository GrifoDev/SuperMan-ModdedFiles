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
    .param p1, "this$0"    # Lcom/android/internal/app/ToolbarActionBar;
    .param p2, "wrapped"    # Landroid/view/Window$Callback;

    .prologue
    .line 519
    iput-object p1, p0, Lcom/android/internal/app/ToolbarActionBar$ToolbarCallbackWrapper;->this$0:Lcom/android/internal/app/ToolbarActionBar;

    .line 520
    invoke-direct {p0, p2}, Landroid/view/WindowCallbackWrapper;-><init>(Landroid/view/Window$Callback;)V

    .line 519
    return-void
.end method


# virtual methods
.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 3
    .param p1, "featureId"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "menu"    # Landroid/view/Menu;

    .prologue
    .line 525
    invoke-super {p0, p1, p2, p3}, Landroid/view/WindowCallbackWrapper;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    .line 526
    .local v0, "result":Z
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/internal/app/ToolbarActionBar$ToolbarCallbackWrapper;->this$0:Lcom/android/internal/app/ToolbarActionBar;

    invoke-static {v1}, Lcom/android/internal/app/ToolbarActionBar;->-get1(Lcom/android/internal/app/ToolbarActionBar;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 530
    :cond_0
    :goto_0
    return v0

    .line 527
    :cond_1
    iget-object v1, p0, Lcom/android/internal/app/ToolbarActionBar$ToolbarCallbackWrapper;->this$0:Lcom/android/internal/app/ToolbarActionBar;

    invoke-static {v1}, Lcom/android/internal/app/ToolbarActionBar;->-get0(Lcom/android/internal/app/ToolbarActionBar;)Lcom/android/internal/widget/DecorToolbar;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/widget/DecorToolbar;->setMenuPrepared()V

    .line 528
    iget-object v1, p0, Lcom/android/internal/app/ToolbarActionBar$ToolbarCallbackWrapper;->this$0:Lcom/android/internal/app/ToolbarActionBar;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/internal/app/ToolbarActionBar;->-set0(Lcom/android/internal/app/ToolbarActionBar;Z)Z

    goto :goto_0
.end method
