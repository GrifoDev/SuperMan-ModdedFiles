.class Lcom/android/server/usb/UsbService$PersonaObserver;
.super Lcom/samsung/android/knox/SemPersonaObserver;
.source "UsbService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PersonaObserver"
.end annotation


# instance fields
.field public containerId:I

.field final synthetic this$0:Lcom/android/server/usb/UsbService;


# direct methods
.method public constructor <init>(Lcom/android/server/usb/UsbService;Landroid/content/Context;II)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/usb/UsbService$PersonaObserver;->this$0:Lcom/android/server/usb/UsbService;

    invoke-direct {p0, p2, p3, p4}, Lcom/samsung/android/knox/SemPersonaObserver;-><init>(Landroid/content/Context;II)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/usb/UsbService$PersonaObserver;->containerId:I

    iput p3, p0, Lcom/android/server/usb/UsbService$PersonaObserver;->containerId:I

    return-void
.end method


# virtual methods
.method public onKeyGuardStateChanged(Z)V
    .locals 3

    const-string/jumbo v0, "UsbService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ,set by knox"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSessionExpired()V
    .locals 0

    return-void
.end method

.method public onStateChange(Lcom/samsung/android/knox/SemPersonaState;Lcom/samsung/android/knox/SemPersonaState;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/knox/SemPersonaState;->LOCKED:Lcom/samsung/android/knox/SemPersonaState;

    invoke-virtual {p2, v0}, Lcom/samsung/android/knox/SemPersonaState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/knox/SemPersonaState;->ACTIVE:Lcom/samsung/android/knox/SemPersonaState;

    invoke-virtual {p1, v0}, Lcom/samsung/android/knox/SemPersonaState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "UsbService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/android/server/usb/UsbService$PersonaObserver;->containerId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ,set by knox"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/usb/UsbService$PersonaObserver;->this$0:Lcom/android/server/usb/UsbService;

    iget v1, p0, Lcom/android/server/usb/UsbService$PersonaObserver;->containerId:I

    invoke-static {v0, v1}, Lcom/android/server/usb/UsbService;->-wrap1(Lcom/android/server/usb/UsbService;I)V

    iget-object v0, p0, Lcom/android/server/usb/UsbService$PersonaObserver;->this$0:Lcom/android/server/usb/UsbService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/usb/UsbService;->-set1(Lcom/android/server/usb/UsbService;Z)Z

    :cond_0
    return-void
.end method
