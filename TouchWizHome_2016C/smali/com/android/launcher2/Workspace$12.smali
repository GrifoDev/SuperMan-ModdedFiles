.class Lcom/android/launcher2/Workspace$12;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Workspace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/Workspace;->removeItems(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/Workspace;

.field final synthetic val$item:Lcom/android/launcher2/HomeItem;

.field final synthetic val$layout:Lcom/android/launcher2/CellLayout;


# direct methods
.method constructor <init>(Lcom/android/launcher2/Workspace;Lcom/android/launcher2/CellLayout;Lcom/android/launcher2/HomeItem;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/Workspace$12;->this$0:Lcom/android/launcher2/Workspace;

    iput-object p2, p0, Lcom/android/launcher2/Workspace$12;->val$layout:Lcom/android/launcher2/CellLayout;

    iput-object p3, p0, Lcom/android/launcher2/Workspace$12;->val$item:Lcom/android/launcher2/HomeItem;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/launcher2/Workspace$12;->val$layout:Lcom/android/launcher2/CellLayout;

    iget-object v1, p0, Lcom/android/launcher2/Workspace$12;->val$item:Lcom/android/launcher2/HomeItem;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayout;->removeItem(Lcom/android/launcher2/BaseItem;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getHomeScreenIndex()I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher2/Workspace$12;->val$layout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v1}, Lcom/android/launcher2/CellLayout;->getScreen()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/Workspace$12;->this$0:Lcom/android/launcher2/Workspace;

    invoke-static {v0}, Lcom/android/launcher2/Workspace;->access$600(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/HomeView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/Workspace$12;->this$0:Lcom/android/launcher2/Workspace;

    invoke-static {v0}, Lcom/android/launcher2/Workspace;->access$600(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/HomeView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/launcher2/HomeView;->setMainHomeScreenshot(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/Workspace$12;->val$layout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getScreen()I

    move-result v0

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/Workspace$12;->this$0:Lcom/android/launcher2/Workspace;

    invoke-static {v0}, Lcom/android/launcher2/Workspace;->access$600(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/HomeView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/Workspace$12;->this$0:Lcom/android/launcher2/Workspace;

    invoke-static {v0}, Lcom/android/launcher2/Workspace;->access$600(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/HomeView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/HomeView;->setTakescreenshot(Z)V

    :cond_1
    return-void
.end method
