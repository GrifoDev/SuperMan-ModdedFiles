.class Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings$3;
.super Ljava/lang/Object;
.source "LedCoverCallerIDSettings.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings$3;->this$0:Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings$3;->this$0:Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->-get8(Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "selected_id"

    iget-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings$3;->this$0:Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->-get6(Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;)Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings$CallerIdAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings$CallerIdAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/accessories/AccessoriesUtils$CallerIDInfo;

    iget v0, v0, Lcom/samsung/android/settings/accessories/AccessoriesUtils$CallerIDInfo;->mId:I

    invoke-virtual {v7, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "contact_count"

    iget-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings$3;->this$0:Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->-get6(Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;)Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings$CallerIdAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings$CallerIdAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/accessories/AccessoriesUtils$CallerIDInfo;

    iget v0, v0, Lcom/samsung/android/settings/accessories/AccessoriesUtils$CallerIDInfo;->mCallerIDCount:I

    invoke-virtual {v7, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings$3;->this$0:Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;

    invoke-virtual {v0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1, v7}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings$3;->this$0:Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;

    invoke-virtual {v0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings$3;->this$0:Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->-get8(Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "selected_id"

    iget-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings$3;->this$0:Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->-get6(Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;)Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings$CallerIdAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings$CallerIdAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/accessories/AccessoriesUtils$CallerIDInfo;

    iget v0, v0, Lcom/samsung/android/settings/accessories/AccessoriesUtils$CallerIDInfo;->mId:I

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "contact_count"

    iget-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings$3;->this$0:Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->-get6(Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;)Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings$CallerIdAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings$CallerIdAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/accessories/AccessoriesUtils$CallerIDInfo;

    iget v0, v0, Lcom/samsung/android/settings/accessories/AccessoriesUtils$CallerIDInfo;->mCallerIDCount:I

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings$3;->this$0:Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;

    invoke-virtual {v0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-class v1, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings$3;->this$0:Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->-get6(Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;)Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings$CallerIdAdapter;

    move-result-object v3

    invoke-virtual {v3, p3}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings$CallerIdAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settings/accessories/AccessoriesUtils$CallerIDInfo;

    iget-object v6, v3, Lcom/samsung/android/settings/accessories/AccessoriesUtils$CallerIDInfo;->mName:Ljava/lang/String;

    const/4 v3, 0x0

    move v5, v4

    invoke-static/range {v0 .. v6}, Lcom/android/settings/Utils;->startWithFragment(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;IILjava/lang/CharSequence;)V

    goto :goto_0
.end method
