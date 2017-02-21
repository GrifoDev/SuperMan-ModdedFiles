.class Lcom/samsung/android/contextaware/utilbundle/CaCoverManager$1;
.super Lcom/samsung/android/cover/CoverManager$StateListener;
.source "CaCoverManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/contextaware/utilbundle/CaCoverManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/contextaware/utilbundle/CaCoverManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/contextaware/utilbundle/CaCoverManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/contextaware/utilbundle/CaCoverManager$1;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaCoverManager;

    invoke-direct {p0}, Lcom/samsung/android/cover/CoverManager$StateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCoverStateChanged(Lcom/samsung/android/cover/CoverState;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCoverManager$1;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaCoverManager;

    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/contextaware/utilbundle/CaCoverManager;->-set0(Lcom/samsung/android/contextaware/utilbundle/CaCoverManager;Z)Z

    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCoverManager$1;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaCoverManager;

    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/contextaware/utilbundle/CaCoverManager;->-set1(Lcom/samsung/android/contextaware/utilbundle/CaCoverManager;I)I

    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCoverManager$1;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaCoverManager;

    invoke-static {v0, p1}, Lcom/samsung/android/contextaware/utilbundle/CaCoverManager;->-wrap0(Lcom/samsung/android/contextaware/utilbundle/CaCoverManager;Lcom/samsung/android/cover/CoverState;)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "state is null"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    goto :goto_0
.end method
