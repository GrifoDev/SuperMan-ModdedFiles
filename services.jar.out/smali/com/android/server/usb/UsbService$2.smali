.class Lcom/android/server/usb/UsbService$2;
.super Landroid/content/pm/IKnoxModeChangeObserver$Stub;
.source "UsbService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/usb/UsbService;->registerKnoxModeChangeObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/usb/UsbService;

.field final synthetic val$pms:Lcom/android/server/pm/PersonaManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/usb/UsbService;Lcom/android/server/pm/PersonaManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/usb/UsbService$2;->this$0:Lcom/android/server/usb/UsbService;

    iput-object p2, p0, Lcom/android/server/usb/UsbService$2;->val$pms:Lcom/android/server/pm/PersonaManagerService;

    invoke-direct {p0}, Landroid/content/pm/IKnoxModeChangeObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onKnoxModeChange(I)V
    .locals 4

    const/4 v1, 0x0

    const/4 v3, 0x1

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/usb/UsbService$2;->this$0:Lcom/android/server/usb/UsbService;

    invoke-static {v0}, Lcom/android/server/usb/UsbService;->-get2(Lcom/android/server/usb/UsbService;)Lcom/android/server/usb/UsbService$PersonaObserver;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/usb/UsbService$2;->this$0:Lcom/android/server/usb/UsbService;

    invoke-static {v0}, Lcom/android/server/usb/UsbService;->-get2(Lcom/android/server/usb/UsbService;)Lcom/android/server/usb/UsbService$PersonaObserver;

    move-result-object v0

    iget v0, v0, Lcom/android/server/usb/UsbService$PersonaObserver;->containerId:I

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/server/usb/UsbService$2;->this$0:Lcom/android/server/usb/UsbService;

    invoke-static {v0}, Lcom/android/server/usb/UsbService;->-wrap2(Lcom/android/server/usb/UsbService;)V

    iget-object v0, p0, Lcom/android/server/usb/UsbService$2;->this$0:Lcom/android/server/usb/UsbService;

    invoke-static {v0, v1}, Lcom/android/server/usb/UsbService;->-set0(Lcom/android/server/usb/UsbService;Lcom/android/server/usb/UsbService$PersonaObserver;)Lcom/android/server/usb/UsbService$PersonaObserver;

    :cond_0
    iget-object v0, p0, Lcom/android/server/usb/UsbService$2;->val$pms:Lcom/android/server/pm/PersonaManagerService;

    sget-object v1, Lcom/samsung/android/knox/SemPersonaState;->ACTIVE:Lcom/samsung/android/knox/SemPersonaState;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/pm/PersonaManagerService;->inState(Lcom/samsung/android/knox/SemPersonaState;I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "UsbService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ,set by knox"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/usb/UsbService$2;->this$0:Lcom/android/server/usb/UsbService;

    invoke-static {v0, p1}, Lcom/android/server/usb/UsbService;->-wrap1(Lcom/android/server/usb/UsbService;I)V

    iget-object v0, p0, Lcom/android/server/usb/UsbService$2;->this$0:Lcom/android/server/usb/UsbService;

    invoke-static {v0, v3}, Lcom/android/server/usb/UsbService;->-set1(Lcom/android/server/usb/UsbService;Z)Z

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/usb/UsbService$2;->this$0:Lcom/android/server/usb/UsbService;

    invoke-static {v0, p1}, Lcom/android/server/usb/UsbService;->-wrap0(Lcom/android/server/usb/UsbService;I)V

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "UsbService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ,set by knox"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/usb/UsbService$2;->this$0:Lcom/android/server/usb/UsbService;

    invoke-static {v0, p1}, Lcom/android/server/usb/UsbService;->-wrap1(Lcom/android/server/usb/UsbService;I)V

    iget-object v0, p0, Lcom/android/server/usb/UsbService$2;->this$0:Lcom/android/server/usb/UsbService;

    invoke-static {v0, v3}, Lcom/android/server/usb/UsbService;->-set1(Lcom/android/server/usb/UsbService;Z)Z

    goto :goto_0
.end method
