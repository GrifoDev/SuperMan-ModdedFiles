.class Landroid/content/pm/RegisteredServicesCache$1;
.super Landroid/content/BroadcastReceiver;
.source "RegisteredServicesCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/RegisteredServicesCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/content/pm/RegisteredServicesCache;


# direct methods
.method constructor <init>(Landroid/content/pm/RegisteredServicesCache;)V
    .locals 0

    .prologue
    .line 202
    .local p1, "this$0":Landroid/content/pm/RegisteredServicesCache;, "Landroid/content/pm/RegisteredServicesCache<TV;>;"
    iput-object p1, p0, Landroid/content/pm/RegisteredServicesCache$1;->this$0:Landroid/content/pm/RegisteredServicesCache;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, -0x1

    .line 205
    const-string/jumbo v1, "android.intent.extra.UID"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 206
    .local v0, "uid":I
    if-eq v0, v2, :cond_0

    .line 207
    iget-object v1, p0, Landroid/content/pm/RegisteredServicesCache$1;->this$0:Landroid/content/pm/RegisteredServicesCache;

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-static {v1, p2, v2}, Landroid/content/pm/RegisteredServicesCache;->-wrap0(Landroid/content/pm/RegisteredServicesCache;Landroid/content/Intent;I)V

    .line 204
    :cond_0
    return-void
.end method
