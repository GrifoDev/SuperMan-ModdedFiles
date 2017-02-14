.class Lcom/absolute/android/persistservice/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/absolute/android/persistservice/ABTPersistenceService;


# direct methods
.method constructor <init>(Lcom/absolute/android/persistservice/ABTPersistenceService;I)V
    .locals 0

    iput-object p1, p0, Lcom/absolute/android/persistservice/a;->b:Lcom/absolute/android/persistservice/ABTPersistenceService;

    iput p2, p0, Lcom/absolute/android/persistservice/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v1, 0x0

    invoke-static {}, Landroid/os/Looper;->prepare()V

    const-wide/16 v2, 0x1388

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    const/4 v0, 0x5

    iget-object v2, p0, Lcom/absolute/android/persistservice/a;->b:Lcom/absolute/android/persistservice/ABTPersistenceService;

    invoke-static {v2}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a(Lcom/absolute/android/persistservice/ABTPersistenceService;)Lcom/absolute/android/persistservice/v;

    move-result-object v2

    const-string/jumbo v3, "Start sending PS_READY intents"

    invoke-virtual {v2, v3}, Lcom/absolute/android/persistservice/v;->c(Ljava/lang/String;)V

    :goto_0
    iget v2, p0, Lcom/absolute/android/persistservice/a;->a:I

    if-le v1, v2, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/absolute/android/persistservice/a;->b:Lcom/absolute/android/persistservice/ABTPersistenceService;

    invoke-static {v0}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a(Lcom/absolute/android/persistservice/ABTPersistenceService;)Lcom/absolute/android/persistservice/v;

    move-result-object v0

    const-string/jumbo v1, "Stop sending PS_READY intents"

    invoke-virtual {v0, v1}, Lcom/absolute/android/persistservice/v;->c(Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_1
    iget-object v2, p0, Lcom/absolute/android/persistservice/a;->b:Lcom/absolute/android/persistservice/ABTPersistenceService;

    invoke-static {v2}, Lcom/absolute/android/persistservice/ABTPersistenceService;->b(Lcom/absolute/android/persistservice/ABTPersistenceService;)Lcom/absolute/android/persistservice/k;

    move-result-object v2

    invoke-virtual {v2}, Lcom/absolute/android/persistservice/k;->b()I

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "com.absolute.action.PS_READY"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeInt(I)V

    new-instance v4, Landroid/os/UserHandle;

    invoke-direct {v4, v3}, Landroid/os/UserHandle;-><init>(Landroid/os/Parcel;)V

    iget-object v3, p0, Lcom/absolute/android/persistservice/a;->b:Lcom/absolute/android/persistservice/ABTPersistenceService;

    invoke-static {v3}, Lcom/absolute/android/persistservice/ABTPersistenceService;->c(Lcom/absolute/android/persistservice/ABTPersistenceService;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    const/16 v2, 0x3c

    if-ge v1, v2, :cond_2

    :goto_2
    mul-int/lit16 v2, v0, 0x3e8

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v1, v0

    goto :goto_0

    :cond_2
    const/16 v0, 0x14

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1
.end method
