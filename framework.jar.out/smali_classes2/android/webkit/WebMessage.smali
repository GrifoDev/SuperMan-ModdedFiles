.class public Landroid/webkit/WebMessage;
.super Ljava/lang/Object;
.source "WebMessage.java"


# instance fields
.field private mData:Ljava/lang/String;

.field private mPorts:[Landroid/webkit/WebMessagePort;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Landroid/webkit/WebMessage;->mData:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Landroid/webkit/WebMessagePort;)V
    .locals 0
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "ports"    # [Landroid/webkit/WebMessagePort;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Landroid/webkit/WebMessage;->mData:Ljava/lang/String;

    .line 45
    iput-object p2, p0, Landroid/webkit/WebMessage;->mPorts:[Landroid/webkit/WebMessagePort;

    .line 43
    return-void
.end method


# virtual methods
.method public getData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Landroid/webkit/WebMessage;->mData:Ljava/lang/String;

    return-object v0
.end method

.method public getPorts()[Landroid/webkit/WebMessagePort;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Landroid/webkit/WebMessage;->mPorts:[Landroid/webkit/WebMessagePort;

    return-object v0
.end method
