.class Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$3;
.super Ljava/lang/Object;
.source "WifiApAllowedList.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;

    invoke-static {v1, v4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->-set0(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;I)I

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;

    invoke-static {v1, v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->-set3(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;Z)Z

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->-get0(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->-get2(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;)Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter;->getCount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->-get6(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->-get2(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;)Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->-get2(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;)Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter;->setSelectedItem(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->-get2(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;)Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter;->notifyDataSetChanged()V

    :cond_0
    if-nez p2, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;

    invoke-static {v1, v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->-set0(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;I)I

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;

    invoke-static {v1, v4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->-set3(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;Z)Z

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->-get6(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f0b108d

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->-get0(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->-get2(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;)Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter;->setSelectedItem(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->-get2(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;)Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method
