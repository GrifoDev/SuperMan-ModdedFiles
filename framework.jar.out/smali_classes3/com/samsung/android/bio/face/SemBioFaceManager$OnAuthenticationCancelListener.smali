.class Lcom/samsung/android/bio/face/SemBioFaceManager$OnAuthenticationCancelListener;
.super Ljava/lang/Object;
.source "SemBioFaceManager.java"

# interfaces
.implements Landroid/os/CancellationSignal$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/bio/face/SemBioFaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnAuthenticationCancelListener"
.end annotation


# instance fields
.field private mCrypto:Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;

.field final synthetic this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/bio/face/SemBioFaceManager;Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$OnAuthenticationCancelListener;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$OnAuthenticationCancelListener;->mCrypto:Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$OnAuthenticationCancelListener;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    iget-object v1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$OnAuthenticationCancelListener;->mCrypto:Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;

    invoke-static {v0, v1}, Lcom/samsung/android/bio/face/SemBioFaceManager;->-wrap0(Lcom/samsung/android/bio/face/SemBioFaceManager;Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;)V

    return-void
.end method
