.class Lcom/android/incallui/util/SecSubNumberDialogActivity$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/util/SecSubNumberDialogActivity;->showItemDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/util/SecSubNumberDialogActivity;


# direct methods
.method constructor <init>(Lcom/android/incallui/util/SecSubNumberDialogActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/util/SecSubNumberDialogActivity$1;->this$0:Lcom/android/incallui/util/SecSubNumberDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/util/SecSubNumberDialogActivity$1;->this$0:Lcom/android/incallui/util/SecSubNumberDialogActivity;

    invoke-virtual {v0}, Lcom/android/incallui/util/SecSubNumberDialogActivity;->finish()V

    return-void
.end method
