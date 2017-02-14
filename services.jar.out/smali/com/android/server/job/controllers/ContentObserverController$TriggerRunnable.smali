.class final Lcom/android/server/job/controllers/ContentObserverController$TriggerRunnable;
.super Ljava/lang/Object;
.source "ContentObserverController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/controllers/ContentObserverController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TriggerRunnable"
.end annotation


# instance fields
.field final mInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;


# direct methods
.method constructor <init>(Lcom/android/server/job/controllers/ContentObserverController$JobInstance;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/job/controllers/ContentObserverController$TriggerRunnable;->mInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/job/controllers/ContentObserverController$TriggerRunnable;->mInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    invoke-virtual {v0}, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->trigger()V

    return-void
.end method
