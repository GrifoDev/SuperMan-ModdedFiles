.class Lcom/android/systemui/globalactions/GlobalActionsDialog$13;
.super Landroid/database/ContentObserver;
.source "GlobalActionsDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/globalactions/GlobalActionsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;


# direct methods
.method constructor <init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$13;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$13;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {v0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->-get8(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$13;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {v0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->-get11(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "isBikeMode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$13;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {v0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->-get8(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;->On:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;

    invoke-virtual {v0, v1}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;->updateState(Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$13;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {v0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->-get5(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$13;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {v0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->-get5(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;->notifyDataSetChanged()V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$13;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {v0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->-get9(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$13;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {v0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->-get9(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$13;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {v0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->-get9(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$13;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {v0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->-get8(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;->Off:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;

    invoke-virtual {v0, v1}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;->updateState(Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;)V

    goto :goto_0
.end method
