.class Lcom/android/launcher2/Workspace$8;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/Workspace;->onDragEndedWithItem(Lcom/android/launcher2/BaseItem;)V
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

    iput-object p1, p0, Lcom/android/launcher2/Workspace$8;->this$0:Lcom/android/launcher2/Workspace;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/android/launcher2/Workspace$8;->this$0:Lcom/android/launcher2/Workspace;

    invoke-static {v0}, Lcom/android/launcher2/Workspace;->access$1500(Lcom/android/launcher2/Workspace;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/Workspace$8;->this$0:Lcom/android/launcher2/Workspace;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/launcher2/Workspace;->access$1502(Lcom/android/launcher2/Workspace;Z)Z

    iget-object v0, p0, Lcom/android/launcher2/Workspace$8;->this$0:Lcom/android/launcher2/Workspace;

    new-instance v1, Lcom/android/launcher2/Workspace$StateChangeRunnable;

    iget-object v2, p0, Lcom/android/launcher2/Workspace$8;->this$0:Lcom/android/launcher2/Workspace;

    sget-object v3, Lcom/android/launcher2/Workspace$State;->NORMAL:Lcom/android/launcher2/Workspace$State;

    invoke-direct {v1, v2, v3}, Lcom/android/launcher2/Workspace$StateChangeRunnable;-><init>(Lcom/android/launcher2/Workspace;Lcom/android/launcher2/Workspace$State;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
