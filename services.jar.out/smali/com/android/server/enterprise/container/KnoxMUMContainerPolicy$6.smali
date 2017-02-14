.class Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$6;
.super Ljava/lang/Thread;
.source "KnoxMUMContainerPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->doSelfUninstall()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

.field final synthetic val$callingUid:I

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$6;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    iput-object p2, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$6;->val$packageName:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$6;->val$callingUid:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$6;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    invoke-static {v1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-get3(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)Landroid/app/ActivityManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$6;->val$packageName:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$6;->val$callingUid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/app/ActivityManager;->forceStopPackageAsUser(Ljava/lang/String;I)V

    const-wide/16 v2, 0x1f4

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-get5()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$6;->val$packageName:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$6;->val$callingUid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->deletePackageAsUser(Ljava/lang/String;II)Z

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
