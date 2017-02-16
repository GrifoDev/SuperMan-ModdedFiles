.class final Lcom/android/internal/app/EphemeralResolverService$ServiceHandler;
.super Landroid/os/Handler;
.source "EphemeralResolverService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/EphemeralResolverService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceHandler"
.end annotation


# static fields
.field public static final MSG_GET_EPHEMERAL_RESOLVE_INFO:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/EphemeralResolverService;


# direct methods
.method public constructor <init>(Lcom/android/internal/app/EphemeralResolverService;Landroid/os/Looper;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/internal/app/EphemeralResolverService;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/android/internal/app/EphemeralResolverService$ServiceHandler;->this$0:Lcom/android/internal/app/EphemeralResolverService;

    .line 74
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 73
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 80
    iget v0, p1, Landroid/os/Message;->what:I

    .line 81
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 96
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Unknown message: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 83
    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/IRemoteCallback;

    .line 85
    .local v1, "callback":Landroid/os/IRemoteCallback;
    iget-object v5, p0, Lcom/android/internal/app/EphemeralResolverService$ServiceHandler;->this$0:Lcom/android/internal/app/EphemeralResolverService;

    iget v6, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v6}, Lcom/android/internal/app/EphemeralResolverService;->getEphemeralResolveInfoList(I)Ljava/util/List;

    move-result-object v4

    .line 86
    .local v4, "resolveInfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/EphemeralResolveInfo;>;"
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 87
    .local v2, "data":Landroid/os/Bundle;
    const-string/jumbo v5, "com.android.internal.app.SEQUENCE"

    iget v6, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v2, v5, v6}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 88
    const-string/jumbo v5, "com.android.internal.app.RESOLVE_INFO"

    invoke-virtual {v2, v5, v4}, Landroid/os/Bundle;->putParcelableList(Ljava/lang/String;Ljava/util/List;)V

    .line 90
    :try_start_0
    invoke-interface {v1, v2}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    :goto_0
    return-void

    .line 91
    :catch_0
    move-exception v3

    .local v3, "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 81
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
