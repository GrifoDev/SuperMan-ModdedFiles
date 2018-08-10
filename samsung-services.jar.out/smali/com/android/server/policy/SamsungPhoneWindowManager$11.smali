.class Lcom/android/server/policy/SamsungPhoneWindowManager$11;
.super Ljava/lang/Object;
.source "SamsungPhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/SamsungPhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/SamsungPhoneWindowManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$11;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$11;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    iget-boolean v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mFingerPrintPending:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$11;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mFingerPrintPending:Z

    :cond_0
    return-void
.end method
