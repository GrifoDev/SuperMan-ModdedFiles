.class Lcom/android/server/PKMService$PKMTimerTask;
.super Ljava/util/TimerTask;
.source "PKMService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PKMService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PKMTimerTask"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PKMTimerTask"


# instance fields
.field final synthetic this$0:Lcom/android/server/PKMService;


# direct methods
.method private constructor <init>(Lcom/android/server/PKMService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/PKMService$PKMTimerTask;->this$0:Lcom/android/server/PKMService;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/PKMService;Lcom/android/server/PKMService$PKMTimerTask;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/PKMService$PKMTimerTask;-><init>(Lcom/android/server/PKMService;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/android/server/PKMService;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "PKMTimerTask"

    const-string/jumbo v1, "PKM : PKMService scheduler is initialized"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/PKMService$PKMTimerTask;->this$0:Lcom/android/server/PKMService;

    iget-object v0, v0, Lcom/android/server/PKMService;->mPKMServiceHandler:Lcom/android/server/PKMService$PKMServiceHandler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/PKMService$PKMTimerTask;->this$0:Lcom/android/server/PKMService;

    iget-object v0, v0, Lcom/android/server/PKMService;->mPKMServiceHandler:Lcom/android/server/PKMService$PKMServiceHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/PKMService$PKMServiceHandler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lcom/android/server/PKMService$PKMTimerTask;->this$0:Lcom/android/server/PKMService;

    invoke-virtual {v0}, Lcom/android/server/PKMService;->checkEvent()Ljava/lang/String;

    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "PKMTimerTask"

    const-string/jumbo v1, "PKM Service Handler is not ready"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
