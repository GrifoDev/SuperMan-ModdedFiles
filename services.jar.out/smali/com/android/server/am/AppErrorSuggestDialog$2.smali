.class Lcom/android/server/am/AppErrorSuggestDialog$2;
.super Landroid/os/Handler;
.source "AppErrorSuggestDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/AppErrorSuggestDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/AppErrorSuggestDialog;


# direct methods
.method constructor <init>(Lcom/android/server/am/AppErrorSuggestDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/AppErrorSuggestDialog$2;->this$0:Lcom/android/server/am/AppErrorSuggestDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/server/am/AppErrorSuggestDialog$2;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/server/am/AppErrorSuggestDialog$2;->this$0:Lcom/android/server/am/AppErrorSuggestDialog;

    invoke-virtual {v1}, Lcom/android/server/am/AppErrorSuggestDialog;->dismiss()V

    return-void
.end method
