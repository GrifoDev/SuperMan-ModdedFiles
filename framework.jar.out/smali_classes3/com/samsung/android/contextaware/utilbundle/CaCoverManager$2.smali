.class Lcom/samsung/android/contextaware/utilbundle/CaCoverManager$2;
.super Ljava/lang/Object;
.source "CaCoverManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/contextaware/utilbundle/CaCoverManager;->terminateManager()V
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

    iput-object p1, p0, Lcom/samsung/android/contextaware/utilbundle/CaCoverManager$2;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaCoverManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCoverManager$2;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaCoverManager;

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/CaCoverManager;->-get0(Lcom/samsung/android/contextaware/utilbundle/CaCoverManager;)Lcom/samsung/android/cover/CoverManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCoverManager$2;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaCoverManager;

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/CaCoverManager;->-get1(Lcom/samsung/android/contextaware/utilbundle/CaCoverManager;)Lcom/samsung/android/cover/CoverManager$StateListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaCoverManager$2;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaCoverManager;

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/CaCoverManager;->-get0(Lcom/samsung/android/contextaware/utilbundle/CaCoverManager;)Lcom/samsung/android/cover/CoverManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/contextaware/utilbundle/CaCoverManager$2;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaCoverManager;

    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/CaCoverManager;->-get1(Lcom/samsung/android/contextaware/utilbundle/CaCoverManager;)Lcom/samsung/android/cover/CoverManager$StateListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/cover/CoverManager;->unregisterListener(Lcom/samsung/android/cover/CoverManager$StateListener;)V

    :cond_0
    return-void
.end method
