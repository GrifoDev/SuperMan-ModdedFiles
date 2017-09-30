.class public final enum Lcom/samsung/android/sdk/bixby/a$h;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/bixby/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "h"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/sdk/bixby/a$h;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/samsung/android/sdk/bixby/a$h;

.field public static final enum b:Lcom/samsung/android/sdk/bixby/a$h;

.field public static final enum c:Lcom/samsung/android/sdk/bixby/a$h;

.field public static final enum d:Lcom/samsung/android/sdk/bixby/a$h;

.field public static final enum e:Lcom/samsung/android/sdk/bixby/a$h;

.field public static final enum f:Lcom/samsung/android/sdk/bixby/a$h;

.field private static final synthetic h:[Lcom/samsung/android/sdk/bixby/a$h;


# instance fields
.field private g:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/samsung/android/sdk/bixby/a$h;

    const-string v1, "SUCCESS"

    invoke-direct {v0, v1, v3, v3}, Lcom/samsung/android/sdk/bixby/a$h;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/bixby/a$h;->a:Lcom/samsung/android/sdk/bixby/a$h;

    new-instance v0, Lcom/samsung/android/sdk/bixby/a$h;

    const-string v1, "FAILURE"

    invoke-direct {v0, v1, v4, v4}, Lcom/samsung/android/sdk/bixby/a$h;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/bixby/a$h;->b:Lcom/samsung/android/sdk/bixby/a$h;

    new-instance v0, Lcom/samsung/android/sdk/bixby/a$h;

    const-string v1, "STATE_SUCCESS"

    invoke-direct {v0, v1, v5, v3}, Lcom/samsung/android/sdk/bixby/a$h;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/bixby/a$h;->c:Lcom/samsung/android/sdk/bixby/a$h;

    new-instance v0, Lcom/samsung/android/sdk/bixby/a$h;

    const-string v1, "STATE_FAILURE"

    invoke-direct {v0, v1, v6, v4}, Lcom/samsung/android/sdk/bixby/a$h;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/bixby/a$h;->d:Lcom/samsung/android/sdk/bixby/a$h;

    new-instance v0, Lcom/samsung/android/sdk/bixby/a$h;

    const-string v1, "TEST_SETUP_SUCCESS"

    invoke-direct {v0, v1, v7, v5}, Lcom/samsung/android/sdk/bixby/a$h;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/bixby/a$h;->e:Lcom/samsung/android/sdk/bixby/a$h;

    new-instance v0, Lcom/samsung/android/sdk/bixby/a$h;

    const-string v1, "TEST_SETUP_FAILURE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v6}, Lcom/samsung/android/sdk/bixby/a$h;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/bixby/a$h;->f:Lcom/samsung/android/sdk/bixby/a$h;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/samsung/android/sdk/bixby/a$h;

    sget-object v1, Lcom/samsung/android/sdk/bixby/a$h;->a:Lcom/samsung/android/sdk/bixby/a$h;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/sdk/bixby/a$h;->b:Lcom/samsung/android/sdk/bixby/a$h;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/android/sdk/bixby/a$h;->c:Lcom/samsung/android/sdk/bixby/a$h;

    aput-object v1, v0, v5

    sget-object v1, Lcom/samsung/android/sdk/bixby/a$h;->d:Lcom/samsung/android/sdk/bixby/a$h;

    aput-object v1, v0, v6

    sget-object v1, Lcom/samsung/android/sdk/bixby/a$h;->e:Lcom/samsung/android/sdk/bixby/a$h;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/samsung/android/sdk/bixby/a$h;->f:Lcom/samsung/android/sdk/bixby/a$h;

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/android/sdk/bixby/a$h;->h:[Lcom/samsung/android/sdk/bixby/a$h;

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

    iput p3, p0, Lcom/samsung/android/sdk/bixby/a$h;->g:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/a$h;
    .locals 1

    const-class v0, Lcom/samsung/android/sdk/bixby/a$h;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/bixby/a$h;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/sdk/bixby/a$h;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/bixby/a$h;->h:[Lcom/samsung/android/sdk/bixby/a$h;

    invoke-virtual {v0}, [Lcom/samsung/android/sdk/bixby/a$h;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sdk/bixby/a$h;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/samsung/android/sdk/bixby/a$2;->b:[I

    invoke-virtual {p0}, Lcom/samsung/android/sdk/bixby/a$h;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "success"

    goto :goto_0

    :pswitch_1
    const-string v0, "failure"

    goto :goto_0

    :pswitch_2
    const-string v0, "success"

    goto :goto_0

    :pswitch_3
    const-string v0, "failure"

    goto :goto_0

    :pswitch_4
    const-string v0, "success"

    goto :goto_0

    :pswitch_5
    const-string v0, "failure"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
