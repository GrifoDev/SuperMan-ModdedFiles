.class Lcom/yulore/android/common/BaseActivity$1;
.super Landroid/os/Handler;
.source "BaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yulore/android/common/BaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yulore/android/common/BaseActivity;


# direct methods
.method constructor <init>(Lcom/yulore/android/common/BaseActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/yulore/android/common/BaseActivity;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/yulore/android/common/BaseActivity$1;->this$0:Lcom/yulore/android/common/BaseActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/yulore/android/common/BaseActivity$1;->this$0:Lcom/yulore/android/common/BaseActivity;

    invoke-virtual {v0, p1}, Lcom/yulore/android/common/BaseActivity;->onMessageMainThread(Landroid/os/Message;)V

    .line 37
    return-void
.end method
