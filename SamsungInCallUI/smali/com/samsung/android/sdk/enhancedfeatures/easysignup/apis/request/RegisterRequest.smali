.class public Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/request/RegisterRequest;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/request/RegisterRequest$Builder;
    }
.end annotation


# static fields
.field public static final AUTH_TYPE_MO:I = 0x0

.field public static final AUTH_TYPE_MT_ACS:I = 0x2

.field public static final AUTH_TYPE_MT_SMS:I = 0x1

.field public static final AUTH_TYPE_MT_UI:I = 0x3


# instance fields
.field private mAuthCode:Ljava/lang/String;

.field private mAuthType:I


# direct methods
.method private constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/request/RegisterRequest;->mAuthCode:Ljava/lang/String;

    iput p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/request/RegisterRequest;->mAuthType:I

    return-void
.end method

.method synthetic constructor <init>(ILjava/lang/String;Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/request/RegisterRequest$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/request/RegisterRequest;-><init>(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getAuthCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/request/RegisterRequest;->mAuthCode:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthType()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/request/RegisterRequest;->mAuthType:I

    return v0
.end method
