.class Lcom/android/settings/wifi/WifiConfigController$7;
.super Ljava/lang/Object;
.source "WifiConfigController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiConfigController;->addGatewayRow(Landroid/view/ViewGroup;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiConfigController;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiConfigController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/WifiConfigController$7;->this$0:Lcom/android/settings/wifi/WifiConfigController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController$7;->this$0:Lcom/android/settings/wifi/WifiConfigController;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiConfigController;->-get3(Lcom/android/settings/wifi/WifiConfigController;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/SAUtils;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/SAUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController$7;->this$0:Lcom/android/settings/wifi/WifiConfigController;

    invoke-static {v1}, Lcom/android/settings/wifi/WifiConfigController;->-get6(Lcom/android/settings/wifi/WifiConfigController;)I

    move-result v1

    const v2, 0x7f120a63

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settings/SAUtils;->insertLog(II)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/settings/wifi/WifiSettings;->goToWebPageLinkClicked:Z

    const-string/jumbo v0, "WifiConfigController"

    const-string/jumbo v1, "Go to Webpage: open webpage from click"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController$7;->this$0:Lcom/android/settings/wifi/WifiConfigController;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiConfigController;->OpenWebPage()V

    return-void
.end method
