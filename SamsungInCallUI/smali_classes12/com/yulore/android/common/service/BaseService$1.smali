.class Lcom/yulore/android/common/service/BaseService$1;
.super Landroid/os/Handler;
.source "BaseService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yulore/android/common/service/BaseService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yulore/android/common/service/BaseService;


# direct methods
.method constructor <init>(Lcom/yulore/android/common/service/BaseService;)V
    .locals 0

    iput-object p1, p0, Lcom/yulore/android/common/service/BaseService$1;->this$0:Lcom/yulore/android/common/service/BaseService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/yulore/android/common/service/BaseService$1;->this$0:Lcom/yulore/android/common/service/BaseService;

    invoke-virtual {v0, p1}, Lcom/yulore/android/common/service/BaseService;->onMessageMainThread(Landroid/os/Message;)V

    return-void
.end method
