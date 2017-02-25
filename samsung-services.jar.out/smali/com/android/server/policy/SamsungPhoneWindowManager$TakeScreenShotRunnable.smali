.class Lcom/android/server/policy/SamsungPhoneWindowManager$TakeScreenShotRunnable;
.super Ljava/lang/Object;
.source "SamsungPhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/SamsungPhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TakeScreenShotRunnable"
.end annotation


# instance fields
.field private mShotEvent:I

.field final synthetic this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/SamsungPhoneWindowManager;I)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$TakeScreenShotRunnable;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$TakeScreenShotRunnable;->mShotEvent:I

    iput p2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$TakeScreenShotRunnable;->mShotEvent:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$TakeScreenShotRunnable;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    iget v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$TakeScreenShotRunnable;->mShotEvent:I

    invoke-virtual {v0, v1}, Lcom/android/server/policy/SamsungPhoneWindowManager;->takeScreenshot(I)V

    return-void
.end method
