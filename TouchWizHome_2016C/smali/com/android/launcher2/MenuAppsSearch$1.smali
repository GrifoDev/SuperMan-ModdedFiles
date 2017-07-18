.class Lcom/android/launcher2/MenuAppsSearch$1;
.super Ljava/lang/Object;
.source "MenuAppsSearch.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/MenuAppsSearch;-><init>(Lcom/android/launcher2/MenuView;Lcom/android/launcher2/MenuAppsGrid;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/MenuAppsSearch;


# direct methods
.method constructor <init>(Lcom/android/launcher2/MenuAppsSearch;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/MenuAppsSearch$1;->this$0:Lcom/android/launcher2/MenuAppsSearch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 10

    const v9, 0x7f0a0177

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportGalaxyAppsSearch()Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/launcher2/MenuAppsSearch$1;->this$0:Lcom/android/launcher2/MenuAppsSearch;

    invoke-static {v6}, Lcom/android/launcher2/MenuAppsSearch;->access$000(Lcom/android/launcher2/MenuAppsSearch;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/launcher2/MenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f09002a

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/launcher2/MenuAppsSearch$1;->this$0:Lcom/android/launcher2/MenuAppsSearch;

    invoke-static {v6}, Lcom/android/launcher2/MenuAppsSearch;->access$100(Lcom/android/launcher2/MenuAppsSearch;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0310

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget-object v6, p0, Lcom/android/launcher2/MenuAppsSearch$1;->this$0:Lcom/android/launcher2/MenuAppsSearch;

    invoke-static {v6}, Lcom/android/launcher2/MenuAppsSearch;->access$100(Lcom/android/launcher2/MenuAppsSearch;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iget-object v6, p0, Lcom/android/launcher2/MenuAppsSearch$1;->this$0:Lcom/android/launcher2/MenuAppsSearch;

    invoke-static {v6}, Lcom/android/launcher2/MenuAppsSearch;->access$000(Lcom/android/launcher2/MenuAppsSearch;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v6, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    sub-int v7, v3, v5

    if-eq v6, v7, :cond_0

    sub-int v6, v3, v5

    iput v6, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v6, p0, Lcom/android/launcher2/MenuAppsSearch$1;->this$0:Lcom/android/launcher2/MenuAppsSearch;

    invoke-static {v6}, Lcom/android/launcher2/MenuAppsSearch;->access$000(Lcom/android/launcher2/MenuAppsSearch;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v6, p0, Lcom/android/launcher2/MenuAppsSearch$1;->this$0:Lcom/android/launcher2/MenuAppsSearch;

    invoke-static {v6}, Lcom/android/launcher2/MenuAppsSearch;->access$200(Lcom/android/launcher2/MenuAppsSearch;)Landroid/widget/GridView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/GridView;->getVisibility()I

    move-result v6

    if-eqz v6, :cond_0

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iget-object v6, p0, Lcom/android/launcher2/MenuAppsSearch$1;->this$0:Lcom/android/launcher2/MenuAppsSearch;

    invoke-static {v6}, Lcom/android/launcher2/MenuAppsSearch;->access$000(Lcom/android/launcher2/MenuAppsSearch;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->getRootView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v3

    iget-object v6, p0, Lcom/android/launcher2/MenuAppsSearch$1;->this$0:Lcom/android/launcher2/MenuAppsSearch;

    invoke-static {v6}, Lcom/android/launcher2/MenuAppsSearch;->access$100(Lcom/android/launcher2/MenuAppsSearch;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a02bb

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iget-object v6, p0, Lcom/android/launcher2/MenuAppsSearch$1;->this$0:Lcom/android/launcher2/MenuAppsSearch;

    invoke-static {v6}, Lcom/android/launcher2/MenuAppsSearch;->access$100(Lcom/android/launcher2/MenuAppsSearch;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    sub-int/2addr v3, v5

    iget-object v6, p0, Lcom/android/launcher2/MenuAppsSearch$1;->this$0:Lcom/android/launcher2/MenuAppsSearch;

    invoke-static {v6}, Lcom/android/launcher2/MenuAppsSearch;->access$000(Lcom/android/launcher2/MenuAppsSearch;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    iget v6, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v5

    iput v6, v2, Landroid/graphics/Rect;->bottom:I

    iget v6, v2, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v3, v6

    iget-object v6, p0, Lcom/android/launcher2/MenuAppsSearch$1;->this$0:Lcom/android/launcher2/MenuAppsSearch;

    invoke-static {v6}, Lcom/android/launcher2/MenuAppsSearch;->access$000(Lcom/android/launcher2/MenuAppsSearch;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v6, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    sub-int v7, v3, v0

    if-eq v6, v7, :cond_0

    iget v6, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    sub-int v7, v3, v0

    sub-int/2addr v7, v4

    if-eq v6, v7, :cond_0

    sub-int v6, v3, v0

    sub-int/2addr v6, v4

    iput v6, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v6, p0, Lcom/android/launcher2/MenuAppsSearch$1;->this$0:Lcom/android/launcher2/MenuAppsSearch;

    invoke-static {v6}, Lcom/android/launcher2/MenuAppsSearch;->access$000(Lcom/android/launcher2/MenuAppsSearch;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method
