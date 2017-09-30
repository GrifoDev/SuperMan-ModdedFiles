.class public Lcom/cmdm/control/bean/BlackWhite;
.super Ljava/lang/Object;


# instance fields
.field private g:I

.field private mobile:Ljava/lang/String;

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterceptCount()I
    .locals 1

    iget v0, p0, Lcom/cmdm/control/bean/BlackWhite;->g:I

    return v0
.end method

.method public getMobile()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/bean/BlackWhite;->mobile:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/bean/BlackWhite;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setInterceptCount(I)V
    .locals 0

    iput p1, p0, Lcom/cmdm/control/bean/BlackWhite;->g:I

    return-void
.end method

.method public setMobile(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/bean/BlackWhite;->mobile:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/bean/BlackWhite;->name:Ljava/lang/String;

    return-void
.end method
