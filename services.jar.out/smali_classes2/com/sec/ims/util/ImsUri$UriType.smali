.class public final enum Lcom/sec/ims/util/ImsUri$UriType;
.super Ljava/lang/Enum;
.source "ImsUri.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ims/util/ImsUri;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "UriType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/ims/util/ImsUri$UriType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/ims/util/ImsUri$UriType;

.field public static final enum SIP_URI:Lcom/sec/ims/util/ImsUri$UriType;

.field public static final enum TEL_URI:Lcom/sec/ims/util/ImsUri$UriType;

.field public static final enum URN:Lcom/sec/ims/util/ImsUri$UriType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/sec/ims/util/ImsUri$UriType;

    const-string/jumbo v1, "TEL_URI"

    invoke-direct {v0, v1, v2}, Lcom/sec/ims/util/ImsUri$UriType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/ims/util/ImsUri$UriType;->TEL_URI:Lcom/sec/ims/util/ImsUri$UriType;

    new-instance v0, Lcom/sec/ims/util/ImsUri$UriType;

    const-string/jumbo v1, "SIP_URI"

    invoke-direct {v0, v1, v3}, Lcom/sec/ims/util/ImsUri$UriType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/ims/util/ImsUri$UriType;->SIP_URI:Lcom/sec/ims/util/ImsUri$UriType;

    new-instance v0, Lcom/sec/ims/util/ImsUri$UriType;

    const-string/jumbo v1, "URN"

    invoke-direct {v0, v1, v4}, Lcom/sec/ims/util/ImsUri$UriType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/ims/util/ImsUri$UriType;->URN:Lcom/sec/ims/util/ImsUri$UriType;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sec/ims/util/ImsUri$UriType;

    sget-object v1, Lcom/sec/ims/util/ImsUri$UriType;->TEL_URI:Lcom/sec/ims/util/ImsUri$UriType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/ims/util/ImsUri$UriType;->SIP_URI:Lcom/sec/ims/util/ImsUri$UriType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/ims/util/ImsUri$UriType;->URN:Lcom/sec/ims/util/ImsUri$UriType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/sec/ims/util/ImsUri$UriType;->$VALUES:[Lcom/sec/ims/util/ImsUri$UriType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri$UriType;
    .locals 1

    const-class v0, Lcom/sec/ims/util/ImsUri$UriType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/ims/util/ImsUri$UriType;

    return-object v0
.end method

.method public static values()[Lcom/sec/ims/util/ImsUri$UriType;
    .locals 1

    sget-object v0, Lcom/sec/ims/util/ImsUri$UriType;->$VALUES:[Lcom/sec/ims/util/ImsUri$UriType;

    return-object v0
.end method
