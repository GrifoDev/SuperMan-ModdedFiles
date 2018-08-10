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

    const/16 v2, 0xc

    const/4 v4, 0x0

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {v1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-get11(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->semIsForegroundActivity()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {v1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-get10(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v1

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {v1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-get4(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->getAvailableDeviceGroup()Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {v1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-get4(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->getAvailableDeviceGroup()Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->getPreferenceCount()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :goto_1
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-virtual {v1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->getListAdapter()Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->setNoDeviceLayout(Z)Z

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {v1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-get3(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {v1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-get10(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v1

    if-ne v1, v2, :cond_2

    const-string/jumbo v1, "BluetoothExpListController"

    const-string/jumbo v2, "handleMessage :: It is needed to setInsertDeleteAnimation additionally"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {v3}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-get3(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v1, v2}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-set0(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {v3}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-get8(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v1, v2}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-set1(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {v1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-get8(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {v1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-get3(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    invoke-virtual {v2, v1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->setInsertDeleteAnimation(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {v1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-get3(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {v1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-get8(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {v1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-get10(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v1

    if-ne v1, v2, :cond_3

    const-string/jumbo v1, "BluetoothExpListController"

    const-string/jumbo v2, "handleMessage :: It is needed to setInsertAnimation additionally"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {v3}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-get8(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v1, v2}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-set1(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {v1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-get8(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-virtual {v1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->setInsertAnimation()V

    goto/16 :goto_0

    :cond_3
    const-string/jumbo v1, "BluetoothExpListController"

    const-string/jumbo v2, "handleMessage :: Finish animation loop"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {v1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-get4(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    move-result-object v1

    iput-boolean v4, v1, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mIsOnProgressAddVI:Z

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {v1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-get4(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    move-result-object v1

    iget-boolean v1, v1, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mNeedUpdatePreference:Z

    if-eqz v1, :cond_4

    const-string/jumbo v1, "BluetoothExpListController"

    const-string/jumbo v2, "handleMessage :: mNeedUpdatePreference is true"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {v1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-get4(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    move-result-object v1

    iput-boolean v4, v1, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mNeedUpdatePreference:Z

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {v1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-get4(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->updateDeviceListGroup(Z)V

    :cond_4
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    iget-boolean v1, v1, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mNeedUpdateUi:Z

    if-eqz v1, :cond_5

    const-string/jumbo v1, "BluetoothExpListController"

    const-string/jumbo v2, "handleMessage :: It need update UI for that stop scan status"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {v1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-get9(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$OnListEventListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$OnListEventListener;->updateScanningState()V

    :cond_5
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {v1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-get9(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$OnListEventListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$OnListEventListener;->onFinishAnimationLoop()V

    goto/16 :goto_0

    :cond_6
    const-string/jumbo v1, "BluetoothExpListController"

    const-string/jumbo v2, "handleMessage :: Init used animation object"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {v1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-get7(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$UpdatePosition;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$UpdatePosition;->clear()V

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {v1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-get2(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$UpdatePosition;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$UpdatePosition;->clear()V

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {v1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-get8(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {v1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-get13(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {v1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-get3(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {v1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-get12(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {v1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-get4(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    move-result-object v1

    iput-boolean v4, v1, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mIsOnProgressAddVI:Z

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    invoke-static {v1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->-get4(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    move-result-object v1

    iput-boolean v4, v1, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mNeedUpdatePreference:Z

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
