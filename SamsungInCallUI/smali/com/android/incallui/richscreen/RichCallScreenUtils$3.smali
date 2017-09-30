.class Lcom/android/incallui/richscreen/RichCallScreenUtils$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/richscreen/RichCallScreenUtils;->CollectRichScrnObj(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/richscreen/RichCallScreenUtils;

.field final synthetic val$cid:Ljava/lang/String;

.field final synthetic val$sourceType:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/incallui/richscreen/RichCallScreenUtils;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/richscreen/RichCallScreenUtils$3;->this$0:Lcom/android/incallui/richscreen/RichCallScreenUtils;

    iput-object p2, p0, Lcom/android/incallui/richscreen/RichCallScreenUtils$3;->val$sourceType:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/incallui/richscreen/RichCallScreenUtils$3;->val$cid:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    sget-object v0, Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver;->mRichScrnPersonBiz:Lcom/cmdm/rcs/biz/RichScrnPersonBiz;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver;->mRichScrnPersonBiz:Lcom/cmdm/rcs/biz/RichScrnPersonBiz;

    iget-object v1, p0, Lcom/android/incallui/richscreen/RichCallScreenUtils$3;->val$sourceType:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/incallui/richscreen/RichCallScreenUtils$3;->val$cid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/cmdm/rcs/biz/RichScrnPersonBiz;->CollectRichScrnObj(Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/richscreen/RichCallScreenUtils;->collectResult:Lcom/cmdm/control/util/client/ResultEntity;

    sget-object v0, Lcom/android/incallui/richscreen/RichCallScreenUtils;->collectResult:Lcom/cmdm/control/util/client/ResultEntity;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/incallui/richscreen/RichCallScreenUtils;->collectResult:Lcom/cmdm/control/util/client/ResultEntity;

    invoke-virtual {v0}, Lcom/cmdm/control/util/client/ResultEntity;->isSuccessed()Z

    move-result v0

    sput-boolean v0, Lcom/android/incallui/richscreen/RichCallScreenUtils;->bCollectSuccess:Z

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    sget-boolean v1, Lcom/android/incallui/richscreen/RichCallScreenUtils;->bCollectSuccess:Z

    if-eqz v1, :cond_1

    const v1, 0x7f0902b4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    :goto_0
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/android/incallui/richscreen/RichCallScreenUtils$3;->this$0:Lcom/android/incallui/richscreen/RichCallScreenUtils;

    iget-object v1, v1, Lcom/android/incallui/richscreen/RichCallScreenUtils;->myhandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const-string v0, "RichCallScreenUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "collectResult.isSuccessed() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/incallui/richscreen/RichCallScreenUtils;->collectResult:Lcom/cmdm/control/util/client/ResultEntity;

    invoke-virtual {v2}, Lcom/cmdm/control/util/client/ResultEntity;->isSuccessed()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ;collectResult.getResMsg() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/incallui/richscreen/RichCallScreenUtils;->collectResult:Lcom/cmdm/control/util/client/ResultEntity;

    invoke-virtual {v2}, Lcom/cmdm/control/util/client/ResultEntity;->getResMsg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    const v1, 0x7f0902b3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_0
.end method
