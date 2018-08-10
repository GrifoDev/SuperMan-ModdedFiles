.class public Landroid/spay/TACommandResponse;
.super Ljava/lang/Object;
.source "TACommandResponse.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/spay/TACommandResponse$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/spay/TACommandResponse;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "TACommandResponse"


# instance fields
.field public mErrorMsg:Ljava/lang/String;

.field public mResponse:[B

.field public mResponseCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/spay/TACommandResponse$1;

    invoke-direct {v0}, Landroid/spay/TACommandResponse$1;-><init>()V

    sput-object v0, Landroid/spay/TACommandResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/spay/TACommandResponse;->mResponseCode:I

    iput-object v1, p0, Landroid/spay/TACommandResponse;->mErrorMsg:Ljava/lang/String;

    iput-object v1, p0, Landroid/spay/TACommandResponse;->mResponse:[B

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;[B)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/spay/TACommandResponse;->mResponseCode:I

    iput-object v1, p0, Landroid/spay/TACommandResponse;->mErrorMsg:Ljava/lang/String;

    iput-object v1, p0, Landroid/spay/TACommandResponse;->mResponse:[B

    iput p1, p0, Landroid/spay/TACommandResponse;->mResponseCode:I

    iput-object p2, p0, Landroid/spay/TACommandResponse;->mErrorMsg:Ljava/lang/String;

    iput-object p3, p0, Landroid/spay/TACommandResponse;->mResponse:[B

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/spay/TACommandResponse;->mResponseCode:I

    iput-object v1, p0, Landroid/spay/TACommandResponse;->mErrorMsg:Ljava/lang/String;

    iput-object v1, p0, Landroid/spay/TACommandResponse;->mResponse:[B

    invoke-virtual {p0, p1}, Landroid/spay/TACommandResponse;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/spay/TACommandResponse;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/spay/TACommandResponse;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public dump()V
    .locals 12

    const/4 v11, 0x0

    const-string/jumbo v8, "TACommandResponse"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Length = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Landroid/spay/TACommandResponse;->mResponse:[B

    array-length v10, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v8, p0, Landroid/spay/TACommandResponse;->mResponse:[B

    array-length v8, v8

    mul-int/lit8 v8, v8, 0x3

    add-int/lit8 v8, v8, 0x64

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v5, 0x0

    :goto_0
    iget-object v8, p0, Landroid/spay/TACommandResponse;->mResponse:[B

    array-length v8, v8

    if-ge v5, v8, :cond_1

    if-lez v5, :cond_0

    iget-object v8, p0, Landroid/spay/TACommandResponse;->mResponse:[B

    aget-byte v8, v8, v5

    if-eqz v8, :cond_0

    iget-object v8, p0, Landroid/spay/TACommandResponse;->mResponse:[B

    add-int/lit8 v9, v5, -0x1

    aget-byte v8, v8, v9

    if-nez v8, :cond_0

    const-string/jumbo v8, "\n"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string/jumbo v8, "%02X "

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    iget-object v10, p0, Landroid/spay/TACommandResponse;->mResponse:[B

    aget-byte v10, v10, v5

    invoke-static {v10}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    const-string/jumbo v8, "TACommandResponse"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    const/4 v0, 0x0

    :try_start_0
    new-instance v7, Ljava/io/FileWriter;

    const-string/jumbo v8, "/mnt/sdcard/respbuf.txt"

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

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/spay/TACommandResponse;->mResponseCode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/spay/TACommandResponse;->mErrorMsg:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-array v1, v0, [B

    iput-object v1, p0, Landroid/spay/TACommandResponse;->mResponse:[B

    iget-object v1, p0, Landroid/spay/TACommandResponse;->mResponse:[B

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readByteArray([B)V

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Landroid/spay/TACommandResponse;->mResponseCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/spay/TACommandResponse;->mErrorMsg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/spay/TACommandResponse;->mResponse:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/spay/TACommandResponse;->mResponse:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    return-void
.end method
