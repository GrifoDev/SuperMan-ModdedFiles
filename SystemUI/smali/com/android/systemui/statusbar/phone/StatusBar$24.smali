.class Lcom/android/systemui/statusbar/phone/StatusBar$24;
.super Lcom/samsung/android/vr/IGearVrStateCallbacks$Stub;
.source "StatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/StatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/StatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$24;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-direct {p0}, Lcom/samsung/android/vr/IGearVrStateCallbacks$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onGearVrStateChanged(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$24;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-boolean v0, v1, Lcom/android/systemui/statusbar/phone/StatusBar;->mGearVrDocked:Z

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    const-string/jumbo v1, "StatusBar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onGearVrStateChanged() state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", mGearVrDocked="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar$24;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-boolean v3, v3, Lcom/android/systemui/statusbar/phone/StatusBar;->mGearVrDocked:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", isGearVrDocked="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$24;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/phone/StatusBar;->mGearVrDocked:Z

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$24;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$24;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/phone/StatusBar;->mGearVrDocked:Z

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->notifyGearVrStateChange(Z)V

    :cond_0
    return-void

    :pswitch_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$24;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/systemui/statusbar/phone/StatusBar;->mGearVrDocked:Z

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$24;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/systemui/statusbar/phone/StatusBar;->mGearVrDocked:Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
