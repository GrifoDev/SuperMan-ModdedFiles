.class Lcom/sec/ims/profile/PersonalProfileManager$NotifyRelay;
.super Lcom/sec/ims/profile/IPersonalProfileNotify$Stub;
.source "PersonalProfileManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ims/profile/PersonalProfileManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NotifyRelay"
.end annotation


# instance fields
.field private mNotify:Lcom/sec/ims/profile/PersonalProfileManager$Notify;

.field final synthetic this$0:Lcom/sec/ims/profile/PersonalProfileManager;


# direct methods
.method public constructor <init>(Lcom/sec/ims/profile/PersonalProfileManager;Lcom/sec/ims/profile/PersonalProfileManager$Notify;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/ims/profile/PersonalProfileManager$NotifyRelay;->this$0:Lcom/sec/ims/profile/PersonalProfileManager;

    invoke-direct {p0}, Lcom/sec/ims/profile/IPersonalProfileNotify$Stub;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/ims/profile/PersonalProfileManager$NotifyRelay;->mNotify:Lcom/sec/ims/profile/PersonalProfileManager$Notify;

    iput-object p2, p0, Lcom/sec/ims/profile/PersonalProfileManager$NotifyRelay;->mNotify:Lcom/sec/ims/profile/PersonalProfileManager$Notify;

    return-void
.end method


# virtual methods
.method public onNotify(Ljava/lang/String;ILjava/lang/String;Lcom/sec/ims/profile/ProfileInfo;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/ims/profile/PersonalProfileManager$NotifyRelay;->mNotify:Lcom/sec/ims/profile/PersonalProfileManager$Notify;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/ims/profile/PersonalProfileManager$NotifyRelay;->mNotify:Lcom/sec/ims/profile/PersonalProfileManager$Notify;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/sec/ims/profile/PersonalProfileManager$Notify;->onNotify(Ljava/lang/String;ILjava/lang/String;Lcom/sec/ims/profile/ProfileInfo;)V

    :cond_0
    return-void
.end method
