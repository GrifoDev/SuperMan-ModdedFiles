.class Lcom/sec/ims/profile/PersonalProfileManager$ProfileUpdateListenerRelay;
.super Lcom/sec/ims/profile/IPersonalProfileNotify$Stub;
.source "PersonalProfileManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ims/profile/PersonalProfileManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProfileUpdateListenerRelay"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/ims/profile/PersonalProfileManager;


# direct methods
.method private constructor <init>(Lcom/sec/ims/profile/PersonalProfileManager;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/ims/profile/PersonalProfileManager$ProfileUpdateListenerRelay;->this$0:Lcom/sec/ims/profile/PersonalProfileManager;

    invoke-direct {p0}, Lcom/sec/ims/profile/IPersonalProfileNotify$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/ims/profile/PersonalProfileManager;Lcom/sec/ims/profile/PersonalProfileManager$ProfileUpdateListenerRelay;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/ims/profile/PersonalProfileManager$ProfileUpdateListenerRelay;-><init>(Lcom/sec/ims/profile/PersonalProfileManager;)V

    return-void
.end method


# virtual methods
.method public onNotify(Ljava/lang/String;ILjava/lang/String;Lcom/sec/ims/profile/ProfileInfo;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v2, p0, Lcom/sec/ims/profile/PersonalProfileManager$ProfileUpdateListenerRelay;->this$0:Lcom/sec/ims/profile/PersonalProfileManager;

    invoke-static {v2}, Lcom/sec/ims/profile/PersonalProfileManager;->-get1(Lcom/sec/ims/profile/PersonalProfileManager;)Ljava/util/ArrayList;

    move-result-object v3

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/sec/ims/profile/PersonalProfileManager$ProfileUpdateListenerRelay;->this$0:Lcom/sec/ims/profile/PersonalProfileManager;

    invoke-static {v2}, Lcom/sec/ims/profile/PersonalProfileManager;->-get1(Lcom/sec/ims/profile/PersonalProfileManager;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/ims/profile/PersonalProfileManager$Notify;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/sec/ims/profile/PersonalProfileManager$Notify;->onNotify(Ljava/lang/String;ILjava/lang/String;Lcom/sec/ims/profile/ProfileInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_0
    monitor-exit v3

    return-void
.end method
