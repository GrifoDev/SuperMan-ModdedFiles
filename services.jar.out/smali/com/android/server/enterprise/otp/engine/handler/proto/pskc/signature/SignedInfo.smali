.class public Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/SignedInfo;
.super Ljava/lang/Object;
.source "SignedInfo.java"


# instance fields
.field private canonicalizationMethod:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private referenceDigestMethod:Ljava/lang/String;

.field private referenceDigestValue:[B

.field private referenceId:Ljava/lang/String;

.field private referenceType:Ljava/lang/String;

.field private referenceUri:Ljava/lang/String;

.field private signatureMethodAlgo:Ljava/lang/String;

.field private signatureMethodHmacLength:I

.field private transforms:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/Transforms;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCanonicalizationMethod()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/SignedInfo;->canonicalizationMethod:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/SignedInfo;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getReferenceDigestMethod()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/SignedInfo;->referenceDigestMethod:Ljava/lang/String;

    return-object v0
.end method

.method public getReferenceDigestValue()[B
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/SignedInfo;->referenceDigestValue:[B

    return-object v0
.end method

.method public getReferenceId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/SignedInfo;->referenceId:Ljava/lang/String;

    return-object v0
.end method

.method public getReferenceName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/SignedInfo;->referenceUri:Ljava/lang/String;

    return-object v0
.end method

.method public getReferenceType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/SignedInfo;->referenceType:Ljava/lang/String;

    return-object v0
.end method

.method public getSignatureMethodAlgo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/SignedInfo;->signatureMethodAlgo:Ljava/lang/String;

    return-object v0
.end method

.method public getSignatureMethodHmacLength()I
    .locals 1

    iget v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/SignedInfo;->signatureMethodHmacLength:I

    return v0
.end method

.method public getTransforms()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/Transforms;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/SignedInfo;->transforms:Ljava/util/ArrayList;

    return-object v0
.end method

.method public setCanonicalizationMethod(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/SignedInfo;->canonicalizationMethod:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/SignedInfo;->id:Ljava/lang/String;

    return-void
.end method

.method public setReferenceDigestMethod(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/SignedInfo;->referenceDigestMethod:Ljava/lang/String;

    return-void
.end method

.method public setReferenceDigestValue([B)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/SignedInfo;->referenceDigestValue:[B

    return-void
.end method

.method public setReferenceId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/SignedInfo;->referenceId:Ljava/lang/String;

    return-void
.end method

.method public setReferenceName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/SignedInfo;->referenceUri:Ljava/lang/String;

    return-void
.end method

.method public setReferenceType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/SignedInfo;->referenceType:Ljava/lang/String;

    return-void
.end method

.method public setSignatureMethodAlgo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/SignedInfo;->signatureMethodAlgo:Ljava/lang/String;

    return-void
.end method

.method public setSignatureMethodHmacLength(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/SignedInfo;->signatureMethodHmacLength:I

    return-void
.end method

.method public settransforms(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/Transforms;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/SignedInfo;->transforms:Ljava/util/ArrayList;

    return-void
.end method
