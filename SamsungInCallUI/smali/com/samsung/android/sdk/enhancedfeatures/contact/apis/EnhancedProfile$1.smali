.class Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/samsung/android/sdk/enhancedfeatures/internal/common/EnhancedFeatureInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeregister()V
    .locals 4

    const-string v0, "onDeregister"

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;->access$300(Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDeregister syncTaskArrayList = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;->access$300(Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;->access$300(Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/SyncTask;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/SyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v2

    sget-object v3, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v2, v3, :cond_0

    const-string v2, "onDeregister syncTask cancel"

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;->access$000()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/SyncTask;->cancel(Z)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;->access$300(Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;->clearDB()V

    return-void
.end method

.method public onPushReceive(Landroid/content/Context;Landroid/content/Intent;I)V
    .locals 6

    const-string v0, "Received Contact Push"

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;->access$100(Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;)Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/EnhancedProfilePushListener;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "sessionInfo"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "appData"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    const-string v0, "timeStamp"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :goto_0
    iget-object v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;

    invoke-static {v3}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;->access$100(Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;)Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/EnhancedProfilePushListener;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/ProfilePushInfo;

    invoke-direct {v4, p3, v1, v2, v0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/ProfilePushInfo;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    invoke-interface {v3, v4}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/EnhancedProfilePushListener;->onPushReceive(Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/ProfilePushInfo;)V

    :goto_1
    return-void

    :cond_0
    const-string v0, "timeStamp"

    const-wide/16 v4, -0x1

    invoke-virtual {p2, v0, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;

    new-instance v1, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile$1$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile$1$1;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile$1;)V

    new-instance v2, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile$1$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile$1$2;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile$1;)V

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;->syncContactSinceLastSync(Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/ContactSyncListener;Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/DownloadImageListener;)V

    goto :goto_1
.end method

.method public onRegister()V
    .locals 4

    const-string v0, "onRegister"

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;->clearDB()V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;->access$100(Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;)Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/EnhancedProfilePushListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;->access$100(Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;)Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/EnhancedProfilePushListener;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/ProfileBaseResponse;

    invoke-direct {v1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/ProfileBaseResponse;-><init>()V

    invoke-interface {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/EnhancedProfilePushListener;->onRegister(Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/ProfileBaseResponse;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile$1$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile$1$3;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile$1;)V

    new-instance v1, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile$1$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile$1$4;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile$1;)V

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;

    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;->access$200(Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonFeature;->supportCoreAppsJoinAuth(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "Support CoreAppsJoinAuth"

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;->access$000()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;

    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;->access$200(Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/internal/EasySignUpInterface;->getContactSyncAgreement(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;

    invoke-virtual {v2, v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;->syncLocalContact(Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/ContactSyncListener;Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/DownloadImageListener;)V

    goto :goto_0

    :cond_2
    const-string v2, "Not Support CoreAppsJoinAuth"

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;->access$000()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;

    invoke-virtual {v2, v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;->syncLocalContact(Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/ContactSyncListener;Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/DownloadImageListener;)V

    goto :goto_0
.end method
