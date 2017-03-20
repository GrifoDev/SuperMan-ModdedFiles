.class public Lcom/cmdm/control/bean/BlackWhite;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private g:I

.field private mobile:Ljava/lang/String;

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterceptCount()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/cmdm/control/bean/BlackWhite;->g:I

    return v0
.end method

.method public getMobile()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/cmdm/control/bean/BlackWhite;->mobile:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/cmdm/control/bean/BlackWhite;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setInterceptCount(I)V
    .locals 0
    .param p1, "interceptCount"    # I

    .prologue
    .line 49
    iput p1, p0, Lcom/cmdm/control/bean/BlackWhite;->g:I

    .line 50
    return-void
.end method

.method public setMobile(Ljava/lang/String;)V
    .locals 0
    .param p1, "mobile"    # Ljava/lang/String;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/cmdm/control/bean/BlackWhite;->mobile:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/cmdm/control/bean/BlackWhite;->name:Ljava/lang/String;

    .line 22
    return-void
.end method
