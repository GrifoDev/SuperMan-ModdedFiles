.class public final enum Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Type;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/ssf/message/io/MessageRoom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Type;

.field public static final enum GROUP:Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Type;

.field public static final enum MONO_GROUP:Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Type;

.field public static final enum SINGLE:Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Type;


# instance fields
.field private final value:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Type;

    const-string v1, "SINGLE"

    sget-object v2, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatType;->SINGLE:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatType;

    invoke-direct {v0, v1, v3, v2}, Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Type;-><init>(Ljava/lang/String;ILcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatType;)V

    sput-object v0, Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Type;->SINGLE:Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Type;

    new-instance v0, Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Type;

    const-string v1, "GROUP"

    sget-object v2, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatType;->GROUP:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatType;

    invoke-direct {v0, v1, v4, v2}, Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Type;-><init>(Ljava/lang/String;ILcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatType;)V

    sput-object v0, Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Type;->GROUP:Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Type;

    new-instance v0, Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Type;

    const-string v1, "MONO_GROUP"

    sget-object v2, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatType;->MONO_GROUP:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatType;

    invoke-direct {v0, v1, v5, v2}, Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Type;-><init>(Ljava/lang/String;ILcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatType;)V

    sput-object v0, Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Type;->MONO_GROUP:Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Type;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Type;

    sget-object v1, Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Type;->SINGLE:Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Type;->GROUP:Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Type;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Type;->MONO_GROUP:Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Type;

    aput-object v1, v0, v5

    sput-object v0, Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Type;->$VALUES:[Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatType;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatType;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Type;->value:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatType;

    return-void
.end method

.method public static valueOf(Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatType;)Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Type;
    .locals 2

    sget-object v0, Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$1;->$SwitchMap$com$samsung$android$sdk$ssf$message$io$SSMGPB$ChatType:[I

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Type;->SINGLE:Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Type;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Type;->GROUP:Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Type;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Type;->MONO_GROUP:Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Type;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Type;
    .locals 1

    const-class v0, Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Type;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Type;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Type;->$VALUES:[Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Type;

    invoke-virtual {v0}, [Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Type;

    return-object v0
.end method


# virtual methods
.method public final getValue()Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatType;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/message/io/MessageRoom$Type;->value:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$ChatType;

    return-object v0
.end method
