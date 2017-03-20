.class public final enum Lcom/cmdm/control/network/b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/cmdm/control/network/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum cB:Lcom/cmdm/control/network/b;

.field public static final enum cC:Lcom/cmdm/control/network/b;

.field public static final enum cD:Lcom/cmdm/control/network/b;

.field public static final enum cE:Lcom/cmdm/control/network/b;

.field public static final enum cF:Lcom/cmdm/control/network/b;

.field private static final synthetic cG:[Lcom/cmdm/control/network/b;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 9
    new-instance v0, Lcom/cmdm/control/network/b;

    const-string v1, "NONE"

    .line 10
    invoke-direct {v0, v1, v3, v3}, Lcom/cmdm/control/network/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cmdm/control/network/b;->cB:Lcom/cmdm/control/network/b;

    .line 11
    new-instance v0, Lcom/cmdm/control/network/b;

    const-string v1, "CMWAP"

    .line 12
    invoke-direct {v0, v1, v4, v4}, Lcom/cmdm/control/network/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cmdm/control/network/b;->cC:Lcom/cmdm/control/network/b;

    .line 13
    new-instance v0, Lcom/cmdm/control/network/b;

    const-string v1, "CMNET"

    .line 14
    invoke-direct {v0, v1, v5, v5}, Lcom/cmdm/control/network/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cmdm/control/network/b;->cD:Lcom/cmdm/control/network/b;

    .line 15
    new-instance v0, Lcom/cmdm/control/network/b;

    const-string v1, "WIFI"

    .line 16
    invoke-direct {v0, v1, v6, v6}, Lcom/cmdm/control/network/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cmdm/control/network/b;->cE:Lcom/cmdm/control/network/b;

    .line 17
    new-instance v0, Lcom/cmdm/control/network/b;

    const-string v1, "OTHER"

    .line 18
    const/4 v2, -0x1

    invoke-direct {v0, v1, v7, v2}, Lcom/cmdm/control/network/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cmdm/control/network/b;->cF:Lcom/cmdm/control/network/b;

    .line 8
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/cmdm/control/network/b;

    sget-object v1, Lcom/cmdm/control/network/b;->cB:Lcom/cmdm/control/network/b;

    aput-object v1, v0, v3

    sget-object v1, Lcom/cmdm/control/network/b;->cC:Lcom/cmdm/control/network/b;

    aput-object v1, v0, v4

    sget-object v1, Lcom/cmdm/control/network/b;->cD:Lcom/cmdm/control/network/b;

    aput-object v1, v0, v5

    sget-object v1, Lcom/cmdm/control/network/b;->cE:Lcom/cmdm/control/network/b;

    aput-object v1, v0, v6

    sget-object v1, Lcom/cmdm/control/network/b;->cF:Lcom/cmdm/control/network/b;

    aput-object v1, v0, v7

    sput-object v0, Lcom/cmdm/control/network/b;->cG:[Lcom/cmdm/control/network/b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "v"    # I

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 21
    iput p3, p0, Lcom/cmdm/control/network/b;->value:I

    .line 22
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cmdm/control/network/b;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/cmdm/control/network/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/cmdm/control/network/b;

    return-object v0
.end method

.method public static values()[Lcom/cmdm/control/network/b;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/cmdm/control/network/b;->cG:[Lcom/cmdm/control/network/b;

    array-length v1, v0

    new-array v2, v1, [Lcom/cmdm/control/network/b;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method

.method public static z(I)Lcom/cmdm/control/network/b;
    .locals 1
    .param p0, "enumValue"    # I

    .prologue
    .line 32
    packed-switch p0, :pswitch_data_0

    .line 44
    sget-object v0, Lcom/cmdm/control/network/b;->cB:Lcom/cmdm/control/network/b;

    :goto_0
    return-object v0

    .line 34
    :pswitch_0
    sget-object v0, Lcom/cmdm/control/network/b;->cB:Lcom/cmdm/control/network/b;

    goto :goto_0

    .line 36
    :pswitch_1
    sget-object v0, Lcom/cmdm/control/network/b;->cC:Lcom/cmdm/control/network/b;

    goto :goto_0

    .line 38
    :pswitch_2
    sget-object v0, Lcom/cmdm/control/network/b;->cD:Lcom/cmdm/control/network/b;

    goto :goto_0

    .line 40
    :pswitch_3
    sget-object v0, Lcom/cmdm/control/network/b;->cE:Lcom/cmdm/control/network/b;

    goto :goto_0

    .line 32
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public toInt()I
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lcom/cmdm/control/network/b;->value:I

    return v0
.end method
