.class public final enum Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatType;
.super Ljava/lang/Enum;

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/ssf/message/io/SSMGPB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ChatType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatType;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatType;

.field public static final enum BROADCAST:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatType;

.field public static final BROADCAST_VALUE:I = 0x2

.field public static final enum GROUP:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatType;

.field public static final GROUP_VALUE:I = 0x1

.field public static final enum MONOLOGUE:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatType;

.field public static final MONOLOGUE_VALUE:I = 0x4

.field public static final enum MONO_GROUP:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatType;

.field public static final MONO_GROUP_VALUE:I = 0x5

.field public static final enum SECURE:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatType;

.field public static final SECURE_VALUE:I = 0x3

.field public static final enum SINGLE:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatType;

.field public static final SINGLE_VALUE:I

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    new-instance v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatType;

    const-string v1, "SINGLE"

    invoke-direct {v0, v1, v5, v5, v5}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatType;->SINGLE:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatType;

    new-instance v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatType;

    const-string v1, "GROUP"

    invoke-direct {v0, v1, v6, v6, v6}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatType;->GROUP:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatType;

    new-instance v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatType;

    const-string v1, "BROADCAST"

    invoke-direct {v0, v1, v7, v7, v7}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatType;->BROADCAST:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatType;

    new-instance v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatType;

    const-string v1, "SECURE"

    invoke-direct {v0, v1, v8, v8, v8}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatType;->SECURE:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatType;

    new-instance v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatType;

    const-string v1, "MONOLOGUE"

    invoke-direct {v0, v1, v9, v9, v9}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatType;->MONOLOGUE:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatType;

    new-instance v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatType;

    const-string v1, "MONO_GROUP"

    const/4 v2, 0x5

    const/4 v3, 0x5

    const/4 v4, 0x5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatType;->MONO_GROUP:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatType;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatType;

    sget-object v1, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatType;->SINGLE:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatType;->GROUP:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatType;->BROADCAST:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatType;->SECURE:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatType;->MONOLOGUE:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatType;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatType;->MONO_GROUP:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatType;->$VALUES:[Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatType;

    new-instance v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatType$1;

    invoke-direct {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatType$1;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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

    iput p4, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatType;->value:I

    return-void
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatType;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatType;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatType;->SINGLE:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatType;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatType;->GROUP:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatType;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatType;->BROADCAST:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatType;

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatType;->SECURE:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatType;

    goto :goto_0

    :pswitch_4
    sget-object v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatType;->MONOLOGUE:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatType;

    goto :goto_0

    :pswitch_5
    sget-object v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatType;->MONO_GROUP:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatType;

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
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatType;
    .locals 1

    const-class v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatType;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatType;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatType;->$VALUES:[Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatType;

    invoke-virtual {v0}, [Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatType;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatType;->value:I

    return v0
.end method
