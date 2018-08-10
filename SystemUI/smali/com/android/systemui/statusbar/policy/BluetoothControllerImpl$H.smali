.class final Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;
.super Landroid/os/Handler;
.source "BluetoothControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "H"
.end annotation


# instance fields
.field private final mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;->mCallbacks:Ljava/util/ArrayList;

    return-object v0
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;Landroid/os/Looper;)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;->this$0:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;->mCallbacks:Ljava/util/ArrayList;

    return-void
.end method

.method private firePairedDevicesChanged()V
    .locals 3

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;->mCallbacks:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;->onBluetoothDevicesChanged()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private fireScanStateChange(Z)V
    .locals 3

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;->mCallbacks:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;

    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;->onBluetoothScanStateChanged(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private fireStateChange()V
    .locals 3

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;->mCallbacks:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;->fireStateChange(Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private fireStateChange(Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;->this$0:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->-get0(Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;)Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;->onBluetoothStateChange(Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;->firePairedDevicesChanged()V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;->fireStateChange()V

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;->mCallbacks:Ljava/util/ArrayList;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;->mCallbacks:Ljava/util/ArrayList;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;->fireScanStateChange(Z)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
