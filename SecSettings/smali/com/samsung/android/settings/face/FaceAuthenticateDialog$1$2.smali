.class Lcom/samsung/android/settings/face/FaceAuthenticateDialog$1$2;
.super Ljava/lang/Object;
.source "FaceAuthenticateDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/face/FaceAuthenticateDialog$1;->onAuthenticationFailed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/settings/face/FaceAuthenticateDialog$1;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/face/FaceAuthenticateDialog$1;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$1$2;->this$1:Lcom/samsung/android/settings/face/FaceAuthenticateDialog$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v1, 0x0

    invoke-static {}, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$Config;->reportFailedFaceAttempts()V

    invoke-static {}, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$Config;->getFailedFaceAttempts()I

    move-result v0

    rem-int/lit8 v0, v0, 0x5

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$1$2;->this$1:Lcom/samsung/android/settings/face/FaceAuthenticateDialog$1;

    iget-object v0, v0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$1;->this$0:Lcom/samsung/android/settings/face/FaceAuthenticateDialog;

    invoke-static {}, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$Config;->getRemaingTimeToUnlock()J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->-wrap3(Lcom/samsung/android/settings/face/FaceAuthenticateDialog;IJ)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$1$2;->this$1:Lcom/samsung/android/settings/face/FaceAuthenticateDialog$1;

    iget-object v0, v0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$1;->this$0:Lcom/samsung/android/settings/face/FaceAuthenticateDialog;

    iput v1, v0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mResultValue:I

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$1$2;->this$1:Lcom/samsung/android/settings/face/FaceAuthenticateDialog$1;

    iget-object v0, v0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$1;->this$0:Lcom/samsung/android/settings/face/FaceAuthenticateDialog;

    invoke-static {v0}, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->-wrap2(Lcom/samsung/android/settings/face/FaceAuthenticateDialog;)V

    goto :goto_0
.end method
