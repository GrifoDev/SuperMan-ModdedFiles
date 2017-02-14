.class public Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/PgpData;
.super Ljava/lang/Object;
.source "PgpData.java"


# instance fields
.field private pgpKeyId:[B

.field private pgpKeyPacket:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPgpKeyId()[B
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/PgpData;->pgpKeyId:[B

    return-object v0
.end method

.method public getPgpKeyPacket()[B
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/PgpData;->pgpKeyPacket:[B

    return-object v0
.end method

.method public setPgpKeyId([B)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/PgpData;->pgpKeyId:[B

    return-void
.end method

.method public setPgpKeyPacket([B)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/PgpData;->pgpKeyPacket:[B

    return-void
.end method
