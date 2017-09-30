.class Lcom/android/incallui/richscreen/RichCallScreenUtils$1;
.super Ljava/lang/Object;

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

    iput-object p1, p0, Lcom/android/incallui/richscreen/RichCallScreenUtils$1;->this$0:Lcom/android/incallui/richscreen/RichCallScreenUtils;

    iput-object p2, p0, Lcom/android/incallui/richscreen/RichCallScreenUtils$1;->val$m:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/incallui/richscreen/RichCallScreenUtils$1;->val$PhoneEvent:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v5, 0x0

    sget-object v0, Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver;->mRichScrnPersonBiz:Lcom/cmdm/rcs/biz/RichScrnPersonBiz;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver;->mRichScrnPersonBiz:Lcom/cmdm/rcs/biz/RichScrnPersonBiz;

    iget-object v1, p0, Lcom/android/incallui/richscreen/RichCallScreenUtils$1;->val$m:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/incallui/richscreen/RichCallScreenUtils$1;->val$PhoneEvent:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/cmdm/rcs/biz/RichScrnPersonBiz;->GetRichScrnObj(Ljava/lang/String;Ljava/lang/String;)Lcom/cmdm/control/util/client/ResultUtil;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/richscreen/RichCallScreenUtils;->result:Lcom/cmdm/control/util/client/ResultUtil;

    sget-object v0, Lcom/android/incallui/richscreen/RichCallScreenUtils;->result:Lcom/cmdm/control/util/client/ResultUtil;

    invoke-virtual {v0}, Lcom/cmdm/control/util/client/ResultUtil;->isSuccessed()Z

    move-result v0

    sget-object v1, Lcom/android/incallui/richscreen/RichCallScreenUtils;->result:Lcom/cmdm/control/util/client/ResultUtil;

    invoke-virtual {v1}, Lcom/cmdm/control/util/client/ResultUtil;->getResMsg()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RichCallScreenUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bGetRichScrnObjSuccess : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "mGetRichScrnString : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/incallui/richscreen/RichCallScreenUtils;->result:Lcom/cmdm/control/util/client/ResultUtil;

    invoke-virtual {v0}, Lcom/cmdm/control/util/client/ResultUtil;->getAttachObj()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmdm/rcs/bean/RichScrnShowingObject;

    sput-object v0, Lcom/android/incallui/richscreen/RichCallScreenUtils;->mRichScrnShowingObject:Lcom/cmdm/rcs/bean/RichScrnShowingObject;

    sget-object v0, Lcom/android/incallui/richscreen/RichCallScreenUtils;->mRichScrnShowingObject:Lcom/cmdm/rcs/bean/RichScrnShowingObject;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/incallui/richscreen/RichCallScreenUtils;->mRichScrnShowingObject:Lcom/cmdm/rcs/bean/RichScrnShowingObject;

    invoke-virtual {v0}, Lcom/cmdm/rcs/bean/RichScrnShowingObject;->getMissdn()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/richscreen/RichCallScreenUtils;->CallingNumber:Ljava/lang/String;

    sget-object v0, Lcom/android/incallui/richscreen/RichCallScreenUtils;->mRichScrnShowingObject:Lcom/cmdm/rcs/bean/RichScrnShowingObject;

    invoke-virtual {v0}, Lcom/cmdm/rcs/bean/RichScrnShowingObject;->getCid()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/richscreen/RichCallScreenUtils;->Cid:Ljava/lang/String;

    sget-object v0, Lcom/android/incallui/richscreen/RichCallScreenUtils;->mRichScrnShowingObject:Lcom/cmdm/rcs/bean/RichScrnShowingObject;

    invoke-virtual {v0}, Lcom/cmdm/rcs/bean/RichScrnShowingObject;->getGreeting()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/richscreen/RichCallScreenUtils;->Greeting:Ljava/lang/String;

    sget-object v0, Lcom/android/incallui/richscreen/RichCallScreenUtils;->mRichScrnShowingObject:Lcom/cmdm/rcs/bean/RichScrnShowingObject;

    invoke-virtual {v0}, Lcom/cmdm/rcs/bean/RichScrnShowingObject;->getSourceType()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/richscreen/RichCallScreenUtils;->SourceType:Ljava/lang/String;

    sget-object v0, Lcom/android/incallui/richscreen/RichCallScreenUtils;->mRichScrnShowingObject:Lcom/cmdm/rcs/bean/RichScrnShowingObject;

    iget-object v0, v0, Lcom/cmdm/rcs/bean/RichScrnShowingObject;->missdnAddress:Ljava/lang/String;

    sput-object v0, Lcom/android/incallui/richscreen/RichCallScreenUtils;->PhoneNumberLocator:Ljava/lang/String;

    sget-object v0, Lcom/android/incallui/richscreen/RichCallScreenUtils;->mRichScrnShowingObject:Lcom/cmdm/rcs/bean/RichScrnShowingObject;

    iget-object v0, v0, Lcom/cmdm/rcs/bean/RichScrnShowingObject;->localSourceUrl:Ljava/lang/String;

    sput-object v0, Lcom/android/incallui/richscreen/RichCallScreenUtils;->URL:Ljava/lang/String;

    const-string v0, "RichCallScreenUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mRichScrnShowingObject.getMissdn() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/incallui/richscreen/RichCallScreenUtils;->CallingNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".getCid() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/incallui/richscreen/RichCallScreenUtils;->mRichScrnShowingObject:Lcom/cmdm/rcs/bean/RichScrnShowingObject;

    invoke-virtual {v2}, Lcom/cmdm/rcs/bean/RichScrnShowingObject;->getCid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".getGreeting() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/incallui/richscreen/RichCallScreenUtils;->Greeting:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "getSourceType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/incallui/richscreen/RichCallScreenUtils;->SourceType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "missdnAddress = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/incallui/richscreen/RichCallScreenUtils;->PhoneNumberLocator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "localSourceUrl = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/incallui/richscreen/RichCallScreenUtils;->URL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Cid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/incallui/richscreen/RichCallScreenUtils;->Cid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    sput-object v5, Lcom/android/incallui/richscreen/RichCallScreenUtils;->SourceType:Ljava/lang/String;

    goto :goto_0

    :cond_1
    sput-object v5, Lcom/android/incallui/richscreen/RichCallScreenUtils;->SourceType:Ljava/lang/String;

    goto :goto_0
.end method
