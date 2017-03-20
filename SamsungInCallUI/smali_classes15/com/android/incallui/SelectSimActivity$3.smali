.class Lcom/android/incallui/SelectSimActivity$3;
.super Ljava/lang/Object;
.source "SelectSimActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/SelectSimActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/SelectSimActivity;


# direct methods
.method constructor <init>(Lcom/android/incallui/SelectSimActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/incallui/SelectSimActivity;

    .prologue
    .line 118
    iput-object p1, p0, Lcom/android/incallui/SelectSimActivity$3;->this$0:Lcom/android/incallui/SelectSimActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/incallui/SelectSimActivity$3;->this$0:Lcom/android/incallui/SelectSimActivity;

    invoke-virtual {v0}, Lcom/android/incallui/SelectSimActivity;->finish()V

    .line 121
    return-void
.end method
