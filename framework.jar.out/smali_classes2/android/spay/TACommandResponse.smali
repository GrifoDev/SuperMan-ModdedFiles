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

    .prologue
    .line 48
    new-instance v0, Landroid/spay/TACommandResponse$1;

    invoke-direct {v0}, Landroid/spay/TACommandResponse$1;-><init>()V

    sput-object v0, Landroid/spay/TACommandResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 15
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, -0x1

    iput v0, p0, Landroid/spay/TACommandResponse;->mResponseCode:I

    .line 25
    iput-object v1, p0, Landroid/spay/TACommandResponse;->mErrorMsg:Ljava/lang/String;

    .line 26
    iput-object v1, p0, Landroid/spay/TACommandResponse;->mResponse:[B

    .line 33
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;[B)V
    .locals 2
    .param p1, "responseId"    # I
    .param p2, "errorMsg"    # Ljava/lang/String;
    .param p3, "response"    # [B

    .prologue
    const/4 v1, 0x0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, -0x1

    iput v0, p0, Landroid/spay/TACommandResponse;->mResponseCode:I

    .line 25
    iput-object v1, p0, Landroid/spay/TACommandResponse;->mErrorMsg:Ljava/lang/String;

    .line 26
    iput-object v1, p0, Landroid/spay/TACommandResponse;->mResponse:[B

    .line 42
    iput p1, p0, Landroid/spay/TACommandResponse;->mResponseCode:I

    .line 43
    iput-object p2, p0, Landroid/spay/TACommandResponse;->mErrorMsg:Ljava/lang/String;

    .line 44
    iput-object p3, p0, Landroid/spay/TACommandResponse;->mResponse:[B

    .line 41
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, -0x1

    iput v0, p0, Landroid/spay/TACommandResponse;->mResponseCode:I

    .line 25
    iput-object v1, p0, Landroid/spay/TACommandResponse;->mErrorMsg:Ljava/lang/String;

    .line 26
    iput-object v1, p0, Landroid/spay/TACommandResponse;->mResponse:[B

    .line 61
    invoke-virtual {p0, p1}, Landroid/spay/TACommandResponse;->readFromParcel(Landroid/os/Parcel;)V

    .line 60
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/spay/TACommandResponse;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0, p1}, Landroid/spay/TACommandResponse;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x0

    return v0
.end method

.method public dump()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 89
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

    .line 91
    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v8, p0, Landroid/spay/TACommandResponse;->mResponse:[B

    array-length v8, v8

    mul-int/lit8 v8, v8, 0x3

    add-int/lit8 v8, v8, 0x64

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 92
    .local v4, "hex":Ljava/lang/StringBuilder;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    iget-object v8, p0, Landroid/spay/TACommandResponse;->mResponse:[B

    array-length v8, v8

    if-ge v5, v8, :cond_1

    .line 93
    if-lez v5, :cond_0

    iget-object v8, p0, Landroid/spay/TACommandResponse;->mResponse:[B

    aget-byte v8, v8, v5

    if-eqz v8, :cond_0

    iget-object v8, p0, Landroid/spay/TACommandResponse;->mResponse:[B

    add-int/lit8 v9, v5, -0x1

    aget-byte v8, v8, v9

    if-nez v8, :cond_0

    .line 94
    const-string/jumbo v8, "\n"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
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

    .line 92
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 98
    :cond_1
    const-string/jumbo v8, "TACommandResponse"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    const/4 v6, 0x0

    .line 101
    .local v6, "outFile":Ljava/io/FileWriter;
    const/4 v0, 0x0

    .line 103
    .local v0, "bw":Ljava/io/BufferedWriter;
    :try_start_0
    new-instance v7, Ljava/io/FileWriter;

    const-string/jumbo v8, "/mnt/sdcard/respbuf.txt"

    const/4 v9, 0x0

    invoke-direct {v7, v8, v9}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    .end local v6    # "outFile":Ljava/io/FileWriter;
    .local v7, "outFile":Ljava/io/FileWriter;
    :try_start_1
    new-instance v1, Ljava/io/BufferedWriter;

    invoke-direct {v1, v7}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 105
    .local v1, "bw":Ljava/io/BufferedWriter;
    :try_start_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .end local v0    # "bw":Ljava/io/BufferedWriter;
    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 110
    if-eqz v1, :cond_2

    .line 111
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V

    .line 113
    :cond_2
    if-eqz v7, :cond_3

    .line 114
    invoke-virtual {v7}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :cond_3
    :goto_1
    move-object v0, v1

    .end local v1    # "bw":Ljava/io/BufferedWriter;
    .local v0, "bw":Ljava/io/BufferedWriter;
    move-object v6, v7

    .line 88
    .end local v0    # "bw":Ljava/io/BufferedWriter;
    .end local v7    # "outFile":Ljava/io/FileWriter;
    :cond_4
    :goto_2
    return-void

    .line 118
    .restart local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v7    # "outFile":Ljava/io/FileWriter;
    :catch_0
    move-exception v3

    .line 119
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 116
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 117
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 106
    .end local v1    # "bw":Ljava/io/BufferedWriter;
    .end local v2    # "e":Ljava/io/IOException;
    .end local v7    # "outFile":Ljava/io/FileWriter;
    .local v0, "bw":Ljava/io/BufferedWriter;
    .restart local v6    # "outFile":Ljava/io/FileWriter;
    :catch_2
    move-exception v3

    .line 107
    .end local v0    # "bw":Ljava/io/BufferedWriter;
    .end local v6    # "outFile":Ljava/io/FileWriter;
    .restart local v3    # "e":Ljava/lang/Exception;
    :goto_3
    :try_start_4
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 110
    if-eqz v0, :cond_5

    .line 111
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    .line 113
    :cond_5
    if-eqz v6, :cond_4

    .line 114
    invoke-virtual {v6}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_2

    .line 116
    :catch_3
    move-exception v2

    .line 117
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 118
    .end local v2    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v3

    .line 119
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 108
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    .line 110
    :goto_4
    if-eqz v0, :cond_6

    .line 111
    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    .line 113
    :cond_6
    if-eqz v6, :cond_7

    .line 114
    invoke-virtual {v6}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    .line 108
    :cond_7
    :goto_5
    throw v8

    .line 118
    :catch_5
    move-exception v3

    .line 119
    .restart local v3    # "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_5

    .line 116
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_6
    move-exception v2

    .line 117
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_5

    .line 108
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v0    # "bw":Ljava/io/BufferedWriter;
    .restart local v7    # "outFile":Ljava/io/FileWriter;
    :catchall_1
    move-exception v8

    move-object v6, v7

    .end local v7    # "outFile":Ljava/io/FileWriter;
    .local v6, "outFile":Ljava/io/FileWriter;
    goto :goto_4

    .end local v0    # "bw":Ljava/io/BufferedWriter;
    .end local v6    # "outFile":Ljava/io/FileWriter;
    .restart local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v7    # "outFile":Ljava/io/FileWriter;
    :catchall_2
    move-exception v8

    move-object v0, v1

    .end local v1    # "bw":Ljava/io/BufferedWriter;
    .local v0, "bw":Ljava/io/BufferedWriter;
    move-object v6, v7

    .end local v7    # "outFile":Ljava/io/FileWriter;
    .restart local v6    # "outFile":Ljava/io/FileWriter;
    goto :goto_4

    .line 106
    .end local v6    # "outFile":Ljava/io/FileWriter;
    .local v0, "bw":Ljava/io/BufferedWriter;
    .restart local v7    # "outFile":Ljava/io/FileWriter;
    :catch_7
    move-exception v3

    .restart local v3    # "e":Ljava/lang/Exception;
    move-object v6, v7

    .end local v7    # "outFile":Ljava/io/FileWriter;
    .restart local v6    # "outFile":Ljava/io/FileWriter;
    goto :goto_3

    .end local v0    # "bw":Ljava/io/BufferedWriter;
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v6    # "outFile":Ljava/io/FileWriter;
    .restart local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v7    # "outFile":Ljava/io/FileWriter;
    :catch_8
    move-exception v3

    .restart local v3    # "e":Ljava/lang/Exception;
    move-object v0, v1

    .end local v1    # "bw":Ljava/io/BufferedWriter;
    .local v0, "bw":Ljava/io/BufferedWriter;
    move-object v6, v7

    .end local v7    # "outFile":Ljava/io/FileWriter;
    .restart local v6    # "outFile":Ljava/io/FileWriter;
    goto :goto_3
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/spay/TACommandResponse;->mResponseCode:I

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/spay/TACommandResponse;->mErrorMsg:Ljava/lang/String;

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 78
    .local v0, "len":I
    new-array v1, v0, [B

    iput-object v1, p0, Landroid/spay/TACommandResponse;->mResponse:[B

    .line 79
    iget-object v1, p0, Landroid/spay/TACommandResponse;->mResponse:[B

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readByteArray([B)V

    .line 74
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flag"    # I

    .prologue
    .line 67
    iget v0, p0, Landroid/spay/TACommandResponse;->mResponseCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 68
    iget-object v0, p0, Landroid/spay/TACommandResponse;->mErrorMsg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Landroid/spay/TACommandResponse;->mResponse:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 70
    iget-object v0, p0, Landroid/spay/TACommandResponse;->mResponse:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 66
    return-void
.end method
