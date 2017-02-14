.class Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$1;
.super Ljava/lang/Object;
.source "WifiApAllowedList.java"

# interfaces
.implements Landroid/widget/AdapterView$SemOnMultiSelectedListener;


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

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMultiSelectStart(II)V
    .locals 2

    const-string/jumbo v0, "WifiApAllowedList"

    const-string/jumbo v1, "onMultiSelectStart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->-get7(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;)Ljava/util/HashMap;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->-set2(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;Ljava/util/HashMap;)Ljava/util/HashMap;

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->-set5(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;Z)Z

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->-get2(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;)Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->-get8(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->-get7(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->-get2(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;)Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter;->initArr()V

    goto :goto_1
.end method

.method public onMultiSelectStop(II)V
    .locals 8

    const/4 v5, 0x1

    const-string/jumbo v4, "WifiApAllowedList"

    const-string/jumbo v6, "onMultiSelectStop"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;

    invoke-static {v4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->-get7(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-string/jumbo v4, "WifiApAllowedList"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onMultiSelectStop "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;

    invoke-static {v4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->-get2(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;)Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter;

    move-result-object v4

    long-to-int v6, v0

    invoke-virtual {v4, v6}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter;->isChecked(I)Z

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;

    invoke-static {v4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->-get2(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;)Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter;

    move-result-object v6

    if-eqz v3, :cond_0

    const/4 v4, 0x0

    :goto_1
    long-to-int v7, v0

    invoke-virtual {v6, v4, v7}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter;->setSelectedItem(ZI)V

    goto :goto_0

    :cond_0
    move v4, v5

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;

    invoke-static {v4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->-get8(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;

    invoke-static {v4, v5}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->-set4(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;Z)Z

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;

    invoke-static {v4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->-wrap0(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;)V

    :cond_2
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;

    const/4 v6, -0x1

    invoke-static {v4, v6}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->-set0(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;I)I

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;

    invoke-static {v4, v5}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->-set5(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;Z)Z

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;

    invoke-static {v4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->-get2(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;)Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter;

    move-result-object v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;

    invoke-static {v5}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->-get2(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;)Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter;->getSelectedItem()I

    move-result v5

    invoke-static {v4, v5}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->-wrap8(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;I)V

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;

    invoke-static {v4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->-get2(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;)Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter;->notifyDataSetChanged()V

    :cond_3
    return-void
.end method

.method public onMultiSelected(Landroid/widget/AdapterView;Landroid/view/View;IJZZZ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJZZZ)V"
        }
    .end annotation

    const-string/jumbo v1, "WifiApAllowedList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onMultiSelected position = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->-get3(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    sub-int v0, p3, v1

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->-get7(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->-get7(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->-get7(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
