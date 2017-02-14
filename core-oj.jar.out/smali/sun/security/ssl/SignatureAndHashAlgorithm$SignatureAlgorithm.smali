.class final enum Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;
.super Ljava/lang/Enum;
.source "SignatureAndHashAlgorithm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/security/ssl/SignatureAndHashAlgorithm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "SignatureAlgorithm"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;

.field public static final enum ANONYMOUS:Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;

.field public static final enum DSA:Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;

.field public static final enum ECDSA:Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;

.field public static final enum RSA:Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;

.field public static final enum UNDEFINED:Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;


# instance fields
.field final name:Ljava/lang/String;

.field final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;

    const-string/jumbo v1, "UNDEFINED"

    const-string/jumbo v2, "undefined"

    const/4 v3, -0x1

    invoke-direct {v0, v1, v4, v2, v3}, Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;->UNDEFINED:Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;

    new-instance v0, Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;

    const-string/jumbo v1, "ANONYMOUS"

    const-string/jumbo v2, "anonymous"

    invoke-direct {v0, v1, v5, v2, v4}, Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;->ANONYMOUS:Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;

    new-instance v0, Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;

    const-string/jumbo v1, "RSA"

    const-string/jumbo v2, "rsa"

    invoke-direct {v0, v1, v6, v2, v5}, Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;->RSA:Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;

    new-instance v0, Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;

    const-string/jumbo v1, "DSA"

    const-string/jumbo v2, "dsa"

    invoke-direct {v0, v1, v7, v2, v6}, Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;->DSA:Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;

    new-instance v0, Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;

    const-string/jumbo v1, "ECDSA"

    const-string/jumbo v2, "ecdsa"

    invoke-direct {v0, v1, v8, v2, v7}, Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;->ECDSA:Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;

    const/4 v0, 0x5

    new-array v0, v0, [Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;

    sget-object v1, Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;->UNDEFINED:Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;

    aput-object v1, v0, v4

    sget-object v1, Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;->ANONYMOUS:Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;

    aput-object v1, v0, v5

    sget-object v1, Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;->RSA:Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;

    aput-object v1, v0, v6

    sget-object v1, Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;->DSA:Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;

    aput-object v1, v0, v7

    sget-object v1, Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;->ECDSA:Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;

    aput-object v1, v0, v8

    sput-object v0, Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;->$VALUES:[Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;->name:Ljava/lang/String;

    iput p4, p0, Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;->value:I

    return-void
.end method

.method static valueOf(I)Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;
    .locals 1

    sget-object v0, Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;->UNDEFINED:Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;

    packed-switch p0, :pswitch_data_0

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;->ANONYMOUS:Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;->RSA:Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;->DSA:Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;

    goto :goto_0

    :pswitch_3
    sget-object v0, Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;->ECDSA:Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;
    .locals 1

    const-class v0, Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;

    return-object v0
.end method

.method public static values()[Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;
    .locals 1

    sget-object v0, Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;->$VALUES:[Lsun/security/ssl/SignatureAndHashAlgorithm$SignatureAlgorithm;

    return-object v0
.end method
