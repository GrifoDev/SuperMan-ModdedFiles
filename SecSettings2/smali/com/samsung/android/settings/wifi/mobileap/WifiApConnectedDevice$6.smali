.class Lcom/samsung/android/settings/wifi/mobileap/WifiApConnectedDevice$6;
.super Ljava/lang/Object;
.source "WifiApConnectedDevice.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/mobileap/WifiApConnectedDevice;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApConnectedDevice;

.field final synthetic val$msgId:I


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApConnectedDevice;I)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApConnectedDevice$6;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApConnectedDevice;

    iput p2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApConnectedDevice$6;->val$msgId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    const/4 v9, 0x1

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApConnectedDevice$6;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApConnectedDevice;

    invoke-static {v4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApConnectedDevice;->-get1(Lcom/samsung/android/settings/wifi/mobileap/WifiApConnectedDevice;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d0004

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "#ff"

    const-string/jumbo v6, "#"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApConnectedDevice$6;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApConnectedDevice;

    invoke-static {v4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApConnectedDevice;->-get1(Lcom/samsung/android/settings/wifi/mobileap/WifiApConnectedDevice;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApConnectedDevice$6;->val$msgId:I

    new-array v6, v9, [Ljava/lang/Object;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "<font color="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ">"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApConnectedDevice$6;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApConnectedDevice;

    invoke-static {v8}, Lcom/samsung/android/settings/wifi/mobileap/WifiApConnectedDevice;->-get2(Lcom/samsung/android/settings/wifi/mobileap/WifiApConnectedDevice;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "</font>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApConnectedDevice$6;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApConnectedDevice;

    invoke-static {v4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApConnectedDevice;->-get1(Lcom/samsung/android/settings/wifi/mobileap/WifiApConnectedDevice;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v5

    invoke-static {v4, v5, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v4

    const v5, 0x102000b

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    return-void
.end method
