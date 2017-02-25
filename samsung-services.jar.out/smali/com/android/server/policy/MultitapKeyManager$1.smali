.class Lcom/android/server/policy/MultitapKeyManager$1;
.super Ljava/lang/Object;
.source "MultitapKeyManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/MultitapKeyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/MultitapKeyManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/MultitapKeyManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/policy/MultitapKeyManager$1;->this$0:Lcom/android/server/policy/MultitapKeyManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/policy/MultitapKeyManager$1;->this$0:Lcom/android/server/policy/MultitapKeyManager;

    invoke-static {v0}, Lcom/android/server/policy/MultitapKeyManager;->-get0(Lcom/android/server/policy/MultitapKeyManager;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/MultitapKeyManager$1;->this$0:Lcom/android/server/policy/MultitapKeyManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/policy/MultitapKeyManager;->-set0(Lcom/android/server/policy/MultitapKeyManager;Z)Z

    iget-object v0, p0, Lcom/android/server/policy/MultitapKeyManager$1;->this$0:Lcom/android/server/policy/MultitapKeyManager;

    invoke-static {v0}, Lcom/android/server/policy/MultitapKeyManager;->-get3(Lcom/android/server/policy/MultitapKeyManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/MultitapKeyManager$1;->this$0:Lcom/android/server/policy/MultitapKeyManager;

    iget-object v0, v0, Lcom/android/server/policy/MultitapKeyManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->launchHomeFromHotKey()V

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/MultitapKeyManager$1;->this$0:Lcom/android/server/policy/MultitapKeyManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/policy/MultitapKeyManager;->-set3(Lcom/android/server/policy/MultitapKeyManager;Z)Z

    :cond_1
    return-void
.end method
