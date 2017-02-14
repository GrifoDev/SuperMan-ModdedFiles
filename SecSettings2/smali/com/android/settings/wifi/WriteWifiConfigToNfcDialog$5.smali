.class Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog$5;
.super Ljava/lang/Object;
.source "WriteWifiConfigToNfcDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->setViewText(Landroid/widget/TextView;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;

.field final synthetic val$resid:I

.field final synthetic val$view:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;Landroid/widget/TextView;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog$5;->this$0:Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;

    iput-object p2, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog$5;->val$view:Landroid/widget/TextView;

    iput p3, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog$5;->val$resid:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog$5;->val$view:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog$5;->val$resid:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method
