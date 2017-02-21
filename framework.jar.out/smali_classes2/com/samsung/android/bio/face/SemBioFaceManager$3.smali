.class Lcom/samsung/android/bio/face/SemBioFaceManager$3;
.super Ljava/lang/Object;
.source "SemBioFaceManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/bio/face/SemBioFaceManager;->checkEnrollViewWindowToken([BLandroid/os/CancellationSignal;IILcom/samsung/android/bio/face/SemBioFaceManager$EnrollmentCallback;Landroid/os/Bundle;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

.field final synthetic val$attr:Landroid/os/Bundle;

.field final synthetic val$callback:Lcom/samsung/android/bio/face/SemBioFaceManager$EnrollmentCallback;

.field final synthetic val$cancel:Landroid/os/CancellationSignal;

.field final synthetic val$faceView:Landroid/view/View;

.field final synthetic val$flags:I

.field final synthetic val$token:[B

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/samsung/android/bio/face/SemBioFaceManager;[BLandroid/os/CancellationSignal;IILcom/samsung/android/bio/face/SemBioFaceManager$EnrollmentCallback;Landroid/os/Bundle;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$3;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    iput-object p2, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$3;->val$token:[B

    iput-object p3, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$3;->val$cancel:Landroid/os/CancellationSignal;

    iput p4, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$3;->val$flags:I

    iput p5, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$3;->val$userId:I

    iput-object p6, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$3;->val$callback:Lcom/samsung/android/bio/face/SemBioFaceManager$EnrollmentCallback;

    iput-object p7, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$3;->val$attr:Landroid/os/Bundle;

    iput-object p8, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$3;->val$faceView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$3;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    iget-object v1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$3;->val$token:[B

    iget-object v2, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$3;->val$cancel:Landroid/os/CancellationSignal;

    iget v3, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$3;->val$flags:I

    iget v4, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$3;->val$userId:I

    iget-object v5, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$3;->val$callback:Lcom/samsung/android/bio/face/SemBioFaceManager$EnrollmentCallback;

    iget-object v6, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$3;->val$attr:Landroid/os/Bundle;

    iget-object v7, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$3;->val$faceView:Landroid/view/View;

    invoke-static/range {v0 .. v7}, Lcom/samsung/android/bio/face/SemBioFaceManager;->-wrap5(Lcom/samsung/android/bio/face/SemBioFaceManager;[BLandroid/os/CancellationSignal;IILcom/samsung/android/bio/face/SemBioFaceManager$EnrollmentCallback;Landroid/os/Bundle;Landroid/view/View;)V

    return-void
.end method
