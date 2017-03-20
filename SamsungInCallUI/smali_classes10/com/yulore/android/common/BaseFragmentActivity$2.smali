.class Lcom/yulore/android/common/BaseFragmentActivity$2;
.super Ljava/lang/Object;
.source "BaseFragmentActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yulore/android/common/BaseFragmentActivity;->update(ILcom/yulore/android/common/job/AsyncJob;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yulore/android/common/BaseFragmentActivity;

.field final synthetic val$event:I

.field final synthetic val$req:Lcom/yulore/android/common/job/AsyncJob;


# direct methods
.method constructor <init>(Lcom/yulore/android/common/BaseFragmentActivity;ILcom/yulore/android/common/job/AsyncJob;)V
    .locals 0
    .param p1, "this$0"    # Lcom/yulore/android/common/BaseFragmentActivity;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/yulore/android/common/BaseFragmentActivity$2;->this$0:Lcom/yulore/android/common/BaseFragmentActivity;

    iput p2, p0, Lcom/yulore/android/common/BaseFragmentActivity$2;->val$event:I

    iput-object p3, p0, Lcom/yulore/android/common/BaseFragmentActivity$2;->val$req:Lcom/yulore/android/common/job/AsyncJob;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 83
    const-string v0, "YuloreIVRCommon"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatch event id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/yulore/android/common/BaseFragmentActivity$2;->val$event:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yulore/android/common/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcom/yulore/android/common/BaseFragmentActivity$2;->this$0:Lcom/yulore/android/common/BaseFragmentActivity;

    iget v1, p0, Lcom/yulore/android/common/BaseFragmentActivity$2;->val$event:I

    iget-object v2, p0, Lcom/yulore/android/common/BaseFragmentActivity$2;->val$req:Lcom/yulore/android/common/job/AsyncJob;

    invoke-virtual {v0, v1, v2}, Lcom/yulore/android/common/BaseFragmentActivity;->onEventMainThread(ILcom/yulore/android/common/job/AsyncJob;)V

    .line 86
    return-void
.end method
