.class Lcom/android/systemui/splugins/SPluginService$1;
.super Lcom/android/systemui/splugins/ISPluginServiceCallbacks$Stub;
.source "SPluginService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/splugins/SPluginService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/splugins/SPluginService;


# direct methods
.method constructor <init>(Lcom/android/systemui/splugins/SPluginService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/splugins/SPluginService$1;->this$0:Lcom/android/systemui/splugins/SPluginService;

    invoke-direct {p0}, Lcom/android/systemui/splugins/ISPluginServiceCallbacks$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public handlePluginConfigurationChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string/jumbo v0, "SPluginService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handlePluginConfigurationChanged : package="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "  className="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const-class v0, Lcom/android/systemui/splugins/SPluginManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/splugins/SPluginManager;

    invoke-interface {v0, p1, p2}, Lcom/android/systemui/splugins/SPluginManager;->handlePluginConfigurationChanged(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
