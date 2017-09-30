.class Lcom/android/incallui/util/SecErrorDialogActivity$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/util/SecErrorDialogActivity;->showErrorDialog_WiFi(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/util/SecErrorDialogActivity;


# direct methods
.method constructor <init>(Lcom/android/incallui/util/SecErrorDialogActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/util/SecErrorDialogActivity$2;->this$0:Lcom/android/incallui/util/SecErrorDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/util/SecErrorDialogActivity$2;->this$0:Lcom/android/incallui/util/SecErrorDialogActivity;

    invoke-virtual {v0}, Lcom/android/incallui/util/SecErrorDialogActivity;->finish()V

    return-void
.end method
