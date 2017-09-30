.class public final enum Lcom/samsung/android/sdk/bixby/a$f;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/bixby/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/sdk/bixby/a$f;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/samsung/android/sdk/bixby/a$f;

.field public static final enum b:Lcom/samsung/android/sdk/bixby/a$f;

.field public static final enum c:Lcom/samsung/android/sdk/bixby/a$f;

.field private static final synthetic d:[Lcom/samsung/android/sdk/bixby/a$f;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/samsung/android/sdk/bixby/a$f;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/bixby/a$f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/bixby/a$f;->a:Lcom/samsung/android/sdk/bixby/a$f;

    new-instance v0, Lcom/samsung/android/sdk/bixby/a$f;

    const-string v1, "TARGETED"

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/sdk/bixby/a$f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/bixby/a$f;->b:Lcom/samsung/android/sdk/bixby/a$f;

    new-instance v0, Lcom/samsung/android/sdk/bixby/a$f;

    const-string v1, "MULTIPLE"

    invoke-direct {v0, v1, v4}, Lcom/samsung/android/sdk/bixby/a$f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/bixby/a$f;->c:Lcom/samsung/android/sdk/bixby/a$f;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/samsung/android/sdk/bixby/a$f;

    sget-object v1, Lcom/samsung/android/sdk/bixby/a$f;->a:Lcom/samsung/android/sdk/bixby/a$f;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/sdk/bixby/a$f;->b:Lcom/samsung/android/sdk/bixby/a$f;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/sdk/bixby/a$f;->c:Lcom/samsung/android/sdk/bixby/a$f;

    aput-object v1, v0, v4

    sput-object v0, Lcom/samsung/android/sdk/bixby/a$f;->d:[Lcom/samsung/android/sdk/bixby/a$f;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/a$f;
    .locals 1

    const-class v0, Lcom/samsung/android/sdk/bixby/a$f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/bixby/a$f;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/sdk/bixby/a$f;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/bixby/a$f;->d:[Lcom/samsung/android/sdk/bixby/a$f;

    invoke-virtual {v0}, [Lcom/samsung/android/sdk/bixby/a$f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sdk/bixby/a$f;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "\"nlgParamMode\":"

    sget-object v0, Lcom/samsung/android/sdk/bixby/a$2;->a:[I

    invoke-virtual {p0}, Lcom/samsung/android/sdk/bixby/a$f;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "\"nlgParamMode\":\"none\""

    goto :goto_0

    :pswitch_1
    const-string v0, "\"nlgParamMode\":\"targeted\""

    goto :goto_0

    :pswitch_2
    const-string v0, "\"nlgParamMode\":\"multiple\""

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
