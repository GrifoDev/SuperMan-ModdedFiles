.class Lcom/android/server/policy/CombinationKeyManager$9;
.super Ljava/lang/Object;
.source "CombinationKeyManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/CombinationKeyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/CombinationKeyManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/CombinationKeyManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/policy/CombinationKeyManager$9;->this$0:Lcom/android/server/policy/CombinationKeyManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/policy/CombinationKeyManager$9;->this$0:Lcom/android/server/policy/CombinationKeyManager;

    invoke-static {v0}, Lcom/android/server/policy/CombinationKeyManager;->-get1(Lcom/android/server/policy/CombinationKeyManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "CombinationKeyManager"

    const-string/jumbo v1, "Reset mHomeKeyTriggered"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/policy/CombinationKeyManager$9;->this$0:Lcom/android/server/policy/CombinationKeyManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/policy/CombinationKeyManager;->-set1(Lcom/android/server/policy/CombinationKeyManager;Z)Z

    iget-object v0, p0, Lcom/android/server/policy/CombinationKeyManager$9;->this$0:Lcom/android/server/policy/CombinationKeyManager;

    invoke-static {v0}, Lcom/android/server/policy/CombinationKeyManager;->-wrap0(Lcom/android/server/policy/CombinationKeyManager;)V

    :cond_0
    return-void
.end method
