.class public final enum Lcom/samsung/android/sdk/ssf/contact/io/Privacy;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/sdk/ssf/contact/io/Privacy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/sdk/ssf/contact/io/Privacy;

.field public static final enum PRIVACY_FAVORITES:Lcom/samsung/android/sdk/ssf/contact/io/Privacy;

.field public static final enum PRIVACY_LIMITED_PUBLIC:Lcom/samsung/android/sdk/ssf/contact/io/Privacy;

.field public static final enum PRIVACY_PRIVATE:Lcom/samsung/android/sdk/ssf/contact/io/Privacy;

.field public static final enum PRIVACY_PUBLIC:Lcom/samsung/android/sdk/ssf/contact/io/Privacy;

.field public static final enum PRIVACY_SELECTED:Lcom/samsung/android/sdk/ssf/contact/io/Privacy;

.field private static values:[Lcom/samsung/android/sdk/ssf/contact/io/Privacy;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/samsung/android/sdk/ssf/contact/io/Privacy;

    const-string v1, "PRIVACY_PUBLIC"

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/sdk/ssf/contact/io/Privacy;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/ssf/contact/io/Privacy;->PRIVACY_PUBLIC:Lcom/samsung/android/sdk/ssf/contact/io/Privacy;

    new-instance v0, Lcom/samsung/android/sdk/ssf/contact/io/Privacy;

    const-string v1, "PRIVACY_PRIVATE"

    invoke-direct {v0, v1, v3, v3}, Lcom/samsung/android/sdk/ssf/contact/io/Privacy;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/ssf/contact/io/Privacy;->PRIVACY_PRIVATE:Lcom/samsung/android/sdk/ssf/contact/io/Privacy;

    new-instance v0, Lcom/samsung/android/sdk/ssf/contact/io/Privacy;

    const-string v1, "PRIVACY_LIMITED_PUBLIC"

    invoke-direct {v0, v1, v4, v4}, Lcom/samsung/android/sdk/ssf/contact/io/Privacy;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/ssf/contact/io/Privacy;->PRIVACY_LIMITED_PUBLIC:Lcom/samsung/android/sdk/ssf/contact/io/Privacy;

    new-instance v0, Lcom/samsung/android/sdk/ssf/contact/io/Privacy;

    const-string v1, "PRIVACY_SELECTED"

    invoke-direct {v0, v1, v5, v5}, Lcom/samsung/android/sdk/ssf/contact/io/Privacy;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/ssf/contact/io/Privacy;->PRIVACY_SELECTED:Lcom/samsung/android/sdk/ssf/contact/io/Privacy;

    new-instance v0, Lcom/samsung/android/sdk/ssf/contact/io/Privacy;

    const-string v1, "PRIVACY_FAVORITES"

    invoke-direct {v0, v1, v6, v6}, Lcom/samsung/android/sdk/ssf/contact/io/Privacy;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/ssf/contact/io/Privacy;->PRIVACY_FAVORITES:Lcom/samsung/android/sdk/ssf/contact/io/Privacy;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/samsung/android/sdk/ssf/contact/io/Privacy;

    sget-object v1, Lcom/samsung/android/sdk/ssf/contact/io/Privacy;->PRIVACY_PUBLIC:Lcom/samsung/android/sdk/ssf/contact/io/Privacy;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/sdk/ssf/contact/io/Privacy;->PRIVACY_PRIVATE:Lcom/samsung/android/sdk/ssf/contact/io/Privacy;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/sdk/ssf/contact/io/Privacy;->PRIVACY_LIMITED_PUBLIC:Lcom/samsung/android/sdk/ssf/contact/io/Privacy;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/android/sdk/ssf/contact/io/Privacy;->PRIVACY_SELECTED:Lcom/samsung/android/sdk/ssf/contact/io/Privacy;

    aput-object v1, v0, v5

    sget-object v1, Lcom/samsung/android/sdk/ssf/contact/io/Privacy;->PRIVACY_FAVORITES:Lcom/samsung/android/sdk/ssf/contact/io/Privacy;

    aput-object v1, v0, v6

    sput-object v0, Lcom/samsung/android/sdk/ssf/contact/io/Privacy;->$VALUES:[Lcom/samsung/android/sdk/ssf/contact/io/Privacy;

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/sdk/ssf/contact/io/Privacy;->values:[Lcom/samsung/android/sdk/ssf/contact/io/Privacy;

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

    iput p3, p0, Lcom/samsung/android/sdk/ssf/contact/io/Privacy;->value:I

    return-void
.end method

.method public static fromInt(I)Lcom/samsung/android/sdk/ssf/contact/io/Privacy;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/ssf/contact/io/Privacy;->values:[Lcom/samsung/android/sdk/ssf/contact/io/Privacy;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/ssf/contact/io/Privacy;->values()[Lcom/samsung/android/sdk/ssf/contact/io/Privacy;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/ssf/contact/io/Privacy;->values:[Lcom/samsung/android/sdk/ssf/contact/io/Privacy;

    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/ssf/contact/io/Privacy;->values:[Lcom/samsung/android/sdk/ssf/contact/io/Privacy;

    aget-object v0, v0, p0

    return-object v0
.end method

.method public static fromString(Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/contact/io/Privacy;
    .locals 2

    sget-object v0, Lcom/samsung/android/sdk/ssf/contact/io/Privacy;->values:[Lcom/samsung/android/sdk/ssf/contact/io/Privacy;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/ssf/contact/io/Privacy;->values()[Lcom/samsung/android/sdk/ssf/contact/io/Privacy;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/ssf/contact/io/Privacy;->values:[Lcom/samsung/android/sdk/ssf/contact/io/Privacy;

    :cond_0
    if-nez p0, :cond_1

    sget-object v0, Lcom/samsung/android/sdk/ssf/contact/io/Privacy;->PRIVACY_LIMITED_PUBLIC:Lcom/samsung/android/sdk/ssf/contact/io/Privacy;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/contact/io/Privacy;->getValue()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/sdk/ssf/contact/io/Privacy;->fromInt(I)Lcom/samsung/android/sdk/ssf/contact/io/Privacy;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ltz v0, :cond_2

    const/4 v1, 0x4

    if-le v0, v1, :cond_3

    :cond_2
    sget-object v0, Lcom/samsung/android/sdk/ssf/contact/io/Privacy;->PRIVACY_LIMITED_PUBLIC:Lcom/samsung/android/sdk/ssf/contact/io/Privacy;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/contact/io/Privacy;->getValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :cond_3
    sget-object v1, Lcom/samsung/android/sdk/ssf/contact/io/Privacy;->values:[Lcom/samsung/android/sdk/ssf/contact/io/Privacy;

    aget-object v0, v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v0, Lcom/samsung/android/sdk/ssf/contact/io/Privacy;->PRIVACY_LIMITED_PUBLIC:Lcom/samsung/android/sdk/ssf/contact/io/Privacy;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/contact/io/Privacy;->getValue()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/sdk/ssf/contact/io/Privacy;->fromInt(I)Lcom/samsung/android/sdk/ssf/contact/io/Privacy;

    move-result-object v0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/contact/io/Privacy;
    .locals 1

    const-class v0, Lcom/samsung/android/sdk/ssf/contact/io/Privacy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/contact/io/Privacy;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/sdk/ssf/contact/io/Privacy;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/ssf/contact/io/Privacy;->$VALUES:[Lcom/samsung/android/sdk/ssf/contact/io/Privacy;

    invoke-virtual {v0}, [Lcom/samsung/android/sdk/ssf/contact/io/Privacy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sdk/ssf/contact/io/Privacy;

    return-object v0
.end method


# virtual methods
.method public getStringValue()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/ssf/contact/io/Privacy;->value:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValue()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/ssf/contact/io/Privacy;->value:I

    return v0
.end method
