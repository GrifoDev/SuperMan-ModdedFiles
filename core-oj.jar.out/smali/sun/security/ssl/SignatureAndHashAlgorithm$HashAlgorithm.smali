.class final enum Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;
.super Ljava/lang/Enum;
.source "SignatureAndHashAlgorithm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/security/ssl/SignatureAndHashAlgorithm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "HashAlgorithm"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;

.field public static final enum MD5:Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;

.field public static final enum NONE:Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;

.field public static final enum SHA1:Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;

.field public static final enum SHA224:Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;

.field public static final enum SHA256:Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;

.field public static final enum SHA384:Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;

.field public static final enum SHA512:Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;

.field public static final enum UNDEFINED:Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;


# instance fields
.field final length:I

.field final name:Ljava/lang/String;

.field final standardName:Ljava/lang/String;

.field final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;

    const-string/jumbo v1, "UNDEFINED"

    const-string/jumbo v3, "undefined"

    const-string/jumbo v4, ""

    const/4 v2, 0x0

    const/4 v5, -0x1

    const/4 v6, -0x1

    invoke-direct/range {v0 .. v6}, Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    sput-object v0, Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;->UNDEFINED:Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;

    new-instance v0, Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;

    const-string/jumbo v1, "NONE"

    const-string/jumbo v3, "none"

    const-string/jumbo v4, "NONE"

    const/4 v2, 0x1

    const/4 v5, 0x0

    const/4 v6, -0x1

    invoke-direct/range {v0 .. v6}, Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    sput-object v0, Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;->NONE:Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;

    new-instance v0, Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;

    const-string/jumbo v1, "MD5"

    const-string/jumbo v3, "md5"

    const-string/jumbo v4, "MD5"

    const/4 v2, 0x2

    const/4 v5, 0x1

    const/16 v6, 0x10

    invoke-direct/range {v0 .. v6}, Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    sput-object v0, Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;->MD5:Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;

    new-instance v0, Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;

    const-string/jumbo v1, "SHA1"

    const-string/jumbo v3, "sha1"

    const-string/jumbo v4, "SHA-1"

    const/4 v2, 0x3

    const/4 v5, 0x2

    const/16 v6, 0x14

    invoke-direct/range {v0 .. v6}, Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    sput-object v0, Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;->SHA1:Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;

    new-instance v0, Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;

    const-string/jumbo v1, "SHA224"

    const-string/jumbo v3, "sha224"

    const-string/jumbo v4, "SHA-224"

    const/4 v2, 0x4

    const/4 v5, 0x3

    const/16 v6, 0x1c

    invoke-direct/range {v0 .. v6}, Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    sput-object v0, Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;->SHA224:Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;

    new-instance v0, Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;

    const-string/jumbo v1, "SHA256"

    const-string/jumbo v3, "sha256"

    const-string/jumbo v4, "SHA-256"

    const/4 v2, 0x5

    const/4 v5, 0x4

    const/16 v6, 0x20

    invoke-direct/range {v0 .. v6}, Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    sput-object v0, Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;->SHA256:Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;

    new-instance v0, Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;

    const-string/jumbo v1, "SHA384"

    const-string/jumbo v3, "sha384"

    const-string/jumbo v4, "SHA-384"

    const/4 v2, 0x6

    const/4 v5, 0x5

    const/16 v6, 0x30

    invoke-direct/range {v0 .. v6}, Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    sput-object v0, Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;->SHA384:Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;

    new-instance v0, Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;

    const-string/jumbo v1, "SHA512"

    const-string/jumbo v3, "sha512"

    const-string/jumbo v4, "SHA-512"

    const/4 v2, 0x7

    const/4 v5, 0x6

    const/16 v6, 0x40

    invoke-direct/range {v0 .. v6}, Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    sput-object v0, Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;->SHA512:Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;

    const/16 v0, 0x8

    new-array v0, v0, [Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;

    sget-object v1, Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;->UNDEFINED:Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;->NONE:Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;->MD5:Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;->SHA1:Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;->SHA224:Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;->SHA256:Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;->SHA384:Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;->SHA512:Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sput-object v0, Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;->$VALUES:[Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;->name:Ljava/lang/String;

    iput-object p4, p0, Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;->standardName:Ljava/lang/String;

    iput p5, p0, Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;->value:I

    iput p6, p0, Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;->length:I

    return-void
.end method

.method static valueOf(I)Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;
    .locals 1

    sget-object v0, Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;->UNDEFINED:Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;

    packed-switch p0, :pswitch_data_0

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;->NONE:Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;->MD5:Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;->SHA1:Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;

    goto :goto_0

    :pswitch_3
    sget-object v0, Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;->SHA224:Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;

    goto :goto_0

    :pswitch_4
    sget-object v0, Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;->SHA256:Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;

    goto :goto_0

    :pswitch_5
    sget-object v0, Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;->SHA384:Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;

    goto :goto_0

    :pswitch_6
    sget-object v0, Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;->SHA512:Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;
    .locals 1

    const-class v0, Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;

    return-object v0
.end method

.method public static values()[Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;
    .locals 1

    sget-object v0, Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;->$VALUES:[Lsun/security/ssl/SignatureAndHashAlgorithm$HashAlgorithm;

    return-object v0
.end method
