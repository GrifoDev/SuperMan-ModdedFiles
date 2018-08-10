.class Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType$1;
.super Ljava/lang/Object;
.source "BluetoothEnabler.java"

# interfaces
.implements Lcom/android/settings/widget/ToggleSwitch$OnBeforeCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;-><init>(Lcom/android/settings/bluetooth/BluetoothEnabler;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType$1;->this$1:Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBeforeCheckedChanged(Lcom/android/settings/widget/ToggleSwitch;Z)Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType$1;->this$1:Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;

    invoke-static {v0, p2}, Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;->-set0(Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;Z)Z

    const/4 v0, 0x0

    return v0
.end method
