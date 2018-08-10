.class public final enum Lcom/samsung/android/contextaware/dataprovider/androidprovider/AndroidProviderErrors;
.super Ljava/lang/Enum;
.source "AndroidProviderErrors.java"

# interfaces
.implements Lcom/samsung/android/contextaware/manager/fault/IContextAwareErrors;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/contextaware/dataprovider/androidprovider/AndroidProviderErrors;",
        ">;",
        "Lcom/samsung/android/contextaware/manager/fault/IContextAwareErrors;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/contextaware/dataprovider/androidprovider/AndroidProviderErrors;

.field public static final enum ERROR_UNKNOWN:Lcom/samsung/android/contextaware/dataprovider/androidprovider/AndroidProviderErrors;

.field public static final enum SUCCESS:Lcom/samsung/android/contextaware/dataprovider/androidprovider/AndroidProviderErrors;


# instance fields
.field private message:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/AndroidProviderErrors;

    const-string/jumbo v1, "SUCCESS"

    const-string/jumbo v2, "Success"

    invoke-direct {v0, v1, v3, v2}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/AndroidProviderErrors;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/AndroidProviderErrors;->SUCCESS:Lcom/samsung/android/contextaware/dataprovider/androidprovider/AndroidProviderErrors;

    new-instance v0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/AndroidProviderErrors;

    const-string/jumbo v1, "ERROR_UNKNOWN"

    const-string/jumbo v2, "ERROR : Unknown"

    invoke-direct {v0, v1, v4, v2}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/AndroidProviderErrors;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/AndroidProviderErrors;->ERROR_UNKNOWN:Lcom/samsung/android/contextaware/dataprovider/androidprovider/AndroidProviderErrors;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/samsung/android/contextaware/dataprovider/androidprovider/AndroidProviderErrors;

    sget-object v1, Lcom/samsung/android/contextaware/dataprovider/androidprovider/AndroidProviderErrors;->SUCCESS:Lcom/samsung/android/contextaware/dataprovider/androidprovider/AndroidProviderErrors;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/contextaware/dataprovider/androidprovider/AndroidProviderErrors;->ERROR_UNKNOWN:Lcom/samsung/android/contextaware/dataprovider/androidprovider/AndroidProviderErrors;

    aput-object v1, v0, v4

    sput-object v0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/AndroidProviderErrors;->$VALUES:[Lcom/samsung/android/contextaware/dataprovider/androidprovider/AndroidProviderErrors;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/AndroidProviderErrors;->message:Ljava/lang/String;

    return-void
.end method

.method public static final getMessage(I)Ljava/lang/String;
    .locals 6

    const-string/jumbo v1, ""

    invoke-static {}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/AndroidProviderErrors;->values()[Lcom/samsung/android/contextaware/dataprovider/androidprovider/AndroidProviderErrors;

    move-result-object v3

    const/4 v2, 0x0

    array-length v4, v3

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v0, v3, v2

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/AndroidProviderErrors;->ordinal()I

    move-result v5

    if-ne v5, p0, :cond_2

    iget-object v1, v0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/AndroidProviderErrors;->message:Ljava/lang/String;

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "Message code is fault"

    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    :cond_1
    return-object v1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/contextaware/dataprovider/androidprovider/AndroidProviderErrors;
    .locals 1

    const-class v0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/AndroidProviderErrors;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/AndroidProviderErrors;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/contextaware/dataprovider/androidprovider/AndroidProviderErrors;
    .locals 1

    sget-object v0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/AndroidProviderErrors;->$VALUES:[Lcom/samsung/android/contextaware/dataprovider/androidprovider/AndroidProviderErrors;

    return-object v0
.end method


# virtual methods
.method public final getCode()I
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/AndroidProviderErrors;->ordinal()I

    move-result v0

    return v0
.end method

.method public final getMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/AndroidProviderErrors;->message:Ljava/lang/String;

    return-object v0
.end method

.method public notifyFatalError()V
    .locals 0

    return-void
.end method
