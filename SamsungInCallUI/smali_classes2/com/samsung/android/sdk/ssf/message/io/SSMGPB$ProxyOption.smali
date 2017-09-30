.class public final enum Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ProxyOption;
.super Ljava/lang/Enum;

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/ssf/message/io/SSMGPB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ProxyOption"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ProxyOption;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ProxyOption;

.field public static final enum GATEWAY_MODE:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ProxyOption;

.field public static final GATEWAY_MODE_VALUE:I

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ProxyOption;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ProxyOption;

    const-string v1, "GATEWAY_MODE"

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ProxyOption;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ProxyOption;->GATEWAY_MODE:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ProxyOption;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ProxyOption;

    sget-object v1, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ProxyOption;->GATEWAY_MODE:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ProxyOption;

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ProxyOption;->$VALUES:[Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ProxyOption;

    new-instance v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ProxyOption$1;

    invoke-direct {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ProxyOption$1;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ProxyOption;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p4, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ProxyOption;->value:I

    return-void
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ProxyOption;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ProxyOption;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ProxyOption;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ProxyOption;->GATEWAY_MODE:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ProxyOption;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ProxyOption;
    .locals 1

    const-class v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ProxyOption;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ProxyOption;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ProxyOption;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ProxyOption;->$VALUES:[Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ProxyOption;

    invoke-virtual {v0}, [Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ProxyOption;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ProxyOption;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ProxyOption;->value:I

    return v0
.end method
