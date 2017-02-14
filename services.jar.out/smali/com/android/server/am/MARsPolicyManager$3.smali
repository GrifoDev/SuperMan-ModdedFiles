.class Lcom/android/server/am/MARsPolicyManager$3;
.super Landroid/database/ContentObserver;
.source "MARsPolicyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/MARsPolicyManager;->registerDefaultInputMethodChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/MARsPolicyManager;


# direct methods
.method constructor <init>(Lcom/android/server/am/MARsPolicyManager;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/MARsPolicyManager$3;->this$0:Lcom/android/server/am/MARsPolicyManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager$3;->this$0:Lcom/android/server/am/MARsPolicyManager;

    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager$3;->this$0:Lcom/android/server/am/MARsPolicyManager;

    invoke-static {v1}, Lcom/android/server/am/MARsPolicyManager;->-wrap1(Lcom/android/server/am/MARsPolicyManager;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/am/MARsPolicyManager;->-set0(Lcom/android/server/am/MARsPolicyManager;Ljava/lang/String;)Ljava/lang/String;

    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "MARsPolicyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onChange - DEFAULT_INPUT_METHOD!  defaultIME = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager$3;->this$0:Lcom/android/server/am/MARsPolicyManager;

    invoke-static {v2}, Lcom/android/server/am/MARsPolicyManager;->-get3(Lcom/android/server/am/MARsPolicyManager;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
