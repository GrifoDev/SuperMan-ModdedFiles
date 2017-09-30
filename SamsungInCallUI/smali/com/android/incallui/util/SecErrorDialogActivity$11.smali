.class Lcom/android/incallui/util/SecErrorDialogActivity$11;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/util/SecErrorDialogActivity;->showErrorDialog_WeakWiFi(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/util/SecErrorDialogActivity;

.field final synthetic val$number:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/incallui/util/SecErrorDialogActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/util/SecErrorDialogActivity$11;->this$0:Lcom/android/incallui/util/SecErrorDialogActivity;

    iput-object p2, p0, Lcom/android/incallui/util/SecErrorDialogActivity$11;->val$number:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/util/SecErrorDialogActivity$11;->this$0:Lcom/android/incallui/util/SecErrorDialogActivity;

    iget-object v1, p0, Lcom/android/incallui/util/SecErrorDialogActivity$11;->val$number:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/incallui/util/SecErrorDialogActivity;->placeVideoCall(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/util/SecErrorDialogActivity$11;->this$0:Lcom/android/incallui/util/SecErrorDialogActivity;

    invoke-virtual {v0}, Lcom/android/incallui/util/SecErrorDialogActivity;->finish()V

    return-void
.end method
