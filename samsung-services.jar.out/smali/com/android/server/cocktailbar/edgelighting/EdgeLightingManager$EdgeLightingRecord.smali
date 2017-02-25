.class Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$EdgeLightingRecord;
.super Ljava/lang/Object;
.source "EdgeLightingManager.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EdgeLightingRecord"
.end annotation


# instance fields
.field final packageName:Ljava/lang/String;

.field final response:Landroid/os/IBinder;

.field final synthetic this$0:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;

.field final token:Landroid/os/IBinder;

.field final type:I


# direct methods
.method constructor <init>(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;Landroid/os/IBinder;Ljava/lang/String;I)V
    .locals 3

    iput-object p1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$EdgeLightingRecord;->this$0:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$EdgeLightingRecord;->token:Landroid/os/IBinder;

    iput-object p3, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$EdgeLightingRecord;->packageName:Ljava/lang/String;

    iput p4, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$EdgeLightingRecord;->type:I

    new-instance v1, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$EdgeLightingRecord$1;

    invoke-direct {v1, p0}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$EdgeLightingRecord$1;-><init>(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$EdgeLightingRecord;)V

    iput-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$EdgeLightingRecord;->response:Landroid/os/IBinder;

    :try_start_0
    iget-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$EdgeLightingRecord;->token:Landroid/os/IBinder;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$EdgeLightingRecord;->token:Landroid/os/IBinder;

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->-get0()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "EdgeLightingRecord : linkToDeath error"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$EdgeLightingRecord;->this$0:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;

    invoke-static {v0, p0}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;->-wrap1(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$EdgeLightingRecord;)V

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$EdgeLightingRecord;->token:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return-void
.end method

.method dump()Ljava/lang/String;
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  [Record: packageName: ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$EdgeLightingRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") token:("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$EdgeLightingRecord;->token:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
