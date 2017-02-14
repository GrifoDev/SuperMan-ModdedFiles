.class Lcom/android/server/am/SchedPolicyManager$1;
.super Landroid/os/Handler;
.source "SchedPolicyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/SchedPolicyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/SchedPolicyManager;


# direct methods
.method constructor <init>(Lcom/android/server/am/SchedPolicyManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/SchedPolicyManager$1;->this$0:Lcom/android/server/am/SchedPolicyManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    new-instance v0, Lcom/android/server/am/SchedPolicyManager$ScpmUpdateThread;

    iget-object v1, p0, Lcom/android/server/am/SchedPolicyManager$1;->this$0:Lcom/android/server/am/SchedPolicyManager;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/SchedPolicyManager$ScpmUpdateThread;-><init>(Lcom/android/server/am/SchedPolicyManager;I)V

    invoke-virtual {v0}, Lcom/android/server/am/SchedPolicyManager$ScpmUpdateThread;->start()V

    return-void
.end method
