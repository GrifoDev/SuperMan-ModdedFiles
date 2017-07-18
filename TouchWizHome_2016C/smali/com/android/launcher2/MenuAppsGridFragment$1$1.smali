.class Lcom/android/launcher2/MenuAppsGridFragment$1$1;
.super Ljava/lang/Object;
.source "MenuAppsGridFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/MenuAppsGridFragment$1;->onPreDraw()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher2/MenuAppsGridFragment$1;


# direct methods
.method constructor <init>(Lcom/android/launcher2/MenuAppsGridFragment$1;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/MenuAppsGridFragment$1$1;->this$1:Lcom/android/launcher2/MenuAppsGridFragment$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGridFragment$1$1;->this$1:Lcom/android/launcher2/MenuAppsGridFragment$1;

    iget-object v0, v0, Lcom/android/launcher2/MenuAppsGridFragment$1;->this$0:Lcom/android/launcher2/MenuAppsGridFragment;

    invoke-static {v0}, Lcom/android/launcher2/MenuAppsGridFragment;->access$000(Lcom/android/launcher2/MenuAppsGridFragment;)Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGridFragment$1$1;->this$1:Lcom/android/launcher2/MenuAppsGridFragment$1;

    iget-object v0, v0, Lcom/android/launcher2/MenuAppsGridFragment$1;->this$0:Lcom/android/launcher2/MenuAppsGridFragment;

    invoke-static {v0}, Lcom/android/launcher2/MenuAppsGridFragment;->access$000(Lcom/android/launcher2/MenuAppsGridFragment;)Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGridFragment$1$1;->this$1:Lcom/android/launcher2/MenuAppsGridFragment$1;

    iget-object v1, v1, Lcom/android/launcher2/MenuAppsGridFragment$1;->this$0:Lcom/android/launcher2/MenuAppsGridFragment;

    invoke-static {v1}, Lcom/android/launcher2/MenuAppsGridFragment;->access$300(Lcom/android/launcher2/MenuAppsGridFragment;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/MenuAppsGrid;->restoreOpenFolderState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGridFragment$1$1;->this$1:Lcom/android/launcher2/MenuAppsGridFragment$1;

    iget-object v0, v0, Lcom/android/launcher2/MenuAppsGridFragment$1;->this$0:Lcom/android/launcher2/MenuAppsGridFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/launcher2/MenuAppsGridFragment;->access$302(Lcom/android/launcher2/MenuAppsGridFragment;Landroid/os/Bundle;)Landroid/os/Bundle;

    :cond_0
    return-void
.end method
