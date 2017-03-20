.class Lcom/android/incallui/InVideoCallMenu$3;
.super Ljava/lang/Object;
.source "InVideoCallMenu.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/InVideoCallMenu;->showDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/InVideoCallMenu;


# direct methods
.method constructor <init>(Lcom/android/incallui/InVideoCallMenu;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/incallui/InVideoCallMenu;

    .prologue
    .line 206
    iput-object p1, p0, Lcom/android/incallui/InVideoCallMenu$3;->this$0:Lcom/android/incallui/InVideoCallMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 208
    iget-object v0, p0, Lcom/android/incallui/InVideoCallMenu$3;->this$0:Lcom/android/incallui/InVideoCallMenu;

    # getter for: Lcom/android/incallui/InVideoCallMenu;->mDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/incallui/InVideoCallMenu;->access$500(Lcom/android/incallui/InVideoCallMenu;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/android/incallui/InVideoCallMenu$3;->this$0:Lcom/android/incallui/InVideoCallMenu;

    # getter for: Lcom/android/incallui/InVideoCallMenu;->mDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/incallui/InVideoCallMenu;->access$500(Lcom/android/incallui/InVideoCallMenu;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 210
    iget-object v0, p0, Lcom/android/incallui/InVideoCallMenu$3;->this$0:Lcom/android/incallui/InVideoCallMenu;

    const/4 v1, 0x0

    # setter for: Lcom/android/incallui/InVideoCallMenu;->mDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/android/incallui/InVideoCallMenu;->access$502(Lcom/android/incallui/InVideoCallMenu;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 212
    :cond_0
    return-void
.end method
