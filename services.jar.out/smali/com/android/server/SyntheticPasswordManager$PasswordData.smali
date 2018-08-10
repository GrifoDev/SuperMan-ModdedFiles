.class Lcom/android/server/SyntheticPasswordManager$PasswordData;
.super Ljava/lang/Object;
.source "SyntheticPasswordManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SyntheticPasswordManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PasswordData"
.end annotation


# instance fields
.field public passwordHandle:[B

.field public passwordType:I

.field salt:[B

.field scryptN:B

.field scryptP:B

.field scryptR:B

.field private secureMode:I


# direct methods
.method static synthetic -get0(Lcom/android/server/SyntheticPasswordManager$PasswordData;)I
    .locals 1

    iget v0, p0, Lcom/android/server/SyntheticPasswordManager$PasswordData;->secureMode:I

    return v0
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(I)Lcom/android/server/SyntheticPasswordManager$PasswordData;
    .locals 2

    new-instance v0, Lcom/android/server/SyntheticPasswordManager$PasswordData;

    invoke-direct {v0}, Lcom/android/server/SyntheticPasswordManager$PasswordData;-><init>()V

    const/16 v1, 0xb

    iput-byte v1, v0, Lcom/android/server/SyntheticPasswordManager$PasswordData;->scryptN:B

    const/4 v1, 0x3

    iput-byte v1, v0, Lcom/android/server/SyntheticPasswordManager$PasswordData;->scryptR:B

    const/4 v1, 0x1

    iput-byte v1, v0, Lcom/android/server/SyntheticPasswordManager$PasswordData;->scryptP:B

    iput p0, v0, Lcom/android/server/SyntheticPasswordManager$PasswordData;->passwordType:I

    const/16 v1, 0x10

    invoke-static {v1}, Lcom/android/server/SyntheticPasswordManager;->secureRandom(I)[B

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/SyntheticPasswordManager$PasswordData;->salt:[B

    const/4 v1, 0x0

    iput v1, v0, Lcom/android/server/SyntheticPasswordManager$PasswordData;->secureMode:I

    return-object v0
.end method

.method public static create(II)Lcom/android/server/SyntheticPasswordManager$PasswordData;
    .locals 1

    invoke-static {p0}, Lcom/android/server/SyntheticPasswordManager$PasswordData;->create(I)Lcom/android/server/SyntheticPasswordManager$PasswordData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/SyntheticPasswordManager$PasswordData;->setSecureMode(I)Lcom/android/server/SyntheticPasswordManager$PasswordData;

    move-result-object v0

    return-object v0
.end method

.method public static fromBytes([B)Lcom/android/server/SyntheticPasswordManager$PasswordData;
    .locals 7

    const/4 v6, 0x0

    new-instance v2, Lcom/android/server/SyntheticPasswordManager$PasswordData;

    invoke-direct {v2}, Lcom/android/server/SyntheticPasswordManager$PasswordData;-><init>()V

    array-length v4, p0

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    array-length v4, p0

    invoke-virtual {v0, p0, v6, v4}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    iput v4, v2, Lcom/android/server/SyntheticPasswordManager$PasswordData;->passwordType:I

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    iput-byte v4, v2, Lcom/android/server/SyntheticPasswordManager$PasswordData;->scryptN:B

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    iput-byte v4, v2, Lcom/android/server/SyntheticPasswordManager$PasswordData;->scryptR:B

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    iput-byte v4, v2, Lcom/android/server/SyntheticPasswordManager$PasswordData;->scryptP:B

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    new-array v4, v3, [B

    iput-object v4, v2, Lcom/android/server/SyntheticPasswordManager$PasswordData;->salt:[B

    iget-object v4, v2, Lcom/android/server/SyntheticPasswordManager$PasswordData;->salt:[B

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    new-array v4, v1, [B

    iput-object v4, v2, Lcom/android/server/SyntheticPasswordManager$PasswordData;->passwordHandle:[B

    iget-object v4, v2, Lcom/android/server/SyntheticPasswordManager$PasswordData;->passwordHandle:[B

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v5

    if-ne v4, v5, :cond_0

    iput v6, v2, Lcom/android/server/SyntheticPasswordManager$PasswordData;->secureMode:I

    :goto_0
    return-object v2

    :cond_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    iput v4, v2, Lcom/android/server/SyntheticPasswordManager$PasswordData;->secureMode:I

    goto :goto_0
.end method


# virtual methods
.method public getSecureMode()I
    .locals 1

    iget v0, p0, Lcom/android/server/SyntheticPasswordManager$PasswordData;->secureMode:I

    return v0
.end method

.method public isMdfppMode()Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/server/SyntheticPasswordManager$PasswordData;->secureMode:I

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public setSecureMode(I)Lcom/android/server/SyntheticPasswordManager$PasswordData;
    .locals 2

    const/4 v1, 0x0

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    if-le p1, v0, :cond_1

    :cond_0
    iput v1, p0, Lcom/android/server/SyntheticPasswordManager$PasswordData;->secureMode:I

    :goto_0
    return-object p0

    :cond_1
    iput p1, p0, Lcom/android/server/SyntheticPasswordManager$PasswordData;->secureMode:I

    goto :goto_0
.end method

.method public toBytes()[B
    .locals 3

    iget-object v1, p0, Lcom/android/server/SyntheticPasswordManager$PasswordData;->salt:[B

    array-length v1, v1

    add-int/lit8 v1, v1, 0xb

    add-int/lit8 v1, v1, 0x4

    iget-object v2, p0, Lcom/android/server/SyntheticPasswordManager$PasswordData;->passwordHandle:[B

    array-length v2, v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget v1, p0, Lcom/android/server/SyntheticPasswordManager$PasswordData;->passwordType:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget-byte v1, p0, Lcom/android/server/SyntheticPasswordManager$PasswordData;->scryptN:B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget-byte v1, p0, Lcom/android/server/SyntheticPasswordManager$PasswordData;->scryptR:B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget-byte v1, p0, Lcom/android/server/SyntheticPasswordManager$PasswordData;->scryptP:B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/android/server/SyntheticPasswordManager$PasswordData;->salt:[B

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/android/server/SyntheticPasswordManager$PasswordData;->salt:[B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/android/server/SyntheticPasswordManager$PasswordData;->passwordHandle:[B

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/android/server/SyntheticPasswordManager$PasswordData;->passwordHandle:[B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/android/server/SyntheticPasswordManager$PasswordData;->secureMode:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    return-object v1
.end method
