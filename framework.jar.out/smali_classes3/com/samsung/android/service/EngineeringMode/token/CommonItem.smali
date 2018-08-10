.class public Lcom/samsung/android/service/EngineeringMode/token/CommonItem;
.super Ljava/lang/Object;
.source "CommonItem.java"


# instance fields
.field private mContents:[B

.field private mLen:I

.field private mType:I


# direct methods
.method public constructor <init>(II[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/service/EngineeringMode/token/CommonItem;->mType:I

    iput p2, p0, Lcom/samsung/android/service/EngineeringMode/token/CommonItem;->mLen:I

    iput-object p3, p0, Lcom/samsung/android/service/EngineeringMode/token/CommonItem;->mContents:[B

    return-void
.end method


# virtual methods
.method public getData()[B
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/service/EngineeringMode/token/CommonItem;->mContents:[B

    return-object v0
.end method

.method public getLen()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/service/EngineeringMode/token/CommonItem;->mLen:I

    return v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/service/EngineeringMode/token/CommonItem;->mType:I

    return v0
.end method
