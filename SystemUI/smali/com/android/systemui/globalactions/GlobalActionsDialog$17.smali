.class Lcom/android/systemui/globalactions/GlobalActionsDialog$17;
.super Ljava/lang/Object;
.source "GlobalActionsDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/globalactions/GlobalActionsDialog;->createDialog()Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;


# direct methods
.method constructor <init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$17;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$17;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    const-string/jumbo v1, "content://com.sec.knox.provider2/KnoxCustomManagerService1"

    const-string/jumbo v2, "getSealedState"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->-wrap18(Lcom/android/systemui/globalactions/GlobalActionsDialog;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x18

    if-ne p2, v0, :cond_1

    invoke-static {}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->-get49()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->-get63()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v4}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->-set14(Z)Z

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$17;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {v0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->-get22(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return v5

    :cond_0
    invoke-static {v5}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->-set14(Z)Z

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$17;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {v0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->-get41(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$17;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    iget-object v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$17;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {v2}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->-get46(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$17;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {v3}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->-get5(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;->getCount()I

    move-result v3

    invoke-static {v1, v2, v3, v5}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->-wrap1(Lcom/android/systemui/globalactions/GlobalActionsDialog;Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;IZ)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$17;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {v0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->-get40(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$17;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    iget-object v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$17;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {v2}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->-get46(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$17;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {v3}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->-get5(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;->getCount()I

    move-result v3

    invoke-static {v1, v2, v3, v4}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->-wrap1(Lcom/android/systemui/globalactions/GlobalActionsDialog;Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;IZ)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$17;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {v0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->-get37(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->-get48()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$17;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {v2}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->-get46(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    return v4
.end method
