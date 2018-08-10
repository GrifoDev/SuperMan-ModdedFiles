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

.field private mFace:Lcom/samsung/android/bio/face/SemBioFace;


# direct methods
.method public constructor <init>(Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;Lcom/samsung/android/bio/face/SemBioFace;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationResult;->mCryptoObject:Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;

    iput-object p2, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationResult;->mFace:Lcom/samsung/android/bio/face/SemBioFace;

    return-void
.end method


# virtual methods
.method public getCryptoObject()Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationResult;->mCryptoObject:Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;

    return-object v0
.end method

.method public getFace()Lcom/samsung/android/bio/face/SemBioFace;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationResult;->mFace:Lcom/samsung/android/bio/face/SemBioFace;

    return-object v0
.end method
