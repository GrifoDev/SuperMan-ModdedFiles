.class Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver;->initCache(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver;


# direct methods
.method constructor <init>(Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver$3;->this$0:Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    sget-object v0, Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver;->mRichScrnPersonBiz:Lcom/cmdm/rcs/biz/RichScrnPersonBiz;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/cmdm/rcs/biz/RichScrnPersonBiz;->init(I)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver;->access$902(Lcom/cmdm/control/util/client/ResultEntity;)Lcom/cmdm/control/util/client/ResultEntity;

    invoke-static {}, Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver;->access$900()Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver;->access$900()Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cmdm/control/util/client/ResultEntity;->isSuccessed()Z

    move-result v0

    invoke-static {v0}, Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver;->access$1002(Z)Z

    iget-object v0, p0, Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver$3;->this$0:Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initCache bInitSuccess : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver;->access$1000()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver;->access$100(Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
