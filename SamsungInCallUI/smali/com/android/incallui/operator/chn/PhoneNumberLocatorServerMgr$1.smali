.class Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr;


# direct methods
.method constructor <init>(Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr$1;->this$0:Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    const-string v0, "checkserviceConnection - onServiceConnected "

    invoke-static {v0}, Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr;->access$000(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/sgmc/phonenumberlocatorservice/location/IPhoneNumberLocatorService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sgmc/phonenumberlocatorservice/location/IPhoneNumberLocatorService;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr;->access$102(Lcom/sgmc/phonenumberlocatorservice/location/IPhoneNumberLocatorService;)Lcom/sgmc/phonenumberlocatorservice/location/IPhoneNumberLocatorService;

    iget-object v0, p0, Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr$1;->this$0:Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr;->access$202(Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr;Z)Z

    iget-object v0, p0, Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr$1;->this$0:Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr;

    invoke-static {v0}, Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr;->access$300(Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr$IBindServerListener;

    invoke-interface {v0}, Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr$IBindServerListener;->onServiceConnected()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    const-string v0, "onServiceDisconnected - "

    invoke-static {v0}, Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr;->access$000(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr;->access$102(Lcom/sgmc/phonenumberlocatorservice/location/IPhoneNumberLocatorService;)Lcom/sgmc/phonenumberlocatorservice/location/IPhoneNumberLocatorService;

    iget-object v0, p0, Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr$1;->this$0:Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr;->access$202(Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr;Z)Z

    iget-object v0, p0, Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr$1;->this$0:Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr;

    invoke-static {v0}, Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr;->access$300(Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method
