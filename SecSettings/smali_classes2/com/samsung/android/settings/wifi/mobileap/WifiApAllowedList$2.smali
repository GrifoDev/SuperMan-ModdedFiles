.class Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$2;
.super Ljava/lang/Object;
.source "WifiApAllowedList.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v3, :cond_0

    packed-switch p2, :pswitch_data_0

    :cond_0
    return v2

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->-get11(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;

    const/16 v1, 0xa

    new-array v1, v1, [Z

    invoke-static {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->-set8(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;[Z)[Z

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;

    invoke-static {v0, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->-set1(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;Z)Z

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;

    invoke-static {v0, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->-set6(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;Z)Z

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;

    invoke-static {v0, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->-set7(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;Z)Z

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->-wrap0(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->-get4(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;)Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter;->initArr()V

    return v3

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method
