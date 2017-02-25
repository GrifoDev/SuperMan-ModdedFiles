.class Lcom/android/server/policy/MultitapKeyManager$4;
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

    iput-object p1, p0, Lcom/android/server/policy/MultitapKeyManager$4;->this$0:Lcom/android/server/policy/MultitapKeyManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/server/policy/MultitapKeyManager$4;->this$0:Lcom/android/server/policy/MultitapKeyManager;

    invoke-static {v0, v1}, Lcom/android/server/policy/MultitapKeyManager;->-set5(Lcom/android/server/policy/MultitapKeyManager;Z)Z

    iget-object v0, p0, Lcom/android/server/policy/MultitapKeyManager$4;->this$0:Lcom/android/server/policy/MultitapKeyManager;

    invoke-static {v0, v1}, Lcom/android/server/policy/MultitapKeyManager;->-set6(Lcom/android/server/policy/MultitapKeyManager;Z)Z

    return-void
.end method
