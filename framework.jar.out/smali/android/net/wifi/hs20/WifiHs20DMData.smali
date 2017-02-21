.class public Landroid/net/wifi/hs20/WifiHs20DMData;
.super Ljava/lang/Object;
.source "WifiHs20DMData.java"


# instance fields
.field public base64Data:Landroid/util/Base64;

.field public base64DataLen:I

.field public booleanData:Z

.field public byteData:[B

.field public byteDataLen:I

.field public charData:Ljava/lang/String;

.field public charDataLen:I

.field public command:Ljava/lang/String;

.field public credID:I

.field public execData:Ljava/lang/String;

.field public floatData:F

.field public fmt:I

.field public intData:J

.field public password:[B

.field public uri:Ljava/lang/String;

.field public username:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/net/wifi/hs20/WifiHs20DMData;->credID:I

    return-void
.end method
