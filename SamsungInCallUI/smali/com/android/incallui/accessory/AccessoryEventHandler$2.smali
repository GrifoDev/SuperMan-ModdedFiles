.class Lcom/android/incallui/accessory/AccessoryEventHandler$2;
.super Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/accessory/AccessoryEventHandler;->initializeCover()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/accessory/AccessoryEventHandler;


# direct methods
.method constructor <init>(Lcom/android/incallui/accessory/AccessoryEventHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/accessory/AccessoryEventHandler$2;->this$0:Lcom/android/incallui/accessory/AccessoryEventHandler;

    invoke-direct {p0}, Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCoverStateChanged(Lcom/samsung/android/sdk/cover/ScoverState;)V
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_1

    const-string v0, "onCoverStateChanged: ScoverState is null"

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/accessory/AccessoryEventHandler$2;->this$0:Lcom/android/incallui/accessory/AccessoryEventHandler;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/cover/ScoverState;->getType()I

    move-result v3

    invoke-static {v0, v3}, Lcom/android/incallui/accessory/AccessoryEventHandler;->access$402(Lcom/android/incallui/accessory/AccessoryEventHandler;I)I

    iget-object v0, p0, Lcom/android/incallui/accessory/AccessoryEventHandler$2;->this$0:Lcom/android/incallui/accessory/AccessoryEventHandler;

    iput-object p1, v0, Lcom/android/incallui/accessory/AccessoryEventHandler;->mCoverState:Lcom/samsung/android/sdk/cover/ScoverState;

    iget-object v0, p0, Lcom/android/incallui/accessory/AccessoryEventHandler$2;->this$0:Lcom/android/incallui/accessory/AccessoryEventHandler;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/cover/ScoverState;->getColor()I

    move-result v3

    invoke-static {v0, v3}, Lcom/android/incallui/accessory/AccessoryEventHandler;->access$502(Lcom/android/incallui/accessory/AccessoryEventHandler;I)I

    iget-object v0, p0, Lcom/android/incallui/accessory/AccessoryEventHandler$2;->this$0:Lcom/android/incallui/accessory/AccessoryEventHandler;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/cover/ScoverState;->getWindowHeight()I

    move-result v3

    invoke-static {v0, v3}, Lcom/android/incallui/accessory/AccessoryEventHandler;->access$602(Lcom/android/incallui/accessory/AccessoryEventHandler;I)I

    iget-object v0, p0, Lcom/android/incallui/accessory/AccessoryEventHandler$2;->this$0:Lcom/android/incallui/accessory/AccessoryEventHandler;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/cover/ScoverState;->getWindowWidth()I

    move-result v3

    invoke-static {v0, v3}, Lcom/android/incallui/accessory/AccessoryEventHandler;->access$702(Lcom/android/incallui/accessory/AccessoryEventHandler;I)I

    iget-object v3, p0, Lcom/android/incallui/accessory/AccessoryEventHandler$2;->this$0:Lcom/android/incallui/accessory/AccessoryEventHandler;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/cover/ScoverState;->getSwitchState()Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    :goto_1
    invoke-static {v3, v0}, Lcom/android/incallui/accessory/AccessoryEventHandler;->access$802(Lcom/android/incallui/accessory/AccessoryEventHandler;Z)Z

    iget-object v0, p0, Lcom/android/incallui/accessory/AccessoryEventHandler$2;->this$0:Lcom/android/incallui/accessory/AccessoryEventHandler;

    invoke-static {v0}, Lcom/android/incallui/accessory/AccessoryEventHandler;->access$800(Lcom/android/incallui/accessory/AccessoryEventHandler;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/incallui/accessory/AccessoryEventHandler$2;->this$0:Lcom/android/incallui/accessory/AccessoryEventHandler;

    invoke-static {v0, v2}, Lcom/android/incallui/accessory/AccessoryEventHandler;->access$902(Lcom/android/incallui/accessory/AccessoryEventHandler;Z)Z

    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/android/incallui/accessory/AccessoryEventHandler$2;->this$0:Lcom/android/incallui/accessory/AccessoryEventHandler;

    iget-object v3, p0, Lcom/android/incallui/accessory/AccessoryEventHandler$2;->this$0:Lcom/android/incallui/accessory/AccessoryEventHandler;

    invoke-static {v3}, Lcom/android/incallui/accessory/AccessoryEventHandler;->access$400(Lcom/android/incallui/accessory/AccessoryEventHandler;)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/incallui/accessory/AccessoryEventHandler;->isCoverTypeForShowing(I)Z

    move-result v0

    if-nez v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCoverStateChanged: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/incallui/accessory/AccessoryEventHandler$2;->this$0:Lcom/android/incallui/accessory/AccessoryEventHandler;

    invoke-static {v3}, Lcom/android/incallui/accessory/AccessoryEventHandler;->access$400(Lcom/android/incallui/accessory/AccessoryEventHandler;)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/incallui/accessory/AccessoryEventHandler$2;->this$0:Lcom/android/incallui/accessory/AccessoryEventHandler;

    invoke-static {v0}, Lcom/android/incallui/accessory/AccessoryEventHandler;->access$800(Lcom/android/incallui/accessory/AccessoryEventHandler;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/accessory/AccessoryEventHandler$2;->this$0:Lcom/android/incallui/accessory/AccessoryEventHandler;

    invoke-static {v0}, Lcom/android/incallui/accessory/AccessoryEventHandler;->access$400(Lcom/android/incallui/accessory/AccessoryEventHandler;)I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/incallui/accessory/AccessoryEventHandler$2;->this$0:Lcom/android/incallui/accessory/AccessoryEventHandler;

    invoke-virtual {v0}, Lcom/android/incallui/accessory/AccessoryEventHandler;->notifyCallTimeForLedCover()V

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/accessory/AccessoryEventHandler$2;->this$0:Lcom/android/incallui/accessory/AccessoryEventHandler;

    invoke-static {v0, v2}, Lcom/android/incallui/accessory/AccessoryEventHandler;->access$802(Lcom/android/incallui/accessory/AccessoryEventHandler;Z)Z

    goto/16 :goto_0

    :cond_4
    move v0, v2

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/android/incallui/accessory/AccessoryEventHandler$2;->this$0:Lcom/android/incallui/accessory/AccessoryEventHandler;

    invoke-static {v0}, Lcom/android/incallui/accessory/AccessoryEventHandler;->access$900(Lcom/android/incallui/accessory/AccessoryEventHandler;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/accessory/AccessoryEventHandler$2;->this$0:Lcom/android/incallui/accessory/AccessoryEventHandler;

    invoke-static {v0}, Lcom/android/incallui/accessory/AccessoryEventHandler;->access$1000(Lcom/android/incallui/accessory/AccessoryEventHandler;)V

    goto :goto_2

    :cond_6
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getInCallState()Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v0

    sget-object v3, Lcom/android/incallui/InCallPresenter$InCallState;->NO_CALLS:Lcom/android/incallui/InCallPresenter$InCallState;

    if-eq v0, v3, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/cover/ScoverState;->getSwitchState()Z

    move-result v0

    if-nez v0, :cond_7

    :cond_7
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v2}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    iget-object v2, p0, Lcom/android/incallui/accessory/AccessoryEventHandler$2;->this$0:Lcom/android/incallui/accessory/AccessoryEventHandler;

    invoke-static {v2}, Lcom/android/incallui/accessory/AccessoryEventHandler;->access$800(Lcom/android/incallui/accessory/AccessoryEventHandler;)Z

    move-result v2

    if-eqz v2, :cond_8

    if-eqz v0, :cond_0

    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCoverStateChanged "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " isClosed : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/incallui/accessory/AccessoryEventHandler$2;->this$0:Lcom/android/incallui/accessory/AccessoryEventHandler;

    invoke-static {v2}, Lcom/android/incallui/accessory/AccessoryEventHandler;->access$800(Lcom/android/incallui/accessory/AccessoryEventHandler;)Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/incallui/accessory/AccessoryEventHandler$2;->this$0:Lcom/android/incallui/accessory/AccessoryEventHandler;

    iget-object v1, p0, Lcom/android/incallui/accessory/AccessoryEventHandler$2;->this$0:Lcom/android/incallui/accessory/AccessoryEventHandler;

    invoke-static {v1}, Lcom/android/incallui/accessory/AccessoryEventHandler;->access$800(Lcom/android/incallui/accessory/AccessoryEventHandler;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/incallui/accessory/AccessoryEventHandler;->access$1100(Lcom/android/incallui/accessory/AccessoryEventHandler;Z)V

    goto/16 :goto_0
.end method
