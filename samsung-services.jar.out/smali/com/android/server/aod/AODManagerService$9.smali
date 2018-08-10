.class Lcom/android/server/aod/AODManagerService$9;
.super Lcom/samsung/android/cover/CoverManager$StateListener;
.source "AODManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/aod/AODManagerService;->initCoverManager(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/aod/AODManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/aod/AODManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/aod/AODManagerService$9;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-direct {p0}, Lcom/samsung/android/cover/CoverManager$StateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCoverStateChanged(Lcom/samsung/android/cover/CoverState;)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/server/aod/AODManagerService$9;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getAttachState()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/android/server/aod/AODManagerService;->-set2(Lcom/android/server/aod/AODManagerService;Z)Z

    iget-object v1, p0, Lcom/android/server/aod/AODManagerService$9;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-static {v1, v2}, Lcom/android/server/aod/AODManagerService;->-set3(Lcom/android/server/aod/AODManagerService;Z)Z

    iget-object v2, p0, Lcom/android/server/aod/AODManagerService$9;->this$0:Lcom/android/server/aod/AODManagerService;

    iget-object v1, p0, Lcom/android/server/aod/AODManagerService$9;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-static {v1}, Lcom/android/server/aod/AODManagerService;->-get11(Lcom/android/server/aod/AODManagerService;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/aod/AODManagerService$9;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-static {v1}, Lcom/android/server/aod/AODManagerService;->-get12(Lcom/android/server/aod/AODManagerService;)Z

    move-result v1

    :goto_0
    invoke-static {v2, v1}, Lcom/android/server/aod/AODManagerService;->-set4(Lcom/android/server/aod/AODManagerService;Z)Z

    iget-object v1, p0, Lcom/android/server/aod/AODManagerService$9;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-static {v1}, Lcom/android/server/aod/AODManagerService;->-get9(Lcom/android/server/aod/AODManagerService;)Lcom/android/server/aod/settings/AODSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/aod/settings/AODSettings;->getAODEnableSettings()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/server/aod/AODManagerService$9;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-static {v1}, Lcom/android/server/aod/AODManagerService;->-get11(Lcom/android/server/aod/AODManagerService;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/aod/AODManagerService$9;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-static {v1}, Lcom/android/server/aod/AODManagerService;->-wrap1(Lcom/android/server/aod/AODManagerService;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p1, Lcom/samsung/android/cover/CoverState;->type:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/server/aod/AODManagerService$9;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-static {v1}, Lcom/android/server/aod/AODManagerService;->-wrap21(Lcom/android/server/aod/AODManagerService;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/server/aod/AODManagerService$9;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-static {v1}, Lcom/android/server/aod/AODManagerService;->-wrap31(Lcom/android/server/aod/AODManagerService;)V

    goto :goto_1
.end method
