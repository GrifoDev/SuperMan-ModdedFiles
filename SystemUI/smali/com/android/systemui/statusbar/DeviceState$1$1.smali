.class Lcom/android/systemui/statusbar/DeviceState$1$1;
.super Ljava/lang/Object;
.source "DeviceState.java"

# interfaces
.implements Lcom/sec/ims/ImsManager$ConnectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/DeviceState$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/DeviceState$1;

.field final synthetic val$slotId:I


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/DeviceState$1;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/DeviceState$1$1;->this$1:Lcom/android/systemui/statusbar/DeviceState$1;

    iput p2, p0, Lcom/android/systemui/statusbar/DeviceState$1$1;->val$slotId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected()V
    .locals 3

    const-string/jumbo v0, "DeviceState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onConnected mImsManager : slotId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/DeviceState$1$1;->val$slotId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/systemui/statusbar/DeviceState;->-get1()[Z

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/statusbar/DeviceState$1$1;->val$slotId:I

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public onDisconnected()V
    .locals 3

    const-string/jumbo v0, "DeviceState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDisconnected mImsManager : slotId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/DeviceState$1$1;->val$slotId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/systemui/statusbar/DeviceState;->-get0()[Lcom/sec/ims/ImsManager;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/statusbar/DeviceState$1$1;->val$slotId:I

    const/4 v2, 0x0

    aput-object v2, v0, v1

    invoke-static {}, Lcom/android/systemui/statusbar/DeviceState;->-get1()[Z

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/statusbar/DeviceState$1$1;->val$slotId:I

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    return-void
.end method
