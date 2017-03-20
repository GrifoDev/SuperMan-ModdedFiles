.class Lcom/android/incallui/util/SecErrorDialogActivity$9;
.super Ljava/lang/Object;
.source "SecErrorDialogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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


# direct methods
.method constructor <init>(Lcom/android/incallui/util/SecErrorDialogActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/incallui/util/SecErrorDialogActivity;

    .prologue
    .line 188
    iput-object p1, p0, Lcom/android/incallui/util/SecErrorDialogActivity$9;->this$0:Lcom/android/incallui/util/SecErrorDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/incallui/util/SecErrorDialogActivity$9;->this$0:Lcom/android/incallui/util/SecErrorDialogActivity;

    invoke-virtual {v0}, Lcom/android/incallui/util/SecErrorDialogActivity;->finish()V

    .line 192
    return-void
.end method
