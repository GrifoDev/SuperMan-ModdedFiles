.class public Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationResult;
.super Ljava/lang/Object;
.source "SemBioFaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/bio/face/SemBioFaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AuthenticationResult"
.end annotation


# instance fields
.field private mCryptoObject:Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;

.field private mFace:Lcom/samsung/android/bio/face/Face;


# direct methods
.method public constructor <init>(Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;Lcom/samsung/android/bio/face/Face;)V
    .locals 0
    .param p1, "crypto"    # Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;
    .param p2, "face"    # Lcom/samsung/android/bio/face/Face;

    .prologue
    .line 564
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 565
    iput-object p1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationResult;->mCryptoObject:Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;

    .line 566
    iput-object p2, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationResult;->mFace:Lcom/samsung/android/bio/face/Face;

    .line 564
    return-void
.end method


# virtual methods
.method public getCryptoObject()Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;
    .locals 1

    .prologue
    .line 575
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationResult;->mCryptoObject:Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;

    return-object v0
.end method

.method public getFace()Lcom/samsung/android/bio/face/Face;
    .locals 1

    .prologue
    .line 585
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationResult;->mFace:Lcom/samsung/android/bio/face/Face;

    return-object v0
.end method
