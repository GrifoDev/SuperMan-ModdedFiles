.class Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter$3;
.super Ljava/lang/Object;
.source "WifiApAllowedList.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter;

.field final synthetic val$cbadapter:Landroid/widget/CheckBox;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter;Landroid/widget/CheckBox;I)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter$3;->this$1:Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter;

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter$3;->val$cbadapter:Landroid/widget/CheckBox;

    iput p3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter$3;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter$3;->this$1:Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter;

    iget-object v2, v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;

    invoke-static {v2, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->-set5(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;Z)Z

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter$3;->val$cbadapter:Landroid/widget/CheckBox;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter$3;->val$cbadapter:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter$3;->this$1:Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->-get8(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter$3;->this$1:Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;

    invoke-static {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->-set4(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;Z)Z

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter$3;->this$1:Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->-wrap0(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter$3;->this$1:Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter$3;->this$1:Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter;

    iget-object v2, v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->-get3(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;)Landroid/widget/ListView;

    move-result-object v2

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v2, v4, v5}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->setTranslateAnimationFor(Landroid/widget/ListView;J)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter$3;->this$1:Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter;->notifyDataSetChanged()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter$3;->this$1:Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;

    const/4 v2, -0x1

    invoke-static {v0, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->-set0(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;I)I

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter$3;->this$1:Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter$3;->val$cbadapter:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    iget v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter$3;->val$position:I

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter;->setSelectedItem(ZI)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter$3;->this$1:Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter$3;->this$1:Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter;->-get0(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter;)I

    move-result v2

    invoke-static {v0, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->-wrap8(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;I)V

    return v1

    :cond_1
    move v0, v1

    goto :goto_0
.end method
