.class Lcom/android/server/enterprise/ccm/ClientCertificateManager$SystemPersonaObserver;
.super Landroid/content/pm/ISystemPersonaObserver$Stub;
.source "ClientCertificateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/ccm/ClientCertificateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SystemPersonaObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/ccm/ClientCertificateManager;


# direct methods
.method private constructor <init>(Lcom/android/server/enterprise/ccm/ClientCertificateManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$SystemPersonaObserver;->this$0:Lcom/android/server/enterprise/ccm/ClientCertificateManager;

    invoke-direct {p0}, Landroid/content/pm/ISystemPersonaObserver$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/enterprise/ccm/ClientCertificateManager;Lcom/android/server/enterprise/ccm/ClientCertificateManager$SystemPersonaObserver;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager$SystemPersonaObserver;-><init>(Lcom/android/server/enterprise/ccm/ClientCertificateManager;)V

    return-void
.end method


# virtual methods
.method public onKnoxContainerLaunch(I)V
    .locals 3

    invoke-static {}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->-get1()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " onKnoxContainerLaunch called for  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPersonaActive(I)V
    .locals 3

    invoke-static {}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->-get1()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " onPersonaActive called for  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onRemovePersona(I)V
    .locals 3

    invoke-static {}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->-get1()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " onRemovePersona called for  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$SystemPersonaObserver;->this$0:Lcom/android/server/enterprise/ccm/ClientCertificateManager;

    const/4 v1, -0x1

    invoke-static {v0, v1, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->-wrap2(Lcom/android/server/enterprise/ccm/ClientCertificateManager;II)Z

    iget-object v0, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$SystemPersonaObserver;->this$0:Lcom/android/server/enterprise/ccm/ClientCertificateManager;

    invoke-static {v0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->-wrap3(Lcom/android/server/enterprise/ccm/ClientCertificateManager;I)Z

    iget-object v0, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$SystemPersonaObserver;->this$0:Lcom/android/server/enterprise/ccm/ClientCertificateManager;

    invoke-static {v0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->-wrap1(Lcom/android/server/enterprise/ccm/ClientCertificateManager;I)Z

    iget-object v0, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$SystemPersonaObserver;->this$0:Lcom/android/server/enterprise/ccm/ClientCertificateManager;

    invoke-static {v0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->-wrap0(Lcom/android/server/enterprise/ccm/ClientCertificateManager;I)Z

    return-void
.end method

.method public onResetPersona(I)V
    .locals 3

    invoke-static {}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->-get1()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " onResetPersona called for  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$SystemPersonaObserver;->this$0:Lcom/android/server/enterprise/ccm/ClientCertificateManager;

    const/4 v1, -0x1

    invoke-static {v0, v1, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->-wrap2(Lcom/android/server/enterprise/ccm/ClientCertificateManager;II)Z

    iget-object v0, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$SystemPersonaObserver;->this$0:Lcom/android/server/enterprise/ccm/ClientCertificateManager;

    invoke-static {v0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->-wrap3(Lcom/android/server/enterprise/ccm/ClientCertificateManager;I)Z

    iget-object v0, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$SystemPersonaObserver;->this$0:Lcom/android/server/enterprise/ccm/ClientCertificateManager;

    invoke-static {v0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->-wrap1(Lcom/android/server/enterprise/ccm/ClientCertificateManager;I)Z

    iget-object v0, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$SystemPersonaObserver;->this$0:Lcom/android/server/enterprise/ccm/ClientCertificateManager;

    invoke-static {v0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->-wrap0(Lcom/android/server/enterprise/ccm/ClientCertificateManager;I)Z

    return-void
.end method

.method public onStateChange(ILcom/samsung/android/knox/SemPersonaState;Lcom/samsung/android/knox/SemPersonaState;)V
    .locals 0

    return-void
.end method
