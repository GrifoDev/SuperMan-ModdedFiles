.class Lcom/android/settings/wifi/WifiStatusTest$3;
.super Ljava/lang/Object;
.source "WifiStatusTest.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WifiStatusTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiStatusTest;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiStatusTest;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/WifiStatusTest$3;->this$0:Lcom/android/settings/wifi/WifiStatusTest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    const/16 v6, 0x2e

    iget-object v4, p0, Lcom/android/settings/wifi/WifiStatusTest$3;->this$0:Lcom/android/settings/wifi/WifiStatusTest;

    invoke-static {v4}, Lcom/android/settings/wifi/WifiStatusTest;->-get12(Lcom/android/settings/wifi/WifiStatusTest;)Landroid/net/wifi/WifiManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/wifi/WifiStatusTest$3;->this$0:Lcom/android/settings/wifi/WifiStatusTest;

    iget-object v5, p0, Lcom/android/settings/wifi/WifiStatusTest$3;->this$0:Lcom/android/settings/wifi/WifiStatusTest;

    invoke-static {v5}, Lcom/android/settings/wifi/WifiStatusTest;->-get12(Lcom/android/settings/wifi/WifiStatusTest;)Landroid/net/wifi/WifiManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v5

    invoke-static {v4, v5}, Lcom/android/settings/wifi/WifiStatusTest;->-wrap8(Lcom/android/settings/wifi/WifiStatusTest;I)V

    iget-object v4, p0, Lcom/android/settings/wifi/WifiStatusTest$3;->this$0:Lcom/android/settings/wifi/WifiStatusTest;

    invoke-static {v4}, Lcom/android/settings/wifi/WifiStatusTest;->-get0(Lcom/android/settings/wifi/WifiStatusTest;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/settings/wifi/WifiStatusTest$3;->this$0:Lcom/android/settings/wifi/WifiStatusTest;

    invoke-static {v4}, Lcom/android/settings/wifi/WifiStatusTest;->-get1(Lcom/android/settings/wifi/WifiStatusTest;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getHiddenSSID()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    and-int/lit16 v4, v0, 0xff

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v4

    ushr-int/lit8 v0, v0, 0x8

    and-int/lit16 v5, v0, 0xff

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v4

    ushr-int/lit8 v0, v0, 0x8

    and-int/lit16 v5, v0, 0xff

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v4

    ushr-int/lit8 v0, v0, 0x8

    and-int/lit16 v5, v0, 0xff

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    iget-object v4, p0, Lcom/android/settings/wifi/WifiStatusTest$3;->this$0:Lcom/android/settings/wifi/WifiStatusTest;

    invoke-static {v4}, Lcom/android/settings/wifi/WifiStatusTest;->-get4(Lcom/android/settings/wifi/WifiStatusTest;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/settings/wifi/WifiStatusTest$3;->this$0:Lcom/android/settings/wifi/WifiStatusTest;

    invoke-static {v4}, Lcom/android/settings/wifi/WifiStatusTest;->-get5(Lcom/android/settings/wifi/WifiStatusTest;)Landroid/widget/TextView;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " Mbps"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/settings/wifi/WifiStatusTest$3;->this$0:Lcom/android/settings/wifi/WifiStatusTest;

    invoke-static {v4}, Lcom/android/settings/wifi/WifiStatusTest;->-get6(Lcom/android/settings/wifi/WifiStatusTest;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/settings/wifi/WifiStatusTest$3;->this$0:Lcom/android/settings/wifi/WifiStatusTest;

    invoke-static {v4}, Lcom/android/settings/wifi/WifiStatusTest;->-get7(Lcom/android/settings/wifi/WifiStatusTest;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/settings/wifi/WifiStatusTest$3;->this$0:Lcom/android/settings/wifi/WifiStatusTest;

    invoke-static {v4}, Lcom/android/settings/wifi/WifiStatusTest;->-get10(Lcom/android/settings/wifi/WifiStatusTest;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/settings/wifi/WifiStatusTest$3;->this$0:Lcom/android/settings/wifi/WifiStatusTest;

    invoke-static {v4}, Lcom/android/settings/wifi/WifiStatusTest;->-get11(Lcom/android/settings/wifi/WifiStatusTest;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v2

    iget-object v4, p0, Lcom/android/settings/wifi/WifiStatusTest$3;->this$0:Lcom/android/settings/wifi/WifiStatusTest;

    invoke-static {v4, v2}, Lcom/android/settings/wifi/WifiStatusTest;->-wrap7(Lcom/android/settings/wifi/WifiStatusTest;Landroid/net/wifi/SupplicantState;)V

    return-void
.end method
