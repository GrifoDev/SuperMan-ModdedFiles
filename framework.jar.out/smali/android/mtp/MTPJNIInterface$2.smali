.class Landroid/mtp/MTPJNIInterface$2;
.super Landroid/content/BroadcastReceiver;
.source "MTPJNIInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/mtp/MTPJNIInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/mtp/MTPJNIInterface;


# direct methods
.method constructor <init>(Landroid/mtp/MTPJNIInterface;)V
    .locals 0

    iput-object p1, p0, Landroid/mtp/MTPJNIInterface$2;->this$0:Landroid/mtp/MTPJNIInterface;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "MTPJNIInterface"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "In MTPJNIINterface onReceive:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-boolean v1, Landroid/mtp/MTPJNIInterface;->objectEventReceived:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    sput-boolean v1, Landroid/mtp/MTPJNIInterface;->objectEventReceived:Z

    iget-object v1, p0, Landroid/mtp/MTPJNIInterface$2;->this$0:Landroid/mtp/MTPJNIInterface;

    const/16 v2, 0x1a

    invoke-virtual {v1, v2}, Landroid/mtp/MTPJNIInterface;->notifyMTPStack(I)V

    const-string/jumbo v1, "MTPJNIInterface"

    const-string/jumbo v2, "storageinfo changed event sent to stack"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    const-string/jumbo v1, "MTPJNIInterface"

    const-string/jumbo v2, "In MTPJNIINterface intent is coming null::"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
