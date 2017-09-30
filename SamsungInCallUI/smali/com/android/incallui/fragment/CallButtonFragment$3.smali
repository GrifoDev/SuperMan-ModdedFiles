.class Lcom/android/incallui/fragment/CallButtonFragment$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


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

    iput-object p1, p0, Lcom/android/incallui/fragment/CallButtonFragment$3;->this$0:Lcom/android/incallui/fragment/CallButtonFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/incallui/fragment/CallButtonFragment$3;->this$0:Lcom/android/incallui/fragment/CallButtonFragment;

    iput-object p2, v0, Lcom/android/incallui/fragment/CallButtonFragment;->mSelectedBluetoothItem:Landroid/view/View;

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    return-void
.end method
