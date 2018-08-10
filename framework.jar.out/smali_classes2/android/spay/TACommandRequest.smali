.class public Landroid/spay/TACommandRequest;
.super Ljava/lang/Object;
.source "TACommandRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/spay/TACommandRequest$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/spay/TACommandRequest;",
            ">;"
        }
    .end annotation
.end field

.field private static DEBUG:Z = false

.field public static final HEADER_SIZE:I = 0x64

.field public static final MAX_BUFFER_SIZE:I = 0x500000

.field public static final MAX_DATA_TRANSACTION_SIZE:I = 0xc00

.field public static final PAYLOAD_SIZE:I = 0xb9c

.field private static final TAG:Ljava/lang/String; = "TACommandRequest"


# instance fields
.field public mCommandId:I

.field public mLength:I

.field public mMagicNum:[B

.field public mOffset:I

.field public mRequest:[B

.field public mVersion:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Landroid/spay/TACommandRequest;->DEBUG:Z

    new-instance v0, Landroid/spay/TACommandRequest$1;

    invoke-direct {v0}, Landroid/spay/TACommandRequest$1;-><init>()V

    sput-object v0, Landroid/spay/TACommandRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Landroid/spay/TACommandRequest;->mVersion:I

    iput-object v2, p0, Landroid/spay/TACommandRequest;->mMagicNum:[B

    iput v1, p0, Landroid/spay/TACommandRequest;->mLength:I

    iput v1, p0, Landroid/spay/TACommandRequest;->mOffset:I

    iput v0, p0, Landroid/spay/TACommandRequest;->mCommandId:I

    iput-object v2, p0, Landroid/spay/TACommandRequest;->mRequest:[B

    return-void
.end method

.method private constructor <init>(I[BIII[B)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Landroid/spay/TACommandRequest;->mVersion:I

    iput-object v2, p0, Landroid/spay/TACommandRequest;->mMagicNum:[B

    iput v1, p0, Landroid/spay/TACommandRequest;->mLength:I

    iput v1, p0, Landroid/spay/TACommandRequest;->mOffset:I

    iput v0, p0, Landroid/spay/TACommandRequest;->mCommandId:I

    iput-object v2, p0, Landroid/spay/TACommandRequest;->mRequest:[B

    iput p1, p0, Landroid/spay/TACommandRequest;->mVersion:I

    iput-object p2, p0, Landroid/spay/TACommandRequest;->mMagicNum:[B

    iput p3, p0, Landroid/spay/TACommandRequest;->mCommandId:I

    iput p4, p0, Landroid/spay/TACommandRequest;->mLength:I

    iput p5, p0, Landroid/spay/TACommandRequest;->mOffset:I

    iput-object p6, p0, Landroid/spay/TACommandRequest;->mRequest:[B

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Landroid/spay/TACommandRequest;->mVersion:I

    iput-object v2, p0, Landroid/spay/TACommandRequest;->mMagicNum:[B

    iput v1, p0, Landroid/spay/TACommandRequest;->mLength:I

    iput v1, p0, Landroid/spay/TACommandRequest;->mOffset:I

    iput v0, p0, Landroid/spay/TACommandRequest;->mCommandId:I

    iput-object v2, p0, Landroid/spay/TACommandRequest;->mRequest:[B

    invoke-virtual {p0, p1}, Landroid/spay/TACommandRequest;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/spay/TACommandRequest;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/spay/TACommandRequest;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public disassemble()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/spay/TACommandRequest;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Landroid/spay/TACommandRequest;->mRequest:[B

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Landroid/spay/TACommandRequest;->mRequest:[B

    array-length v0, v0

    const/16 v1, 0xb9c

    if-gt v0, v1, :cond_2

    invoke-interface {v7, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-boolean v0, Landroid/spay/TACommandRequest;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "TACommandRequest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "no need to divide the mRequest, len="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/spay/TACommandRequest;->mRequest:[B

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object v7

    :cond_2
    sget-boolean v0, Landroid/spay/TACommandRequest;->DEBUG:Z

    if-eqz v0, :cond_3

    const-string/jumbo v0, "TACommandRequest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "dividing the mRequest, len="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/spay/TACommandRequest;->mRequest:[B

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/4 v5, 0x0

    :goto_0
    add-int/lit16 v0, v5, 0xb9c

    iget v1, p0, Landroid/spay/TACommandRequest;->mLength:I

    if-ge v0, v1, :cond_5

    sget-boolean v0, Landroid/spay/TACommandRequest;->DEBUG:Z

    if-eqz v0, :cond_4

    const-string/jumbo v0, "TACommandRequest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "generating the chunk from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit16 v2, v5, 0xb9c

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    new-instance v0, Landroid/spay/TACommandRequest;

    iget v1, p0, Landroid/spay/TACommandRequest;->mVersion:I

    iget-object v2, p0, Landroid/spay/TACommandRequest;->mMagicNum:[B

    iget v3, p0, Landroid/spay/TACommandRequest;->mCommandId:I

    iget v4, p0, Landroid/spay/TACommandRequest;->mLength:I

    iget-object v6, p0, Landroid/spay/TACommandRequest;->mRequest:[B

    add-int/lit16 v8, v5, 0xb9c

    invoke-static {v6, v5, v8}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Landroid/spay/TACommandRequest;-><init>(I[BIII[B)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit16 v5, v5, 0xb9c

    goto :goto_0

    :cond_5
    new-instance v0, Landroid/spay/TACommandRequest;

    iget v1, p0, Landroid/spay/TACommandRequest;->mVersion:I

    iget-object v2, p0, Landroid/spay/TACommandRequest;->mMagicNum:[B

    iget v3, p0, Landroid/spay/TACommandRequest;->mCommandId:I

    iget v4, p0, Landroid/spay/TACommandRequest;->mLength:I

    iget-object v6, p0, Landroid/spay/TACommandRequest;->mRequest:[B

    iget v8, p0, Landroid/spay/TACommandRequest;->mLength:I

    invoke-static {v6, v5, v8}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Landroid/spay/TACommandRequest;-><init>(I[BIII[B)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-boolean v0, Landroid/spay/TACommandRequest;->DEBUG:Z

    if-eqz v0, :cond_6

    const-string/jumbo v0, "TACommandRequest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "generating the chunk from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/spay/TACommandRequest;->mLength:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    return-object v7
.end method

.method public dump()V
    .locals 12

    const/4 v11, 0x0

    const-string/jumbo v8, "TACommandRequest"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Command ID = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Landroid/spay/TACommandRequest;->mCommandId:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v8, "TACommandRequest"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Length = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Landroid/spay/TACommandRequest;->mRequest:[B

    array-length v10, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v8, p0, Landroid/spay/TACommandRequest;->mRequest:[B

    array-length v8, v8

    mul-int/lit8 v8, v8, 0x2

    add-int/lit8 v8, v8, 0x64

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v8, "{"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    :goto_0
    iget-object v8, p0, Landroid/spay/TACommandRequest;->mRequest:[B

    array-length v8, v8

    if-ge v5, v8, :cond_1

    const-string/jumbo v8, "0x%02X"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    iget-object v10, p0, Landroid/spay/TACommandRequest;->mRequest:[B

    aget-byte v10, v10, v5

    invoke-static {v10}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Landroid/spay/TACommandRequest;->mRequest:[B

    array-length v8, v8

    if-eq v5, v8, :cond_0

    const-string/jumbo v8, ", "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    const-string/jumbo v8, "}"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v8, "TACommandRequest"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    const/4 v0, 0x0

    :try_start_0
    new-instance v7, Ljava/io/FileWriter;

    const-string/jumbo v8, "/mnt/sdcard/sendbuf.txt"

    const/4 v9, 0x0

    invoke-direct {v7, v8, v9}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v1, Ljava/io/BufferedWriter;

    invoke-direct {v1, v7}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v1, :cond_2

    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V

    :cond_2
    if-eqz v7, :cond_3

    invoke-virtual {v7}, Ljava/io/FileWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :cond_3
    :goto_1
    move-object v0, v1

    move-object v6, v7

    :cond_4
    :goto_2
    return-void

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catch_2
    move-exception v3

    :goto_3
    :try_start_4
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v0, :cond_5

    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    :cond_5
    if-eqz v6, :cond_4

    invoke-virtual {v6}, Ljava/io/FileWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_2

    :catch_3
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :catch_4
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :catchall_0
    move-exception v8

    :goto_4
    if-eqz v0, :cond_6

    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    :cond_6
    if-eqz v6, :cond_7

    invoke-virtual {v6}, Ljava/io/FileWriter;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    :cond_7
    :goto_5
    throw v8

    :catch_5
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    :catch_6
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    :catchall_1
    move-exception v8

    move-object v6, v7

    goto :goto_4

    :catchall_2
    move-exception v8

    move-object v0, v1

    move-object v6, v7

    goto :goto_4

    :catch_7
    move-exception v3

    move-object v6, v7

    goto :goto_3

    :catch_8
    move-exception v3

    move-object v0, v1

    move-object v6, v7

    goto :goto_3
.end method

.method public getChunkOffset()I
    .locals 1

    iget v0, p0, Landroid/spay/TACommandRequest;->mOffset:I

    return v0
.end method

.method public getPayload()[B
    .locals 1

    iget-object v0, p0, Landroid/spay/TACommandRequest;->mRequest:[B

    return-object v0
.end method

.method public getTotalLength()I
    .locals 1

    iget v0, p0, Landroid/spay/TACommandRequest;->mLength:I

    return v0
.end method

.method public init(I[BI[B)V
    .locals 2

    const/4 v1, 0x0

    iput p1, p0, Landroid/spay/TACommandRequest;->mVersion:I

    iput-object p2, p0, Landroid/spay/TACommandRequest;->mMagicNum:[B

    iput p3, p0, Landroid/spay/TACommandRequest;->mCommandId:I

    iput-object p4, p0, Landroid/spay/TACommandRequest;->mRequest:[B

    if-eqz p4, :cond_0

    array-length v0, p4

    iput v0, p0, Landroid/spay/TACommandRequest;->mLength:I

    :goto_0
    iput v1, p0, Landroid/spay/TACommandRequest;->mOffset:I

    return-void

    :cond_0
    iput v1, p0, Landroid/spay/TACommandRequest;->mLength:I

    goto :goto_0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/spay/TACommandRequest;->mVersion:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_0

    new-array v1, v0, [B

    iput-object v1, p0, Landroid/spay/TACommandRequest;->mMagicNum:[B

    iget-object v1, p0, Landroid/spay/TACommandRequest;->mMagicNum:[B

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readByteArray([B)V

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/spay/TACommandRequest;->mCommandId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/spay/TACommandRequest;->mLength:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/spay/TACommandRequest;->mOffset:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_1

    new-array v1, v0, [B

    iput-object v1, p0, Landroid/spay/TACommandRequest;->mRequest:[B

    iget-object v1, p0, Landroid/spay/TACommandRequest;->mRequest:[B

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readByteArray([B)V

    :cond_1
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const/4 v1, 0x0

    iget v0, p0, Landroid/spay/TACommandRequest;->mVersion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/spay/TACommandRequest;->mMagicNum:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/spay/TACommandRequest;->mMagicNum:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    iget v0, p0, Landroid/spay/TACommandRequest;->mCommandId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/spay/TACommandRequest;->mLength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/spay/TACommandRequest;->mOffset:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/spay/TACommandRequest;->mRequest:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/spay/TACommandRequest;->mRequest:[B

    array-length v0, v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_1
    iget-object v0, p0, Landroid/spay/TACommandRequest;->mRequest:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/spay/TACommandRequest;->mRequest:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    return-void
.end method
