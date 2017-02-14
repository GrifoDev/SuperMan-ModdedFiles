.class public Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/ObjectType;
.super Ljava/lang/Object;
.source "ObjectType.java"


# instance fields
.field private objectEncoding:Ljava/lang/String;

.field private objectId:Ljava/lang/String;

.field private objectMimeType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getObjectEncoding()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/ObjectType;->objectEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public getObjectId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/ObjectType;->objectId:Ljava/lang/String;

    return-object v0
.end method

.method public getObjectMimeType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/ObjectType;->objectMimeType:Ljava/lang/String;

    return-object v0
.end method

.method public setObjectEncoding(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/ObjectType;->objectEncoding:Ljava/lang/String;

    return-void
.end method

.method public setObjectId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/ObjectType;->objectId:Ljava/lang/String;

    return-void
.end method

.method public setObjectMimeType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/ObjectType;->objectMimeType:Ljava/lang/String;

    return-void
.end method
