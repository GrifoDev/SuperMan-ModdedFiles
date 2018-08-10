.class Lcom/samsung/android/settings/face/FaceAuthenticateDialog$3$1;
.super Ljava/lang/Object;
.source "FaceAuthenticateDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/face/FaceAuthenticateDialog$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/settings/face/FaceAuthenticateDialog$3;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/face/FaceAuthenticateDialog$3;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$3$1;->this$1:Lcom/samsung/android/settings/face/FaceAuthenticateDialog$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$3$1;->this$1:Lcom/samsung/android/settings/face/FaceAuthenticateDialog$3;

    iget-object v0, v0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$3;->this$0:Lcom/samsung/android/settings/face/FaceAuthenticateDialog;

    const/16 v1, 0x9

    iput v1, v0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mResultValue:I

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$3$1;->this$1:Lcom/samsung/android/settings/face/FaceAuthenticateDialog$3;

    iget-object v0, v0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$3;->this$0:Lcom/samsung/android/settings/face/FaceAuthenticateDialog;

    invoke-static {v0}, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->-wrap2(Lcom/samsung/android/settings/face/FaceAuthenticateDialog;)V

    return-void
.end method
