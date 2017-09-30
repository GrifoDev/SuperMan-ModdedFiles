.class public Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/ApplicationStatus$Services;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/ApplicationStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Services"
.end annotation


# instance fields
.field private sid:I

.field private status:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/ApplicationStatus$Services;->sid:I

    iput p2, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/ApplicationStatus$Services;->status:I

    return-void
.end method


# virtual methods
.method public getServiceId()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/ApplicationStatus$Services;->sid:I

    return v0
.end method

.method public getStatus()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/ApplicationStatus$Services;->status:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " Service[ sid= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/ApplicationStatus$Services;->sid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", status= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/ApplicationStatus$Services;->status:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
