.class Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimLockStatus$7;
.super Ljava/lang/Object;
.source "SimLockStatus.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimLockStatus;->onSetBlobFinished(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimLockStatus;

.field final synthetic val$bSucceed:Z


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimLockStatus;Z)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimLockStatus$7;->this$0:Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimLockStatus;

    iput-boolean p2, p0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimLockStatus$7;->val$bSucceed:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimLockStatus$7;->val$bSucceed:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimLockStatus$7;->this$0:Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimLockStatus;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimLockStatus;->-wrap3(Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimLockStatus;I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimLockStatus$7;->this$0:Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimLockStatus;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimLockStatus;->-wrap3(Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimLockStatus;I)V

    goto :goto_0
.end method
