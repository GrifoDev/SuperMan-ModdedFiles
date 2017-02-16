.class Lcom/android/incallui/fragment/CallButtonFragment$BluetoothArrayAdapter$2;
.super Ljava/lang/Object;
.source "CallButtonFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/fragment/CallButtonFragment$BluetoothArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/incallui/fragment/CallButtonFragment$BluetoothArrayAdapter;


# direct methods
.method constructor <init>(Lcom/android/incallui/fragment/CallButtonFragment$BluetoothArrayAdapter;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/incallui/fragment/CallButtonFragment$BluetoothArrayAdapter;

    .prologue
    .line 226
    iput-object p1, p0, Lcom/android/incallui/fragment/CallButtonFragment$BluetoothArrayAdapter$2;->this$1:Lcom/android/incallui/fragment/CallButtonFragment$BluetoothArrayAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 229
    iget-object v0, p0, Lcom/android/incallui/fragment/CallButtonFragment$BluetoothArrayAdapter$2;->this$1:Lcom/android/incallui/fragment/CallButtonFragment$BluetoothArrayAdapter;

    invoke-virtual {v0, p1}, Lcom/android/incallui/fragment/CallButtonFragment$BluetoothArrayAdapter;->activeBTDevice(Landroid/view/View;)V

    .line 230
    return-void
.end method
