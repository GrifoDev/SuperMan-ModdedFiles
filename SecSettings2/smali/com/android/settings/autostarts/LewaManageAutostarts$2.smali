.class Lcom/android/settings/autostarts/LewaManageAutostarts$2;
.super Ljava/lang/Object;
.source "LewaManageAutostarts.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    iput-object p1, p0, Lcom/android/settings/autostarts/LewaManageAutostarts$2;->this$0:Lcom/android/settings/autostarts/LewaManageAutostarts;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/autostarts/LewaManageAutostarts$2;->this$0:Lcom/android/settings/autostarts/LewaManageAutostarts;

    # getter for: Lcom/android/settings/autostarts/LewaManageAutostarts;->appsList:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/android/settings/autostarts/LewaManageAutostarts;->access$300(Lcom/android/settings/autostarts/LewaManageAutostarts;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/autostarts/LewaManageAutostarts$2;->this$0:Lcom/android/settings/autostarts/LewaManageAutostarts;

    # getter for: Lcom/android/settings/autostarts/LewaManageAutostarts;->appItems:Lcom/android/settings/autostarts/LewaManageAutostarts$AppAdapter;
    invoke-static {v1}, Lcom/android/settings/autostarts/LewaManageAutostarts;->access$100(Lcom/android/settings/autostarts/LewaManageAutostarts;)Lcom/android/settings/autostarts/LewaManageAutostarts$AppAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method
