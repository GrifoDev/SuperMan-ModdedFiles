.class public Lcom/samsung/android/sdk/ssf/message/io/MessageResult;
.super Ljava/lang/Object;


# instance fields
.field private resultCode:I

.field private resultMsg:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/sdk/ssf/message/io/MessageResult;->resultCode:I

    iput-object p2, p0, Lcom/samsung/android/sdk/ssf/message/io/MessageResult;->resultMsg:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getResultCode()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/MessageResult;->resultCode:I

    return v0
.end method

.method public getResultMsg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/MessageResult;->resultMsg:Ljava/lang/String;

    return-object v0
.end method
