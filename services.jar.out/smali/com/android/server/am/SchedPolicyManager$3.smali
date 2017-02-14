.class Lcom/android/server/am/SchedPolicyManager$3;
.super Landroid/content/BroadcastReceiver;
.source "SchedPolicyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/SchedPolicyManager;->registerScpmReceiver()V
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

    iput-object p1, p0, Lcom/android/server/am/SchedPolicyManager$3;->this$0:Lcom/android/server/am/SchedPolicyManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/SchedPolicyManager$3;->this$0:Lcom/android/server/am/SchedPolicyManager;

    invoke-static {v0}, Lcom/android/server/am/SchedPolicyManager;->-wrap2(Lcom/android/server/am/SchedPolicyManager;)V

    return-void
.end method
