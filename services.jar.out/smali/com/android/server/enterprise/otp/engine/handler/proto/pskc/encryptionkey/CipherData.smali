.class public Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/CipherData;
.super Ljava/lang/Object;
.source "CipherData.java"


# instance fields
.field private cipherReferenceTransform:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/Transforms;",
            ">;"
        }
    .end annotation
.end field

.field private cipherReferenceURI:Ljava/lang/String;

.field private cipherValue:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCipherReferenceTransform()Ljava/util/ArrayList;
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

    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/CipherData;->cipherReferenceTransform:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getCipherReferenceURI()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/CipherData;->cipherReferenceURI:Ljava/lang/String;

    return-object v0
.end method

.method public getCipherValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/CipherData;->cipherValue:Ljava/lang/String;

    return-object v0
.end method

.method public setCipherReferenceTransform(Ljava/util/ArrayList;)V
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

    iput-object p1, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/CipherData;->cipherReferenceTransform:Ljava/util/ArrayList;

    return-void
.end method

.method public setCipherReferenceURI(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/CipherData;->cipherReferenceURI:Ljava/lang/String;

    return-void
.end method

.method public setCipherValue(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/CipherData;->cipherValue:Ljava/lang/String;

    return-void
.end method
