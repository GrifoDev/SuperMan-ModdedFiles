.class Lcom/android/incallui/fragment/CallButtonFragment$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/fragment/CallButtonFragment;->showBluetoothDeviceList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/fragment/CallButtonFragment;


# direct methods
.method constructor <init>(Lcom/android/incallui/fragment/CallButtonFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/fragment/CallButtonFragment$2;->this$0:Lcom/android/incallui/fragment/CallButtonFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/fragment/CallButtonFragment$2;->this$0:Lcom/android/incallui/fragment/CallButtonFragment;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/incallui/fragment/CallButtonFragment;->mBluetoothListPopup:Landroid/app/Dialog;

    return-void
.end method
