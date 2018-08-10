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
    .locals 2

    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "MARsPolicyManager"

    const-string/jumbo v1, "onChange - DEFAULT_INPUT_METHOD!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager$3;->this$0:Lcom/android/server/am/MARsPolicyManager;

    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager$3;->this$0:Lcom/android/server/am/MARsPolicyManager;

    iget-object v1, v1, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/am/MARsPolicyManager;->-wrap2(Lcom/android/server/am/MARsPolicyManager;I)V

    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager$3;->this$0:Lcom/android/server/am/MARsPolicyManager;

    iget-object v0, v0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager$3;->this$0:Lcom/android/server/am/MARsPolicyManager;

    invoke-static {v0}, Lcom/android/server/am/MARsPolicyManager;->-get0(Lcom/android/server/am/MARsPolicyManager;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager$3;->this$0:Lcom/android/server/am/MARsPolicyManager;

    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager$3;->this$0:Lcom/android/server/am/MARsPolicyManager;

    invoke-static {v1}, Lcom/android/server/am/MARsPolicyManager;->-get1(Lcom/android/server/am/MARsPolicyManager;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/am/MARsPolicyManager;->-wrap2(Lcom/android/server/am/MARsPolicyManager;I)V

    :cond_1
    return-void
.end method
