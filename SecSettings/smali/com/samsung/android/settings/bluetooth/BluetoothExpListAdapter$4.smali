.class Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$4;
.super Ljava/lang/Object;
.source "BluetoothExpListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$4;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$4;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->clickContactUs()V

    return-void
.end method
