.class Lcom/android/incallui/richscreen/RichCallScreenUtils$1;
.super Ljava/lang/Object;
.source "RichCallScreenUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/richscreen/RichCallScreenUtils;->getRichCallScreenPersonObject(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/richscreen/RichCallScreenUtils;

.field final synthetic val$PhoneEvent:Ljava/lang/String;

.field final synthetic val$m:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/incallui/richscreen/RichCallScreenUtils;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/incallui/richscreen/RichCallScreenUtils;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/android/incallui/richscreen/RichCallScreenUtils$1;->this$0:Lcom/android/incallui/richscreen/RichCallScreenUtils;

    iput-object p2, p0, Lcom/android/incallui/richscreen/RichCallScreenUtils$1;->val$m:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/incallui/richscreen/RichCallScreenUtils$1;->val$PhoneEvent:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 66
    sget-object v2, Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver;->mRichScrnPersonBiz:Lcom/cmdm/rcs/biz/RichScrnPersonBiz;

    if-eqz v2, :cond_1

    .line 67
    sget-object v2, Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver;->mRichScrnPersonBiz:Lcom/cmdm/rcs/biz/RichScrnPersonBiz;

    iget-object v3, p0, Lcom/android/incallui/richscreen/RichCallScreenUtils$1;->val$m:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/incallui/richscreen/RichCallScreenUtils$1;->val$PhoneEvent:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/cmdm/rcs/biz/RichScrnPersonBiz;->GetRichScrnObj(Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v2

    sput-object v2, Lcom/android/incallui/richscreen/RichCallScreenUtils;->result:Lcom/cmdm/control/util/client/ResultUtil;

    .line 68
    sget-object v2, Lcom/android/incallui/richscreen/RichCallScreenUtils;->result:Lcom/cmdm/control/util/client/ResultUtil;

    invoke-virtual {v2}, Lcom/cmdm/control/util/client/ResultUtil;->isSuccessed()Z

    move-result v0

    .line 69
    .local v0, "bGetRichScrnObjSuccess":Z
    sget-object v2, Lcom/android/incallui/richscreen/RichCallScreenUtils;->result:Lcom/cmdm/control/util/client/ResultUtil;

    invoke-virtual {v2}, Lcom/cmdm/control/util/client/ResultUtil;->getResMsg()Ljava/lang/String;

    move-result-object v1

    .line 70
    .local v1, "mGetRichScrnString":Ljava/lang/String;
    const-string v2, "RichCallScreenUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bGetRichScrnObjSuccess : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "mGetRichScrnString : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    sget-object v2, Lcom/android/incallui/richscreen/RichCallScreenUtils;->result:Lcom/cmdm/control/util/client/ResultUtil;

    invoke-virtual {v2}, Lcom/cmdm/control/util/client/ResultUtil;->getAttachObj()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cmdm/rcs/bean/RichScrnShowingObject;

    sput-object v2, Lcom/android/incallui/richscreen/RichCallScreenUtils;->mRichScrnShowingObject:Lcom/cmdm/rcs/bean/RichScrnShowingObject;

    .line 72
    sget-object v2, Lcom/android/incallui/richscreen/RichCallScreenUtils;->mRichScrnShowingObject:Lcom/cmdm/rcs/bean/RichScrnShowingObject;

    if-eqz v2, :cond_0

    .line 73
    sget-object v2, Lcom/android/incallui/richscreen/RichCallScreenUtils;->mRichScrnShowingObject:Lcom/cmdm/rcs/bean/RichScrnShowingObject;

    invoke-virtual {v2}, Lcom/cmdm/rcs/bean/RichScrnShowingObject;->getMissdn()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/incallui/richscreen/RichCallScreenUtils;->CallingNumber:Ljava/lang/String;

    .line 74
    sget-object v2, Lcom/android/incallui/richscreen/RichCallScreenUtils;->mRichScrnShowingObject:Lcom/cmdm/rcs/bean/RichScrnShowingObject;

    invoke-virtual {v2}, Lcom/cmdm/rcs/bean/RichScrnShowingObject;->getCid()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/incallui/richscreen/RichCallScreenUtils;->Cid:Ljava/lang/String;

    .line 75
    sget-object v2, Lcom/android/incallui/richscreen/RichCallScreenUtils;->mRichScrnShowingObject:Lcom/cmdm/rcs/bean/RichScrnShowingObject;

    invoke-virtual {v2}, Lcom/cmdm/rcs/bean/RichScrnShowingObject;->getGreeting()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/incallui/richscreen/RichCallScreenUtils;->Greeting:Ljava/lang/String;

    .line 76
    sget-object v2, Lcom/android/incallui/richscreen/RichCallScreenUtils;->mRichScrnShowingObject:Lcom/cmdm/rcs/bean/RichScrnShowingObject;

    invoke-virtual {v2}, Lcom/cmdm/rcs/bean/RichScrnShowingObject;->getSourceType()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/incallui/richscreen/RichCallScreenUtils;->SourceType:Ljava/lang/String;

    .line 77
    sget-object v2, Lcom/android/incallui/richscreen/RichCallScreenUtils;->mRichScrnShowingObject:Lcom/cmdm/rcs/bean/RichScrnShowingObject;

    iget-object v2, v2, Lcom/cmdm/rcs/bean/RichScrnShowingObject;->missdnAddress:Ljava/lang/String;

    sput-object v2, Lcom/android/incallui/richscreen/RichCallScreenUtils;->PhoneNumberLocator:Ljava/lang/String;

    .line 78
    sget-object v2, Lcom/android/incallui/richscreen/RichCallScreenUtils;->mRichScrnShowingObject:Lcom/cmdm/rcs/bean/RichScrnShowingObject;

    iget-object v2, v2, Lcom/cmdm/rcs/bean/RichScrnShowingObject;->localSourceUrl:Ljava/lang/String;

    sput-object v2, Lcom/android/incallui/richscreen/RichCallScreenUtils;->URL:Ljava/lang/String;

    .line 79
    const-string v2, "RichCallScreenUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mRichScrnShowingObject.getMissdn() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/incallui/richscreen/RichCallScreenUtils;->CallingNumber:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".getCid() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/incallui/richscreen/RichCallScreenUtils;->mRichScrnShowingObject:Lcom/cmdm/rcs/bean/RichScrnShowingObject;

    invoke-virtual {v4}, Lcom/cmdm/rcs/bean/RichScrnShowingObject;->getCid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".getGreeting() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/incallui/richscreen/RichCallScreenUtils;->Greeting:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "getSourceType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/incallui/richscreen/RichCallScreenUtils;->SourceType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "missdnAddress = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/incallui/richscreen/RichCallScreenUtils;->PhoneNumberLocator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "localSourceUrl = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/incallui/richscreen/RichCallScreenUtils;->URL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Cid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/incallui/richscreen/RichCallScreenUtils;->Cid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    .end local v0    # "bGetRichScrnObjSuccess":Z
    .end local v1    # "mGetRichScrnString":Ljava/lang/String;
    :goto_0
    return-void

    .line 83
    .restart local v0    # "bGetRichScrnObjSuccess":Z
    .restart local v1    # "mGetRichScrnString":Ljava/lang/String;
    :cond_0
    sput-object v5, Lcom/android/incallui/richscreen/RichCallScreenUtils;->SourceType:Ljava/lang/String;

    goto :goto_0

    .line 86
    .end local v0    # "bGetRichScrnObjSuccess":Z
    .end local v1    # "mGetRichScrnString":Ljava/lang/String;
    :cond_1
    sput-object v5, Lcom/android/incallui/richscreen/RichCallScreenUtils;->SourceType:Ljava/lang/String;

    goto :goto_0
.end method
