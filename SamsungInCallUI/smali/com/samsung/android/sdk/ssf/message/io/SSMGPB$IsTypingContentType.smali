.class public final enum Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$IsTypingContentType;
.super Ljava/lang/Enum;

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/ssf/message/io/SSMGPB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IsTypingContentType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$IsTypingContentType;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$IsTypingContentType;

.field public static final enum CONTENT_AUDIO:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$IsTypingContentType;

.field public static final CONTENT_AUDIO_VALUE:I = 0x3

.field public static final enum CONTENT_IMAGE:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$IsTypingContentType;

.field public static final CONTENT_IMAGE_VALUE:I = 0x1

.field public static final enum CONTENT_TEXT:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$IsTypingContentType;

.field public static final CONTENT_TEXT_VALUE:I = 0x0

.field public static final enum CONTENT_VIDEO:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$IsTypingContentType;

.field public static final CONTENT_VIDEO_VALUE:I = 0x2

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$IsTypingContentType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$IsTypingContentType;

    const-string v1, "CONTENT_TEXT"

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$IsTypingContentType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$IsTypingContentType;->CONTENT_TEXT:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$IsTypingContentType;

    new-instance v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$IsTypingContentType;

    const-string v1, "CONTENT_IMAGE"

    invoke-direct {v0, v1, v3, v3, v3}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$IsTypingContentType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$IsTypingContentType;->CONTENT_IMAGE:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$IsTypingContentType;

    new-instance v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$IsTypingContentType;

    const-string v1, "CONTENT_VIDEO"

    invoke-direct {v0, v1, v4, v4, v4}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$IsTypingContentType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$IsTypingContentType;->CONTENT_VIDEO:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$IsTypingContentType;

    new-instance v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$IsTypingContentType;

    const-string v1, "CONTENT_AUDIO"

    invoke-direct {v0, v1, v5, v5, v5}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$IsTypingContentType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$IsTypingContentType;->CONTENT_AUDIO:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$IsTypingContentType;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$IsTypingContentType;

    sget-object v1, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$IsTypingContentType;->CONTENT_TEXT:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$IsTypingContentType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$IsTypingContentType;->CONTENT_IMAGE:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$IsTypingContentType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$IsTypingContentType;->CONTENT_VIDEO:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$IsTypingContentType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$IsTypingContentType;->CONTENT_AUDIO:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$IsTypingContentType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$IsTypingContentType;->$VALUES:[Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$IsTypingContentType;

    new-instance v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$IsTypingContentType$1;

    invoke-direct {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$IsTypingContentType$1;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$IsTypingContentType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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

    iput p4, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$IsTypingContentType;->value:I

    return-void
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$IsTypingContentType;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$IsTypingContentType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$IsTypingContentType;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$IsTypingContentType;->CONTENT_TEXT:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$IsTypingContentType;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$IsTypingContentType;->CONTENT_IMAGE:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$IsTypingContentType;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$IsTypingContentType;->CONTENT_VIDEO:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$IsTypingContentType;

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$IsTypingContentType;->CONTENT_AUDIO:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$IsTypingContentType;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$IsTypingContentType;
    .locals 1

    const-class v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$IsTypingContentType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$IsTypingContentType;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$IsTypingContentType;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$IsTypingContentType;->$VALUES:[Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$IsTypingContentType;

    invoke-virtual {v0}, [Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$IsTypingContentType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$IsTypingContentType;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$IsTypingContentType;->value:I

    return v0
.end method
