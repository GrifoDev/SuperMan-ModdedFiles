.class Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog$1;
.super Ljava/lang/Object;
.source "WriteWifiConfigToNfcDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog$1;->this$0:Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog$1;->this$0:Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;

    invoke-static {v0}, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->-get3(Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;)Landroid/widget/CheckBox;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog$1;->this$0:Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;

    invoke-static {v0}, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->-get3(Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;)Landroid/widget/CheckBox;

    move-result-object v1

    iget-object v0, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog$1;->this$0:Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;

    invoke-static {v0}, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->-get3(Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
