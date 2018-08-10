.class public final enum Lcom/samsung/android/share/executor/ExecutorCommandHandler$NlgParamMode;
.super Ljava/lang/Enum;
.source "ExecutorCommandHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/share/executor/ExecutorCommandHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NlgParamMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/share/executor/ExecutorCommandHandler$NlgParamMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/share/executor/ExecutorCommandHandler$NlgParamMode;

.field private static final synthetic -com-samsung-android-share-executor-ExecutorCommandHandler$NlgParamModeSwitchesValues:[I

.field public static final enum MULTIPLE:Lcom/samsung/android/share/executor/ExecutorCommandHandler$NlgParamMode;

.field public static final enum NONE:Lcom/samsung/android/share/executor/ExecutorCommandHandler$NlgParamMode;

.field public static final enum TARGETED:Lcom/samsung/android/share/executor/ExecutorCommandHandler$NlgParamMode;


# direct methods
.method private static synthetic -getcom-samsung-android-share-executor-ExecutorCommandHandler$NlgParamModeSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/samsung/android/share/executor/ExecutorCommandHandler$NlgParamMode;->-com-samsung-android-share-executor-ExecutorCommandHandler$NlgParamModeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/share/executor/ExecutorCommandHandler$NlgParamMode;->-com-samsung-android-share-executor-ExecutorCommandHandler$NlgParamModeSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/samsung/android/share/executor/ExecutorCommandHandler$NlgParamMode;->values()[Lcom/samsung/android/share/executor/ExecutorCommandHandler$NlgParamMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/samsung/android/share/executor/ExecutorCommandHandler$NlgParamMode;->MULTIPLE:Lcom/samsung/android/share/executor/ExecutorCommandHandler$NlgParamMode;

    invoke-virtual {v1}, Lcom/samsung/android/share/executor/ExecutorCommandHandler$NlgParamMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    sget-object v1, Lcom/samsung/android/share/executor/ExecutorCommandHandler$NlgParamMode;->NONE:Lcom/samsung/android/share/executor/ExecutorCommandHandler$NlgParamMode;

    invoke-virtual {v1}, Lcom/samsung/android/share/executor/ExecutorCommandHandler$NlgParamMode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v1, Lcom/samsung/android/share/executor/ExecutorCommandHandler$NlgParamMode;->TARGETED:Lcom/samsung/android/share/executor/ExecutorCommandHandler$NlgParamMode;

    invoke-virtual {v1}, Lcom/samsung/android/share/executor/ExecutorCommandHandler$NlgParamMode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    sput-object v0, Lcom/samsung/android/share/executor/ExecutorCommandHandler$NlgParamMode;->-com-samsung-android-share-executor-ExecutorCommandHandler$NlgParamModeSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_0
.end method

.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/samsung/android/share/executor/ExecutorCommandHandler$NlgParamMode;

    const-string/jumbo v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/share/executor/ExecutorCommandHandler$NlgParamMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/share/executor/ExecutorCommandHandler$NlgParamMode;->NONE:Lcom/samsung/android/share/executor/ExecutorCommandHandler$NlgParamMode;

    new-instance v0, Lcom/samsung/android/share/executor/ExecutorCommandHandler$NlgParamMode;

    const-string/jumbo v1, "TARGETED"

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/share/executor/ExecutorCommandHandler$NlgParamMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/share/executor/ExecutorCommandHandler$NlgParamMode;->TARGETED:Lcom/samsung/android/share/executor/ExecutorCommandHandler$NlgParamMode;

    new-instance v0, Lcom/samsung/android/share/executor/ExecutorCommandHandler$NlgParamMode;

    const-string/jumbo v1, "MULTIPLE"

    invoke-direct {v0, v1, v4}, Lcom/samsung/android/share/executor/ExecutorCommandHandler$NlgParamMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/share/executor/ExecutorCommandHandler$NlgParamMode;->MULTIPLE:Lcom/samsung/android/share/executor/ExecutorCommandHandler$NlgParamMode;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/samsung/android/share/executor/ExecutorCommandHandler$NlgParamMode;

    sget-object v1, Lcom/samsung/android/share/executor/ExecutorCommandHandler$NlgParamMode;->NONE:Lcom/samsung/android/share/executor/ExecutorCommandHandler$NlgParamMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/share/executor/ExecutorCommandHandler$NlgParamMode;->TARGETED:Lcom/samsung/android/share/executor/ExecutorCommandHandler$NlgParamMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/share/executor/ExecutorCommandHandler$NlgParamMode;->MULTIPLE:Lcom/samsung/android/share/executor/ExecutorCommandHandler$NlgParamMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/samsung/android/share/executor/ExecutorCommandHandler$NlgParamMode;->$VALUES:[Lcom/samsung/android/share/executor/ExecutorCommandHandler$NlgParamMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/share/executor/ExecutorCommandHandler$NlgParamMode;
    .locals 1

    const-class v0, Lcom/samsung/android/share/executor/ExecutorCommandHandler$NlgParamMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/share/executor/ExecutorCommandHandler$NlgParamMode;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/share/executor/ExecutorCommandHandler$NlgParamMode;
    .locals 1

    sget-object v0, Lcom/samsung/android/share/executor/ExecutorCommandHandler$NlgParamMode;->$VALUES:[Lcom/samsung/android/share/executor/ExecutorCommandHandler$NlgParamMode;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    const-string/jumbo v0, "\"nlgParamMode\":"

    invoke-static {}, Lcom/samsung/android/share/executor/ExecutorCommandHandler$NlgParamMode;->-getcom-samsung-android-share-executor-ExecutorCommandHandler$NlgParamModeSwitchesValues()[I

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/share/executor/ExecutorCommandHandler$NlgParamMode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :pswitch_0
    const-string/jumbo v1, "\"nlgParamMode\":\"none\""

    return-object v1

    :pswitch_1
    const-string/jumbo v1, "\"nlgParamMode\":\"targeted\""

    return-object v1

    :pswitch_2
    const-string/jumbo v1, "\"nlgParamMode\":\"multiple\""

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
