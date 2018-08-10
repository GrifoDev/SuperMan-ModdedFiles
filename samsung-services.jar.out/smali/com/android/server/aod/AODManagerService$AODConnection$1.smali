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
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/server/aod/AODManagerService$AODConnectionCause;->AODCONNECTION_STOPAOD:Lcom/android/server/aod/AODManagerService$AODConnectionCause;

    invoke-virtual {v1}, Lcom/android/server/aod/AODManagerService$AODConnectionCause;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/server/aod/AODManagerService$AODConnectionCause;->AODCONNECTION_UPDATE_CALENDAR_DATA:Lcom/android/server/aod/AODManagerService$AODConnectionCause;

    invoke-virtual {v1}, Lcom/android/server/aod/AODManagerService$AODConnectionCause;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v1, Lcom/android/server/aod/AODManagerService$AODConnectionCause;->AODCONNECTION_UPDATE_NOTIFICATION_KEYS:Lcom/android/server/aod/AODManagerService$AODConnectionCause;

    invoke-virtual {v1}, Lcom/android/server/aod/AODManagerService$AODConnectionCause;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    sput-object v0, Lcom/android/server/aod/AODManagerService$AODConnection$1;->-com-android-server-aod-AODManagerService$AODConnectionCauseSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1

    :catch_3
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
    .locals 7

    const/4 v6, 0x0

    invoke-static {}, Lcom/android/server/aod/AODManagerService;->-get3()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "AOD ServiceConnected!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/aod/AODManagerService$AODConnection$1;->this$1:Lcom/android/server/aod/AODManagerService$AODConnection;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/android/server/aod/AODManagerService$AODConnection;->mConnected:Z

    iget-object v3, p0, Lcom/android/server/aod/AODManagerService$AODConnection$1;->this$1:Lcom/android/server/aod/AODManagerService$AODConnection;

    iget-object v3, v3, Lcom/android/server/aod/AODManagerService$AODConnection;->mService:Lcom/samsung/android/aod/IAlwaysOnDisplayService;

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/server/aod/AODManagerService$AODConnection$1;->this$1:Lcom/android/server/aod/AODManagerService$AODConnection;

    iget-object v4, p0, Lcom/android/server/aod/AODManagerService$AODConnection$1;->val$binder:Landroid/os/IBinder;

    invoke-static {v4}, Lcom/samsung/android/aod/IAlwaysOnDisplayService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/aod/IAlwaysOnDisplayService;

    move-result-object v4

    iput-object v4, v3, Lcom/android/server/aod/AODManagerService$AODConnection;->mService:Lcom/samsung/android/aod/IAlwaysOnDisplayService;

    iget-object v3, p0, Lcom/android/server/aod/AODManagerService$AODConnection$1;->this$1:Lcom/android/server/aod/AODManagerService$AODConnection;

    iget-object v3, v3, Lcom/android/server/aod/AODManagerService$AODConnection;->mService:Lcom/samsung/android/aod/IAlwaysOnDisplayService;

    if-eqz v3, :cond_0

    :try_start_0
    iget-object v3, p0, Lcom/android/server/aod/AODManagerService$AODConnection$1;->this$1:Lcom/android/server/aod/AODManagerService$AODConnection;

    iget-object v3, v3, Lcom/android/server/aod/AODManagerService$AODConnection;->mService:Lcom/samsung/android/aod/IAlwaysOnDisplayService;

    invoke-interface {v3}, Lcom/samsung/android/aod/IAlwaysOnDisplayService;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/aod/AODManagerService$AODConnection$1;->this$1:Lcom/android/server/aod/AODManagerService$AODConnection;

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/server/aod/AODManagerService;->-get3()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "IAlwaysOnDisplayService as binder ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/aod/AODManagerService$AODConnection$1;->this$1:Lcom/android/server/aod/AODManagerService$AODConnection;

    iget-object v5, v5, Lcom/android/server/aod/AODManagerService$AODConnection;->mService:Lcom/samsung/android/aod/IAlwaysOnDisplayService;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "], User ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/aod/AODManagerService$AODConnection$1;->this$1:Lcom/android/server/aod/AODManagerService$AODConnection;

    iget v5, v5, Lcom/android/server/aod/AODManagerService$AODConnection;->mConnectedUser:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "], Reason ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/aod/AODManagerService$AODConnection$1;->this$1:Lcom/android/server/aod/AODManagerService$AODConnection;

    iget-object v5, v5, Lcom/android/server/aod/AODManagerService$AODConnection;->mConnectionCauseList:Ljava/util/List;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/aod/AODManagerService$AODConnection$1;->this$1:Lcom/android/server/aod/AODManagerService$AODConnection;

    iget-object v3, v3, Lcom/android/server/aod/AODManagerService$AODConnection;->mConnectionCauseList:Ljava/util/List;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/aod/AODManagerService$AODConnectionCause;

    invoke-static {}, Lcom/android/server/aod/AODManagerService$AODConnection$1;->-getcom-android-server-aod-AODManagerService$AODConnectionCauseSwitchesValues()[I

    move-result-object v3

    invoke-static {v0}, Lcom/android/server/aod/AODManagerService$AODConnectionCause;->getType(Lcom/android/server/aod/AODManagerService$AODConnectionCause;)Lcom/android/server/aod/AODManagerService$AODConnectionCause;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/aod/AODManagerService$AODConnectionCause;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object v3, p0, Lcom/android/server/aod/AODManagerService$AODConnection$1;->this$1:Lcom/android/server/aod/AODManagerService$AODConnection;

    iget-object v3, v3, Lcom/android/server/aod/AODManagerService$AODConnection;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-virtual {v3}, Lcom/android/server/aod/AODManagerService;->startAODInternal()Z

    goto :goto_1

    :catch_0
    move-exception v2

    invoke-static {}, Lcom/android/server/aod/AODManagerService;->-get3()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "onServiceConnected : mService.asBinder().linkToDeath()"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :pswitch_1
    iget-object v3, p0, Lcom/android/server/aod/AODManagerService$AODConnection$1;->this$1:Lcom/android/server/aod/AODManagerService$AODConnection;

    iget-object v3, v3, Lcom/android/server/aod/AODManagerService$AODConnection;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-virtual {v3}, Lcom/android/server/aod/AODManagerService;->stopAODInternal()Z

    goto :goto_1

    :pswitch_2
    iget-object v3, p0, Lcom/android/server/aod/AODManagerService$AODConnection$1;->this$1:Lcom/android/server/aod/AODManagerService$AODConnection;

    iget-object v3, v3, Lcom/android/server/aod/AODManagerService$AODConnection;->this$0:Lcom/android/server/aod/AODManagerService;

    const/4 v4, -0x1

    invoke-static {v3, v4, v6}, Lcom/android/server/aod/AODManagerService;->-wrap35(Lcom/android/server/aod/AODManagerService;ILjava/util/List;)V

    goto :goto_1

    :pswitch_3
    iget-object v3, p0, Lcom/android/server/aod/AODManagerService$AODConnection$1;->this$1:Lcom/android/server/aod/AODManagerService$AODConnection;

    iget-object v3, v3, Lcom/android/server/aod/AODManagerService$AODConnection;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-static {v3, v6, v6}, Lcom/android/server/aod/AODManagerService;->-wrap33(Lcom/android/server/aod/AODManagerService;Ljava/util/List;Ljava/util/List;)V

    goto :goto_1

    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method
