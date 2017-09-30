.class public Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/MemberRequest;
.super Ljava/lang/Object;


# instance fields
.field private id:Ljava/lang/String;

.field private optional_id:Ljava/lang/String;

.field private permission:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/MemberRequest;->id:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/MemberRequest;->id:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/MemberRequest;->optional_id:Ljava/lang/String;

    iput p3, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/MemberRequest;->permission:I

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/MemberRequest;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getOptionalId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/MemberRequest;->optional_id:Ljava/lang/String;

    return-object v0
.end method

.method public getPermission()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/MemberRequest;->permission:I

    return v0
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/MemberRequest;->id:Ljava/lang/String;

    return-void
.end method

.method public setOptionalId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/MemberRequest;->optional_id:Ljava/lang/String;

    return-void
.end method

.method public setPermission(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/MemberRequest;->permission:I

    return-void
.end method
