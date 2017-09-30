.class public final enum Lcom/samsung/android/sdk/ssf/contact/io/ContactType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/sdk/ssf/contact/io/ContactType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/sdk/ssf/contact/io/ContactType;

.field public static final enum DELETE:Lcom/samsung/android/sdk/ssf/contact/io/ContactType;

.field public static final enum SET:Lcom/samsung/android/sdk/ssf/contact/io/ContactType;

.field public static final enum WITHDRAW:Lcom/samsung/android/sdk/ssf/contact/io/ContactType;


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/samsung/android/sdk/ssf/contact/io/ContactType;

    const-string v1, "SET"

    const-string v2, "S"

    invoke-direct {v0, v1, v3, v2}, Lcom/samsung/android/sdk/ssf/contact/io/ContactType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/sdk/ssf/contact/io/ContactType;->SET:Lcom/samsung/android/sdk/ssf/contact/io/ContactType;

    new-instance v0, Lcom/samsung/android/sdk/ssf/contact/io/ContactType;

    const-string v1, "WITHDRAW"

    const-string v2, "W"

    invoke-direct {v0, v1, v4, v2}, Lcom/samsung/android/sdk/ssf/contact/io/ContactType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/sdk/ssf/contact/io/ContactType;->WITHDRAW:Lcom/samsung/android/sdk/ssf/contact/io/ContactType;

    new-instance v0, Lcom/samsung/android/sdk/ssf/contact/io/ContactType;

    const-string v1, "DELETE"

    const-string v2, "D"

    invoke-direct {v0, v1, v5, v2}, Lcom/samsung/android/sdk/ssf/contact/io/ContactType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/sdk/ssf/contact/io/ContactType;->DELETE:Lcom/samsung/android/sdk/ssf/contact/io/ContactType;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/samsung/android/sdk/ssf/contact/io/ContactType;

    sget-object v1, Lcom/samsung/android/sdk/ssf/contact/io/ContactType;->SET:Lcom/samsung/android/sdk/ssf/contact/io/ContactType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/sdk/ssf/contact/io/ContactType;->WITHDRAW:Lcom/samsung/android/sdk/ssf/contact/io/ContactType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/android/sdk/ssf/contact/io/ContactType;->DELETE:Lcom/samsung/android/sdk/ssf/contact/io/ContactType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/samsung/android/sdk/ssf/contact/io/ContactType;->$VALUES:[Lcom/samsung/android/sdk/ssf/contact/io/ContactType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/samsung/android/sdk/ssf/contact/io/ContactType;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/contact/io/ContactType;
    .locals 1

    const-class v0, Lcom/samsung/android/sdk/ssf/contact/io/ContactType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/contact/io/ContactType;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/sdk/ssf/contact/io/ContactType;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/ssf/contact/io/ContactType;->$VALUES:[Lcom/samsung/android/sdk/ssf/contact/io/ContactType;

    invoke-virtual {v0}, [Lcom/samsung/android/sdk/ssf/contact/io/ContactType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sdk/ssf/contact/io/ContactType;

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/contact/io/ContactType;->value:Ljava/lang/String;

    return-object v0
.end method
