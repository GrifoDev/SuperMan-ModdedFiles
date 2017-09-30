.class public Lcom/samsung/android/sdk/ssf/file/io/GetUploadedBytesOfUploadTokenResponse;
.super Lcom/samsung/android/sdk/ssf/SsfResult;


# static fields
.field public static INCOMPLETED_FILE:I


# instance fields
.field private content_range:Ljava/lang/String;

.field private rcode:I

.field private rmsg:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xfb

    sput v0, Lcom/samsung/android/sdk/ssf/file/io/GetUploadedBytesOfUploadTokenResponse;->INCOMPLETED_FILE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/SsfResult;-><init>()V

    return-void
.end method


# virtual methods
.method public getContentRange()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/file/io/GetUploadedBytesOfUploadTokenResponse;->content_range:Ljava/lang/String;

    return-object v0
.end method

.method public getRcode()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/ssf/file/io/GetUploadedBytesOfUploadTokenResponse;->rcode:I

    return v0
.end method

.method public getRmsg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/file/io/GetUploadedBytesOfUploadTokenResponse;->rmsg:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/file/io/GetUploadedBytesOfUploadTokenResponse;->url:Ljava/lang/String;

    return-object v0
.end method
