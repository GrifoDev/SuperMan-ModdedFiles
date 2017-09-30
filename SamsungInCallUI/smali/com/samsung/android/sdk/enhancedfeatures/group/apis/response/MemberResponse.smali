.class public Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/MemberResponse;
.super Ljava/lang/Object;


# instance fields
.field protected id:Ljava/lang/String;

.field protected optional_id:Ljava/lang/String;

.field protected permission:I

.field protected status:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/MemberResponse;->id:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/MemberResponse;->optional_id:Ljava/lang/String;

    iput p3, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/MemberResponse;->permission:I

    iput p4, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/MemberResponse;->status:I

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/MemberResponse;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getOptionalId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/MemberResponse;->optional_id:Ljava/lang/String;

    return-object v0
.end method

.method public getPermission()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/MemberResponse;->permission:I

    return v0
.end method

.method public getStatus()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/MemberResponse;->status:I

    return v0
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/MemberResponse;->id:Ljava/lang/String;

    return-void
.end method

.method public setOptionalId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/MemberResponse;->optional_id:Ljava/lang/String;

    return-void
.end method

.method public setPermission(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/MemberResponse;->permission:I

    return-void
.end method

.method public setStatus(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/MemberResponse;->status:I

    return-void
.end method
