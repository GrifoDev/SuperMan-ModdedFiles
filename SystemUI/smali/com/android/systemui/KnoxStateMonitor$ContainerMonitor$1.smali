.class Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor$1;
.super Landroid/content/BroadcastReceiver;
.source "KnoxStateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;


# direct methods
.method constructor <init>(Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor$1;->this$1:Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    const/4 v4, -0x1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "android.intent.action.MANAGED_PROFILE_ADDED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "com.samsung.knox.securefolder.SETUP_COMPLETE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_0
    const-string/jumbo v3, "userId"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_1

    const-string/jumbo v3, "android.intent.extra.USER"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    :cond_1
    const-string/jumbo v3, "KnoxStateMonitor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onReceive : Intent Action  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " ,User: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor$1;->this$1:Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;

    invoke-static {v3, v1}, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->-wrap1(Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;I)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor$1;->this$1:Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;

    iget-object v4, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor$1;->this$1:Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;

    invoke-static {v4}, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->-get6(Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;)Landroid/os/UserManager;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->-set1(Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;Ljava/util/List;)Ljava/util/List;

    iget-object v3, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor$1;->this$1:Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;

    invoke-static {v3}, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->-get0(Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v3, "KnoxStateMonitor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "add a PersonaObserver for newly added user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v3, p0, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor$1;->this$1:Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;

    invoke-static {v3, v1}, Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;->-wrap7(Lcom/android/systemui/KnoxStateMonitor$ContainerMonitor;I)V

    :cond_3
    return-void
.end method
