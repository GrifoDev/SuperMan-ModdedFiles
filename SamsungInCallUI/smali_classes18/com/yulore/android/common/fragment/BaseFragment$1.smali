.class Lcom/yulore/android/common/fragment/BaseFragment$1;
.super Landroid/os/Handler;
.source "BaseFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yulore/android/common/fragment/BaseFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yulore/android/common/fragment/BaseFragment;


# direct methods
.method constructor <init>(Lcom/yulore/android/common/fragment/BaseFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/yulore/android/common/fragment/BaseFragment$1;->this$0:Lcom/yulore/android/common/fragment/BaseFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/yulore/android/common/fragment/BaseFragment$1;->this$0:Lcom/yulore/android/common/fragment/BaseFragment;

    invoke-virtual {v0, p1}, Lcom/yulore/android/common/fragment/BaseFragment;->onMessageMainThread(Landroid/os/Message;)V

    return-void
.end method
