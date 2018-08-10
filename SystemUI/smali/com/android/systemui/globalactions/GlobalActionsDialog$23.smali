.class Lcom/android/systemui/globalactions/GlobalActionsDialog$23;
.super Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;
.source "GlobalActionsDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/globalactions/GlobalActionsDialog;->makeActionsItems()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;


# direct methods
.method constructor <init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;IIIII)V
    .locals 6

    iput-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$23;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;-><init>(IIIII)V

    return-void
.end method


# virtual methods
.method protected changeStateFromPress(Z)V
    .locals 3

    if-eqz p1, :cond_0

    sget-object v0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;->On:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;

    :goto_0
    iput-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$23;->mState:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;

    const-string/jumbo v0, "GlobalActionsDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "changeStateFromPress : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$23;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$23;->mState:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;

    invoke-static {v0, v1}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->-set15(Lcom/android/systemui/globalactions/GlobalActionsDialog;Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;)Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;

    return-void

    :cond_0
    sget-object v0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;->Off:Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction$State;

    goto :goto_0
.end method

.method public isEnabled()Z
    .locals 1

    invoke-super {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public onPress()V
    .locals 3

    const-string/jumbo v0, "GlobalActionsDialog"

    const-string/jumbo v1, "in onPress of mSubScreenAction"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$23;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    const-string/jumbo v1, "0002"

    const-string/jumbo v2, "SubScreen"

    invoke-static {v0, v1, v2}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->-wrap31(Lcom/android/systemui/globalactions/GlobalActionsDialog;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method onToggle(Z)V
    .locals 3

    const-string/jumbo v0, "GlobalActionsDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "in onToggle of SubScreen on = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public showBeforeProvisioning()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public showConditional()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public showDuringKeyguard()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
