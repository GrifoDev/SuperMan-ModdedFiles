.class Lcom/android/systemui/globalactions/GlobalActionsDialog$18;
.super Ljava/lang/Object;
.source "GlobalActionsDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/globalactions/GlobalActionsDialog;->makeActionsItemView(Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;IZ)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

.field final synthetic val$action:Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;

.field final synthetic val$isPort:Z

.field final synthetic val$newItemView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;Landroid/view/View;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$18;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    iput-object p2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$18;->val$action:Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;

    iput-object p3, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$18;->val$newItemView:Landroid/view/View;

    iput-boolean p4, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$18;->val$isPort:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    const v1, 0x1020006

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$18;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {v1}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->-wrap13(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$18;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {v1}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->-get27(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$18;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {v1}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->-get26(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$18;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->-set6(Lcom/android/systemui/globalactions/GlobalActionsDialog;Z)Z

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$18;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {v1}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->-get45(Lcom/android/systemui/globalactions/GlobalActionsDialog;)I

    move-result v1

    if-ne v0, v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$18;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {v1}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->-get26(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$18;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    iget-object v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$18;->val$action:Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;

    iget-object v3, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$18;->val$newItemView:Landroid/view/View;

    iget-boolean v4, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$18;->val$isPort:Z

    invoke-static {v1, v2, v3, v4}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->-wrap19(Lcom/android/systemui/globalactions/GlobalActionsDialog;Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;Landroid/view/View;Z)V

    return-void

    :cond_2
    invoke-static {}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->-get76()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p1}, Landroid/view/View;->isInTouchMode()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->semIsInMouseStylusMode()Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$18;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {v1}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->-get27(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$18;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {v1}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->-get26(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$18;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {v1}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->-get45(Lcom/android/systemui/globalactions/GlobalActionsDialog;)I

    move-result v1

    if-ne v0, v1, :cond_5

    return-void

    :cond_5
    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$18;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    iget-object v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$18;->val$action:Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;

    iget-object v3, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$18;->val$newItemView:Landroid/view/View;

    iget-boolean v4, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$18;->val$isPort:Z

    invoke-static {v1, v2, v3, v4}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->-wrap19(Lcom/android/systemui/globalactions/GlobalActionsDialog;Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;Landroid/view/View;Z)V

    return-void
.end method
