.class Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference$2;
.super Ljava/lang/Object;
.source "WifiApDeviceInfoPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->onBindView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->-get1(Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->-get1(Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100059

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->-wrap1(Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;I)V

    return-void
.end method
