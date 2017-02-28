.class Lcom/android/launcher2/LauncherModel$28;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/LauncherModel;->findNearVacantCell(Landroid/content/Context;ZZZIII)[I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/LauncherModel;

.field final synthetic val$launcher:Lcom/android/launcher2/Launcher;

.field final synthetic val$screenCount:I


# direct methods
.method constructor <init>(Lcom/android/launcher2/LauncherModel;Lcom/android/launcher2/Launcher;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/LauncherModel$28;->this$0:Lcom/android/launcher2/LauncherModel;

    iput-object p2, p0, Lcom/android/launcher2/LauncherModel$28;->val$launcher:Lcom/android/launcher2/Launcher;

    iput p3, p0, Lcom/android/launcher2/LauncherModel$28;->val$screenCount:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher2/LauncherModel$28;->val$launcher:Lcom/android/launcher2/Launcher;

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher2/LauncherModel$28;->val$screenCount:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/Workspace;->insertWorkspaceScreen(IZ)Lcom/android/launcher2/CellLayout;

    iget-object v0, p0, Lcom/android/launcher2/LauncherModel$28;->val$launcher:Lcom/android/launcher2/Launcher;

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeView;->isQuickViewWorkspaceOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/LauncherModel$28;->val$launcher:Lcom/android/launcher2/Launcher;

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeView;->getQuickViewWorkspace()Lcom/android/launcher2/QuickViewWorkspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/QuickViewWorkspace;->updateAddScreen()V

    :cond_0
    return-void
.end method
