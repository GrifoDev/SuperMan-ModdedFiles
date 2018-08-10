.class Lcom/android/server/policy/CombinationKeyManager$3;
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

    iput-object p1, p0, Lcom/android/server/policy/CombinationKeyManager$3;->this$0:Lcom/android/server/policy/CombinationKeyManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/policy/CombinationKeyManager$3;->this$0:Lcom/android/server/policy/CombinationKeyManager;

    iget-object v0, v0, Lcom/android/server/policy/CombinationKeyManager;->mSPWM:Lcom/android/server/policy/SamsungPhoneWindowManager;

    iget-object v1, p0, Lcom/android/server/policy/CombinationKeyManager$3;->this$0:Lcom/android/server/policy/CombinationKeyManager;

    invoke-static {v1}, Lcom/android/server/policy/CombinationKeyManager;->-get1(Lcom/android/server/policy/CombinationKeyManager;)Z

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/android/server/policy/SamsungPhoneWindowManager;->takeScreenshot(IZ)V

    return-void
.end method
