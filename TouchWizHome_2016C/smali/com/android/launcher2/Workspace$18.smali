.class Lcom/android/launcher2/Workspace$18;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/Workspace;->closeFolder(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/Workspace;


# direct methods
.method constructor <init>(Lcom/android/launcher2/Workspace;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/Workspace$18;->this$0:Lcom/android/launcher2/Workspace;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/launcher2/Workspace$18;->this$0:Lcom/android/launcher2/Workspace;

    # getter for: Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;
    invoke-static {v0}, Lcom/android/launcher2/Workspace;->access$1800(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/Folder;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/Workspace$18;->this$0:Lcom/android/launcher2/Workspace;

    # getter for: Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;
    invoke-static {v0}, Lcom/android/launcher2/Workspace;->access$1800(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/Folder;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Lcom/android/launcher2/Folder;->close(ZZ)V

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/Workspace$18;->this$0:Lcom/android/launcher2/Workspace;

    const/4 v1, 0x0

    # setter for: Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;
    invoke-static {v0, v1}, Lcom/android/launcher2/Workspace;->access$1802(Lcom/android/launcher2/Workspace;Lcom/android/launcher2/Folder;)Lcom/android/launcher2/Folder;

    return-void
.end method
