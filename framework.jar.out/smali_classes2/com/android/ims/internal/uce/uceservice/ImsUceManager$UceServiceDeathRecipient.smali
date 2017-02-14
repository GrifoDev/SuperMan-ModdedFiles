.class Lcom/android/ims/internal/uce/uceservice/ImsUceManager$UceServiceDeathRecipient;
.super Ljava/lang/Object;
.source "ImsUceManager.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/internal/uce/uceservice/ImsUceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UceServiceDeathRecipient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/ims/internal/uce/uceservice/ImsUceManager;


# direct methods
.method private constructor <init>(Lcom/android/ims/internal/uce/uceservice/ImsUceManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/ims/internal/uce/uceservice/ImsUceManager$UceServiceDeathRecipient;->this$0:Lcom/android/ims/internal/uce/uceservice/ImsUceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/ims/internal/uce/uceservice/ImsUceManager;Lcom/android/ims/internal/uce/uceservice/ImsUceManager$UceServiceDeathRecipient;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/ims/internal/uce/uceservice/ImsUceManager$UceServiceDeathRecipient;-><init>(Lcom/android/ims/internal/uce/uceservice/ImsUceManager;)V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/ims/internal/uce/uceservice/ImsUceManager$UceServiceDeathRecipient;->this$0:Lcom/android/ims/internal/uce/uceservice/ImsUceManager;

    invoke-static {v1, v2}, Lcom/android/ims/internal/uce/uceservice/ImsUceManager;->-set0(Lcom/android/ims/internal/uce/uceservice/ImsUceManager;Lcom/android/ims/internal/uce/uceservice/IUceService;)Lcom/android/ims/internal/uce/uceservice/IUceService;

    iget-object v1, p0, Lcom/android/ims/internal/uce/uceservice/ImsUceManager$UceServiceDeathRecipient;->this$0:Lcom/android/ims/internal/uce/uceservice/ImsUceManager;

    invoke-static {v1}, Lcom/android/ims/internal/uce/uceservice/ImsUceManager;->-get0(Lcom/android/ims/internal/uce/uceservice/ImsUceManager;)Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.android.ims.internal.uce.UCE_SERVICE_DOWN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "android:phone_id"

    iget-object v2, p0, Lcom/android/ims/internal/uce/uceservice/ImsUceManager$UceServiceDeathRecipient;->this$0:Lcom/android/ims/internal/uce/uceservice/ImsUceManager;

    invoke-static {v2}, Lcom/android/ims/internal/uce/uceservice/ImsUceManager;->-get1(Lcom/android/ims/internal/uce/uceservice/ImsUceManager;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/ims/internal/uce/uceservice/ImsUceManager$UceServiceDeathRecipient;->this$0:Lcom/android/ims/internal/uce/uceservice/ImsUceManager;

    invoke-static {v1}, Lcom/android/ims/internal/uce/uceservice/ImsUceManager;->-get0(Lcom/android/ims/internal/uce/uceservice/ImsUceManager;)Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
