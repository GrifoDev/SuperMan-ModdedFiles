.class Lcom/android/settings/wifi/WifiConfigController$8$1;
.super Ljava/lang/Object;
.source "WifiConfigController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiConfigController$8;->onPostExecute(Ljava/lang/Integer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/wifi/WifiConfigController$8;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiConfigController$8;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/WifiConfigController$8$1;->this$1:Lcom/android/settings/wifi/WifiConfigController$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/settings/wifi/WifiSettings;->goToWebPageLinkClicked:Z

    const-string/jumbo v0, "WifiConfigController"

    const-string/jumbo v1, "Go to Webpage: open webpage from click"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController$8$1;->this$1:Lcom/android/settings/wifi/WifiConfigController$8;

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController$8;->this$0:Lcom/android/settings/wifi/WifiConfigController;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiConfigController;->OpenWebPage()V

    return-void
.end method
