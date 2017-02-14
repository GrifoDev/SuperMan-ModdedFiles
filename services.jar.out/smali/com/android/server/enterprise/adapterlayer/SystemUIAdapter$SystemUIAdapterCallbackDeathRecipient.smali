.class Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter$SystemUIAdapterCallbackDeathRecipient;
.super Ljava/lang/Object;
.source "SystemUIAdapter.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SystemUIAdapterCallbackDeathRecipient"
.end annotation


# instance fields
.field private number:I

.field final synthetic this$0:Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;I)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter$SystemUIAdapterCallbackDeathRecipient;->this$0:Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter$SystemUIAdapterCallbackDeathRecipient;->number:I

    iput p2, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter$SystemUIAdapterCallbackDeathRecipient;->number:I

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    const-string/jumbo v0, "SystemUIAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "binderDied() number = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter$SystemUIAdapterCallbackDeathRecipient;->number:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter$SystemUIAdapterCallbackDeathRecipient;->this$0:Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;

    invoke-static {v0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->-get0(Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;)Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter$SystemUIAdapterCallbackDeathRecipient;->this$0:Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;

    invoke-static {v0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->-get0(Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;)Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;

    move-result-object v0

    invoke-interface {v0}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter$SystemUIAdapterCallbackDeathRecipient;->this$0:Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->-set0(Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;Z)Z

    return-void
.end method
