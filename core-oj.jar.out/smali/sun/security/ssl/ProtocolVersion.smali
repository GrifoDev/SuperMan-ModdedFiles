.class public final Lsun/security/ssl/ProtocolVersion;
.super Ljava/lang/Object;
.source "ProtocolVersion.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lsun/security/ssl/ProtocolVersion;",
        ">;"
    }
.end annotation


# static fields
.field static final DEFAULT:Lsun/security/ssl/ProtocolVersion;

.field static final DEFAULT_HELLO:Lsun/security/ssl/ProtocolVersion;

.field private static final FIPS:Z

.field static final LIMIT_MAX_VALUE:I = 0xffff

.field static final LIMIT_MIN_VALUE:I

.field static final MAX:Lsun/security/ssl/ProtocolVersion;

.field static final MIN:Lsun/security/ssl/ProtocolVersion;

.field static final NONE:Lsun/security/ssl/ProtocolVersion;

.field static final SSL20Hello:Lsun/security/ssl/ProtocolVersion;

.field static final SSL30:Lsun/security/ssl/ProtocolVersion;

.field static final TLS10:Lsun/security/ssl/ProtocolVersion;

.field static final TLS11:Lsun/security/ssl/ProtocolVersion;

.field static final TLS12:Lsun/security/ssl/ProtocolVersion;


# instance fields
.field public final major:B

.field public final minor:B

.field final name:Ljava/lang/String;

.field public final v:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 57
    new-instance v0, Lsun/security/ssl/ProtocolVersion;

    const-string/jumbo v1, "NONE"

    const/4 v2, -0x1

    invoke-direct {v0, v2, v1}, Lsun/security/ssl/ProtocolVersion;-><init>(ILjava/lang/String;)V

    sput-object v0, Lsun/security/ssl/ProtocolVersion;->NONE:Lsun/security/ssl/ProtocolVersion;

    .line 60
    new-instance v0, Lsun/security/ssl/ProtocolVersion;

    .line 61
    const-string/jumbo v1, "SSLv2Hello"

    .line 60
    const/4 v2, 0x2

    invoke-direct {v0, v2, v1}, Lsun/security/ssl/ProtocolVersion;-><init>(ILjava/lang/String;)V

    sput-object v0, Lsun/security/ssl/ProtocolVersion;->SSL20Hello:Lsun/security/ssl/ProtocolVersion;

    .line 64
    new-instance v0, Lsun/security/ssl/ProtocolVersion;

    const-string/jumbo v1, "SSLv3"

    const/16 v2, 0x300

    invoke-direct {v0, v2, v1}, Lsun/security/ssl/ProtocolVersion;-><init>(ILjava/lang/String;)V

    sput-object v0, Lsun/security/ssl/ProtocolVersion;->SSL30:Lsun/security/ssl/ProtocolVersion;

    .line 67
    new-instance v0, Lsun/security/ssl/ProtocolVersion;

    const-string/jumbo v1, "TLSv1"

    const/16 v2, 0x301

    invoke-direct {v0, v2, v1}, Lsun/security/ssl/ProtocolVersion;-><init>(ILjava/lang/String;)V

    sput-object v0, Lsun/security/ssl/ProtocolVersion;->TLS10:Lsun/security/ssl/ProtocolVersion;

    .line 70
    new-instance v0, Lsun/security/ssl/ProtocolVersion;

    const-string/jumbo v1, "TLSv1.1"

    const/16 v2, 0x302

    invoke-direct {v0, v2, v1}, Lsun/security/ssl/ProtocolVersion;-><init>(ILjava/lang/String;)V

    sput-object v0, Lsun/security/ssl/ProtocolVersion;->TLS11:Lsun/security/ssl/ProtocolVersion;

    .line 73
    new-instance v0, Lsun/security/ssl/ProtocolVersion;

    const-string/jumbo v1, "TLSv1.2"

    const/16 v2, 0x303

    invoke-direct {v0, v2, v1}, Lsun/security/ssl/ProtocolVersion;-><init>(ILjava/lang/String;)V

    sput-object v0, Lsun/security/ssl/ProtocolVersion;->TLS12:Lsun/security/ssl/ProtocolVersion;

    .line 75
    invoke-static {}, Lsun/security/ssl/SunJSSE;->isFIPS()Z

    move-result v0

    sput-boolean v0, Lsun/security/ssl/ProtocolVersion;->FIPS:Z

    .line 78
    sget-boolean v0, Lsun/security/ssl/ProtocolVersion;->FIPS:Z

    if-eqz v0, :cond_0

    sget-object v0, Lsun/security/ssl/ProtocolVersion;->TLS10:Lsun/security/ssl/ProtocolVersion;

    :goto_0
    sput-object v0, Lsun/security/ssl/ProtocolVersion;->MIN:Lsun/security/ssl/ProtocolVersion;

    .line 81
    sget-object v0, Lsun/security/ssl/ProtocolVersion;->TLS12:Lsun/security/ssl/ProtocolVersion;

    sput-object v0, Lsun/security/ssl/ProtocolVersion;->MAX:Lsun/security/ssl/ProtocolVersion;

    .line 84
    sget-object v0, Lsun/security/ssl/ProtocolVersion;->TLS10:Lsun/security/ssl/ProtocolVersion;

    sput-object v0, Lsun/security/ssl/ProtocolVersion;->DEFAULT:Lsun/security/ssl/ProtocolVersion;

    .line 87
    sget-boolean v0, Lsun/security/ssl/ProtocolVersion;->FIPS:Z

    if-eqz v0, :cond_1

    sget-object v0, Lsun/security/ssl/ProtocolVersion;->TLS10:Lsun/security/ssl/ProtocolVersion;

    :goto_1
    sput-object v0, Lsun/security/ssl/ProtocolVersion;->DEFAULT_HELLO:Lsun/security/ssl/ProtocolVersion;

    .line 48
    return-void

    .line 78
    :cond_0
    sget-object v0, Lsun/security/ssl/ProtocolVersion;->SSL30:Lsun/security/ssl/ProtocolVersion;

    goto :goto_0

    .line 87
    :cond_1
    sget-object v0, Lsun/security/ssl/ProtocolVersion;->SSL30:Lsun/security/ssl/ProtocolVersion;

    goto :goto_1
.end method

.method private constructor <init>(ILjava/lang/String;)V
    .locals 1
    .param p1, "v"    # I
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput p1, p0, Lsun/security/ssl/ProtocolVersion;->v:I

    .line 102
    iput-object p2, p0, Lsun/security/ssl/ProtocolVersion;->name:Ljava/lang/String;

    .line 103
    ushr-int/lit8 v0, p1, 0x8

    int-to-byte v0, v0

    iput-byte v0, p0, Lsun/security/ssl/ProtocolVersion;->major:B

    .line 104
    and-int/lit16 v0, p1, 0xff

    int-to-byte v0, v0

    iput-byte v0, p0, Lsun/security/ssl/ProtocolVersion;->minor:B

    .line 100
    return-void
.end method

.method private static valueOf(I)Lsun/security/ssl/ProtocolVersion;
    .locals 5
    .param p0, "v"    # I

    .prologue
    .line 109
    sget-object v2, Lsun/security/ssl/ProtocolVersion;->SSL30:Lsun/security/ssl/ProtocolVersion;

    iget v2, v2, Lsun/security/ssl/ProtocolVersion;->v:I

    if-ne p0, v2, :cond_0

    .line 110
    sget-object v2, Lsun/security/ssl/ProtocolVersion;->SSL30:Lsun/security/ssl/ProtocolVersion;

    return-object v2

    .line 111
    :cond_0
    sget-object v2, Lsun/security/ssl/ProtocolVersion;->TLS10:Lsun/security/ssl/ProtocolVersion;

    iget v2, v2, Lsun/security/ssl/ProtocolVersion;->v:I

    if-ne p0, v2, :cond_1

    .line 112
    sget-object v2, Lsun/security/ssl/ProtocolVersion;->TLS10:Lsun/security/ssl/ProtocolVersion;

    return-object v2

    .line 113
    :cond_1
    sget-object v2, Lsun/security/ssl/ProtocolVersion;->TLS11:Lsun/security/ssl/ProtocolVersion;

    iget v2, v2, Lsun/security/ssl/ProtocolVersion;->v:I

    if-ne p0, v2, :cond_2

    .line 114
    sget-object v2, Lsun/security/ssl/ProtocolVersion;->TLS11:Lsun/security/ssl/ProtocolVersion;

    return-object v2

    .line 115
    :cond_2
    sget-object v2, Lsun/security/ssl/ProtocolVersion;->TLS12:Lsun/security/ssl/ProtocolVersion;

    iget v2, v2, Lsun/security/ssl/ProtocolVersion;->v:I

    if-ne p0, v2, :cond_3

    .line 116
    sget-object v2, Lsun/security/ssl/ProtocolVersion;->TLS12:Lsun/security/ssl/ProtocolVersion;

    return-object v2

    .line 117
    :cond_3
    sget-object v2, Lsun/security/ssl/ProtocolVersion;->SSL20Hello:Lsun/security/ssl/ProtocolVersion;

    iget v2, v2, Lsun/security/ssl/ProtocolVersion;->v:I

    if-ne p0, v2, :cond_4

    .line 118
    sget-object v2, Lsun/security/ssl/ProtocolVersion;->SSL20Hello:Lsun/security/ssl/ProtocolVersion;

    return-object v2

    .line 120
    :cond_4
    ushr-int/lit8 v2, p0, 0x8

    and-int/lit16 v0, v2, 0xff

    .line 121
    .local v0, "major":I
    and-int/lit16 v1, p0, 0xff

    .line 122
    .local v1, "minor":I
    new-instance v2, Lsun/security/ssl/ProtocolVersion;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unknown-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lsun/security/ssl/ProtocolVersion;-><init>(ILjava/lang/String;)V

    return-object v2
.end method

.method public static valueOf(II)Lsun/security/ssl/ProtocolVersion;
    .locals 2
    .param p0, "major"    # I
    .param p1, "minor"    # I

    .prologue
    .line 131
    and-int/lit16 p0, p0, 0xff

    .line 132
    and-int/lit16 p1, p1, 0xff

    .line 133
    shl-int/lit8 v1, p0, 0x8

    or-int v0, v1, p1

    .line 134
    .local v0, "v":I
    invoke-static {v0}, Lsun/security/ssl/ProtocolVersion;->valueOf(I)Lsun/security/ssl/ProtocolVersion;

    move-result-object v1

    return-object v1
.end method

.method static valueOf(Ljava/lang/String;)Lsun/security/ssl/ProtocolVersion;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 144
    if-nez p0, :cond_0

    .line 145
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Protocol cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 148
    :cond_0
    sget-boolean v0, Lsun/security/ssl/ProtocolVersion;->FIPS:Z

    if-eqz v0, :cond_2

    sget-object v0, Lsun/security/ssl/ProtocolVersion;->SSL30:Lsun/security/ssl/ProtocolVersion;

    iget-object v0, v0, Lsun/security/ssl/ProtocolVersion;->name:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lsun/security/ssl/ProtocolVersion;->SSL20Hello:Lsun/security/ssl/ProtocolVersion;

    iget-object v0, v0, Lsun/security/ssl/ProtocolVersion;->name:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 149
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 150
    const-string/jumbo v1, "Only TLS 1.0 or later allowed in FIPS mode"

    .line 149
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 153
    :cond_2
    sget-object v0, Lsun/security/ssl/ProtocolVersion;->SSL30:Lsun/security/ssl/ProtocolVersion;

    iget-object v0, v0, Lsun/security/ssl/ProtocolVersion;->name:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 154
    sget-object v0, Lsun/security/ssl/ProtocolVersion;->SSL30:Lsun/security/ssl/ProtocolVersion;

    return-object v0

    .line 155
    :cond_3
    sget-object v0, Lsun/security/ssl/ProtocolVersion;->TLS10:Lsun/security/ssl/ProtocolVersion;

    iget-object v0, v0, Lsun/security/ssl/ProtocolVersion;->name:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 156
    sget-object v0, Lsun/security/ssl/ProtocolVersion;->TLS10:Lsun/security/ssl/ProtocolVersion;

    return-object v0

    .line 157
    :cond_4
    sget-object v0, Lsun/security/ssl/ProtocolVersion;->TLS11:Lsun/security/ssl/ProtocolVersion;

    iget-object v0, v0, Lsun/security/ssl/ProtocolVersion;->name:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 158
    sget-object v0, Lsun/security/ssl/ProtocolVersion;->TLS11:Lsun/security/ssl/ProtocolVersion;

    return-object v0

    .line 159
    :cond_5
    sget-object v0, Lsun/security/ssl/ProtocolVersion;->TLS12:Lsun/security/ssl/ProtocolVersion;

    iget-object v0, v0, Lsun/security/ssl/ProtocolVersion;->name:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 160
    sget-object v0, Lsun/security/ssl/ProtocolVersion;->TLS12:Lsun/security/ssl/ProtocolVersion;

    return-object v0

    .line 161
    :cond_6
    sget-object v0, Lsun/security/ssl/ProtocolVersion;->SSL20Hello:Lsun/security/ssl/ProtocolVersion;

    iget-object v0, v0, Lsun/security/ssl/ProtocolVersion;->name:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 162
    sget-object v0, Lsun/security/ssl/ProtocolVersion;->SSL20Hello:Lsun/security/ssl/ProtocolVersion;

    return-object v0

    .line 164
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "protocolVersion"    # Ljava/lang/Object;

    .prologue
    .line 175
    check-cast p1, Lsun/security/ssl/ProtocolVersion;

    .end local p1    # "protocolVersion":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lsun/security/ssl/ProtocolVersion;->compareTo(Lsun/security/ssl/ProtocolVersion;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lsun/security/ssl/ProtocolVersion;)I
    .locals 2
    .param p1, "protocolVersion"    # Lsun/security/ssl/ProtocolVersion;

    .prologue
    .line 176
    iget v0, p0, Lsun/security/ssl/ProtocolVersion;->v:I

    iget v1, p1, Lsun/security/ssl/ProtocolVersion;->v:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lsun/security/ssl/ProtocolVersion;->name:Ljava/lang/String;

    return-object v0
.end method
