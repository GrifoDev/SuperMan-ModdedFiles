.class Lcom/samsung/android/bio/face/SemBioFaceManager$2;
.super Ljava/lang/Object;
.source "SemBioFaceManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/bio/face/SemBioFaceManager;->checkAuthViewWindowToken(Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;Landroid/os/CancellationSignal;ILcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;Landroid/os/Handler;ILandroid/os/Bundle;Landroid/view/View;J[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

.field final synthetic val$attr:Landroid/os/Bundle;

.field final synthetic val$callback:Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;

.field final synthetic val$cancel:Landroid/os/CancellationSignal;

.field final synthetic val$crypto:Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;

.field final synthetic val$faceView:Landroid/view/View;

.field final synthetic val$fidoRequestData:[B

.field final synthetic val$flags:I

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$sessionId:J

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/samsung/android/bio/face/SemBioFaceManager;Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;Landroid/os/CancellationSignal;ILcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;Landroid/os/Handler;ILandroid/os/Bundle;Landroid/view/View;J[B)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$2;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    iput-object p2, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$2;->val$crypto:Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;

    iput-object p3, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$2;->val$cancel:Landroid/os/CancellationSignal;

    iput p4, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$2;->val$flags:I

    iput-object p5, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$2;->val$callback:Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;

    iput-object p6, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$2;->val$handler:Landroid/os/Handler;

    iput p7, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$2;->val$userId:I

    iput-object p8, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$2;->val$attr:Landroid/os/Bundle;

    iput-object p9, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$2;->val$faceView:Landroid/view/View;

    iput-wide p10, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$2;->val$sessionId:J

    iput-object p12, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$2;->val$fidoRequestData:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    iget-object v1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$2;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    iget-object v2, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$2;->val$crypto:Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;

    iget-object v3, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$2;->val$cancel:Landroid/os/CancellationSignal;

    iget v4, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$2;->val$flags:I

    iget-object v5, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$2;->val$callback:Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;

    iget-object v6, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$2;->val$handler:Landroid/os/Handler;

    iget v7, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$2;->val$userId:I

    iget-object v8, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$2;->val$attr:Landroid/os/Bundle;

    iget-object v9, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$2;->val$faceView:Landroid/view/View;

    iget-wide v10, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$2;->val$sessionId:J

    iget-object v12, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$2;->val$fidoRequestData:[B

    invoke-static/range {v1 .. v12}, Lcom/samsung/android/bio/face/SemBioFaceManager;->-wrap4(Lcom/samsung/android/bio/face/SemBioFaceManager;Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;Landroid/os/CancellationSignal;ILcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;Landroid/os/Handler;ILandroid/os/Bundle;Landroid/view/View;J[B)V

    return-void
.end method
