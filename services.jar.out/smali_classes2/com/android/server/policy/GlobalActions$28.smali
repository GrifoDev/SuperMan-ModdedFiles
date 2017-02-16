.class Lcom/android/server/policy/GlobalActions$28;
.super Ljava/lang/Object;
.source "GlobalActions.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/GlobalActions;->createDialog()Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/GlobalActions;


# direct methods
.method constructor <init>(Lcom/android/server/policy/GlobalActions;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/policy/GlobalActions$28;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$28;->this$0:Lcom/android/server/policy/GlobalActions;

    const-string/jumbo v1, "content://com.sec.knox.provider2/KnoxCustomManagerService1"

    const-string/jumbo v2, "getSealedState"

    iget-object v3, p0, Lcom/android/server/policy/GlobalActions$28;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v3}, Lcom/android/server/policy/GlobalActions;->-get56(Lcom/android/server/policy/GlobalActions;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/policy/GlobalActions;->-wrap12(Lcom/android/server/policy/GlobalActions;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

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

    invoke-static {}, Lcom/android/server/policy/GlobalActions;->-get51()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {v4}, Lcom/android/server/policy/GlobalActions;->-set14(Z)Z

    invoke-static {}, Lcom/android/server/policy/GlobalActions;->-get45()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$28;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v0}, Lcom/android/server/policy/GlobalActions;->-get43(Lcom/android/server/policy/GlobalActions;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions$28;->this$0:Lcom/android/server/policy/GlobalActions;

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions$28;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v2}, Lcom/android/server/policy/GlobalActions;->-get52(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$ToggleAction;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/policy/GlobalActions$28;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v3}, Lcom/android/server/policy/GlobalActions;->-get3(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$MyAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/policy/GlobalActions$MyAdapter;->getCount()I

    move-result v3

    invoke-static {v1, v2, v3, v4}, Lcom/android/server/policy/GlobalActions;->-wrap0(Lcom/android/server/policy/GlobalActions;Lcom/android/server/policy/GlobalActions$Action;IZ)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$28;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v0}, Lcom/android/server/policy/GlobalActions;->-get42(Lcom/android/server/policy/GlobalActions;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions$28;->this$0:Lcom/android/server/policy/GlobalActions;

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions$28;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v2}, Lcom/android/server/policy/GlobalActions;->-get52(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$ToggleAction;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/policy/GlobalActions$28;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v3}, Lcom/android/server/policy/GlobalActions;->-get3(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$MyAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/policy/GlobalActions$MyAdapter;->getCount()I

    move-result v3

    invoke-static {v1, v2, v3, v5}, Lcom/android/server/policy/GlobalActions;->-wrap0(Lcom/android/server/policy/GlobalActions;Lcom/android/server/policy/GlobalActions$Action;IZ)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$28;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v0}, Lcom/android/server/policy/GlobalActions;->-get38(Lcom/android/server/policy/GlobalActions;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {}, Lcom/android/server/policy/GlobalActions;->-get50()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions$28;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v2}, Lcom/android/server/policy/GlobalActions;->-get52(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$ToggleAction;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :goto_0
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$28;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v0}, Lcom/android/server/policy/GlobalActions;->-get25(Lcom/android/server/policy/GlobalActions;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return v4

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$28;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v0}, Lcom/android/server/policy/GlobalActions;->-get38(Lcom/android/server/policy/GlobalActions;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {}, Lcom/android/server/policy/GlobalActions;->-get50()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions$28;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v2}, Lcom/android/server/policy/GlobalActions;->-get52(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$ToggleAction;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    return v5
.end method
