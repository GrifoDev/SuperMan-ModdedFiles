.class Lcom/android/server/aod/AODManagerService$AODConnection$1;
.super Ljava/lang/Object;
.source "AODManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/aod/AODManagerService$AODConnection;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final synthetic -com-android-server-aod-AODManagerService$AODConnectionCauseSwitchesValues:[I


# instance fields
.field final synthetic $SWITCH_TABLE$com$android$server$aod$AODManagerService$AODConnectionCause:[I

.field final synthetic this$1:Lcom/android/server/aod/AODManagerService$AODConnection;

.field final synthetic val$binder:Landroid/os/IBinder;


# direct methods
.method private static synthetic -getcom-android-server-aod-AODManagerService$AODConnectionCauseSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/server/aod/AODManagerService$AODConnection$1;->-com-android-server-aod-AODManagerService$AODConnectionCauseSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/aod/AODManagerService$AODConnection$1;->-com-android-server-aod-AODManagerService$AODConnectionCauseSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/server/aod/AODManagerService$AODConnectionCause;->values()[Lcom/android/server/aod/AODManagerService$AODConnectionCause;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/android/server/aod/AODManagerService$AODConnectionCause;->AODCONNECTION_STARTAOD:Lcom/android/server/aod/AODManagerService$AODConnectionCause;

    invoke-virtual {v1}, Lcom/android/server/aod/AODManagerService$AODConnectionCause;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/server/aod/AODManagerService$AODConnectionCause;->AODCONNECTION_STOPAOD:Lcom/android/server/aod/AODManagerService$AODConnectionCause;

    invoke-virtual {v1}, Lcom/android/server/aod/AODManagerService$AODConnectionCause;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/server/aod/AODManagerService$AODConnectionCause;->AODCONNECTION_UPDATE_NOTIFICATION_KEYS:Lcom/android/server/aod/AODManagerService$AODConnectionCause;

    invoke-virtual {v1}, Lcom/android/server/aod/AODManagerService$AODConnectionCause;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    sput-object v0, Lcom/android/server/aod/AODManagerService$AODConnection$1;->-com-android-server-aod-AODManagerService$AODConnectionCauseSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_0
.end method

.method constructor <init>(Lcom/android/server/aod/AODManagerService$AODConnection;Landroid/os/IBinder;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/aod/AODManagerService$AODConnection$1;->this$1:Lcom/android/server/aod/AODManagerService$AODConnection;

    iput-object p2, p0, Lcom/android/server/aod/AODManagerService$AODConnection$1;->val$binder:Landroid/os/IBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v4, 0x0

    invoke-static {}, Lcom/android/server/aod/AODManagerService;->-get1()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "AOD ServiceConnected!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/aod/AODManagerService$AODConnection$1;->this$1:Lcom/android/server/aod/AODManagerService$AODConnection;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/server/aod/AODManagerService$AODConnection;->mConnected:Z

    iget-object v1, p0, Lcom/android/server/aod/AODManagerService$AODConnection$1;->this$1:Lcom/android/server/aod/AODManagerService$AODConnection;

    iget-object v1, v1, Lcom/android/server/aod/AODManagerService$AODConnection;->mService:Lcom/samsung/android/aod/IAlwaysOnDisplayService;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/aod/AODManagerService$AODConnection$1;->this$1:Lcom/android/server/aod/AODManagerService$AODConnection;

    iget-object v2, p0, Lcom/android/server/aod/AODManagerService$AODConnection$1;->val$binder:Landroid/os/IBinder;

    invoke-static {v2}, Lcom/samsung/android/aod/IAlwaysOnDisplayService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/aod/IAlwaysOnDisplayService;

    move-result-object v2

    iput-object v2, v1, Lcom/android/server/aod/AODManagerService$AODConnection;->mService:Lcom/samsung/android/aod/IAlwaysOnDisplayService;

    :try_start_0
    iget-object v1, p0, Lcom/android/server/aod/AODManagerService$AODConnection$1;->this$1:Lcom/android/server/aod/AODManagerService$AODConnection;

    iget-object v1, v1, Lcom/android/server/aod/AODManagerService$AODConnection;->mService:Lcom/samsung/android/aod/IAlwaysOnDisplayService;

    invoke-interface {v1}, Lcom/samsung/android/aod/IAlwaysOnDisplayService;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/aod/AODManagerService$AODConnection$1;->this$1:Lcom/android/server/aod/AODManagerService$AODConnection;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {}, Lcom/android/server/aod/AODManagerService;->-get1()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "IAlwaysOnDisplayService as binder ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/aod/AODManagerService$AODConnection$1;->this$1:Lcom/android/server/aod/AODManagerService$AODConnection;

    iget-object v3, v3, Lcom/android/server/aod/AODManagerService$AODConnection;->mService:Lcom/samsung/android/aod/IAlwaysOnDisplayService;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "], User ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/aod/AODManagerService$AODConnection$1;->this$1:Lcom/android/server/aod/AODManagerService$AODConnection;

    iget v3, v3, Lcom/android/server/aod/AODManagerService$AODConnection;->mConnectedUser:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/aod/AODManagerService$AODConnection$1;->-getcom-android-server-aod-AODManagerService$AODConnectionCauseSwitchesValues()[I

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/aod/AODManagerService$AODConnection$1;->this$1:Lcom/android/server/aod/AODManagerService$AODConnection;

    iget-object v2, v2, Lcom/android/server/aod/AODManagerService$AODConnection;->mConnectionCause:Lcom/android/server/aod/AODManagerService$AODConnectionCause;

    invoke-static {v2}, Lcom/android/server/aod/AODManagerService$AODConnectionCause;->getType(Lcom/android/server/aod/AODManagerService$AODConnectionCause;)Lcom/android/server/aod/AODManagerService$AODConnectionCause;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/aod/AODManagerService$AODConnectionCause;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/android/server/aod/AODManagerService;->-get1()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "onServiceConnected : mService.asBinder().linkToDeath()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :pswitch_0
    iget-object v1, p0, Lcom/android/server/aod/AODManagerService$AODConnection$1;->this$1:Lcom/android/server/aod/AODManagerService$AODConnection;

    iget-object v1, v1, Lcom/android/server/aod/AODManagerService$AODConnection;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-virtual {v1}, Lcom/android/server/aod/AODManagerService;->startAODInternal()Z

    goto :goto_1

    :pswitch_1
    iget-object v1, p0, Lcom/android/server/aod/AODManagerService$AODConnection$1;->this$1:Lcom/android/server/aod/AODManagerService$AODConnection;

    iget-object v1, v1, Lcom/android/server/aod/AODManagerService$AODConnection;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-virtual {v1}, Lcom/android/server/aod/AODManagerService;->stopAODInternal()Z

    goto :goto_1

    :pswitch_2
    iget-object v1, p0, Lcom/android/server/aod/AODManagerService$AODConnection$1;->this$1:Lcom/android/server/aod/AODManagerService$AODConnection;

    iget-object v1, v1, Lcom/android/server/aod/AODManagerService$AODConnection;->this$0:Lcom/android/server/aod/AODManagerService;

    const/4 v2, -0x1

    invoke-static {v1, v2, v4}, Lcom/android/server/aod/AODManagerService;->-wrap4(Lcom/android/server/aod/AODManagerService;ILjava/util/List;)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
