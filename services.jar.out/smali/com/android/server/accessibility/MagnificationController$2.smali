.class Lcom/android/server/accessibility/MagnificationController$2;
.super Landroid/os/AsyncTask;
.source "MagnificationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/accessibility/MagnificationController;->persistScale()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/accessibility/MagnificationController;

.field final synthetic val$scale:F

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/server/accessibility/MagnificationController;FI)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/accessibility/MagnificationController$2;->this$0:Lcom/android/server/accessibility/MagnificationController;

    iput p2, p0, Lcom/android/server/accessibility/MagnificationController$2;->val$scale:F

    iput p3, p0, Lcom/android/server/accessibility/MagnificationController$2;->val$userId:I

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/MagnificationController$2;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3

    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController$2;->this$0:Lcom/android/server/accessibility/MagnificationController;

    invoke-static {v0}, Lcom/android/server/accessibility/MagnificationController;->-get1(Lcom/android/server/accessibility/MagnificationController;)Lcom/android/server/accessibility/MagnificationController$SettingsBridge;

    move-result-object v0

    iget v1, p0, Lcom/android/server/accessibility/MagnificationController$2;->val$scale:F

    iget v2, p0, Lcom/android/server/accessibility/MagnificationController$2;->val$userId:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/MagnificationController$SettingsBridge;->putMagnificationScale(FI)V

    const/4 v0, 0x0

    return-object v0
.end method
