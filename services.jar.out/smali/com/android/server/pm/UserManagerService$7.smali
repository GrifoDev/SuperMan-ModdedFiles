.class Lcom/android/server/pm/UserManagerService$7;
.super Landroid/content/BroadcastReceiver;
.source "UserManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/UserManagerService;->finishRemoveUser(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/UserManagerService;

.field final synthetic val$userHandle:I


# direct methods
.method constructor <init>(Lcom/android/server/pm/UserManagerService;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/UserManagerService$7;->this$0:Lcom/android/server/pm/UserManagerService;

    iput p2, p0, Lcom/android/server/pm/UserManagerService$7;->val$userHandle:I

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    new-instance v0, Lcom/android/server/pm/UserManagerService$7$1;

    iget v1, p0, Lcom/android/server/pm/UserManagerService$7;->val$userHandle:I

    invoke-direct {v0, p0, v1}, Lcom/android/server/pm/UserManagerService$7$1;-><init>(Lcom/android/server/pm/UserManagerService$7;I)V

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService$7$1;->start()V

    return-void
.end method
