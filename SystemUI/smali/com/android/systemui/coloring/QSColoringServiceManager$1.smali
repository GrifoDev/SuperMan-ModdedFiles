.class Lcom/android/systemui/coloring/QSColoringServiceManager$1;
.super Ljava/lang/Object;
.source "QSColoringServiceManager.java"

# interfaces
.implements Lcom/samsung/systemui/splugins/coloring/PluginQSColoring$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/coloring/QSColoringServiceManager;->setPluginQSColoringCallback()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/coloring/QSColoringServiceManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/coloring/QSColoringServiceManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/coloring/QSColoringServiceManager$1;->this$0:Lcom/android/systemui/coloring/QSColoringServiceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public applyColoring(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/coloring/QSColoringServiceManager$1;->this$0:Lcom/android/systemui/coloring/QSColoringServiceManager;

    invoke-static {v0, p1}, Lcom/android/systemui/coloring/QSColoringServiceManager;->-set4(Lcom/android/systemui/coloring/QSColoringServiceManager;Z)Z

    iget-object v0, p0, Lcom/android/systemui/coloring/QSColoringServiceManager$1;->this$0:Lcom/android/systemui/coloring/QSColoringServiceManager;

    iget-object v1, p0, Lcom/android/systemui/coloring/QSColoringServiceManager$1;->this$0:Lcom/android/systemui/coloring/QSColoringServiceManager;

    invoke-static {v1}, Lcom/android/systemui/coloring/QSColoringServiceManager;->-get0(Lcom/android/systemui/coloring/QSColoringServiceManager;)Lcom/samsung/systemui/splugins/coloring/PluginQSColoring;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/systemui/splugins/coloring/PluginQSColoring;->isUserPreferOpenTheme()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/coloring/QSColoringServiceManager;->-set5(Lcom/android/systemui/coloring/QSColoringServiceManager;Z)Z

    iget-object v0, p0, Lcom/android/systemui/coloring/QSColoringServiceManager$1;->this$0:Lcom/android/systemui/coloring/QSColoringServiceManager;

    invoke-static {v0}, Lcom/android/systemui/coloring/QSColoringServiceManager;->-wrap1(Lcom/android/systemui/coloring/QSColoringServiceManager;)V

    return-void
.end method

.method public applyColoringBlurEffect(ZF)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/coloring/QSColoringServiceManager$1;->this$0:Lcom/android/systemui/coloring/QSColoringServiceManager;

    invoke-static {v0, p1}, Lcom/android/systemui/coloring/QSColoringServiceManager;->-set1(Lcom/android/systemui/coloring/QSColoringServiceManager;Z)Z

    iget-object v0, p0, Lcom/android/systemui/coloring/QSColoringServiceManager$1;->this$0:Lcom/android/systemui/coloring/QSColoringServiceManager;

    invoke-static {v0, p2}, Lcom/android/systemui/coloring/QSColoringServiceManager;->-set0(Lcom/android/systemui/coloring/QSColoringServiceManager;F)F

    return-void
.end method

.method public applyColoringDimEffect(ZF)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/coloring/QSColoringServiceManager$1;->this$0:Lcom/android/systemui/coloring/QSColoringServiceManager;

    invoke-static {v0, p1}, Lcom/android/systemui/coloring/QSColoringServiceManager;->-set3(Lcom/android/systemui/coloring/QSColoringServiceManager;Z)Z

    iget-object v0, p0, Lcom/android/systemui/coloring/QSColoringServiceManager$1;->this$0:Lcom/android/systemui/coloring/QSColoringServiceManager;

    invoke-static {v0, p2}, Lcom/android/systemui/coloring/QSColoringServiceManager;->-set2(Lcom/android/systemui/coloring/QSColoringServiceManager;F)F

    return-void
.end method

.method public applyColoringResources()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/coloring/QSColoringServiceManager$1;->this$0:Lcom/android/systemui/coloring/QSColoringServiceManager;

    invoke-static {v0}, Lcom/android/systemui/coloring/QSColoringServiceManager;->-wrap0(Lcom/android/systemui/coloring/QSColoringServiceManager;)V

    return-void
.end method
