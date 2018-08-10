.class Lcom/android/server/ThreadPriorityBooster$1;
.super Ljava/lang/ThreadLocal;
.source "ThreadPriorityBooster.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ThreadPriorityBooster;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal",
        "<",
        "Lcom/android/server/ThreadPriorityBooster$PriorityState;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ThreadPriorityBooster;


# direct methods
.method constructor <init>(Lcom/android/server/ThreadPriorityBooster;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/ThreadPriorityBooster$1;->this$0:Lcom/android/server/ThreadPriorityBooster;

    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected initialValue()Lcom/android/server/ThreadPriorityBooster$PriorityState;
    .locals 2

    new-instance v0, Lcom/android/server/ThreadPriorityBooster$PriorityState;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/ThreadPriorityBooster$PriorityState;-><init>(Lcom/android/server/ThreadPriorityBooster$PriorityState;)V

    return-object v0
.end method

.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/ThreadPriorityBooster$1;->initialValue()Lcom/android/server/ThreadPriorityBooster$PriorityState;

    move-result-object v0

    return-object v0
.end method
