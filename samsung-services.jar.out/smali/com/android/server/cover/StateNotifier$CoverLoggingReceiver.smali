.class final Lcom/android/server/cover/StateNotifier$CoverLoggingReceiver;
.super Landroid/content/BroadcastReceiver;
.source "StateNotifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/cover/StateNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CoverLoggingReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/cover/StateNotifier;


# direct methods
.method private constructor <init>(Lcom/android/server/cover/StateNotifier;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/cover/StateNotifier$CoverLoggingReceiver;->this$0:Lcom/android/server/cover/StateNotifier;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/cover/StateNotifier;Lcom/android/server/cover/StateNotifier$CoverLoggingReceiver;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/cover/StateNotifier$CoverLoggingReceiver;-><init>(Lcom/android/server/cover/StateNotifier;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/android/server/cover/StateNotifier;->-get0()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "CoverLoggingReceiver: onReceive: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "com.sec.android.intent.action.HQM_TRIGGER"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/cover/StateNotifier$CoverLoggingReceiver;->this$0:Lcom/android/server/cover/StateNotifier;

    invoke-static {v1}, Lcom/android/server/cover/StateNotifier;->-wrap4(Lcom/android/server/cover/StateNotifier;)V

    :cond_0
    return-void
.end method
