.class Landroid/content/pm/RegisteredServicesCache$2;
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
    .line 212
    .local p1, "this$0":Landroid/content/pm/RegisteredServicesCache;, "Landroid/content/pm/RegisteredServicesCache<TV;>;"
    iput-object p1, p0, Landroid/content/pm/RegisteredServicesCache$2;->this$0:Landroid/content/pm/RegisteredServicesCache;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 216
    iget-object v0, p0, Landroid/content/pm/RegisteredServicesCache$2;->this$0:Landroid/content/pm/RegisteredServicesCache;

    const/4 v1, 0x0

    invoke-static {v0, p2, v1}, Landroid/content/pm/RegisteredServicesCache;->-wrap0(Landroid/content/pm/RegisteredServicesCache;Landroid/content/Intent;I)V

    .line 214
    return-void
.end method
