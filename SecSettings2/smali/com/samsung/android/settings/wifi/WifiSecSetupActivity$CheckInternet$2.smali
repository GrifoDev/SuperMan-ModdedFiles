.class Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$CheckInternet$2;
.super Ljava/lang/Object;
.source "WifiSecSetupActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$CheckInternet;->onPostExecute(Ljava/lang/Integer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$CheckInternet;

.field final synthetic val$result:Ljava/lang/Integer;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$CheckInternet;Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$CheckInternet$2;->this$1:Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$CheckInternet;

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$CheckInternet$2;->val$result:Ljava/lang/Integer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x0

    const v2, 0x7f0b0c84

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$CheckInternet$2;->val$result:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :goto_0
    :pswitch_0
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$CheckInternet$2;->this$1:Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$CheckInternet;

    iget-object v3, v3, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$CheckInternet;->this$0:Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;

    invoke-static {v3, v1, v0, v2}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->-wrap1(Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;ZZI)V

    return-void

    :pswitch_1
    const/4 v1, 0x1

    goto :goto_0

    :pswitch_2
    const v2, 0x7f0b0c83

    :pswitch_3
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_4
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$CheckInternet$2;->this$1:Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$CheckInternet;

    iget-object v3, v3, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$CheckInternet;->this$0:Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;

    iget-boolean v3, v3, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->FLAG_GOOGLE_FRP_FOR_WIFISETUPWIZARD:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$CheckInternet$2;->this$1:Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$CheckInternet;

    iget-object v3, v3, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$CheckInternet;->this$0:Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;

    iget-boolean v3, v3, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->FLAG_SAMSUNGACCOUNT_FOR_WIFISETUPWIZARD:Z

    if-eqz v3, :cond_1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_4
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
