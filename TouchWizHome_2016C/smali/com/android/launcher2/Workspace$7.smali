.class Lcom/android/launcher2/Workspace$7;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/Workspace;->onDragStartedWithItem(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/Workspace;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/launcher2/Workspace;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/Workspace$7;->this$0:Lcom/android/launcher2/Workspace;

    iput-object p2, p0, Lcom/android/launcher2/Workspace$7;->val$v:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v5, 0x1

    iget-object v2, p0, Lcom/android/launcher2/Workspace$7;->this$0:Lcom/android/launcher2/Workspace;

    invoke-static {v2}, Lcom/android/launcher2/Workspace;->access$1400(Lcom/android/launcher2/Workspace;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/Workspace$7;->this$0:Lcom/android/launcher2/Workspace;

    invoke-static {v2}, Lcom/android/launcher2/Workspace;->access$300(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/Workspace$State;

    move-result-object v2

    sget-object v3, Lcom/android/launcher2/Workspace$State;->NORMAL:Lcom/android/launcher2/Workspace$State;

    if-eq v2, v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/launcher2/Workspace$7;->val$v:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lcom/android/launcher2/BaseItem;

    if-eqz v2, :cond_2

    invoke-static {v5}, Lcom/android/launcher2/Launcher;->setHomeEditMode(Z)V

    move-object v0, v1

    check-cast v0, Lcom/android/launcher2/BaseItem;

    iget-object v2, p0, Lcom/android/launcher2/Workspace$7;->this$0:Lcom/android/launcher2/Workspace;

    sget-object v3, Lcom/android/launcher2/Workspace$State;->EDIT:Lcom/android/launcher2/Workspace$State;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v5, v4, v0}, Lcom/android/launcher2/Workspace;->changeState(Lcom/android/launcher2/Workspace$State;ZILcom/android/launcher2/BaseItem;)V

    :goto_1
    iget-object v2, p0, Lcom/android/launcher2/Workspace$7;->this$0:Lcom/android/launcher2/Workspace;

    sget-object v3, Lcom/android/launcher2/PagedView$LayerOptions;->FORCE_HARDWARE:Lcom/android/launcher2/PagedView$LayerOptions;

    invoke-virtual {v2, v3}, Lcom/android/launcher2/Workspace;->updateChildrenLayersEnabled(Lcom/android/launcher2/PagedView$LayerOptions;)V

    goto :goto_0

    :cond_2
    invoke-static {v5}, Lcom/android/launcher2/Launcher;->setHomeEditMode(Z)V

    iget-object v2, p0, Lcom/android/launcher2/Workspace$7;->this$0:Lcom/android/launcher2/Workspace;

    sget-object v3, Lcom/android/launcher2/Workspace$State;->EDIT:Lcom/android/launcher2/Workspace$State;

    invoke-static {v2, v3}, Lcom/android/launcher2/Workspace;->access$1300(Lcom/android/launcher2/Workspace;Lcom/android/launcher2/Workspace$State;)V

    goto :goto_1
.end method
