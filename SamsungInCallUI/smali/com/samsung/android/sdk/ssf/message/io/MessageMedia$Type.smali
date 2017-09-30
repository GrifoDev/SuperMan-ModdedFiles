.class public final enum Lcom/samsung/android/sdk/ssf/message/io/MessageMedia$Type;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/ssf/message/io/MessageMedia;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/sdk/ssf/message/io/MessageMedia$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/sdk/ssf/message/io/MessageMedia$Type;

.field public static final enum FILE:Lcom/samsung/android/sdk/ssf/message/io/MessageMedia$Type;

.field public static final FILE_VALUE:I = 0x0

.field public static final enum LOCATION:Lcom/samsung/android/sdk/ssf/message/io/MessageMedia$Type;

.field public static final LOCATION_VALUE:I = 0x2

.field public static final enum STICKER:Lcom/samsung/android/sdk/ssf/message/io/MessageMedia$Type;

.field public static final STICKER_VALUE:I = 0x1


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/samsung/android/sdk/ssf/message/io/MessageMedia$Type;

    const-string v1, "FILE"

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/sdk/ssf/message/io/MessageMedia$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/ssf/message/io/MessageMedia$Type;->FILE:Lcom/samsung/android/sdk/ssf/message/io/MessageMedia$Type;

    new-instance v0, Lcom/samsung/android/sdk/ssf/message/io/MessageMedia$Type;

    const-string v1, "STICKER"

    invoke-direct {v0, v1, v3, v3}, Lcom/samsung/android/sdk/ssf/message/io/MessageMedia$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/ssf/message/io/MessageMedia$Type;->STICKER:Lcom/samsung/android/sdk/ssf/message/io/MessageMedia$Type;

    new-instance v0, Lcom/samsung/android/sdk/ssf/message/io/MessageMedia$Type;

    const-string v1, "LOCATION"

    invoke-direct {v0, v1, v4, v4}, Lcom/samsung/android/sdk/ssf/message/io/MessageMedia$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/ssf/message/io/MessageMedia$Type;->LOCATION:Lcom/samsung/android/sdk/ssf/message/io/MessageMedia$Type;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/samsung/android/sdk/ssf/message/io/MessageMedia$Type;

    sget-object v1, Lcom/samsung/android/sdk/ssf/message/io/MessageMedia$Type;->FILE:Lcom/samsung/android/sdk/ssf/message/io/MessageMedia$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/sdk/ssf/message/io/MessageMedia$Type;->STICKER:Lcom/samsung/android/sdk/ssf/message/io/MessageMedia$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/sdk/ssf/message/io/MessageMedia$Type;->LOCATION:Lcom/samsung/android/sdk/ssf/message/io/MessageMedia$Type;

    aput-object v1, v0, v4

    sput-object v0, Lcom/samsung/android/sdk/ssf/message/io/MessageMedia$Type;->$VALUES:[Lcom/samsung/android/sdk/ssf/message/io/MessageMedia$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/samsung/android/sdk/ssf/message/io/MessageMedia$Type;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/samsung/android/sdk/ssf/message/io/MessageMedia$Type;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lcom/samsung/android/sdk/ssf/message/io/MessageMedia$Type;->FILE:Lcom/samsung/android/sdk/ssf/message/io/MessageMedia$Type;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/samsung/android/sdk/ssf/message/io/MessageMedia$Type;->STICKER:Lcom/samsung/android/sdk/ssf/message/io/MessageMedia$Type;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/samsung/android/sdk/ssf/message/io/MessageMedia$Type;->LOCATION:Lcom/samsung/android/sdk/ssf/message/io/MessageMedia$Type;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/message/io/MessageMedia$Type;
    .locals 1

    const-class v0, Lcom/samsung/android/sdk/ssf/message/io/MessageMedia$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/message/io/MessageMedia$Type;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/sdk/ssf/message/io/MessageMedia$Type;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/ssf/message/io/MessageMedia$Type;->$VALUES:[Lcom/samsung/android/sdk/ssf/message/io/MessageMedia$Type;

    invoke-virtual {v0}, [Lcom/samsung/android/sdk/ssf/message/io/MessageMedia$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sdk/ssf/message/io/MessageMedia$Type;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/MessageMedia$Type;->value:I

    return v0
.end method
