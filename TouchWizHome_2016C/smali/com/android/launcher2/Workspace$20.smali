.class Lcom/android/launcher2/Workspace$20;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/Workspace;->changeOrientationIfRequired(Landroid/content/res/Configuration;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/Workspace;

.field final synthetic val$co:Lcom/android/launcher2/Workspace$CellOrient;


# direct methods
.method constructor <init>(Lcom/android/launcher2/Workspace;Lcom/android/launcher2/Workspace$CellOrient;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/Workspace$20;->this$0:Lcom/android/launcher2/Workspace;

    iput-object p2, p0, Lcom/android/launcher2/Workspace$20;->val$co:Lcom/android/launcher2/Workspace$CellOrient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/Workspace$20;->val$co:Lcom/android/launcher2/Workspace$CellOrient;

    iget-object v0, v0, Lcom/android/launcher2/Workspace$CellOrient;->aivView:Landroid/content/res/TypedArray;

    iget-object v1, p0, Lcom/android/launcher2/Workspace$20;->val$co:Lcom/android/launcher2/Workspace$CellOrient;

    iget-object v1, v1, Lcom/android/launcher2/Workspace$CellOrient;->aivTextView:Landroid/content/res/TypedArray;

    invoke-static {v0, v1}, Lcom/android/launcher2/AppIconView;->recycleViewStyles(Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;)V

    iget-object v0, p0, Lcom/android/launcher2/Workspace$20;->val$co:Lcom/android/launcher2/Workspace$CellOrient;

    iget-object v0, v0, Lcom/android/launcher2/Workspace$CellOrient;->fivView:Landroid/content/res/TypedArray;

    iget-object v1, p0, Lcom/android/launcher2/Workspace$20;->val$co:Lcom/android/launcher2/Workspace$CellOrient;

    iget-object v1, v1, Lcom/android/launcher2/Workspace$CellOrient;->fivTextView:Landroid/content/res/TypedArray;

    invoke-static {v0, v1}, Lcom/android/launcher2/AppIconView;->recycleViewStyles(Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;)V

    iget-object v0, p0, Lcom/android/launcher2/Workspace$20;->val$co:Lcom/android/launcher2/Workspace$CellOrient;

    iget-object v0, v0, Lcom/android/launcher2/Workspace$CellOrient;->mivView:Landroid/content/res/TypedArray;

    iget-object v1, p0, Lcom/android/launcher2/Workspace$20;->val$co:Lcom/android/launcher2/Workspace$CellOrient;

    iget-object v1, v1, Lcom/android/launcher2/Workspace$CellOrient;->mivTextView:Landroid/content/res/TypedArray;

    invoke-static {v0, v1}, Lcom/android/launcher2/AppIconView;->recycleViewStyles(Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;)V

    iget-object v0, p0, Lcom/android/launcher2/Workspace$20;->this$0:Lcom/android/launcher2/Workspace;

    # getter for: Lcom/android/launcher2/Workspace;->mWidgetsToBind:Ljava/util/List;
    invoke-static {v0}, Lcom/android/launcher2/Workspace;->access$2400(Lcom/android/launcher2/Workspace;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/Workspace$20;->this$0:Lcom/android/launcher2/Workspace;

    # getter for: Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;
    invoke-static {v0}, Lcom/android/launcher2/Workspace;->access$600(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/HomeView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/HomeView;->finishBindingItems()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/Workspace$20;->this$0:Lcom/android/launcher2/Workspace;

    sget-object v1, Lcom/android/launcher2/Workspace$BindWidgetsState;->BIND_NONCURRENT_PAGES:Lcom/android/launcher2/Workspace$BindWidgetsState;

    # setter for: Lcom/android/launcher2/Workspace;->mBindWidgetsState:Lcom/android/launcher2/Workspace$BindWidgetsState;
    invoke-static {v0, v1}, Lcom/android/launcher2/Workspace;->access$2502(Lcom/android/launcher2/Workspace;Lcom/android/launcher2/Workspace$BindWidgetsState;)Lcom/android/launcher2/Workspace$BindWidgetsState;

    goto :goto_0
.end method
