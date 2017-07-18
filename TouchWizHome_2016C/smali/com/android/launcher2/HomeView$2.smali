.class Lcom/android/launcher2/HomeView$2;
.super Ljava/lang/Object;
.source "HomeView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/HomeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/HomeView;


# direct methods
.method constructor <init>(Lcom/android/launcher2/HomeView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/HomeView$2;->this$0:Lcom/android/launcher2/HomeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    iget-object v1, p0, Lcom/android/launcher2/HomeView$2;->this$0:Lcom/android/launcher2/HomeView;

    invoke-static {v1}, Lcom/android/launcher2/HomeView;->access$000(Lcom/android/launcher2/HomeView;)Lcom/android/launcher2/Workspace;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher2/HomeView$2;->this$0:Lcom/android/launcher2/HomeView;

    invoke-static {v1}, Lcom/android/launcher2/HomeView;->access$000(Lcom/android/launcher2/HomeView;)Lcom/android/launcher2/Workspace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/launcher2/Folder;->isFolderOpenAnimationEnded()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportMoveApps()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/HomeView$2;->this$0:Lcom/android/launcher2/HomeView;

    invoke-static {v1}, Lcom/android/launcher2/HomeView;->access$000(Lcom/android/launcher2/HomeView;)Lcom/android/launcher2/Workspace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->getState()Lcom/android/launcher2/Workspace$State;

    move-result-object v1

    sget-object v2, Lcom/android/launcher2/Workspace$State;->MOVE_APPS:Lcom/android/launcher2/Workspace$State;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/HomeView$2;->this$0:Lcom/android/launcher2/HomeView;

    invoke-static {v1}, Lcom/android/launcher2/HomeView;->access$000(Lcom/android/launcher2/HomeView;)Lcom/android/launcher2/Workspace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->closeFolderIfNeeded()Z

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method
