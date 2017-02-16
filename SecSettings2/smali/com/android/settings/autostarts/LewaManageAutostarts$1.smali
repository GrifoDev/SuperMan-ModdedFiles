.class Lcom/android/settings/autostarts/LewaManageAutostarts$1;
.super Ljava/lang/Object;
.source "LewaManageAutostarts.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/autostarts/LewaManageAutostarts;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/autostarts/LewaManageAutostarts;


# direct methods
.method constructor <init>(Lcom/android/settings/autostarts/LewaManageAutostarts;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/autostarts/LewaManageAutostarts$1;->this$0:Lcom/android/settings/autostarts/LewaManageAutostarts;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/settings/autostarts/LewaManageAutostarts$1;->this$0:Lcom/android/settings/autostarts/LewaManageAutostarts;

    # getter for: Lcom/android/settings/autostarts/LewaManageAutostarts;->showOptimizeList:Z
    invoke-static {v1}, Lcom/android/settings/autostarts/LewaManageAutostarts;->access$000(Lcom/android/settings/autostarts/LewaManageAutostarts;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/autostarts/LewaManageAutostarts$1;->this$0:Lcom/android/settings/autostarts/LewaManageAutostarts;

    # getter for: Lcom/android/settings/autostarts/LewaManageAutostarts;->appItems:Lcom/android/settings/autostarts/LewaManageAutostarts$AppAdapter;
    invoke-static {v1}, Lcom/android/settings/autostarts/LewaManageAutostarts;->access$100(Lcom/android/settings/autostarts/LewaManageAutostarts;)Lcom/android/settings/autostarts/LewaManageAutostarts$AppAdapter;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/android/settings/autostarts/LewaManageAutostarts$AppAdapter;->getItem(I)Lcom/android/settings/autostarts/AppItem;

    move-result-object v0

    :goto_0
    iget-boolean v1, v0, Lcom/android/settings/autostarts/AppItem;->checked:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/autostarts/LewaManageAutostarts$1;->this$0:Lcom/android/settings/autostarts/LewaManageAutostarts;

    invoke-virtual {v1, v0}, Lcom/android/settings/autostarts/LewaManageAutostarts;->closeAutoStartApp(Lcom/android/settings/autostarts/AppItem;)V

    :goto_1
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/settings/autostarts/LewaManageAutostarts$1;->this$0:Lcom/android/settings/autostarts/LewaManageAutostarts;

    # getter for: Lcom/android/settings/autostarts/LewaManageAutostarts;->optimizableAppItems:Lcom/android/settings/autostarts/LewaManageAutostarts$AppAdapter;
    invoke-static {v1}, Lcom/android/settings/autostarts/LewaManageAutostarts;->access$200(Lcom/android/settings/autostarts/LewaManageAutostarts;)Lcom/android/settings/autostarts/LewaManageAutostarts$AppAdapter;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/android/settings/autostarts/LewaManageAutostarts$AppAdapter;->getItem(I)Lcom/android/settings/autostarts/AppItem;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/settings/autostarts/LewaManageAutostarts$1;->this$0:Lcom/android/settings/autostarts/LewaManageAutostarts;

    invoke-virtual {v1, v0}, Lcom/android/settings/autostarts/LewaManageAutostarts;->startAutoStartApp(Lcom/android/settings/autostarts/AppItem;)V

    goto :goto_1
.end method
