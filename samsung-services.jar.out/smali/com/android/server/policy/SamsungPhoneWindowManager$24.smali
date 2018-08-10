.class Lcom/android/server/policy/SamsungPhoneWindowManager$24;
.super Lcom/samsung/android/vr/IGearVrStateCallbacks$Stub;
.source "SamsungPhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/SamsungPhoneWindowManager;->registerGearVrStateListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/SamsungPhoneWindowManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$24;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-direct {p0}, Lcom/samsung/android/vr/IGearVrStateCallbacks$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onGearVrStateChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$24;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/policy/SamsungPhoneWindowManager;->-set8(Lcom/android/server/policy/SamsungPhoneWindowManager;Z)Z

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$24;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/policy/SamsungPhoneWindowManager;->-set8(Lcom/android/server/policy/SamsungPhoneWindowManager;Z)Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
