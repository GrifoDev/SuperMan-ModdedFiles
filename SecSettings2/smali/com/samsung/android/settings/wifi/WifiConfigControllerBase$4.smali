.class Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$4;
.super Ljava/lang/Object;
.source "WifiConfigControllerBase.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->addGatewayRow(Landroid/view/ViewGroup;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$4;->this$0:Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;

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

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$4;->this$0:Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->OpenWebPage()V

    return-void
.end method
