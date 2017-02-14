.class public Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/Signature;
.super Ljava/lang/Object;
.source "Signature.java"


# instance fields
.field private keyInfo:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/KeyInfoSignature;

.field private object:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/ObjectType;

.field private signatureValue:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/SignatureValue;

.field private signedInfo:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/SignedInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getKeyInfo()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/KeyInfoSignature;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/Signature;->keyInfo:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/KeyInfoSignature;

    return-object v0
.end method

.method public getObject()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/ObjectType;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/Signature;->object:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/ObjectType;

    return-object v0
.end method

.method public getSigantureValue()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/SignatureValue;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/Signature;->signatureValue:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/SignatureValue;

    return-object v0
.end method

.method public getSignedInfo()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/SignedInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/Signature;->signedInfo:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/SignedInfo;

    return-object v0
.end method

.method public setKeyInfo(Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/KeyInfoSignature;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/Signature;->keyInfo:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/KeyInfoSignature;

    return-void
.end method

.method public setObject(Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/ObjectType;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/Signature;->object:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/ObjectType;

    return-void
.end method

.method public setSigantureValue(Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/SignatureValue;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/Signature;->signatureValue:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/SignatureValue;

    return-void
.end method

.method public setSignedInfo(Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/SignedInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/Signature;->signedInfo:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/SignedInfo;

    return-void
.end method
