.class Lcom/android/internal/app/EphemeralResolverService$1;
.super Lcom/android/internal/app/IEphemeralResolver$Stub;
.source "EphemeralResolverService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/EphemeralResolverService;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/EphemeralResolverService;


# direct methods
.method constructor <init>(Lcom/android/internal/app/EphemeralResolverService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/app/EphemeralResolverService$1;->this$0:Lcom/android/internal/app/EphemeralResolverService;

    invoke-direct {p0}, Lcom/android/internal/app/IEphemeralResolver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getEphemeralResolveInfoList(Landroid/os/IRemoteCallback;II)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/app/EphemeralResolverService$1;->this$0:Lcom/android/internal/app/EphemeralResolverService;

    invoke-static {v0}, Lcom/android/internal/app/EphemeralResolverService;->-get0(Lcom/android/internal/app/EphemeralResolverService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p2, p3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
