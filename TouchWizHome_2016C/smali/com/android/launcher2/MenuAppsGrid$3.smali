.class Lcom/android/launcher2/MenuAppsGrid$3;
.super Ljava/lang/Object;
.source "MenuAppsGrid.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/MenuAppsGrid;->closeFolderWithDelay(ZZI)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/MenuAppsGrid;

.field final synthetic val$animate:Z

.field final synthetic val$commitEdit:Z


# direct methods
.method constructor <init>(Lcom/android/launcher2/MenuAppsGrid;ZZ)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/MenuAppsGrid$3;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    iput-boolean p2, p0, Lcom/android/launcher2/MenuAppsGrid$3;->val$commitEdit:Z

    iput-boolean p3, p0, Lcom/android/launcher2/MenuAppsGrid$3;->val$animate:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$3;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-static {v0}, Lcom/android/launcher2/MenuAppsGrid;->access$100(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/Folder;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$3;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-static {v0}, Lcom/android/launcher2/MenuAppsGrid;->access$100(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/Folder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/launcher2/MenuAppsGrid$3;->val$commitEdit:Z

    iget-boolean v2, p0, Lcom/android/launcher2/MenuAppsGrid$3;->val$animate:Z

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/Folder;->close(ZZ)V

    :cond_0
    return-void
.end method
