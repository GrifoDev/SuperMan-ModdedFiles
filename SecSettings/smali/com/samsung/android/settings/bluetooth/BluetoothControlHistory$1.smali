.class Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory$1;
.super Ljava/lang/Object;
.source "BluetoothControlHistory.java"

# interfaces
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .locals 3

    const-string/jumbo v0, "BluetoothControlHistory"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onChildViewAdded() :: child - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_0

    instance-of v0, p2, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;

    check-cast p2, Landroid/widget/TextView;

    invoke-static {v0, p2}, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;->-set0(Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;Landroid/widget/TextView;)Landroid/widget/TextView;

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;

    invoke-static {v0}, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;->-get0(Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAllCaps(Z)V

    :cond_0
    return-void
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x0

    const-string/jumbo v0, "BluetoothControlHistory"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onChildViewRemoved() :: child - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_0

    instance-of v0, p2, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;

    invoke-static {v0, v3}, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;->-set0(Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;Landroid/widget/TextView;)Landroid/widget/TextView;

    :cond_0
    return-void
.end method
