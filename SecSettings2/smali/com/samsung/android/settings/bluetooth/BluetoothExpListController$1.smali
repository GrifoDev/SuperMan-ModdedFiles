.class Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$1;
.super Landroid/os/Handler;
.source "BluetoothExpListController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    const/16 v1, 0xc

    const/4 v4, 0x0

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {v0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-get10(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->isForegroundActivity()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {v0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-get2(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {v0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-get9(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    if-ne v0, v1, :cond_1

    const-string/jumbo v0, "BluetoothExpListController"

    const-string/jumbo v1, "handleMessage :: It is needed to setInsertDeleteAnimation additionally"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {v2}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-get2(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0, v1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-set0(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {v2}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-get7(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0, v1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-set1(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {v0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-get5(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    move-result-object v2

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {v0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-get0(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    move-result-object v3

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {v0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-get2(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    invoke-virtual {v1, v2, v3, v0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->setInsertDeleteAnimation(Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {v0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-get7(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {v0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-get9(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    if-ne v0, v1, :cond_2

    const-string/jumbo v0, "BluetoothExpListController"

    const-string/jumbo v1, "handleMessage :: It is needed to setInsertAnimation additionally"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {v2}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-get7(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0, v1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-set1(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-virtual {v0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->setInsertAnimation()V

    goto/16 :goto_0

    :cond_2
    const-string/jumbo v0, "BluetoothExpListController"

    const-string/jumbo v1, "handleMessage :: Finish animation loop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {v0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-get3(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    move-result-object v0

    iput-boolean v4, v0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mIsOnProgressAddVI:Z

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {v0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-get3(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    move-result-object v0

    iget-boolean v0, v0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mNeedUpdatePreference:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {v0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-get3(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    move-result-object v0

    iput-boolean v4, v0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mNeedUpdatePreference:Z

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {v0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-get3(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->updateDeviceListGroup(Z)V

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    iget-boolean v0, v0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mNeedUpdateUi:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "BluetoothExpListController"

    const-string/jumbo v1, "handleMessage :: It need update UI for that stop scan status"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {v0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-get8(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$OnListEventListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$OnListEventListener;->updateScanningState()V

    goto/16 :goto_0

    :cond_4
    const-string/jumbo v0, "BluetoothExpListController"

    const-string/jumbo v1, "handleMessage :: Init used animation object"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {v0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-get6(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$UpdatePosition;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$UpdatePosition;->clear()V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {v0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-get1(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$UpdatePosition;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$UpdatePosition;->clear()V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {v0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-get7(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {v0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-get12(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {v0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-get2(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {v0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-get11(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {v0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-get3(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    move-result-object v0

    iput-boolean v4, v0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mIsOnProgressAddVI:Z

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {v0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-get3(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    move-result-object v0

    iput-boolean v4, v0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mNeedUpdatePreference:Z

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
