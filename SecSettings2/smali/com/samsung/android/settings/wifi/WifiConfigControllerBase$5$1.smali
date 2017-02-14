.class Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$5$1;
.super Ljava/lang/Object;
.source "WifiConfigControllerBase.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$5;->onPostExecute(Ljava/lang/Integer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$5;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$5;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$5$1;->this$1:Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->goToWebPageLinkClicked:Z

    const-string/jumbo v0, "WifiConfigController"

    const-string/jumbo v1, "Go to Webpage: open webpage from click"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$5$1;->this$1:Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$5;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$5;->this$0:Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->OpenWebPage()V

    return-void
.end method
