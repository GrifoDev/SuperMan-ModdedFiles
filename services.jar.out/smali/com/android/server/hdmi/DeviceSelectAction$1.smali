.class Lcom/android/server/hdmi/DeviceSelectAction$1;
.super Ljava/lang/Object;
.source "DeviceSelectAction.java"

# interfaces
.implements Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/hdmi/DeviceSelectAction;->queryDevicePowerStatus()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/hdmi/DeviceSelectAction;


# direct methods
.method constructor <init>(Lcom/android/server/hdmi/DeviceSelectAction;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/hdmi/DeviceSelectAction$1;->this$0:Lcom/android/server/hdmi/DeviceSelectAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSendCompleted(I)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/hdmi/DeviceSelectAction$1;->this$0:Lcom/android/server/hdmi/DeviceSelectAction;

    const/4 v1, 0x7

    invoke-static {v0, v1}, Lcom/android/server/hdmi/DeviceSelectAction;->-wrap0(Lcom/android/server/hdmi/DeviceSelectAction;I)V

    iget-object v0, p0, Lcom/android/server/hdmi/DeviceSelectAction$1;->this$0:Lcom/android/server/hdmi/DeviceSelectAction;

    invoke-virtual {v0}, Lcom/android/server/hdmi/DeviceSelectAction;->finish()V

    return-void

    :cond_0
    return-void
.end method
