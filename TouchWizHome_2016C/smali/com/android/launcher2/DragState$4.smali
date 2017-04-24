.class Lcom/android/launcher2/DragState$4;
.super Ljava/lang/Object;
.source "DragState.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/DragState;->createHomeFolderFromDragItem(Lcom/android/launcher2/BaseItem;ZZ)Lcom/android/launcher2/FolderIconView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/DragState;

.field final synthetic val$dumpFolderIconView:Lcom/android/launcher2/FolderIconView;

.field final synthetic val$hm:Lcom/android/launcher2/HomeFolderItem;


# direct methods
.method constructor <init>(Lcom/android/launcher2/DragState;Lcom/android/launcher2/HomeFolderItem;Lcom/android/launcher2/FolderIconView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/DragState$4;->this$0:Lcom/android/launcher2/DragState;

    iput-object p2, p0, Lcom/android/launcher2/DragState$4;->val$hm:Lcom/android/launcher2/HomeFolderItem;

    iput-object p3, p0, Lcom/android/launcher2/DragState$4;->val$dumpFolderIconView:Lcom/android/launcher2/FolderIconView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const/4 v6, 0x1

    iget-object v3, p0, Lcom/android/launcher2/DragState$4;->val$hm:Lcom/android/launcher2/HomeFolderItem;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/launcher2/DragState$4;->this$0:Lcom/android/launcher2/DragState;

    # getter for: Lcom/android/launcher2/DragState;->ctx:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/launcher2/DragState;->access$000(Lcom/android/launcher2/DragState;)Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/Launcher;

    iget-object v3, v3, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v3}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/launcher2/DragState$4;->this$0:Lcom/android/launcher2/DragState;

    # getter for: Lcom/android/launcher2/DragState;->ctx:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/launcher2/DragState;->access$000(Lcom/android/launcher2/DragState;)Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->getAnimationLayer()Lcom/android/launcher2/AnimationLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/AnimationLayer;->cancelAnimations()V

    iget-object v3, p0, Lcom/android/launcher2/DragState$4;->this$0:Lcom/android/launcher2/DragState;

    # getter for: Lcom/android/launcher2/DragState;->ctx:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/launcher2/DragState;->access$000(Lcom/android/launcher2/DragState;)Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/Launcher;

    iget-object v3, v3, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v3}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher2/DragState$4;->val$hm:Lcom/android/launcher2/HomeFolderItem;

    iget-object v5, p0, Lcom/android/launcher2/DragState$4;->val$dumpFolderIconView:Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/launcher2/Workspace;->openFolder(Lcom/android/launcher2/FolderItem;Lcom/android/launcher2/FolderIconView;Z)V

    iget-object v3, p0, Lcom/android/launcher2/DragState$4;->this$0:Lcom/android/launcher2/DragState;

    # getter for: Lcom/android/launcher2/DragState;->ctx:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/launcher2/DragState;->access$000(Lcom/android/launcher2/DragState;)Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f0800d1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f0800da

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v7, 0x2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/sec/dtl/launcher/Talk;->INSTANCE:Lcom/sec/dtl/launcher/Talk;

    invoke-virtual {v3, v2}, Lcom/sec/dtl/launcher/Talk;->say(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v3, "DragState"

    const-string v4, "createHomeFolderFromDragItem : Unable to open the folder"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
