.class Lcom/samsung/android/settings/GigaMultiPath$5;
.super Ljava/lang/Object;
.source "GigaMultiPath.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/GigaMultiPath;->onSwitchChanged(Landroid/widget/Switch;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/GigaMultiPath;

.field final synthetic val$isChecked:Z


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/GigaMultiPath;Z)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/GigaMultiPath$5;->this$0:Lcom/samsung/android/settings/GigaMultiPath;

    iput-boolean p2, p0, Lcom/samsung/android/settings/GigaMultiPath$5;->val$isChecked:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/settings/GigaMultiPath$5;->this$0:Lcom/samsung/android/settings/GigaMultiPath;

    invoke-static {v0}, Lcom/samsung/android/settings/GigaMultiPath;->-get7(Lcom/samsung/android/settings/GigaMultiPath;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/GigaMultiPath$5;->this$0:Lcom/samsung/android/settings/GigaMultiPath;

    invoke-virtual {v0}, Lcom/samsung/android/settings/GigaMultiPath;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isWifiEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/GigaMultiPath$5;->this$0:Lcom/samsung/android/settings/GigaMultiPath;

    invoke-static {v0}, Lcom/samsung/android/settings/GigaMultiPath;->-get5(Lcom/samsung/android/settings/GigaMultiPath;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/GigaMultiPath$5;->this$0:Lcom/samsung/android/settings/GigaMultiPath;

    invoke-virtual {v0}, Lcom/samsung/android/settings/GigaMultiPath;->showProgressDialog()V

    iget-object v0, p0, Lcom/samsung/android/settings/GigaMultiPath$5;->this$0:Lcom/samsung/android/settings/GigaMultiPath;

    iget-boolean v1, p0, Lcom/samsung/android/settings/GigaMultiPath$5;->val$isChecked:Z

    invoke-static {v0, v1}, Lcom/samsung/android/settings/GigaMultiPath;->-wrap4(Lcom/samsung/android/settings/GigaMultiPath;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/GigaMultiPath$5;->this$0:Lcom/samsung/android/settings/GigaMultiPath;

    invoke-static {v0, v2}, Lcom/samsung/android/settings/GigaMultiPath;->-set2(Lcom/samsung/android/settings/GigaMultiPath;Z)Z

    iget-object v0, p0, Lcom/samsung/android/settings/GigaMultiPath$5;->this$0:Lcom/samsung/android/settings/GigaMultiPath;

    invoke-static {v0}, Lcom/samsung/android/settings/GigaMultiPath;->-get7(Lcom/samsung/android/settings/GigaMultiPath;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    iget-object v0, p0, Lcom/samsung/android/settings/GigaMultiPath$5;->this$0:Lcom/samsung/android/settings/GigaMultiPath;

    invoke-static {v0}, Lcom/samsung/android/settings/GigaMultiPath;->-get5(Lcom/samsung/android/settings/GigaMultiPath;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/GigaMultiPath$5;->this$0:Lcom/samsung/android/settings/GigaMultiPath;

    invoke-virtual {v0}, Lcom/samsung/android/settings/GigaMultiPath;->showProgressDialog()V

    goto :goto_0
.end method
