.class Lcom/samsung/android/settings/GigaMultiPath$3;
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


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/GigaMultiPath;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/GigaMultiPath$3;->this$0:Lcom/samsung/android/settings/GigaMultiPath;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/samsung/android/settings/GigaMultiPath$3;->this$0:Lcom/samsung/android/settings/GigaMultiPath;

    invoke-static {v0}, Lcom/samsung/android/settings/GigaMultiPath;->-get3(Lcom/samsung/android/settings/GigaMultiPath;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "smart_bonding"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/samsung/android/settings/GigaMultiPath$3;->this$0:Lcom/samsung/android/settings/GigaMultiPath;

    invoke-virtual {v0}, Lcom/samsung/android/settings/GigaMultiPath;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isWifiEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/GigaMultiPath$3;->this$0:Lcom/samsung/android/settings/GigaMultiPath;

    invoke-virtual {v0}, Lcom/samsung/android/settings/GigaMultiPath;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isMobileNetworkEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/GigaMultiPath$3;->this$0:Lcom/samsung/android/settings/GigaMultiPath;

    invoke-static {v0}, Lcom/samsung/android/settings/GigaMultiPath;->-get7(Lcom/samsung/android/settings/GigaMultiPath;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/GigaMultiPath$3;->this$0:Lcom/samsung/android/settings/GigaMultiPath;

    iget-object v1, p0, Lcom/samsung/android/settings/GigaMultiPath$3;->this$0:Lcom/samsung/android/settings/GigaMultiPath;

    invoke-static {v1}, Lcom/samsung/android/settings/GigaMultiPath;->-get7(Lcom/samsung/android/settings/GigaMultiPath;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/GigaMultiPath;->-wrap3(Lcom/samsung/android/settings/GigaMultiPath;Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/GigaMultiPath$3;->this$0:Lcom/samsung/android/settings/GigaMultiPath;

    invoke-virtual {v0}, Lcom/samsung/android/settings/GigaMultiPath;->showProgressDialog()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/GigaMultiPath$3;->this$0:Lcom/samsung/android/settings/GigaMultiPath;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settings/GigaMultiPath;->onSwitchChanged(Landroid/widget/Switch;Z)V

    return-void
.end method
