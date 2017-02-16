.class Lcom/android/incallui/richscreen/RichCallScreenUtils$3;
.super Ljava/lang/Object;
.source "RichCallScreenUtils.java"

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
    .param p1, "this$0"    # Lcom/android/incallui/richscreen/RichCallScreenUtils;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/android/incallui/richscreen/RichCallScreenUtils$3;->this$0:Lcom/android/incallui/richscreen/RichCallScreenUtils;

    iput-object p2, p0, Lcom/android/incallui/richscreen/RichCallScreenUtils$3;->val$sourceType:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/incallui/richscreen/RichCallScreenUtils$3;->val$cid:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 112
    sget-object v1, Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver;->mRichScrnPersonBiz:Lcom/cmdm/rcs/biz/RichScrnPersonBiz;

    if-eqz v1, :cond_0

    .line 113
    sget-object v1, Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver;->mRichScrnPersonBiz:Lcom/cmdm/rcs/biz/RichScrnPersonBiz;

    iget-object v2, p0, Lcom/android/incallui/richscreen/RichCallScreenUtils$3;->val$sourceType:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/incallui/richscreen/RichCallScreenUtils$3;->val$cid:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/cmdm/rcs/biz/RichScrnPersonBiz;->CollectRichScrnObj(Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v1

    sput-object v1, Lcom/android/incallui/richscreen/RichCallScreenUtils;->collectResult:Lcom/cmdm/control/util/client/ResultEntity;

    .line 114
    sget-object v1, Lcom/android/incallui/richscreen/RichCallScreenUtils;->collectResult:Lcom/cmdm/control/util/client/ResultEntity;

    if-eqz v1, :cond_0

    .line 115
    sget-object v1, Lcom/android/incallui/richscreen/RichCallScreenUtils;->collectResult:Lcom/cmdm/control/util/client/ResultEntity;

    invoke-virtual {v1}, Lcom/cmdm/control/util/client/ResultEntity;->isSuccessed()Z

    move-result v1

    sput-boolean v1, Lcom/android/incallui/richscreen/RichCallScreenUtils;->bCollectSuccess:Z

    .line 116
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 117
    .local v0, "msg1":Landroid/os/Message;
    sget-boolean v1, Lcom/android/incallui/richscreen/RichCallScreenUtils;->bCollectSuccess:Z

    if-eqz v1, :cond_1

    .line 118
    const v1, 0x7f09023b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 122
    :goto_0
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    .line 123
    iget-object v1, p0, Lcom/android/incallui/richscreen/RichCallScreenUtils$3;->this$0:Lcom/android/incallui/richscreen/RichCallScreenUtils;

    iget-object v1, v1, Lcom/android/incallui/richscreen/RichCallScreenUtils;->myhandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 124
    const-string v1, "RichCallScreenUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "collectResult.isSuccessed() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/incallui/richscreen/RichCallScreenUtils;->collectResult:Lcom/cmdm/control/util/client/ResultEntity;

    invoke-virtual {v3}, Lcom/cmdm/control/util/client/ResultEntity;->isSuccessed()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ;collectResult.getResMsg() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/incallui/richscreen/RichCallScreenUtils;->collectResult:Lcom/cmdm/control/util/client/ResultEntity;

    invoke-virtual {v3}, Lcom/cmdm/control/util/client/ResultEntity;->getResMsg()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    .end local v0    # "msg1":Landroid/os/Message;
    :cond_0
    return-void

    .line 120
    .restart local v0    # "msg1":Landroid/os/Message;
    :cond_1
    const v1, 0x7f09023a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_0
.end method
