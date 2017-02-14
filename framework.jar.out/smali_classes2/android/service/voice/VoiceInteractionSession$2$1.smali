.class Landroid/service/voice/VoiceInteractionSession$2$1;
.super Ljava/lang/Thread;
.source "VoiceInteractionSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/service/voice/VoiceInteractionSession$2;->handleAssist(Landroid/os/Bundle;Landroid/app/assist/AssistStructure;Landroid/app/assist/AssistContent;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/service/voice/VoiceInteractionSession$2;

.field final synthetic val$content:Landroid/app/assist/AssistContent;

.field final synthetic val$count:I

.field final synthetic val$data:Landroid/os/Bundle;

.field final synthetic val$index:I

.field final synthetic val$structure:Landroid/app/assist/AssistStructure;


# direct methods
.method constructor <init>(Landroid/service/voice/VoiceInteractionSession$2;Ljava/lang/String;Landroid/app/assist/AssistStructure;Landroid/os/Bundle;Landroid/app/assist/AssistContent;II)V
    .locals 0

    iput-object p1, p0, Landroid/service/voice/VoiceInteractionSession$2$1;->this$1:Landroid/service/voice/VoiceInteractionSession$2;

    iput-object p3, p0, Landroid/service/voice/VoiceInteractionSession$2$1;->val$structure:Landroid/app/assist/AssistStructure;

    iput-object p4, p0, Landroid/service/voice/VoiceInteractionSession$2$1;->val$data:Landroid/os/Bundle;

    iput-object p5, p0, Landroid/service/voice/VoiceInteractionSession$2$1;->val$content:Landroid/app/assist/AssistContent;

    iput p6, p0, Landroid/service/voice/VoiceInteractionSession$2$1;->val$index:I

    iput p7, p0, Landroid/service/voice/VoiceInteractionSession$2$1;->val$count:I

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession$2$1;->val$structure:Landroid/app/assist/AssistStructure;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession$2$1;->val$structure:Landroid/app/assist/AssistStructure;

    invoke-virtual {v0}, Landroid/app/assist/AssistStructure;->ensureData()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession$2$1;->this$1:Landroid/service/voice/VoiceInteractionSession$2;

    iget-object v0, v0, Landroid/service/voice/VoiceInteractionSession$2;->this$0:Landroid/service/voice/VoiceInteractionSession;

    iget-object v9, v0, Landroid/service/voice/VoiceInteractionSession;->mHandlerCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession$2$1;->this$1:Landroid/service/voice/VoiceInteractionSession$2;

    iget-object v0, v0, Landroid/service/voice/VoiceInteractionSession$2;->this$0:Landroid/service/voice/VoiceInteractionSession;

    iget-object v0, v0, Landroid/service/voice/VoiceInteractionSession;->mHandlerCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v2, p0, Landroid/service/voice/VoiceInteractionSession$2$1;->val$data:Landroid/os/Bundle;

    if-nez v4, :cond_1

    iget-object v3, p0, Landroid/service/voice/VoiceInteractionSession$2$1;->val$structure:Landroid/app/assist/AssistStructure;

    :cond_1
    iget-object v5, p0, Landroid/service/voice/VoiceInteractionSession$2$1;->val$content:Landroid/app/assist/AssistContent;

    iget v6, p0, Landroid/service/voice/VoiceInteractionSession$2$1;->val$index:I

    iget v7, p0, Landroid/service/voice/VoiceInteractionSession$2$1;->val$count:I

    const/16 v1, 0x68

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/os/HandlerCaller;->obtainMessageOOOOII(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    return-void

    :catch_0
    move-exception v8

    const-string/jumbo v0, "VoiceInteractionSession"

    const-string/jumbo v1, "Failure retrieving AssistStructure"

    invoke-static {v0, v1, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v4, v8

    goto :goto_0
.end method
