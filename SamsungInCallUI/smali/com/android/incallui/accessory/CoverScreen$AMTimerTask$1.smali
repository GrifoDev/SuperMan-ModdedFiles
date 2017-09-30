.class Lcom/android/incallui/accessory/CoverScreen$AMTimerTask$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/accessory/CoverScreen$AMTimerTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/incallui/accessory/CoverScreen$AMTimerTask;


# direct methods
.method constructor <init>(Lcom/android/incallui/accessory/CoverScreen$AMTimerTask;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/accessory/CoverScreen$AMTimerTask$1;->this$1:Lcom/android/incallui/accessory/CoverScreen$AMTimerTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen$AMTimerTask$1;->this$1:Lcom/android/incallui/accessory/CoverScreen$AMTimerTask;

    iget-object v0, v0, Lcom/android/incallui/accessory/CoverScreen$AMTimerTask;->this$0:Lcom/android/incallui/accessory/CoverScreen;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AMTimerTask cnt % 2 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/accessory/CoverScreen$AMTimerTask$1;->this$1:Lcom/android/incallui/accessory/CoverScreen$AMTimerTask;

    iget v2, v2, Lcom/android/incallui/accessory/CoverScreen$AMTimerTask;->cnt:I

    rem-int/lit8 v2, v2, 0x2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen$AMTimerTask$1;->this$1:Lcom/android/incallui/accessory/CoverScreen$AMTimerTask;

    iget v0, v0, Lcom/android/incallui/accessory/CoverScreen$AMTimerTask;->cnt:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen$AMTimerTask$1;->this$1:Lcom/android/incallui/accessory/CoverScreen$AMTimerTask;

    iget-object v0, v0, Lcom/android/incallui/accessory/CoverScreen$AMTimerTask;->this$0:Lcom/android/incallui/accessory/CoverScreen;

    invoke-static {v0}, Lcom/android/incallui/accessory/CoverScreen;->access$2300(Lcom/android/incallui/accessory/CoverScreen;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen$AMTimerTask$1;->this$1:Lcom/android/incallui/accessory/CoverScreen$AMTimerTask;

    iget-object v0, v0, Lcom/android/incallui/accessory/CoverScreen$AMTimerTask;->this$0:Lcom/android/incallui/accessory/CoverScreen;

    invoke-static {v0}, Lcom/android/incallui/accessory/CoverScreen;->access$2300(Lcom/android/incallui/accessory/CoverScreen;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen$AMTimerTask$1;->this$1:Lcom/android/incallui/accessory/CoverScreen$AMTimerTask;

    iget-object v1, v1, Lcom/android/incallui/accessory/CoverScreen$AMTimerTask;->this$0:Lcom/android/incallui/accessory/CoverScreen;

    invoke-static {v1}, Lcom/android/incallui/accessory/CoverScreen;->access$2400(Lcom/android/incallui/accessory/CoverScreen;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen$AMTimerTask$1;->this$1:Lcom/android/incallui/accessory/CoverScreen$AMTimerTask;

    iget-object v0, v0, Lcom/android/incallui/accessory/CoverScreen$AMTimerTask;->this$0:Lcom/android/incallui/accessory/CoverScreen;

    invoke-static {v0}, Lcom/android/incallui/accessory/CoverScreen;->access$2300(Lcom/android/incallui/accessory/CoverScreen;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen$AMTimerTask$1;->this$1:Lcom/android/incallui/accessory/CoverScreen$AMTimerTask;

    iget-object v0, v0, Lcom/android/incallui/accessory/CoverScreen$AMTimerTask;->this$0:Lcom/android/incallui/accessory/CoverScreen;

    invoke-static {v0}, Lcom/android/incallui/accessory/CoverScreen;->access$2300(Lcom/android/incallui/accessory/CoverScreen;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen$AMTimerTask$1;->this$1:Lcom/android/incallui/accessory/CoverScreen$AMTimerTask;

    iget-object v1, v1, Lcom/android/incallui/accessory/CoverScreen$AMTimerTask;->this$0:Lcom/android/incallui/accessory/CoverScreen;

    invoke-virtual {v1}, Lcom/android/incallui/accessory/CoverScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900c5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
