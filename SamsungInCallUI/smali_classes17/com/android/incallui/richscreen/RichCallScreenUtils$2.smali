.class Lcom/android/incallui/richscreen/RichCallScreenUtils$2;
.super Ljava/lang/Object;
.source "RichCallScreenUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/richscreen/RichCallScreenUtils;->startDownloadRichScrnObj(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/richscreen/RichCallScreenUtils;

.field final synthetic val$PhoneEvent:Ljava/lang/String;

.field final synthetic val$number:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/incallui/richscreen/RichCallScreenUtils;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/incallui/richscreen/RichCallScreenUtils;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/android/incallui/richscreen/RichCallScreenUtils$2;->this$0:Lcom/android/incallui/richscreen/RichCallScreenUtils;

    iput-object p2, p0, Lcom/android/incallui/richscreen/RichCallScreenUtils$2;->val$number:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/incallui/richscreen/RichCallScreenUtils$2;->val$PhoneEvent:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 97
    sget-object v2, Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver;->mRichScrnPersonBiz:Lcom/cmdm/rcs/biz/RichScrnPersonBiz;

    if-eqz v2, :cond_0

    .line 98
    sget-object v2, Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver;->mRichScrnPersonBiz:Lcom/cmdm/rcs/biz/RichScrnPersonBiz;

    iget-object v3, p0, Lcom/android/incallui/richscreen/RichCallScreenUtils$2;->val$number:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/incallui/richscreen/RichCallScreenUtils$2;->val$PhoneEvent:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/cmdm/rcs/biz/RichScrnPersonBiz;->DownloadRichScrnObj(Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultEntity;

    move-result-object v2

    sput-object v2, Lcom/android/incallui/richscreen/RichCallScreenUtils;->downloadResult:Lcom/cmdm/control/util/client/ResultEntity;

    .line 99
    sget-object v2, Lcom/android/incallui/richscreen/RichCallScreenUtils;->downloadResult:Lcom/cmdm/control/util/client/ResultEntity;

    invoke-virtual {v2}, Lcom/cmdm/control/util/client/ResultEntity;->isSuccessed()Z

    move-result v0

    .line 100
    .local v0, "bDownloadSuccess":Z
    sget-object v2, Lcom/android/incallui/richscreen/RichCallScreenUtils;->downloadResult:Lcom/cmdm/control/util/client/ResultEntity;

    invoke-virtual {v2}, Lcom/cmdm/control/util/client/ResultEntity;->getResMsg()Ljava/lang/String;

    move-result-object v1

    .line 101
    .local v1, "mDownloadResultString":Ljava/lang/String;
    const-string v2, "RichCallScreenUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bDownloadSuccess : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "mDownloadResultString : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    .end local v0    # "bDownloadSuccess":Z
    .end local v1    # "mDownloadResultString":Ljava/lang/String;
    :cond_0
    return-void
.end method
