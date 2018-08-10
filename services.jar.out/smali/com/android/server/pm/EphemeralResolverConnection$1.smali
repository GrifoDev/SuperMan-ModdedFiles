.class Lcom/android/server/pm/EphemeralResolverConnection$1;
.super Landroid/os/IRemoteCallback$Stub;
.source "EphemeralResolverConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/EphemeralResolverConnection;->getInstantAppIntentFilterList([ILjava/lang/String;Ljava/lang/String;Lcom/android/server/pm/EphemeralResolverConnection$PhaseTwoCallback;Landroid/os/Handler;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/EphemeralResolverConnection;

.field final synthetic val$callback:Lcom/android/server/pm/EphemeralResolverConnection$PhaseTwoCallback;

.field final synthetic val$callbackHandler:Landroid/os/Handler;

.field final synthetic val$startTime:J


# direct methods
.method constructor <init>(Lcom/android/server/pm/EphemeralResolverConnection;Landroid/os/Handler;Lcom/android/server/pm/EphemeralResolverConnection$PhaseTwoCallback;J)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/EphemeralResolverConnection$1;->this$0:Lcom/android/server/pm/EphemeralResolverConnection;

    iput-object p2, p0, Lcom/android/server/pm/EphemeralResolverConnection$1;->val$callbackHandler:Landroid/os/Handler;

    iput-object p3, p0, Lcom/android/server/pm/EphemeralResolverConnection$1;->val$callback:Lcom/android/server/pm/EphemeralResolverConnection$PhaseTwoCallback;

    iput-wide p4, p0, Lcom/android/server/pm/EphemeralResolverConnection$1;->val$startTime:J

    invoke-direct {p0}, Landroid/os/IRemoteCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public sendResult(Landroid/os/Bundle;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string/jumbo v0, "android.app.extra.RESOLVE_INFO"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v6, p0, Lcom/android/server/pm/EphemeralResolverConnection$1;->val$callbackHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/pm/EphemeralResolverConnection$1$1;

    iget-object v2, p0, Lcom/android/server/pm/EphemeralResolverConnection$1;->val$callback:Lcom/android/server/pm/EphemeralResolverConnection$PhaseTwoCallback;

    iget-wide v4, p0, Lcom/android/server/pm/EphemeralResolverConnection$1;->val$startTime:J

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/EphemeralResolverConnection$1$1;-><init>(Lcom/android/server/pm/EphemeralResolverConnection$1;Lcom/android/server/pm/EphemeralResolverConnection$PhaseTwoCallback;Ljava/util/ArrayList;J)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
