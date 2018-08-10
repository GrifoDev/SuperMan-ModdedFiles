.class Lcom/samsung/android/settings/multisound/AudioDeviceType$1;
.super Ljava/lang/Object;
.source "AudioDeviceType.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/multisound/AudioDeviceType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/multisound/AudioDeviceType;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/multisound/AudioDeviceType;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/multisound/AudioDeviceType$1;->this$0:Lcom/samsung/android/settings/multisound/AudioDeviceType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 1

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/settings/multisound/AudioDeviceType$1;->this$0:Lcom/samsung/android/settings/multisound/AudioDeviceType;

    check-cast p2, Landroid/bluetooth/BluetoothA2dp;

    invoke-static {v0, p2}, Lcom/samsung/android/settings/multisound/AudioDeviceType;->-set0(Lcom/samsung/android/settings/multisound/AudioDeviceType;Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothA2dp;

    iget-object v0, p0, Lcom/samsung/android/settings/multisound/AudioDeviceType$1;->this$0:Lcom/samsung/android/settings/multisound/AudioDeviceType;

    invoke-static {v0}, Lcom/samsung/android/settings/multisound/AudioDeviceType;->-wrap1(Lcom/samsung/android/settings/multisound/AudioDeviceType;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public onServiceDisconnected(I)V
    .locals 1

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/settings/multisound/AudioDeviceType$1;->this$0:Lcom/samsung/android/settings/multisound/AudioDeviceType;

    invoke-static {v0}, Lcom/samsung/android/settings/multisound/AudioDeviceType;->-wrap1(Lcom/samsung/android/settings/multisound/AudioDeviceType;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
