.class final Lcom/samsung/android/knox/ContainerCoreService$ServiceImpl;
.super Lcom/samsung/android/knox/IContainerService$Stub;
.source "ContainerCoreService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/ContainerCoreService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/knox/ContainerCoreService;


# direct methods
.method private constructor <init>(Lcom/samsung/android/knox/ContainerCoreService;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/ContainerCoreService$ServiceImpl;->this$0:Lcom/samsung/android/knox/ContainerCoreService;

    invoke-direct {p0}, Lcom/samsung/android/knox/IContainerService$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/knox/ContainerCoreService;Lcom/samsung/android/knox/ContainerCoreService$ServiceImpl;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/ContainerCoreService$ServiceImpl;-><init>(Lcom/samsung/android/knox/ContainerCoreService;)V

    return-void
.end method


# virtual methods
.method public onMessage(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 3

    const-string/jumbo v1, "knox.container.proxy.COMMAND_"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/knox/ContainerCoreService$ServiceImpl;->this$0:Lcom/samsung/android/knox/ContainerCoreService;

    invoke-virtual {v1, p1, p2}, Lcom/samsung/android/knox/ContainerCoreService;->onCommandReceived(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    return-object v1

    :cond_0
    const-string/jumbo v1, "knox.container.proxy.POLICY_"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/knox/ContainerCoreService$ServiceImpl;->this$0:Lcom/samsung/android/knox/ContainerCoreService;

    invoke-virtual {v1, p1, p2}, Lcom/samsung/android/knox/ContainerCoreService;->onPolicyUpdated(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    return-object v1

    :cond_1
    const-string/jumbo v1, "knox.container.proxy.EVENT_"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/knox/ContainerCoreService$ServiceImpl;->this$0:Lcom/samsung/android/knox/ContainerCoreService;

    invoke-virtual {v1, p1, p2}, Lcom/samsung/android/knox/ContainerCoreService;->onEvent(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    return-object v1

    :cond_2
    const-string/jumbo v1, "knox.container.proxy.TEST_"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/knox/ContainerCoreService$ServiceImpl;->this$0:Lcom/samsung/android/knox/ContainerCoreService;

    invoke-virtual {v1, p1, p2}, Lcom/samsung/android/knox/ContainerCoreService;->onTestMessage(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    return-object v1

    :cond_3
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "android.intent.extra.RETURN_RESULT"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method
