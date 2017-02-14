.class Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$5$2;
.super Ljava/lang/Object;
.source "WifiApSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$5;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$5;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$5;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$5$2;->this$1:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$5$2;->this$1:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$5;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$5;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$5$2;->this$1:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$5;

    iget-object v1, v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$5;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->-get12(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->-set17(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    return-void
.end method
