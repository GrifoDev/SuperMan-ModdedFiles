.class Lcom/android/server/power/ShutdownThread$6$2;
.super Ljava/lang/Object;
.source "ShutdownThread.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/ShutdownThread$6;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/power/ShutdownThread$6;


# direct methods
.method constructor <init>(Lcom/android/server/power/ShutdownThread$6;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/power/ShutdownThread$6$2;->this$1:Lcom/android/server/power/ShutdownThread$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get30()Landroid/os/CountDownTimer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    const/4 v0, -0x1

    invoke-static {v0}, Lcom/android/server/power/ShutdownThread;->-set13(I)I

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get24()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
